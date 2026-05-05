
SMODS.Joker{ --Stacker
    key = "stacker",
    config = {
        extra = {
            ScalerMult = 5
        }
    },
    loc_txt = {
        ['name'] = 'Stacker',
        ['text'] = {
            [1] = 'This Joker gains {C:mult}+5 {} Mult at the end of a round',
            [2] = '{C:inactive}(Currenty{} {s:1.1}{C:mult}#1#{}{}{} {C:inactive}Mult){}'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["N10_nexs_mod"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.ScalerMult}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            return {
                func = function()
                    card.ability.extra.ScalerMult = (card.ability.extra.ScalerMult) + 5
                    return true
                end,
                message = "Scaling"
            }
        end
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = card.ability.extra.ScalerMult
            }
        end
    end
}