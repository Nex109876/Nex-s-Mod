
SMODS.Joker{ --Jimbo
    key = "jimbo",
    config = {
        extra = {
            xmult0 = 4
        }
    },
    loc_txt = {
        ['name'] = 'Jimbo',
        ['text'] = {
            [1] = '{X:red,C:white}X4{} Mult'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["N10_nexs_mod"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                Xmult = 4
            }
        end
    end
}