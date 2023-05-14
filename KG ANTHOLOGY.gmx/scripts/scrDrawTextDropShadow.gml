//scrDrawTextDropShadow(text, mainColor, x, y)
var text = argument0
var mainColor = argument1
var drawX = argument2
var drawY = argument3

draw_set_color(c_black)
draw_set_alpha(.4)
draw_text(drawX+2, drawY+2, text)

draw_set_color(mainColor)
draw_set_alpha(1)
draw_text(drawX, drawY, text)

draw_set_color(c_white)
