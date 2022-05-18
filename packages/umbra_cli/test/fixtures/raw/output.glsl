#version 320 es

precision mediump float;

layout (location = 0) out vec4 _COLOR_;

layout (location = 0) uniform vec2 resolution;

vec4 fragment(vec2 uv, vec2 fragCoord) {
    return vec4(uv.x, uv.y, 0.0, 1.0);
}

void main()
{
    vec2 uv = gl_FragCoord.xy / resolution.xy;

    _COLOR_ = fragment(uv, gl_FragCoord.xy);
}