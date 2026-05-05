
SMODS.Joker{ --Minimize
    key = "minimize",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Minimize',
        ['text'] = {
            [1] = 'All played face cards turn into Jacks,',
            [2] = 'All numbered cards turn into 2s'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    display_size = {
        w = 71 * 0.7, 
        h = 95 * 0.7
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    dependencies = {"Cryptid"},
    pools = { ["N10_nexs_mod"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_face() then
                local scored_card = context.other_card
                G.E_MANAGER:add_event(Event({
                    func = function()
                        
                        assert(SMODS.change_base(scored_card, nil, "Jack"))
                        card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Minimize", colour = G.C.ORANGE})
                        return true
                    end
                }))
            elseif ((context.other_card:get_id() == 2 or context.other_card:get_id() == 4 or context.other_card:get_id() == 6 or context.other_card:get_id() == 8 or context.other_card:get_id() == 10) or (context.other_card:get_id() == 14 or context.other_card:get_id() == 3 or context.other_card:get_id() == 5 or context.other_card:get_id() == 7 or context.other_card:get_id() == 9)) then
                local scored_card = context.other_card
                G.E_MANAGER:add_event(Event({
                    func = function()
                        
                        assert(SMODS.change_base(scored_card, nil, "2"))
                        card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Minimize", colour = G.C.ORANGE})
                        return true
                    end
                }))
            end
        end
    end
}