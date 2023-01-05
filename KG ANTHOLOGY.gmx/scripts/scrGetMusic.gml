///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{
    case rTitle:
    case rMenu:
    case rOptions:
        roomSong = musFrozenTitle
        break;
    case rSnow1:
    case rSnow2:
    case rSnow3:
    case rSnow4:
    case rSnow5:
    case rSnow6:
    case rSnow7:
        roomSong = musFrozenIceWorld
        break;
    case rCave1:
    case rCave2:
    case rCave3:
    case rCave4:
    case rCave5:
    case rCave6:
    case rCave7:
        roomSong = musFrozenCavern
        break;
    case rSnowCaveTransition:
        roomSong = musFrozenTransitionLoop
        break;    
    case rFrozenBoss:
        roomSong = musFrozenMMBoss;
        break;
    case rClear:
        roomSong = musFrozenClear
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
