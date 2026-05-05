
SMODS.Booster {
    key = 'nexs_mod_booster',
    loc_txt = {
        name = "Nex's Mod Booster",
        text = {
            [1] = 'Choose {C:attention}1{} of up to {C:attention}3{} {C:green}Nex\'s mod{} Joker cards'
        },
        group_name = "Select 1 of 3 Jokers"
    },
    config = { extra = 3, choose = 1 },
    cost = 10,
    atlas = "CustomBoosters",
    pos = { x = 0, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
            set = "N10_nexs_mod",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "N10_nexs_mod_booster"
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("4a90e2"))
        ease_background_colour({ new_colour = HEX('4a90e2'), special_colour = HEX("4a90e2"), contrast = 2 })
    end,
    particles = function(self)
        -- No particles for joker packs
        end,
    }
    