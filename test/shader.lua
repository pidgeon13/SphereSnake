myShader = love.graphics.newShader[[
bool cp(float val1, float val2){
return abs(val1 - val2) < 1;
}

//extern float alpha;
bool cp2(float val1, float val2, float rad){
return abs(val1*val1 + val2*val2 - rad*rad) < rad;
}

vec4 effect(vec4 color, Image texture, vec2 tc, vec2 sc){
if(cp2(sc.x-150,sc.y-150,10)){
return color;
}
return 0.7*color;
}

]]