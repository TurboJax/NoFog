#version 150

vec4 linear_fog(vec4 inColor, float vertexDistance, float fogStart, float fogEnd, vec4 fogColor) {
    return inColor;
}

float linear_fog_fade(float vertexDistance, float fogStart, float fogEnd) {
    return 0.0;
}

float fog_distance(vec3 pos, int shape) {
    return 0.0;
}