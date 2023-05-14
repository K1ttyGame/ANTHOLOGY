//scrDrawInventory()
if (ds_list_size(global.inventory) != 0) {
    var itemSprite;
    var itemName;
    var itemDescription;
    
    switch (global.inventory[|puzzleIndex]) {
        case 0:
            itemSprite = sprNotebook
            itemName = "Ripped Notebook"
            itemDescription = "A notebook that has its edges torn. Perhaps there's something inside on the pages?"
            break;
        case 1:
            itemSprite = sprCatKey
            itemName = "Cat Key"
            itemDescription = "Your old house key! Has a picture of a cat on it! Meow!"
            break;
        case 2:
            itemSprite = sprFireAxe
            itemName = "Fire Axe"
            itemDescription = "Hey! Don't go swinging that thang around! You might break some glass if you do that."
            break;
        case 3:
            itemSprite = sprCatKeychain
            itemName = "Cat Keychain"
            itemDescription = "A cute and sweet keychain shaped like a cat. Reminds you of middle school. If only you had your old house key..."
            break;
        case 4:
            itemSprite = sprCatKeyWKeychain
            itemName = "Cat Keychain Set"
            itemDescription = "Our writers would like to apologize for the description of the Cat Key item."
            break;
        case 5:
            itemSprite = sprFireAxeHead
            itemName = "Fire Axe Head"
            itemDescription = "The sharp head of what could have been a worn down fire axe."
            break;
        case 6:
            itemSprite = sprFireAxeHandle
            itemName = "Fire Axe Handle"
            itemDescription = "A fire axe handle that, without context, could be mistaken for a stick."
            break;
        case 7:
            itemSprite = sprLighter
            itemName = "Lighter"
            itemDescription = "A lighter. You reminisce about how much you love drinking Miller Lite..."
            break;
        case 8:
            itemSprite = sprScrapPaper1
            itemName = "Scrap Paper [A]"
            itemDescription = "An old piece of scrap paper. Barely legible."
            break;
        case 9:
            itemSprite = sprScrapPaper2
            itemName = "Scrap Paper [B]"
            itemDescription = "An old piece of scrap paper. Barely legible."
            break;
        case 10:
            itemSprite = sprScrapPaper3
            itemName = "Scrap Paper [C]"
            itemDescription = "An old piece of scrap paper. Barely legible."
            break;
        case 11:
            itemSprite = sprScrapPaper4
            itemName = "Ancient Sumerian Tablet"
            itemDescription = "Wow, thank god you learned Ancient Sumerian in college."
            break;
        case 12:
            itemSprite = sprBookshelfBook
            itemName = "Math Education Book"
            itemDescription = "A series of books intended to teach children simple math. Looks overdue; the overdraft fees are in the hundreds of thousands."
            break;
        case 13:
            itemSprite = sprFridgeDoorHandle
            itemName = "Door Handle"
            itemDescription = "The broken-off handle of what use to be a complete door. Cold to the touch."
            break;
        case 14:
            itemSprite = sprCamera
            itemName = "Disposable Camera"
            itemDescription = "Has a few charges left. Can be used to take pictures of interesting items."
            break;
        case 15:
            itemSprite = sprPolaroid
            itemName = "Baseball Player Picture"
            itemDescription = "A picture of that cool old-school baseball player you saw earlier."
            break;
        case 16:
            itemSprite = sprPolaroid
            itemName = "Bulletin Board Picture"
            itemDescription = "A picture of that strange bulletin board you saw earlier."
            break;
    }    
    
    var swapName;
    switch (global.inventory[|combineIndex]) { //mirror name from above
        case 0:
            swapName = "Ripped Notebook"
            break;
        case 1:
            swapName = "Cat Key"
            break;
        case 2:
            swapName = "Fire Axe"
            break;
        case 3:
            swapName = "Cat Keychain"
            break;
        case 4:
            swapName = "Complete Cat / Keychain Set"
            break;
        case 5:
            swapName = "Fire Axe Head"
            break;
        case 6:
            swapName = "Fire Axe Handle"
            break;
        case 7:
            swapName = "Lighter"
            break;
        case 8:
            swapName = "Scrap Paper [A]"
            break;
        case 9:
            swapName = "Scrap Paper [B]"
            break;
        case 10:
            swapName = "Scrap Paper [C]"
            break;
        case 11:
            swapName = "Ancient Sumerian Tablet"
            break;
        case 12:
            swapName = "Math Education Book"
            break;
        case 13:
            swapName = "Door Handle"
            break;
        case 14:
            swapName = "Disposable Camera"
            break;
        case 15:
            swapName = "Baseball Player Picture"
            break;
        case 16:
            swapName = "Bulletin Board Picture"
            break;
    }
    
    draw_sprite(itemSprite, 0, 200, 304)
    draw_set_font(fDefault30)
    draw_set_halign(fa_center)
    draw_text_ext(600, 152, itemName, 36, 75)
    
    draw_set_font(fDefault12)
    draw_text_ext(600, 304, itemDescription, 14, 250)
    
    draw_text_ext(600, 464, "[I] to Use / Inspect", 14, 250)
    
    
    if (combine) {
        draw_text_ext(600, 496, "Confirm with [Y]. Exit with [U].", 14, 250)
        draw_text_ext(600, 528, "Combine with: " + swapName, 14, 250)
    }
    else
        draw_text_ext(600, 496, "[U] to Combine", 14, 250)
    
    var i;
    for (i = 0; i < ds_list_size(global.inventory); i++) {
        if (i == puzzleIndex)
            draw_sprite(sprTopBar, 1, 16*(i+1), 16)
        else
            draw_sprite(sprTopBar, 0, 16*(i+1), 16)
        }
    
}

else {
    draw_set_font(fDefault30)
    draw_set_halign(fa_center)
    draw_text(400, 304, "Pockets are empty!")
}
