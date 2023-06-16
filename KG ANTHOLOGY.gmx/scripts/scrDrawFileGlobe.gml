//scrDrawFileGlobe(fileExists, completion, globeX, globeScale, globeAngle)

//fileExists: Bool if the specified file exists
//completion: Completion percentage out of 100 for file completed-ness
//globeX, globeScale, globeAngle: globe drawing data passed from objNewFileMenu variables

var fileExists = argument0
var completion = argument1
var globeX = argument2
var globeScale = argument3
var globeAngle = argument4

if !(fileExists) {
    shader_set(shdGrayscale)
    draw_sprite_ext(sprGlobeEmpty, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1)
    shader_reset()
}
else {
    if (completion >= 0 && completion <= 20)
       draw_sprite_ext(sprGlobeEmpty, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1) 
    if (completion >= 25 && completion <= 40)
       draw_sprite_ext(sprGlobe20_40Percent, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1) 
    if (completion >= 45 && completion <= 60)
       draw_sprite_ext(sprGlobe40_60Percent, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1) 
    if (completion >= 65 && completion <= 80)
       draw_sprite_ext(sprGlobe60_80Percent, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1) 
    if (completion >= 85 && completion <= 100)
       draw_sprite_ext(sprTitleGlobeFull, 0, globeX, 304, globeScale, globeScale, globeAngle, c_white, 1) 
}
