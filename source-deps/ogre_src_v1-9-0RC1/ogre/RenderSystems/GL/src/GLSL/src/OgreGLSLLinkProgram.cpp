/*
-----------------------------------------------------------------------------
This source file is part of OGRE
    (Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/

Copyright (c) 2000-2013 Torus Knot Software Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-----------------------------------------------------------------------------
*/

#include "OgreGLSLExtSupport.h"
#include "OgreGLSLLinkProgram.h"
#include "OgreStringConverter.h"
#include "OgreGLSLGpuProgram.h"
#include "OgreGLSLProgram.h"
#include "OgreGLSLLinkProgramManager.h"
#include "OgreException.h"
#include "OgreGpuProgramManager.h"

namespace Ogre {
    namespace GLSL {

	//  a  builtin				custom attrib name
	// ----------------------------------------------
	//	0  gl_Vertex			vertex
	//  1  n/a					blendWeights		
	//	2  gl_Normal			normal
	//	3  gl_Color				colour
	//	4  gl_SecondaryColor	secondary_colour
	//	5  gl_FogCoord			fog_coord
	//  7  n/a					blendIndices
	//	8  gl_MultiTexCoord0	uv0
	//	9  gl_MultiTexCoord1	uv1
	//	10 gl_MultiTexCoord2	uv2
	//	11 gl_MultiTexCoord3	uv3
	//	12 gl_MultiTexCoord4	uv4
	//	13 gl_MultiTexCoord5	uv5
	//	14 gl_MultiTexCoord6	uv6, tangent
	//	15 gl_MultiTexCoord7	uv7, binormal
	GLSLLinkProgram::CustomAttribute GLSLLinkProgram::msCustomAttributes[] = {
		CustomAttribute("vertex", GLGpuProgram::getFixedAttributeIndex(VES_POSITION, 0)),
		CustomAttribute("blendWeights", GLGpuProgram::getFixedAttributeIndex(VES_BLEND_WEIGHTS, 0)),
		CustomAttribute("normal", GLGpuProgram::getFixedAttributeIndex(VES_NORMAL, 0)),
		CustomAttribute("colour", GLGpuProgram::getFixedAttributeIndex(VES_DIFFUSE, 0)),
		CustomAttribute("secondary_colour", GLGpuProgram::getFixedAttributeIndex(VES_SPECULAR, 0)),
		CustomAttribute("blendIndices", GLGpuProgram::getFixedAttributeIndex(VES_BLEND_INDICES, 0)),
		CustomAttribute("uv0", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 0)),
		CustomAttribute("uv1", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 1)),
		CustomAttribute("uv2", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 2)),
		CustomAttribute("uv3", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 3)),
		CustomAttribute("uv4", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 4)),
		CustomAttribute("uv5", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 5)),
		CustomAttribute("uv6", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 6)),
		CustomAttribute("uv7", GLGpuProgram::getFixedAttributeIndex(VES_TEXTURE_COORDINATES, 7)),
		CustomAttribute("tangent", GLGpuProgram::getFixedAttributeIndex(VES_TANGENT, 0)),
		CustomAttribute("binormal", GLGpuProgram::getFixedAttributeIndex(VES_BINORMAL, 0)),
	};

	GLint getGLGeometryInputPrimitiveType(RenderOperation::OperationType operationType, bool requiresAdjacency)
	{
		switch (operationType)
		{
		case RenderOperation::OT_POINT_LIST:
			return GL_POINTS;
		case RenderOperation::OT_LINE_LIST:
		case RenderOperation::OT_LINE_STRIP:
			return requiresAdjacency ? GL_LINES_ADJACENCY_EXT : GL_LINES;
		default:
		case RenderOperation::OT_TRIANGLE_LIST:
		case RenderOperation::OT_TRIANGLE_STRIP:
		case RenderOperation::OT_TRIANGLE_FAN:
			return requiresAdjacency ? GL_TRIANGLES_ADJACENCY_EXT : GL_TRIANGLES;
		}
	}
	//-----------------------------------------------------------------------
	GLint getGLGeometryOutputPrimitiveType(RenderOperation::OperationType operationType)
	{
		switch (operationType)
		{
		case RenderOperation::OT_POINT_LIST:
			return GL_POINTS;
		case RenderOperation::OT_LINE_STRIP:
			return GL_LINE_STRIP;
		case RenderOperation::OT_TRIANGLE_STRIP:
			return GL_TRIANGLE_STRIP;
		default:
			OGRE_EXCEPT(Exception::ERR_RENDERINGAPI_ERROR,
				"Geometry shader output operation type can only be point list,"
				"line strip or triangle strip",
                            "GLSLLinkProgram::getGLGeometryOutputPrimitiveType");
		}
	}

	//-----------------------------------------------------------------------
	GLSLLinkProgram::GLSLLinkProgram(GLSLGpuProgram* vertexProgram, GLSLGpuProgram* geometryProgram, GLSLGpuProgram* fragmentProgram)
        : mVertexProgram(vertexProgram)
		, mGeometryProgram(geometryProgram)
		, mFragmentProgram(fragmentProgram)
		, mUniformRefsBuilt(false)
        , mLinked(false)
		, mTriedToLinkAndFailed(false)
        , mColumnMajorMatrices(true)
	{
	}

	//-----------------------------------------------------------------------
	GLSLLinkProgram::~GLSLLinkProgram(void)
	{
		glDeleteObjectARB(mGLHandle);

	}

	//-----------------------------------------------------------------------
	void GLSLLinkProgram::activate(void)
	{
		if (!mLinked && !mTriedToLinkAndFailed)
		{			
			glGetError(); //Clean up the error. Otherwise will flood log.

            // test if all linked programs use the same matrix ordering
            bool vertexOrder = true, fragmentOrder = true, geometryOrder = true;
            if (mVertexProgram)
                vertexOrder = mVertexProgram->getGLSLProgram()->getColumnMajorMatrices();
            if (mFragmentProgram)
                fragmentOrder = mFragmentProgram->getGLSLProgram()->getColumnMajorMatrices();
            if (mGeometryProgram)
                geometryOrder = mGeometryProgram->getGLSLProgram()->getColumnMajorMatrices();
            if ((mVertexProgram && mFragmentProgram && vertexOrder != fragmentOrder) || 
                (mVertexProgram && mGeometryProgram && vertexOrder != geometryOrder) ||
                (mFragmentProgram && mGeometryProgram && fragmentOrder != geometryOrder))
            {
                mTriedToLinkAndFailed = true;
                OGRE_EXCEPT(Exception::ERR_INVALIDPARAMS, 
                    "Trying to link GLSL programs with different matrix ordering.", 
                    "GLSLLinkProgram::activate");
            }
            mColumnMajorMatrices = vertexOrder;

			mGLHandle = glCreateProgramObjectARB();

            GLenum glErr = glGetError();
            if(glErr != GL_NO_ERROR)
            {
			    reportGLSLError( glErr, "GLSLLinkProgram::activate", "Error Creating GLSL Program Object", 0 );
            }

			if ( GpuProgramManager::getSingleton().canGetCompiledShaderBuffer() &&
				 GpuProgramManager::getSingleton().isMicrocodeAvailableInCache(getCombinedName()) )
			{
				getMicrocodeFromCache();
			}
			else
			{
				compileAndLink();

			}
			buildGLUniformReferences();
			extractAttributes();
		}
		if (mLinked)
		{
            GLenum glErr = glGetError();
            if(glErr != GL_NO_ERROR)
            {
			    reportGLSLError( glErr, "GLSLLinkProgram::Activate",
				    "Error prior to using GLSL Program Object : ", mGLHandle, false, false);
            }

			glUseProgramObjectARB( mGLHandle );

            glErr = glGetError();
            if(glErr != GL_NO_ERROR)
            {
			    reportGLSLError( glErr, "GLSLLinkProgram::Activate",
				    "Error using GLSL Program Object : ", mGLHandle, false, false);
            }
        }
	}
    //-----------------------------------------------------------------------
    void GLSLLinkProgram::getMicrocodeFromCache(void)
    {
		GpuProgramManager::Microcode cacheMicrocode = 
			GpuProgramManager::getSingleton().getMicrocodeFromCache(getCombinedName());
		
		GLenum binaryFormat = *((GLenum *)(cacheMicrocode->getPtr()));
		uint8 * programBuffer = cacheMicrocode->getPtr() + sizeof(GLenum);
		size_t sizeOfBuffer = cacheMicrocode->size() - sizeof(GLenum);
		glProgramBinary(mGLHandle, 
						binaryFormat, 
						programBuffer,
						sizeOfBuffer
						);

		GLint   success = 0;
        glGetProgramiv(mGLHandle, GL_LINK_STATUS, &success);
        if (!success)
        {
            //
            // Something must have changed since the program binaries
            // were cached away.  Fallback to source shader loading path,
            // and then retrieve and cache new program binaries once again.
            //
			compileAndLink();
        }
	}
	//-----------------------------------------------------------------------
	void GLSLLinkProgram::extractAttributes(void)
	{
		size_t numAttribs = sizeof(msCustomAttributes)/sizeof(CustomAttribute);

		for (size_t i = 0; i < numAttribs; ++i)
		{
			const CustomAttribute& a = msCustomAttributes[i];
			GLint attrib = glGetAttribLocationARB(mGLHandle, a.name.c_str());

			if (attrib != -1)
			{
				mValidAttributes.insert(a.attrib);
			}
		}
	}
	//-----------------------------------------------------------------------
	GLuint GLSLLinkProgram::getAttributeIndex(VertexElementSemantic semantic, uint index)
	{
		return GLGpuProgram::getFixedAttributeIndex(semantic, index);
	}
	//-----------------------------------------------------------------------
	bool GLSLLinkProgram::isAttributeValid(VertexElementSemantic semantic, uint index)
	{
		return mValidAttributes.find(getAttributeIndex(semantic, index)) != mValidAttributes.end();
	}
	//-----------------------------------------------------------------------
	void GLSLLinkProgram::buildGLUniformReferences(void)
	{
		if (!mUniformRefsBuilt)
		{
			const GpuConstantDefinitionMap* vertParams = 0;
			const GpuConstantDefinitionMap* fragParams = 0;
			const GpuConstantDefinitionMap* geomParams = 0;
			if (mVertexProgram)
			{
				vertParams = &(mVertexProgram->getGLSLProgram()->getConstantDefinitions().map);
			}
			if (mGeometryProgram)
			{
				geomParams = &(mGeometryProgram->getGLSLProgram()->getConstantDefinitions().map);
			}
			if (mFragmentProgram)
			{
				fragParams = &(mFragmentProgram->getGLSLProgram()->getConstantDefinitions().map);
			}

			GLSLLinkProgramManager::getSingleton().extractUniforms(
				mGLHandle, vertParams, geomParams, fragParams, mGLUniformReferences);

			mUniformRefsBuilt = true;
		}
	}

	//-----------------------------------------------------------------------
	void GLSLLinkProgram::updateUniforms(GpuProgramParametersSharedPtr params, 
		uint16 mask, GpuProgramType fromProgType)
	{
		// iterate through uniform reference list and update uniform values
		GLUniformReferenceIterator currentUniform = mGLUniformReferences.begin();
		GLUniformReferenceIterator endUniform = mGLUniformReferences.end();

        // determine if we need to transpose matrices when binding
        int transpose = GL_TRUE;
        if ((fromProgType == GPT_FRAGMENT_PROGRAM && mVertexProgram && (!mVertexProgram->getGLSLProgram()->getColumnMajorMatrices())) ||
            (fromProgType == GPT_VERTEX_PROGRAM && mFragmentProgram && (!mFragmentProgram->getGLSLProgram()->getColumnMajorMatrices())) ||
            (fromProgType == GPT_GEOMETRY_PROGRAM && mGeometryProgram && (!mGeometryProgram->getGLSLProgram()->getColumnMajorMatrices())))
        {
            transpose = GL_FALSE;
        }

		for (;currentUniform != endUniform; ++currentUniform)
		{
			// Only pull values from buffer it's supposed to be in (vertex or fragment)
			// This method will be called twice, once for vertex program params, 
			// and once for fragment program params.
			if (fromProgType == currentUniform->mSourceProgType)
			{
				const GpuConstantDefinition* def = currentUniform->mConstantDef;
				if (def->variability & mask)
				{

					GLsizei glArraySize = (GLsizei)def->arraySize;
                    int transpose = mColumnMajorMatrices ? GL_TRUE : GL_FALSE;

					// get the index in the parameter real list
					switch (def->constType)
					{
					case GCT_FLOAT1:
						glUniform1fvARB(currentUniform->mLocation, glArraySize, 
							params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_FLOAT2:
						glUniform2fvARB(currentUniform->mLocation, glArraySize, 
							params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_FLOAT3:
						glUniform3fvARB(currentUniform->mLocation, glArraySize, 
							params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_FLOAT4:
						glUniform4fvARB(currentUniform->mLocation, glArraySize, 
							params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_MATRIX_2X2:
						glUniformMatrix2fvARB(currentUniform->mLocation, glArraySize, 
							transpose, params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_MATRIX_2X3:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix2x3fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_2X4:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix2x4fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_3X2:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix3x2fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_3X3:
						glUniformMatrix3fvARB(currentUniform->mLocation, glArraySize, 
							transpose, params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_MATRIX_3X4:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix3x4fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_4X2:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix4x2fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_4X3:
						if (GLEW_VERSION_2_1)
						{
							glUniformMatrix4x3fv(currentUniform->mLocation, glArraySize, 
								transpose, params->getFloatPointer(def->physicalIndex));
						}
						break;
					case GCT_MATRIX_4X4:
						glUniformMatrix4fvARB(currentUniform->mLocation, glArraySize, 
							transpose, params->getFloatPointer(def->physicalIndex));
						break;
					case GCT_INT1:
						glUniform1ivARB(currentUniform->mLocation, glArraySize, 
							(GLint*)params->getIntPointer(def->physicalIndex));
						break;
					case GCT_INT2:
						glUniform2ivARB(currentUniform->mLocation, glArraySize, 
							(GLint*)params->getIntPointer(def->physicalIndex));
						break;
					case GCT_INT3:
						glUniform3ivARB(currentUniform->mLocation, glArraySize, 
							(GLint*)params->getIntPointer(def->physicalIndex));
						break;
					case GCT_INT4:
						glUniform4ivARB(currentUniform->mLocation, glArraySize, 
							(GLint*)params->getIntPointer(def->physicalIndex));
						break;
					case GCT_SAMPLER1D:
					case GCT_SAMPLER1DSHADOW:
					case GCT_SAMPLER2D:
					case GCT_SAMPLER2DSHADOW:
                    case GCT_SAMPLER2DARRAY:
					case GCT_SAMPLER3D:
					case GCT_SAMPLERCUBE:
						// samplers handled like 1-element ints
						glUniform1ivARB(currentUniform->mLocation, 1, 
							(GLint*)params->getIntPointer(def->physicalIndex));
						break;
                    case GCT_UNKNOWN:
                        break;

					} // end switch
	#if OGRE_DEBUG_MODE
                    GLenum glErr = glGetError();
                    if(glErr != GL_NO_ERROR)
                    {
					    reportGLSLError( glErr, "GLSLLinkProgram::updateUniforms", "Error updating uniform", 0 );
                    }
	#endif
				} // variability & mask
			} // fromProgType == currentUniform->mSourceProgType
  
  		} // end for
	}
	//-----------------------------------------------------------------------
	void GLSLLinkProgram::updatePassIterationUniforms(GpuProgramParametersSharedPtr params)
	{
		if (params->hasPassIterationNumber())
		{
			size_t index = params->getPassIterationNumberIndex();

			GLUniformReferenceIterator currentUniform = mGLUniformReferences.begin();
			GLUniformReferenceIterator endUniform = mGLUniformReferences.end();

			// need to find the uniform that matches the multi pass entry
			for (;currentUniform != endUniform; ++currentUniform)
			{
				// get the index in the parameter real list
				if (index == currentUniform->mConstantDef->physicalIndex)
				{
					glUniform1fvARB( currentUniform->mLocation, 1, params->getFloatPointer(index));
					// there will only be one multipass entry
					return;
				}
			}
		}

    }
	//-----------------------------------------------------------------------
	Ogre::String GLSLLinkProgram::getCombinedName()
	{
		String name;
		if (mVertexProgram)
		{
			name += "Vertex Program:" ;
			name += mVertexProgram->getName();
		}
		if (mFragmentProgram)
		{
			name += " Fragment Program:" ;
			name += mFragmentProgram->getName();
		}
		if (mGeometryProgram)
		{
			name += " Geometry Program:" ;
			name += mGeometryProgram->getName();
		}
		return name;
	}
	//-----------------------------------------------------------------------
	void GLSLLinkProgram::compileAndLink()
	{
		if (mVertexProgram)
		{
			// compile and attach Vertex Program
			if (!mVertexProgram->getGLSLProgram()->compile(true))
			{
				// todo error
				return;
			}
			mVertexProgram->getGLSLProgram()->attachToProgramObject(mGLHandle);
			setSkeletalAnimationIncluded(mVertexProgram->isSkeletalAnimationIncluded());

			// Some drivers (e.g. OS X on nvidia) incorrectly determine the attribute binding automatically

			// and end up aliasing existing built-ins. So avoid! 
			// Bind all used attribs - not all possible ones otherwise we'll get 
			// lots of warnings in the log, and also may end up aliasing names used
			// as varyings by accident
			// Because we can't ask GL whether an attribute is used in the shader
			// until it is linked (chicken and egg!) we have to parse the source

			size_t numAttribs = sizeof(msCustomAttributes)/sizeof(CustomAttribute);
			const String& vpSource = mVertexProgram->getGLSLProgram()->getSource();
			for (size_t i = 0; i < numAttribs; ++i)
			{
				const CustomAttribute& a = msCustomAttributes[i];

				// we're looking for either: 
				//   attribute vec<n> <semantic_name>
				//   in vec<n> <semantic_name>
				// The latter is recommended in GLSL 1.3 onwards 
				// be slightly flexible about formatting
				String::size_type pos = vpSource.find(a.name);
                bool foundAttr = false;
				while (pos != String::npos && !foundAttr)
				{
					String::size_type startpos = vpSource.find("attribute", pos < 20 ? 0 : pos-20);
					if (startpos == String::npos)
						startpos = vpSource.find("in", pos-20);
					if (startpos != String::npos && startpos < pos)
					{
						// final check 
						String expr = vpSource.substr(startpos, pos + a.name.length() - startpos);
						StringVector vec = StringUtil::split(expr);
						if ((vec[0] == "in" || vec[0] == "attribute") && vec[2] == a.name)
                        {
							glBindAttribLocationARB(mGLHandle, a.attrib, a.name.c_str());
                            foundAttr = true;
                        }
					}
                    // Find the position of the next occurrence if needed
                    pos = vpSource.find(a.name, pos + a.name.length());
				}
			}
		}

		if (mGeometryProgram)
		{
			// compile and attach Geometry Program
			if (!mGeometryProgram->getGLSLProgram()->compile(true))
			{
				// todo error
				return;
			}

			mGeometryProgram->getGLSLProgram()->attachToProgramObject(mGLHandle);

			//Don't set adjacency flag. We handle it internally and expose "false"

			RenderOperation::OperationType inputOperationType = mGeometryProgram->getGLSLProgram()->getInputOperationType();
			glProgramParameteriEXT(mGLHandle,GL_GEOMETRY_INPUT_TYPE_EXT,
				getGLGeometryInputPrimitiveType(inputOperationType, mGeometryProgram->isAdjacencyInfoRequired()));

			RenderOperation::OperationType outputOperationType = mGeometryProgram->getGLSLProgram()->getOutputOperationType();
			switch (outputOperationType)
			{
			case RenderOperation::OT_POINT_LIST:
			case RenderOperation::OT_LINE_STRIP:
			case RenderOperation::OT_TRIANGLE_STRIP:
			case RenderOperation::OT_LINE_LIST:
			case RenderOperation::OT_TRIANGLE_LIST:
			case RenderOperation::OT_TRIANGLE_FAN:
				break;

			}
			glProgramParameteriEXT(mGLHandle,GL_GEOMETRY_OUTPUT_TYPE_EXT,
				getGLGeometryOutputPrimitiveType(outputOperationType));

			glProgramParameteriEXT(mGLHandle,GL_GEOMETRY_VERTICES_OUT_EXT,
				mGeometryProgram->getGLSLProgram()->getMaxOutputVertices());
		}

		if (mFragmentProgram)
		{
			// compile and attach Fragment Program
			if (!mFragmentProgram->getGLSLProgram()->compile(true))
			{
				// todo error
				return;
			}		
			mFragmentProgram->getGLSLProgram()->attachToProgramObject(mGLHandle);
		}

		
		// now the link

		glLinkProgramARB( mGLHandle );
		glGetObjectParameterivARB( mGLHandle, GL_OBJECT_LINK_STATUS_ARB, &mLinked );
		mTriedToLinkAndFailed = !mLinked;

		// force logging and raise exception if not linked
        GLenum glErr = glGetError();
        if(glErr != GL_NO_ERROR)
        {
		    reportGLSLError( glErr, "GLSLLinkProgram::compileAndLink",
			    "Error linking GLSL Program Object : ", mGLHandle, !mLinked, !mLinked );
        }
		
		if(mLinked)
		{
			logObjectInfo(  getCombinedName() + String(" GLSL link result : "), mGLHandle );
		}

		if (mLinked)
		{
			if ( GpuProgramManager::getSingleton().getSaveMicrocodesToCache() )
			{
				// add to the microcode to the cache
				String name;
				name = getCombinedName();

				// get buffer size
				GLint binaryLength = 0;
				glGetProgramiv(mGLHandle, GL_PROGRAM_BINARY_LENGTH, &binaryLength);

				// turns out we need this param when loading
				// it will be the first bytes of the array in the microcode
				GLenum binaryFormat = 0; 

                // create microcode
                GpuProgramManager::Microcode newMicrocode = 
                    GpuProgramManager::getSingleton().createMicrocode(binaryLength + sizeof(GLenum));

        		// get binary
				uint8 * programBuffer = newMicrocode->getPtr() + sizeof(GLenum);
				glGetProgramBinary(mGLHandle, binaryLength, NULL, &binaryFormat, programBuffer);

                // save binary format
				memcpy(newMicrocode->getPtr(), &binaryFormat, sizeof(GLenum));

        		// add to the microcode to the cache
				GpuProgramManager::getSingleton().addMicrocodeToCache(name, newMicrocode);
			}
		}
	}
	//-----------------------------------------------------------------------
} // namespace GLSL
} // namespace Ogre
