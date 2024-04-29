void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord / iResolution.xy - 0.5 / 1.0;
    float d = length(uv);
    
    d -=0.5;
    d = abs(d);
    
    float s = length(uv);
    s -= 1.1;
    s = abs(s);

   fragColor = vec4((d/s)+0.1,(d/s)+0.1,(d/s)+0.1,1);
}
