//kills the player

if (instance_exists(objPlayer) && !global.noDeath)
{
    if (global.gameStarted) //normal death
    {
        global.deathSound = audio_play_sound(sndDeath,0,false);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
        }
        
        with (objPlayer) {
            switch (room) {
                case rBeachHotel:
                case rBeachIntro:
                case rBeachHammock:
                case rBeachHammock2:
                case rBeachBasketball:
                case rBeachDrink1:
                case rBeachDrink2:
                case rBeachCombo:
                case rBeachCutscene:
                case rStorm2:
                case rStorm3:
                case rStorm4:
                case rStorm5:
                case rStorm6:
                case rStormCutscene:
                case rPirate1:
                case rPirate2:
                case rPirate3:
                case rPirate4:
                case rPirate5:
                    instance_create(x,y,objBeachDeath);
                    break;
                case rSnow0:
                case rSnowTransition:
                case rSnow1:
                case rSnow2:
                case rSnow3:
                case rSnow4:
                case rSnow5:
                case rSnow6:
                case rSnow7:
                case rSnow8:
                case rSnowTransition2:
                case rCave1:
                case rCave2:
                case rCave3:
                case rCave4:
                case rCave5:
                case rCave6:
                case rCave7:
                case rFrozenBoss:
                    instance_create(x,y,objBloodEmitter);
                    break;
            }
            instance_destroy();
        }
        
        instance_create(0,0,objGameOver);
        
        global.death += 1; //increment deaths
            
        scrSaveGame(false); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        with(objPlayer)
            instance_destroy();
            
        room_restart();
    }
}
