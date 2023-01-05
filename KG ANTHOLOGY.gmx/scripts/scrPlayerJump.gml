if ((place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater)) || (coyote > 0))
{
    vspeed = -jump;
    djump = 1;
    audio_play_sound(sndJump,0,false);
    coyote = 0
}
else if (djump == 1 || place_meeting(x,y+(global.grav),objWater2) || global.infJump)
{

    if (instance_exists(objElectricityControl) && instance_exists(objDoubleJumpControl) && objElectricityControl.electricity == false) {
        scrKillPlayer()
        objDoubleJumpControl.flag = true
        audio_play_sound(sndLightningBolt, 10, false)
    }
  

    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,false);
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        djump = 0;  //take away the player's double jump
    else
        djump = 1;  //replenish djump if touching water3
}
