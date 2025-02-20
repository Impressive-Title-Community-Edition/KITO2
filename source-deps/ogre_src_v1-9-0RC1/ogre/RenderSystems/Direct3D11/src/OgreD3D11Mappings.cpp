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
#include "OgreD3D11Mappings.h"

namespace Ogre 
{
	//---------------------------------------------------------------------
	/*DWORD D3D11Mappings::get(ShadeOptions so)
	{
	switch( so )
	{
	case SO_FLAT:
	return D3DSHADE_FLAT;
	case SO_GOURAUD:
	return D3DSHADE_GOURAUD;
	case SO_PHONG:
	return D3DSHADE_PHONG;
	}
	return 0;
	}*/
	//---------------------------------------------------------------------
	/*D3DLIGHTTYPE D3D11Mappings::get(Light::LightTypes lightType)
	{
	switch( lightType )
	{
	case Light::LT_POINT:
	return D3DLIGHT_POINT;
	case Light::LT_DIRECTIONAL:
	return D3DLIGHT_DIRECTIONAL;
	case Light::LT_SPOTLIGHT:
	return D3DLIGHT_SPOT;
	}
	return D3DLIGHT_FORCE_DWORD;
	}*/
	//---------------------------------------------------------------------
	/*DWORD D3D11Mappings::get(TexCoordCalcMethod m, const D3DCAPS9& caps)
	{
	switch( m )
	{
	case TEXCALC_NONE:
	return D3DTSS_TCI_PASSTHRU;
	case TEXCALC_ENVIRONMENT_MAP_REFLECTION:
	return D3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR;
	case TEXCALC_ENVIRONMENT_MAP_PLANAR:
	if (caps.VertexProcessingCaps & D3DVTXPCAPS_TEXGEN_SPHEREMAP)
	{
	// Use sphere map if available
	return D3DTSS_TCI_SPHEREMAP;
	}
	else
	{
	// If not, fall back on camera space reflection vector which isn't as good
	return D3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR;
	}
	case TEXCALC_ENVIRONMENT_MAP_NORMAL:
	return D3DTSS_TCI_CAMERASPACENORMAL;
	case TEXCALC_ENVIRONMENT_MAP:
	if (caps.VertexProcessingCaps & D3DVTXPCAPS_TEXGEN_SPHEREMAP)
	{
	// Use sphere map if available
	return D3DTSS_TCI_SPHEREMAP;
	}
	else
	{
	// If not, fall back on camera space normal which isn't as good
	return D3DTSS_TCI_CAMERASPACENORMAL;
	}
	case TEXCALC_PROJECTIVE_TEXTURE:
	return D3DTSS_TCI_CAMERASPACEPOSITION;
	}
	return 0;
	}*/
	//---------------------------------------------------------------------
	D3D11_TEXTURE_ADDRESS_MODE D3D11Mappings::get(TextureUnitState::TextureAddressingMode tam)
	{
		switch( tam )
		{
		case TextureUnitState::TAM_WRAP:
			return D3D11_TEXTURE_ADDRESS_WRAP;
		case TextureUnitState::TAM_MIRROR:
			return D3D11_TEXTURE_ADDRESS_MIRROR;
		case TextureUnitState::TAM_CLAMP:
			return D3D11_TEXTURE_ADDRESS_CLAMP;
		case TextureUnitState::TAM_BORDER:
			return D3D11_TEXTURE_ADDRESS_BORDER;
		}
		return D3D11_TEXTURE_ADDRESS_MIRROR_ONCE;
	}
	//---------------------------------------------------------------------
	D3D11_BLEND D3D11Mappings::get(LayerBlendType lbt)
	{
		switch( lbt )
		{
		case LBT_COLOUR:
			return D3D11_BLEND_SRC_COLOR;
		case LBT_ALPHA:
			return D3D11_BLEND_SRC_ALPHA;
		}
		return  D3D11_BLEND_ZERO;
	}
	//---------------------------------------------------------------------
	/*DWORD D3D11Mappings::get(LayerBlendSource lbs)
	{
	switch( lbs )
	{
	case LBS_CURRENT:
	return D3DTA_CURRENT;
	case LBS_TEXTURE:
	return D3DTA_TEXTURE;
	case LBS_DIFFUSE:
	return D3DTA_DIFFUSE;
	case LBS_SPECULAR:
	return D3DTA_SPECULAR;
	case LBS_MANUAL:
	return D3DTA_TFACTOR;
	}
	return 0;
	}*/
	//---------------------------------------------------------------------
	/*DWORD D3D11Mappings::get(LayerBlendOperationEx lbo, const D3DCAPS9& devCaps)
	{
	switch( lbo )
	{
	case LBX_SOURCE1:
	return D3DTOP_SELECTARG1;
	case LBX_SOURCE2:
	return D3DTOP_SELECTARG2;
	case LBX_MODULATE:
	return D3DTOP_MODULATE;
	case LBX_MODULATE_X2:
	return D3DTOP_MODULATE2X;
	case LBX_MODULATE_X4:
	return D3DTOP_MODULATE4X;
	case LBX_ADD:
	return D3DTOP_ADD;
	case LBX_ADD_SIGNED:
	return D3DTOP_ADDSIGNED;
	case LBX_ADD_SMOOTH:
	return D3DTOP_ADDSMOOTH;
	case LBX_SUBTRACT:
	return D3DTOP_SUBTRACT;
	case LBX_BLEND_DIFFUSE_ALPHA:
	return D3DTOP_BLENDDIFFUSEALPHA;
	case LBX_BLEND_TEXTURE_ALPHA:
	return D3DTOP_BLENDTEXTUREALPHA;
	case LBX_BLEND_CURRENT_ALPHA:
	return D3DTOP_BLENDCURRENTALPHA;
	case LBX_BLEND_MANUAL:
	return D3DTOP_BLENDFACTORALPHA;
	case LBX_DOTPRODUCT:
	if (devCaps.TextureOpCaps & D3DTEXOPCAPS_DOTPRODUCT3)
	return D3DTOP_DOTPRODUCT3;
	else
	return D3DTOP_MODULATE;
	case LBX_BLEND_DIFFUSE_COLOUR:
	if (devCaps.TextureOpCaps & D3DTEXOPCAPS_LERP)
	return D3DTOP_LERP;
	else
	return D3DTOP_MODULATE;
	}
	return 0;
	}*/
	//---------------------------------------------------------------------
	D3D11_BLEND D3D11Mappings::get(SceneBlendFactor sbf, bool forAlpha)
	{
		switch( sbf )
		{
		case SBF_ONE:						return D3D11_BLEND_ONE;
		case SBF_ZERO:						return D3D11_BLEND_ZERO;
		case SBF_DEST_COLOUR:				return forAlpha ? D3D11_BLEND_DEST_ALPHA : D3D11_BLEND_DEST_COLOR;
		case SBF_SOURCE_COLOUR:				return forAlpha ? D3D11_BLEND_SRC_ALPHA : D3D11_BLEND_SRC_COLOR;
		case SBF_ONE_MINUS_DEST_COLOUR: 	return forAlpha ? D3D11_BLEND_INV_DEST_ALPHA : D3D11_BLEND_INV_DEST_COLOR;
		case SBF_ONE_MINUS_SOURCE_COLOUR:   return forAlpha ? D3D11_BLEND_INV_SRC_ALPHA : D3D11_BLEND_INV_SRC_COLOR;
		case SBF_DEST_ALPHA:                return D3D11_BLEND_DEST_ALPHA;
		case SBF_SOURCE_ALPHA:              return D3D11_BLEND_SRC_ALPHA;
		case SBF_ONE_MINUS_DEST_ALPHA:      return D3D11_BLEND_INV_DEST_ALPHA;
		case SBF_ONE_MINUS_SOURCE_ALPHA:    return D3D11_BLEND_INV_SRC_ALPHA;
		}
		return D3D11_BLEND_ZERO;
	}
	//---------------------------------------------------------------------
	D3D11_BLEND_OP D3D11Mappings::get(SceneBlendOperation sbo)
	{
		switch( sbo )
		{
		case SBO_ADD:
			return D3D11_BLEND_OP_ADD;
		case SBO_SUBTRACT:
			return D3D11_BLEND_OP_SUBTRACT;
		case SBO_REVERSE_SUBTRACT:
			return D3D11_BLEND_OP_REV_SUBTRACT;
		case SBO_MIN:
			return D3D11_BLEND_OP_MIN;
		case SBO_MAX:
			return D3D11_BLEND_OP_MAX;
		}
		return D3D11_BLEND_OP_ADD;
	}
	//---------------------------------------------------------------------
	D3D11_COMPARISON_FUNC D3D11Mappings::get(CompareFunction cf)
	{
		switch( cf )
		{
		case CMPF_ALWAYS_FAIL:
			return D3D11_COMPARISON_NEVER;
		case CMPF_ALWAYS_PASS:
			return D3D11_COMPARISON_ALWAYS;
		case CMPF_LESS:
			return D3D11_COMPARISON_LESS;
		case CMPF_LESS_EQUAL:
			return D3D11_COMPARISON_LESS_EQUAL;
		case CMPF_EQUAL:
			return D3D11_COMPARISON_EQUAL;
		case CMPF_NOT_EQUAL:
			return D3D11_COMPARISON_NOT_EQUAL;
		case CMPF_GREATER_EQUAL:
			return D3D11_COMPARISON_GREATER_EQUAL;
		case CMPF_GREATER:
			return D3D11_COMPARISON_GREATER;
		};
		return D3D11_COMPARISON_ALWAYS;
	}
	//---------------------------------------------------------------------
	D3D11_CULL_MODE D3D11Mappings::get(CullingMode cm, bool flip)
	{
		switch( cm )
		{
		case CULL_NONE:
			return D3D11_CULL_NONE;
		case CULL_CLOCKWISE:
			if( flip )
				return D3D11_CULL_FRONT;
			else
				return D3D11_CULL_BACK;
		case CULL_ANTICLOCKWISE:
			if( flip )
				return D3D11_CULL_BACK;
			else
				return D3D11_CULL_FRONT;
		}
		return D3D11_CULL_NONE;
	}
	//---------------------------------------------------------------------
	/*D3DFOGMODE D3D11Mappings::get(FogMode fm)
	{
	switch( fm )
	{
	case FOG_EXP:
	return D3DFOG_EXP;
	case FOG_EXP2:
	return D3DFOG_EXP2;
	case FOG_LINEAR:
	return D3DFOG_LINEAR;
	}
	return D3DFOG_FORCE_DWORD;
	}*/
	//---------------------------------------------------------------------
	D3D11_FILL_MODE D3D11Mappings::get(PolygonMode level)
	{
		switch(level)
		{
		case PM_POINTS:
			return D3D11_FILL_SOLID; // this will done in a geometry shader like in the FixedFuncEMU sample  and the shader needs solid
		case PM_WIREFRAME:
			return D3D11_FILL_WIREFRAME;
		case PM_SOLID:
			return D3D11_FILL_SOLID;
		}
		return D3D11_FILL_SOLID;
	}
	//---------------------------------------------------------------------
	D3D11_STENCIL_OP D3D11Mappings::get(StencilOperation op, bool invert)
	{
		// D3D11_STENCIL_OP
		switch(op)
		{
		case SOP_KEEP:
			return D3D11_STENCIL_OP_KEEP;
		case SOP_ZERO:
			return D3D11_STENCIL_OP_ZERO;
		case SOP_REPLACE:
			return D3D11_STENCIL_OP_REPLACE;
		case SOP_INCREMENT:
			return invert? D3D11_STENCIL_OP_DECR_SAT : D3D11_STENCIL_OP_INCR_SAT;
		case SOP_DECREMENT:
			return invert? D3D11_STENCIL_OP_INCR_SAT : D3D11_STENCIL_OP_DECR_SAT;
		case SOP_INCREMENT_WRAP:
			return invert? D3D11_STENCIL_OP_DECR : D3D11_STENCIL_OP_INCR;
		case SOP_DECREMENT_WRAP:
			return invert? D3D11_STENCIL_OP_INCR : D3D11_STENCIL_OP_DECR;
		case SOP_INVERT:
			return D3D11_STENCIL_OP_INVERT;
		}
		return D3D11_STENCIL_OP_KEEP;
	}
	//---------------------------------------------------------------------
	DWORD D3D11Mappings::get(FilterType ft)
	{
		switch (ft)
		{
		case FT_MIN:
			return D3D11_MIN_FILTER_SHIFT;
			break;
		case FT_MAG:
			return D3D11_MAG_FILTER_SHIFT;
			break;
		case FT_MIP:
			return D3D11_MIP_FILTER_SHIFT;
			break;
		}

		// to keep compiler happy
		return D3D11_MIP_FILTER_SHIFT;
	}
	//---------------------------------------------------------------------
	D3D11_FILTER D3D11Mappings::get(const FilterOptions min, const FilterOptions mag, const FilterOptions mip, const bool comparison)
	{

		D3D11_FILTER res;
#define MARGE_FOR_SWITCH(_comparison_, _min_ , _mag_, _mip_ ) ((_comparison_ << 16) | (_min_ << 8) | (_mag_ << 4) | (_mip_))

		switch((MARGE_FOR_SWITCH(comparison, min, mag, mip)))
		{
		case MARGE_FOR_SWITCH(true, FO_POINT, FO_POINT, FO_POINT):
			res = D3D11_FILTER_COMPARISON_MIN_MAG_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(true, FO_POINT, FO_POINT, FO_LINEAR):
			res = D3D11_FILTER_COMPARISON_MIN_MAG_POINT_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(true, FO_POINT, FO_LINEAR, FO_POINT):
			res = D3D11_FILTER_COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(true, FO_POINT, FO_LINEAR, FO_LINEAR):
			res = D3D11_FILTER_COMPARISON_MIN_POINT_MAG_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(true, FO_LINEAR, FO_POINT, FO_POINT):
			res = D3D11_FILTER_COMPARISON_MIN_LINEAR_MAG_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(true, FO_LINEAR, FO_POINT, FO_LINEAR):
			res = D3D11_FILTER_COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR;
			break;		
		case MARGE_FOR_SWITCH(true, FO_LINEAR, FO_LINEAR, FO_POINT):
			res = D3D11_FILTER_COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(true, FO_LINEAR, FO_LINEAR, FO_LINEAR):
			res = D3D11_FILTER_COMPARISON_MIN_MAG_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(true, FO_ANISOTROPIC, FO_ANISOTROPIC, FO_ANISOTROPIC):
			res = D3D11_FILTER_COMPARISON_ANISOTROPIC;
			break;
		case MARGE_FOR_SWITCH(true, FO_ANISOTROPIC, FO_ANISOTROPIC, FO_LINEAR):
			res = D3D11_FILTER_COMPARISON_ANISOTROPIC;
			break;
		case MARGE_FOR_SWITCH(false, FO_POINT, FO_POINT, FO_POINT):
			res = D3D11_FILTER_MIN_MAG_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(false, FO_POINT, FO_POINT, FO_LINEAR):
			res = D3D11_FILTER_MIN_MAG_POINT_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(false, FO_POINT, FO_LINEAR, FO_POINT):
			res = D3D11_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(false, FO_POINT, FO_LINEAR, FO_LINEAR):
			res = D3D11_FILTER_MIN_POINT_MAG_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(false, FO_LINEAR, FO_POINT, FO_POINT):
			res = D3D11_FILTER_MIN_LINEAR_MAG_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(false, FO_LINEAR, FO_POINT, FO_LINEAR):
			res = D3D11_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR;
			break;		
		case MARGE_FOR_SWITCH(false, FO_LINEAR, FO_LINEAR, FO_POINT):
			res = D3D11_FILTER_MIN_MAG_LINEAR_MIP_POINT;
			break;
		case MARGE_FOR_SWITCH(false, FO_LINEAR, FO_LINEAR, FO_LINEAR):
			res = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
			break;
		case MARGE_FOR_SWITCH(false, FO_ANISOTROPIC, FO_ANISOTROPIC, FO_ANISOTROPIC):
			res = D3D11_FILTER_ANISOTROPIC;
			break;
		case MARGE_FOR_SWITCH(false, FO_ANISOTROPIC, FO_ANISOTROPIC, FO_LINEAR):
			res = D3D11_FILTER_ANISOTROPIC;
			break;
		default:
			res = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
		}	
		
		return res;
	}
	//---------------------------------------------------------------------
	DWORD D3D11Mappings::get(HardwareBuffer::Usage usage)
	{
		DWORD ret = 0;
		if (usage & HardwareBuffer::HBU_DYNAMIC)
		{
			ret |= D3D11_USAGE_DYNAMIC;
		}
		if (usage & HardwareBuffer::HBU_WRITE_ONLY)
		{
			ret |= D3D11_USAGE_DYNAMIC;
		}
		return ret;
	}
	//---------------------------------------------------------------------
	D3D11_MAP D3D11Mappings::get(HardwareBuffer::LockOptions options, HardwareBuffer::Usage usage)
	{
		D3D11_MAP ret = D3D11_MAP_READ_WRITE;
		if (options == HardwareBuffer::HBL_DISCARD)
		{
			// D3D doesn't like discard or no_overwrite on non-dynamic buffers
			if (usage & HardwareBuffer::HBU_DYNAMIC)
				ret = D3D11_MAP_WRITE_DISCARD;
		}
		if (options == HardwareBuffer::HBL_READ_ONLY)
		{
			// D3D debug runtime doesn't like you locking managed buffers readonly
			// when they were created with write-only (even though you CAN read
			// from the software backed version)
			if (!(usage & HardwareBuffer::HBU_WRITE_ONLY))
				ret = D3D11_MAP_READ;

		}
		if (options == HardwareBuffer::HBL_NO_OVERWRITE)
		{
			// D3D doesn't like discard or no_overwrite on non-dynamic buffers
			if (usage & HardwareBuffer::HBU_DYNAMIC)
				ret = D3D11_MAP_WRITE_NO_OVERWRITE;
		}

		return ret;
	}
	//---------------------------------------------------------------------
	UINT D3D11Mappings::getByteWidth(HardwareIndexBuffer::IndexType itype)
	{
		if (itype == HardwareIndexBuffer::IT_32BIT)
		{
			return sizeof(long);
		}
		else
		{
			return sizeof(short);
		}
	}
	//---------------------------------------------------------------------
	DXGI_FORMAT D3D11Mappings::getFormat(HardwareIndexBuffer::IndexType itype)
	{
		if (itype == HardwareIndexBuffer::IT_32BIT)
		{
			return DXGI_FORMAT_R32_UINT;
		}
		else
		{
			return DXGI_FORMAT_R16_UINT;
		}
	}
	//---------------------------------------------------------------------
	DXGI_FORMAT D3D11Mappings::get(VertexElementType vType)
	{
		switch (vType)
		{
		case VET_COLOUR:
		case VET_COLOUR_ABGR:
		case VET_COLOUR_ARGB:
			return DXGI_FORMAT_R8G8B8A8_UNORM;
			break;
		case VET_FLOAT1:
			return DXGI_FORMAT_R32_FLOAT;
			break;
		case VET_FLOAT2:
			return DXGI_FORMAT_R32G32_FLOAT;
			break;
		case VET_FLOAT3:
			return DXGI_FORMAT_R32G32B32_FLOAT;
			break;
		case VET_FLOAT4:
			return DXGI_FORMAT_R32G32B32A32_FLOAT;
			break;
		case VET_SHORT2:
			return DXGI_FORMAT_R16G16_SINT;
			break;
		case VET_SHORT4:
			return DXGI_FORMAT_R16G16B16A16_SINT;
			break;
		case VET_UBYTE4:
			return DXGI_FORMAT_R8G8B8A8_UINT;
			break;
		}
		// to keep compiler happy
		return DXGI_FORMAT_R32G32B32_FLOAT;
	}
	//---------------------------------------------------------------------
	VertexElementSemantic D3D11Mappings::get(LPCSTR sem)
	{
		// todo - add to ogre - POSITIONT and PSIZE ("Transformed vertex position" and "Point size")

		if( strcmp(sem, "BLENDINDICES") == 0 )
			return VES_BLEND_INDICES;
		if( strcmp(sem, "BLENDWEIGHT") == 0 )
			return VES_BLEND_WEIGHTS;
		if( strcmp(sem, "COLOR") == 0 )
			return VES_DIFFUSE;
//		if( strcmp(sem, "COLOR") == 0 )
//			return VES_SPECULAR;
		if( strcmp(sem, "NORMAL") == 0 )
			return VES_NORMAL;
		if( strcmp(sem, "POSITION") == 0 )
			return VES_POSITION;
		if( strcmp(sem, "TEXCOORD") == 0 )
			return VES_TEXTURE_COORDINATES;
		if( strcmp(sem, "BINORMAL") == 0 )
			return VES_BINORMAL;
		if( strcmp(sem, "TANGENT") == 0 )
			return VES_TANGENT;

		// to keep compiler happy
		return VES_POSITION;
	}
	//---------------------------------------------------------------------
	LPCSTR D3D11Mappings::get(VertexElementSemantic sem)
	{
		// todo - add to ogre - POSITIONT and PSIZE ("Transformed vertex position" and "Point size")
		switch (sem)	
		{
		case VES_BLEND_INDICES:
			return "BLENDINDICES";
			break;
		case VES_BLEND_WEIGHTS:
			return "BLENDWEIGHT";
			break;
		case VES_DIFFUSE:
			return "COLOR"; // NB index will differentiate
			break;
		case VES_SPECULAR:
			return "COLOR"; // NB index will differentiate
			break;
		case VES_NORMAL:
			return "NORMAL";
			break;
		case VES_POSITION:
			return "POSITION";
			break;
		case VES_TEXTURE_COORDINATES:
			return "TEXCOORD";
			break;
		case VES_BINORMAL:
			return "BINORMAL";
			break;
		case VES_TANGENT:
			return "TANGENT";
			break;
		}
		// to keep compiler happy
		return "";
	}
	//---------------------------------------------------------------------
	void D3D11Mappings::get(const ColourValue& inColour, float * outColour )
	{
		outColour[0] = inColour.r;
		outColour[1] = inColour.g;
		outColour[2] = inColour.b;
		outColour[3] = inColour.a;	
	}
	//---------------------------------------------------------------------
	PixelFormat D3D11Mappings::_getPF(DXGI_FORMAT d3dPF)
	{
		switch(d3dPF)
		{
		case DXGI_FORMAT_UNKNOWN:					return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32A32_TYPELESS:		return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32A32_FLOAT:		return PF_FLOAT32_RGBA;
		case DXGI_FORMAT_R32G32B32A32_UINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32A32_SINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32_TYPELESS:		return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32_FLOAT:			return PF_FLOAT32_RGB;
		case DXGI_FORMAT_R32G32B32_UINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32B32_SINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16B16A16_TYPELESS:		return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16B16A16_FLOAT:		return PF_FLOAT16_RGBA;
		case DXGI_FORMAT_R16G16B16A16_UNORM:		return PF_SHORT_RGBA;
		case DXGI_FORMAT_R16G16B16A16_UINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16B16A16_SNORM:		return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16B16A16_SINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32_TYPELESS:			return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32_FLOAT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32_UINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R32G32_SINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R32G8X24_TYPELESS:			return PF_UNKNOWN;
		case DXGI_FORMAT_D32_FLOAT_S8X24_UINT:		return PF_UNKNOWN;
		case DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS:	return PF_UNKNOWN;
		case DXGI_FORMAT_X32_TYPELESS_G8X24_UINT:	return PF_UNKNOWN;
		case DXGI_FORMAT_R10G10B10A2_TYPELESS:		return PF_UNKNOWN;
		case DXGI_FORMAT_R10G10B10A2_UNORM:			return PF_A2B10G10R10;
		case DXGI_FORMAT_R10G10B10A2_UINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R11G11B10_FLOAT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8B8A8_TYPELESS:			return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8B8A8_UNORM:			return PF_A8B8G8R8;
		case DXGI_FORMAT_R8G8B8A8_UNORM_SRGB:		return PF_A8B8G8R8;
		case DXGI_FORMAT_R8G8B8A8_UINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8B8A8_SNORM:			return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8B8A8_SINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16_TYPELESS:			return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16_FLOAT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16_UNORM:				return PF_SHORT_GR;
		case DXGI_FORMAT_R16G16_UINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16_SNORM:				return PF_UNKNOWN;
		case DXGI_FORMAT_R16G16_SINT:				return PF_UNKNOWN;
		case DXGI_FORMAT_R32_TYPELESS:				return PF_UNKNOWN;
		case DXGI_FORMAT_D32_FLOAT:					return PF_DEPTH;
		case DXGI_FORMAT_R32_FLOAT:					return PF_FLOAT32_R;
		case DXGI_FORMAT_R32_UINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R32_SINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R24G8_TYPELESS:			return PF_UNKNOWN;
		case DXGI_FORMAT_D24_UNORM_S8_UINT:			return PF_UNKNOWN;
		case DXGI_FORMAT_R24_UNORM_X8_TYPELESS:		return PF_UNKNOWN;
		case DXGI_FORMAT_X24_TYPELESS_G8_UINT:		return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_TYPELESS:				return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_UNORM:				return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_UINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_SNORM:				return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_SINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R16_TYPELESS:				return PF_UNKNOWN;
		case DXGI_FORMAT_R16_FLOAT:					return PF_FLOAT16_R;
		case DXGI_FORMAT_D16_UNORM:					return PF_UNKNOWN;
		case DXGI_FORMAT_R16_UNORM:					return PF_L16;
		case DXGI_FORMAT_R16_UINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R16_SNORM:					return PF_UNKNOWN;
		case DXGI_FORMAT_R16_SINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R8_TYPELESS:				return PF_UNKNOWN;
		case DXGI_FORMAT_R8_UNORM:					return PF_L8;
		case DXGI_FORMAT_R8_UINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_R8_SNORM:					return PF_UNKNOWN;
		case DXGI_FORMAT_R8_SINT:					return PF_UNKNOWN;
		case DXGI_FORMAT_A8_UNORM:					return PF_A8;
		case DXGI_FORMAT_R1_UNORM:					return PF_UNKNOWN;
		case DXGI_FORMAT_R9G9B9E5_SHAREDEXP:		return PF_UNKNOWN;
		case DXGI_FORMAT_R8G8_B8G8_UNORM:			return PF_UNKNOWN;
		case DXGI_FORMAT_G8R8_G8B8_UNORM:			return PF_UNKNOWN;
		case DXGI_FORMAT_BC1_TYPELESS:				return PF_DXT1;
		case DXGI_FORMAT_BC1_UNORM:					return PF_DXT1;
		case DXGI_FORMAT_BC1_UNORM_SRGB:			return PF_DXT1;
		case DXGI_FORMAT_BC2_TYPELESS:				return PF_DXT2;
		case DXGI_FORMAT_BC2_UNORM:					return PF_DXT2;
		case DXGI_FORMAT_BC2_UNORM_SRGB:			return PF_DXT2;
		case DXGI_FORMAT_BC3_TYPELESS:				return PF_DXT3;
		case DXGI_FORMAT_BC3_UNORM:					return PF_DXT3;
		case DXGI_FORMAT_BC3_UNORM_SRGB:			return PF_DXT3;
		case DXGI_FORMAT_BC4_TYPELESS:				return PF_DXT4;
		case DXGI_FORMAT_BC4_UNORM:					return PF_DXT4;
		case DXGI_FORMAT_BC4_SNORM:					return PF_DXT4;
		case DXGI_FORMAT_BC5_TYPELESS:				return PF_DXT5;
		case DXGI_FORMAT_BC5_UNORM:					return PF_DXT5;
		case DXGI_FORMAT_BC5_SNORM:					return PF_DXT5;
		case DXGI_FORMAT_B5G6R5_UNORM:				return PF_R5G6B5;
		case DXGI_FORMAT_B5G5R5A1_UNORM:			return PF_A1R5G5B5;
		case DXGI_FORMAT_B8G8R8A8_UNORM:			return PF_A8R8G8B8;
		case DXGI_FORMAT_B8G8R8X8_UNORM:			return PF_X8R8G8B8;

#if defined(_WIN32_WINNT_WIN8) && (_WIN32_WINNT >= _WIN32_WINNT_WIN8) && defined(DXGI_FORMAT_AYUV)
		case DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM:return PF_UNKNOWN;
		case DXGI_FORMAT_B8G8R8A8_TYPELESS:         return PF_UNKNOWN;
		case DXGI_FORMAT_B8G8R8A8_UNORM_SRGB:       return PF_A8R8G8B8;
		case DXGI_FORMAT_B8G8R8X8_TYPELESS:         return PF_UNKNOWN;
		case DXGI_FORMAT_B8G8R8X8_UNORM_SRGB:       return PF_X8R8G8B8;
		case DXGI_FORMAT_BC6H_TYPELESS:             return PF_UNKNOWN;
		case DXGI_FORMAT_BC6H_UF16:                 return PF_UNKNOWN;
		case DXGI_FORMAT_BC6H_SF16:                 return PF_UNKNOWN;
		case DXGI_FORMAT_BC7_TYPELESS:              return PF_UNKNOWN;
		case DXGI_FORMAT_BC7_UNORM:                 return PF_UNKNOWN;
		case DXGI_FORMAT_BC7_UNORM_SRGB:            return PF_UNKNOWN;
		case DXGI_FORMAT_AYUV:                      return PF_UNKNOWN;
		case DXGI_FORMAT_Y410:                      return PF_UNKNOWN;
		case DXGI_FORMAT_Y416:                      return PF_UNKNOWN;
		case DXGI_FORMAT_NV12:                      return PF_UNKNOWN;
		case DXGI_FORMAT_P010:                      return PF_UNKNOWN;
		case DXGI_FORMAT_P016:                      return PF_UNKNOWN;
		case DXGI_FORMAT_420_OPAQUE:                return PF_UNKNOWN;
		case DXGI_FORMAT_YUY2:                      return PF_UNKNOWN;
		case DXGI_FORMAT_Y210:                      return PF_UNKNOWN;
		case DXGI_FORMAT_Y216:                      return PF_UNKNOWN;
		case DXGI_FORMAT_NV11:                      return PF_UNKNOWN;
		case DXGI_FORMAT_AI44:                      return PF_UNKNOWN;
		case DXGI_FORMAT_IA44:                      return PF_UNKNOWN;
		case DXGI_FORMAT_P8:                        return PF_UNKNOWN;
		case DXGI_FORMAT_A8P8:                      return PF_UNKNOWN;
		case DXGI_FORMAT_B4G4R4A4_UNORM:            return PF_A4R4G4B4;
#endif

		default:									return PF_UNKNOWN;
		}
	}
	//---------------------------------------------------------------------
	DXGI_FORMAT D3D11Mappings::_getPF(PixelFormat ogrePF)
	{
		switch(ogrePF)
		{
		case PF_L8:				return DXGI_FORMAT_R8_UNORM;
		case PF_L16:			return DXGI_FORMAT_R16_UNORM;
		case PF_A8:				return DXGI_FORMAT_A8_UNORM;
		case PF_A4L4:			return DXGI_FORMAT_UNKNOWN;
		case PF_BYTE_LA:		return DXGI_FORMAT_UNKNOWN; 
		case PF_R3G3B2:			return DXGI_FORMAT_UNKNOWN;
		case PF_A1R5G5B5:		return DXGI_FORMAT_UNKNOWN;
		case PF_R5G6B5:			return DXGI_FORMAT_UNKNOWN;
		case PF_A4R4G4B4:		return DXGI_FORMAT_UNKNOWN;
		case PF_R8G8B8:			return DXGI_FORMAT_UNKNOWN;
		case PF_A8R8G8B8:		return DXGI_FORMAT_B8G8R8A8_UNORM;
		case PF_A8B8G8R8:		return DXGI_FORMAT_R8G8B8A8_UNORM;
		case PF_X8R8G8B8:		return DXGI_FORMAT_UNKNOWN;
		case PF_X8B8G8R8:		return DXGI_FORMAT_UNKNOWN;
		case PF_A2B10G10R10:	return DXGI_FORMAT_R10G10B10A2_TYPELESS;
		case PF_A2R10G10B10:	return DXGI_FORMAT_UNKNOWN;
		case PF_FLOAT16_R:		return DXGI_FORMAT_R16_FLOAT;
		case PF_FLOAT16_RGBA:	return DXGI_FORMAT_R16G16B16A16_FLOAT;
		case PF_FLOAT32_R:		return DXGI_FORMAT_R32_FLOAT;
		case PF_FLOAT32_RGBA:	return DXGI_FORMAT_R32G32B32A32_FLOAT;
		case PF_SHORT_RGBA:		return DXGI_FORMAT_R16G16B16A16_UNORM;
		case PF_DXT1:			return DXGI_FORMAT_BC1_UNORM;
		case PF_DXT2:			return DXGI_FORMAT_BC2_UNORM;
		case PF_DXT3:			return DXGI_FORMAT_BC3_UNORM;
		case PF_DXT4:			return DXGI_FORMAT_BC4_UNORM;
		case PF_DXT5:			return DXGI_FORMAT_BC5_UNORM;

		case PF_UNKNOWN:
		default:				return DXGI_FORMAT_UNKNOWN;
		}
	}
	//---------------------------------------------------------------------
	PixelFormat D3D11Mappings::_getClosestSupportedPF(PixelFormat ogrePF)
	{
		if (_getPF(ogrePF) != DXGI_FORMAT_UNKNOWN)
		{
			return ogrePF;
		}
		switch(ogrePF)
		{
		case PF_FLOAT16_RGB:
			return PF_FLOAT16_RGBA;
		case PF_FLOAT32_RGB:
			return PF_FLOAT32_RGBA;
		case PF_UNKNOWN:
		default:
			return PF_A8B8G8R8;
		}
	}
	//---------------------------------------------------------------------
	D3D11_USAGE D3D11Mappings::_getUsage(HardwareBuffer::Usage mUsage)
	{
		if (_isDynamic(mUsage))
		{
			return D3D11_USAGE_DYNAMIC;
		}
		else
		{
			return D3D11_USAGE_DEFAULT;
		}
	}
	//---------------------------------------------------------------------
	bool D3D11Mappings::_isDynamic(HardwareBuffer::Usage mUsage)
	{
		switch ( mUsage)
		{
		case HardwareBuffer::HBU_DYNAMIC:
		case HardwareBuffer::HBU_DYNAMIC_WRITE_ONLY:
		case HardwareBuffer::HBU_DYNAMIC_WRITE_ONLY_DISCARDABLE:
			return true;
		}

		return false;
	}
	//---------------------------------------------------------------------
	bool D3D11Mappings::_isDynamic(int mUsage)
	{
		return _isDynamic(static_cast<HardwareBuffer::Usage>(mUsage));
	}
	//---------------------------------------------------------------------
	D3D11_USAGE D3D11Mappings::_getUsage(int mUsage)
	{
		return _getUsage(static_cast<HardwareBuffer::Usage>(mUsage));
	}
	//---------------------------------------------------------------------
	UINT D3D11Mappings::_getAccessFlags(int mUsage)
	{
		return _getAccessFlags(static_cast<HardwareBuffer::Usage>(mUsage));
	}
	//---------------------------------------------------------------------
	UINT D3D11Mappings::_getAccessFlags(HardwareBuffer::Usage mUsage)
	{
		if(_isDynamic(mUsage))
			return D3D11_CPU_ACCESS_WRITE;
		else
			return 0;
	}
	//---------------------------------------------------------------------
	DXGI_FORMAT D3D11Mappings::get(HardwareIndexBuffer::IndexType itype)
	{
		if (itype == HardwareIndexBuffer::IT_32BIT)
		{
			//AIZTODO: PUT THOSE VALUES AND FIND OUT WHY WE WANT THEM
			return DXGI_FORMAT_R32_UINT;//return D3DFMT_INDEX32;
		}
		else
		{
			return DXGI_FORMAT_R16_UINT;//return D3DFMT_INDEX16;
		}
	}
	//---------------------------------------------------------------------
	TextureType D3D11Mappings::_getTexType(D3D11_SRV_DIMENSION type)
	{
		switch(type)
		{
		case D3D_SRV_DIMENSION_TEXTURE1D:
			return TEX_TYPE_1D;
		case D3D_SRV_DIMENSION_TEXTURE2D:
		case D3D_SRV_DIMENSION_TEXTURE2DMS:
			return TEX_TYPE_2D;
		case D3D_SRV_DIMENSION_TEXTURE2DARRAY:
		case D3D_SRV_DIMENSION_TEXTURE2DMSARRAY:
			return TEX_TYPE_2D_ARRAY;
		case D3D_SRV_DIMENSION_TEXTURE3D:
			return TEX_TYPE_3D;
		case D3D_SRV_DIMENSION_TEXTURECUBE:
			return TEX_TYPE_CUBE_MAP;
		default:
			// unknown
			return static_cast<TextureType>(0);
		}
	}
	//---------------------------------------------------------------------
	size_t D3D11Mappings::_getSizeInBytes(PixelFormat pf, size_t xcount, size_t ycount)
	{
		if(xcount == 0 || ycount == 0)
			return 0;

		if(PixelUtil::isCompressed(pf))
		{
			// D3D wants the width of one row of cells in bytes
			if (pf == PF_DXT1)
			{
				// 64 bits (8 bytes) per 4x4 block
				return std::max<size_t>(1, xcount / 4) * std::max<size_t>(1, ycount / 4) * 8;
			}
			else
			{
				// 128 bits (16 bytes) per 4x4 block
				return std::max<size_t>(1, xcount / 4) * std::max<size_t>(1, ycount / 4) * 16;
			}
		}
		else
		{
			return xcount * ycount * PixelUtil::getNumElemBytes(pf);
		}
	}

