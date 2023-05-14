//scrInteract(itemID)
itemID = argument0

if (itemID == 0 || itemID == 8 || itemID == 9 || itemID == 10 || itemID == 11 || itemID == 15 || itemID == 16) {
    //do nothing for this case, just displaying the book sprite
}

else if (itemID == 7 && (instance_exists(objGardenItemDoor) && objGardenItemDoor.glass == false && objPlayer.x >= objGardenItemDoor.x && objPlayer.x <= objGardenItemDoor.x+96 && objPlayer.y >= objGardenItemDoor.y && objPlayer.y <= objGardenItemDoor.y+64)) {
    ds_list_delete(global.inventory, puzzleIndex)
    puzzleGUI = false
    puzzleIndex = 0
    with objGardenItemDoor instance_destroy()
    audio_play_sound(sndPuzzleSolved, 10, false)
    interact = false
}

else if (itemID == 2 && (instance_exists(objGardenItemDoor) && objGardenItemDoor.glass == true && objPlayer.x >= objGardenItemDoor.x-96 && objPlayer.x <= objGardenItemDoor.x && objPlayer.y >= objGardenItemDoor.y && objPlayer.y <= objGardenItemDoor.y+64)) {
    ds_list_delete(global.inventory, puzzleIndex)
    puzzleGUI = false
    puzzleIndex = 0
    with objGardenItemDoor instance_destroy()
    audio_play_sound(sndPuzzleSolved, 10, false)
    interact = false
}

else if (itemID == 4 && (instance_exists(objPuzzleInteract) && objPuzzleInteract.mode == 7 && objPlayer.x >= objPuzzleInteract.x && objPlayer.x <= objPuzzleInteract.x+32 && objPlayer.y >= objPuzzleInteract.y && objPlayer.y <= objPuzzleInteract.y+32)) {
    ds_list_delete(global.inventory, puzzleIndex)
    puzzleGUI = false
    puzzleIndex = 0
    audio_play_sound(sndPuzzleSolved, 10, false)
    scrSaveGame(false)
    interact = false
}

else if (itemID == 12 && x >= 344 && x <= 480 && y >= 96 && y <= 160) {
    ds_list_delete(global.inventory, puzzleIndex)
    puzzleGUI = false
    puzzleIndex = 0
    audio_play_sound(sndPuzzleSolved, 10, false)
    scrSaveGame(false)
    interact = false
    with instance_create(288, 64, objSaveBlocker) {
        visible = true
        sprite_index = sprBookOnBookshelf
    }
}

else if (itemID == 13 && instance_place(x, y, objPuzzleFridge)) {
    ds_list_delete(global.inventory, puzzleIndex)
    puzzleGUI = false
    puzzleIndex = 0
    audio_play_sound(sndPuzzleSolved, 10, false)
    scrSaveGame(false)
    interact = false
    if instance_exists(objPuzzleFridge) {
        objPuzzleFridge.unlocked = true
    }
}

else if (itemID == 14 && instance_place(x, y, objPuzzleInteract)) {
    puzzleGUI = false
    puzzleIndex = 0
    scrSaveGame(false)
    if (objPuzzleInteract.mode == 9) {
        ds_list_add(global.inventory, 15)
        global.gotItem[15] = true
        instance_create(0, 0, objCameraShutterFX)
    }
    
    if (objPuzzleInteract.mode == 10) {
        ds_list_add(global.inventory, 16)
        global.gotItem[16] = true
        instance_create(0, 0, objCameraShutterFX)
    }
    
    if (global.gotItem[15] && global.gotItem[16]) {
        puzzleIndex = ds_list_find_index(global.inventory, 14)
        ds_list_delete(global.inventory, puzzleIndex)
        puzzleIndex = 0
    }
    
    interact = false
}


else { //case for item you can't interact with
    audio_play_sound(sndInventoryCantAccess, 10, false) //placeholder
    interact = false
}

//show_debug_message("Current Item: " + string(itemID))
