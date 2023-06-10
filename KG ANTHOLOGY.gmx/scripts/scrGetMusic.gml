///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{
    case rMMCard:
        roomSong = musFrozenTitle
        break;
    case rSnow1:
    case rSnow2:
    case rSnow3:
    case rSnow4:
    case rSnow5:
    case rSnow6:
    case rSnow7:
    case rSnowTransition2:
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
    case rBeachCard:
    case rBeachIntro:
    case rBeachHotel:
    case rBeachHammock:
    case rBeachHammock2:
    case rBeachBasketball:
    case rBeachDrink1:
    case rBeachDrink2:
    case rBeachCombo:
        roomSong = musBeach
        break;
    case rStorm2:
    case rStorm3:
    case rStorm4:
    case rStorm5:
    case rStorm6:
        roomSong = musRainstorm;
        break;
    case rPirate1:
    case rPirate2:
    case rPirate3:
    case rPirate4:
    case rPirate5:
        roomSong = musPirateShip
        break;
    case rBeachNight1:
    case rBeachNight2:
    case rBeachNight3:
        roomSong = musBeachEnding
        break;
    case rField1:
    case rField2:
    case rField3:
    case rField4:
    case rField5:
    case rField6:
    case rField7:
    case rField8:
    case rField9:
        roomSong = musComputer
        break;
    case rFieldBoss:
        roomSong = musComputerBoss
        break;
    case rDungeon1:
    case rDungeon2:
    case rDungeon3:
    case rDungeon4:
    case rDungeon5:
    case rDungeon6:
    case rDungeon7:
    case rDungeon8:
    case rDungeon9:
        roomSong = musDungeon
        break;
    case rPBCutscene1:
        roomSong = musComputerCutscene
        break;
    case rPBCard:
        roomSong = musPBTitleCard
        break;
    case rTitle:
    case rMenu:
        roomSong = musFileSelect
        break;
    case rAchievementCheck:
        roomSong = musAchievementLoop
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