	UINT D3D11Mappings::_getTextureBindFlags(DXGI_FORMAT format, bool isdynamic)
	{
		if(isdynamic)
			return D3D11_BIND_SHADER_RESOURCE; 

		switch(format)
		{
		case DXGI_FORMAT_R32G32B32A32_TYPELESS:
		case DXGI_FORMAT_R32G32B32_TYPELESS:
		case DXGI_FORMAT_R32G32B32_FLOAT:
		case DXGI_FORMAT_R32G32B32_UINT:
		case DXGI_FORMAT_R32G32B32_SINT:
		case DXGI_FORMAT_R16G16B16A16_TYPELESS:
		case DXGI_FORMAT_R32G32_TYPELESS:
		case DXGI_FORMAT_R32G8X24_TYPELESS:
		case DXGI_FORMAT_D32_FLOAT_S8X24_UINT:
		case DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS:
		case DXGI_FORMAT_X32_TYPELESS_G8X24_UINT:
		case DXGI_FORMAT_R10G10B10A2_TYPELESS:
		case DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM:
		case DXGI_FORMAT_R8G8B8A8_TYPELESS:
		case DXGI_FORMAT_R16G16_TYPELESS:
		case DXGI_FORMAT_R32_TYPELESS:
		case DXGI_FORMAT_D32_FLOAT:
		case DXGI_FORMAT_R24G8_TYPELESS:
		case DXGI_FORMAT_D24_UNORM_S8_UINT:
		case DXGI_FORMAT_R24_UNORM_X8_TYPELESS:
		case DXGI_FORMAT_X24_TYPELESS_G8_UINT:
		case DXGI_FORMAT_R8G8_TYPELESS:
		case DXGI_FORMAT_R16_TYPELESS:
		case DXGI_FORMAT_D16_UNORM:
		case DXGI_FORMAT_R8_TYPELESS:
		case DXGI_FORMAT_R9G9B9E5_SHAREDEXP:
		case DXGI_FORMAT_R8G8_B8G8_UNORM:
		case DXGI_FORMAT_G8R8_G8B8_UNORM:
		case DXGI_FORMAT_BC1_TYPELESS:
		case DXGI_FORMAT_BC1_UNORM:
		case DXGI_FORMAT_BC1_UNORM_SRGB:
		case DXGI_FORMAT_BC2_TYPELESS:
		case DXGI_FORMAT_BC2_UNORM:
		case DXGI_FORMAT_BC2_UNORM_SRGB:
		case DXGI_FORMAT_BC3_TYPELESS:
		case DXGI_FORMAT_BC3_UNORM:
		case DXGI_FORMAT_BC3_UNORM_SRGB:
		case DXGI_FORMAT_BC4_TYPELESS:
		case DXGI_FORMAT_BC4_UNORM:
		case DXGI_FORMAT_BC4_SNORM:
		case DXGI_FORMAT_BC5_TYPELESS:
		case DXGI_FORMAT_BC5_UNORM:
		case DXGI_FORMAT_BC5_SNORM:
		case DXGI_FORMAT_B8G8R8A8_TYPELESS:
		case DXGI_FORMAT_B8G8R8X8_TYPELESS:
		case DXGI_FORMAT_BC6H_TYPELESS:
		case DXGI_FORMAT_BC6H_UF16:
		case DXGI_FORMAT_BC6H_SF16:
		case DXGI_FORMAT_BC7_TYPELESS:
		case DXGI_FORMAT_BC7_UNORM:
		case DXGI_FORMAT_BC7_UNORM_SRGB:
			return D3D11_BIND_SHADER_RESOURCE;
		default:
			return D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_RENDER_TARGET;
		}
	}

	UINT D3D11Mappings::_getTextureMiscFlags(UINT bindflags, TextureType textype, bool isdynamic)
	{
		if(isdynamic)
			return 0;

		UINT flags = 0;

		if(bindflags & D3D11_BIND_RENDER_TARGET)
			flags |= D3D11_RESOURCE_MISC_GENERATE_MIPS;

		if(textype == TEX_TYPE_CUBE_MAP)
			flags |= D3D11_RESOURCE_MISC_TEXTURECUBE;

		return flags;
	}
}
