/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_score)
var pc;
pc = (myscore / totalHp) * 100;
draw_healthbar(20, 50, 120, 100, pc, c_black, c_red, c_lime, 0, true, true)
draw_text(55,65,pc)
