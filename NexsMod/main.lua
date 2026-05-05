SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomBoosters", 
    path = "CustomBoosters.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomEnhancements", 
    path = "CustomEnhancements.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomVouchers", 
    path = "CustomVouchers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomDecks", 
    path = "CustomDecks.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end
-- this function is used to load everything within a folder.-- Jokerforge doesnt use it because it doesnt make loading order easy
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/jimbo.lua"))()
    assert(SMODS.load_file("jokers/stacker.lua"))()
    assert(SMODS.load_file("jokers/oinac.lua"))()
    assert(SMODS.load_file("jokers/minimize.lua"))()
    assert(SMODS.load_file("jokers/nex1000.lua"))()
    assert(SMODS.load_file("jokers/mitosis.lua"))()
end
-- load the enhancements
if true then
    assert(SMODS.load_file("enhancements/platinum.lua"))()
end

-- load the vouchers
if true then
    assert(SMODS.load_file("vouchers/great_value.lua"))()
    assert(SMODS.load_file("vouchers/exceptional_value.lua"))()
end

-- load the decks
if true then
    assert(SMODS.load_file("decks/nexs_deck.lua"))()
    assert(SMODS.load_file("decks/purple_deck2.lua"))()
end



assert(SMODS.load_file("rarities.lua"))()


-- load boosters
assert(SMODS.load_file("boosters.lua"))()
SMODS.ObjectType({
    key = "N10_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "N10_nexs_mod",
    cards = {
        ["j_N10_jimbo"] = true,
        ["j_N10_stacker"] = true,
        ["j_N10_oinac"] = true,
        ["j_N10_minimize"] = true,
        ["j_N10_nex1000"] = true
    },
})

SMODS.ObjectType({
    key = "N10_N10_jokers",
    cards = {
        ["j_N10_mitosis"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {} 
    }
end