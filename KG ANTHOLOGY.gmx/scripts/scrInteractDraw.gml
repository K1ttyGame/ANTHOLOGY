//scrInteractDraw(itemID)
itemID = argument0
draw_set_color(c_black)
draw_set_alpha(.8)
draw_rectangle(view_xview-1, view_yview-1, view_xview+view_wview+1, view_yview+view_hview+1, false)
draw_set_color(c_white)
draw_set_alpha(1)

if (itemID == 0)
    draw_sprite(sprNotebookOpen, 0, 400, 304)
    
if (itemID >= 8 && itemID <= 11) {
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_font(fDefault18)
    var msg = ""
    if (itemID == 8)
        msg = 'Anthony spoke first: "Brandon' + "'s card is a diamond. My card is a club. Cy's card is a 9." + '"'
    if (itemID == 9)
        msg = 'Brandon spoke after: "Looks like my card was a 2. Anthony' + "'s card was a 4, and Cy's card was a heart." + '"'
    if (itemID == 10)
        msg = 'Cy spoke finally: "Brandon' + "'s card is a 5. Anthony's card was a diamond. My card was a 10." + '"'
    if (itemID == 11)
        msg = "3 people sat at a table in alphabetical order. Each drew a card from a standard 52-card deck and showed it to each other. They were then asked to tell me about the qualities of each others' cards. 
        
        One of them is a liar."
    
    draw_set_color(c_white)
    draw_text_ext(room_width/2+1, room_height/2, msg, 48, room_width/1.5)
    draw_text_ext(room_width/2-1, room_height/2, msg, 48, room_width/1.5)
    draw_text_ext(room_width/2, room_height/2+1, msg, 48, room_width/1.5)
    draw_text_ext(room_width/2, room_height/2-1, msg, 48, room_width/1.5)
        
    draw_set_color(c_black)
    draw_text_ext(room_width/2, room_height/2, msg, 48, room_width/1.5)
    
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
}

if (itemID == 15) {
    draw_background_tiled_ext(bMansionBGLighter, 0, 0, 3, 3, c_white, 1)
    draw_sprite_ext(sprMansionPoster1, 0, 408, 312, 1, 1, 0, c_black, .8)
    draw_sprite(sprMansionPoster1, 0, 400, 304)
}
        
if (itemID == 16) {
    draw_background_tiled_ext(bMansionBGLighter, 0, 0, 3, 3, c_white, 1)
    draw_sprite_ext(sprMansionPoster2, 0, 408, 312, 1, 1, 0, c_black, .8)
    draw_sprite(sprMansionPoster2, 0, 400, 304)
}

if (itemID == 15 || itemID == 16) {
    draw_set_color(c_black)
    draw_rectangle(-2, -32, -500, 608+32, false)
    draw_rectangle(800, -32, 1300, 608+32, false)
    draw_set_color(c_white)
}
