
SMODS.Enhancement {
    key = 'platinum',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            Handmult = 1,
            PlayMult = 1
        }
    },
    loc_txt = {
        name = 'Platinum',
        text = {
            [1] = 'Gains {X:red,C:white}0.5X{} Mult when held in hand',
            [2] = 'Gains {X:blue,C:white}1X{} Chips when scored',
            [3] = 'Gives {X:red,C:white}#1#{} Mult when held in hand',
            [4] = 'Gives {X:blue,C:white}#2#{} Chips when scored'
        }
    },
    atlas = 'CustomEnhancements',
    any_suit = false,
    replace_base_card = false,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Handmult, card.ability.extra.PlayMult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand and context.main_scoring then
            return {
                func = function()
                    card.ability.extra.Cardmult = (card.ability.extra.Cardmult) + 0.5
                    return true
                end,
                extra = {
                    Xmult = card.ability.extra.Cardmult
                }
            }
        end
        if context.main_scoring and context.cardarea == G.play then
            card.ability.extra.PlayMult = (card.ability.extra.PlayMult) + 1
            return {
                x_chips = card.ability.extra.PlayMult
            }
        end
    end
}