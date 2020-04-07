#version 100
 #ifdef GL_ES
 precision mediump float;
 #endif
 varying vec2 v_texcoord;
 uniform sampler2D tex;
 uniform float time;
 uniform float width;
 uniform float height;

 void main () {
    vec3 src = texture2D(tex, v_texcoord).rgb;
    vec4 output = vec4(src.r, 0., src.b, 1.);

   gl_FragColor = output;
 }
