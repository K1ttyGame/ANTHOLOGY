//scrCombine(item1, item2)
item1 = argument0
item2 = argument1

if (item1 == item2)
    audio_play_sound(sndInventoryCantAccess, 10, false)

else if (item1 == 3 && item2 == 1) || (item1 == 1 && item2 == 3){ //per instance cases for combination
    ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item1))
    ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item2))
    ds_list_add(global.inventory, 4)
    combineIndex = 0
    puzzleIndex = ds_list_find_index(global.inventory, 4)
    combine = false
    global.gotItem[4] = true
    scrSaveGame(false)
}

else if (item1 == 5 && item2 == 6) || (item1 == 6 && item2 == 5){ //per instance cases for combination
    ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item1))
    ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item2))
    ds_list_add(global.inventory, 2)
    combineIndex = 0
    puzzleIndex = ds_list_find_index(global.inventory, 1)
    combine = false
    global.gotItem[2] = true
    scrSaveGame(false)
}

else
    audio_play_sound(sndInventoryCantAccess, 10, false)
