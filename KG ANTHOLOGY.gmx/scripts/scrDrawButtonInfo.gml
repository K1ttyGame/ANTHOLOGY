///scrDrawButtonInfo(optionsText)
///draws the button control info for menus
///argument0 - sets whether to draw the text for entering the options menu

//button info
//draw_set_font(fDefault12);
draw_set_font(fTitleFontSmall); //new font, replace if too big
draw_set_valign(fa_top)
draw_set_halign(fa_left);
draw_text(34,572,"[Shift] Access File");
draw_set_halign(fa_right);
draw_text(766,572,"[Enter] Access Options");

//draw button info for the options menu
draw_set_halign(fa_middle);
draw_text(400,572,"[<] Browse Files [>]");
