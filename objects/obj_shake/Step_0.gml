/// @description Insert description here
// You can write your code in this editor
fx_set_parameter(shake_fx, "g_Magnitude", shake_magnitude);
fx_set_parameter(shake_fx, "g_ShakeSpeed", shake_speed);

// Fall to 0
if (shake_magnitude > 0)
{
	shake_magnitude -= 0.2;
}