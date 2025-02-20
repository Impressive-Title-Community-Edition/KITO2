#version 150

uniform sampler2D Image;
uniform sampler2D Thaw;
in vec4 oUv;
out vec4 fragColour;

void main(void)
{
	vec4 texcoord;
	texcoord = oUv;
	texcoord.z = floor(texcoord.z);
	
    vec4 c0 = texture(Image, texcoord.xyz);
    vec4 c1 = texture(Thaw, texcoord.xyz);

	fragColour = c1;//mix(c0, c1, fract(oUv.z));
}
