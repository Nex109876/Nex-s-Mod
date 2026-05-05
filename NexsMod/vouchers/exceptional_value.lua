
SMODS.Voucher {
    key = 'exceptional_value',
    pos = { x = 1, y = 0 },
    loc_txt = {
        name = 'Exceptional Value',
        text = {
            [1] = 'Get {C:blue}+1{} more {C:money}Money{} per {C:blue}Hand'
        },
        unlock = {
            [1] = 'Unlocked by default.'
        }
    },
    cost = 10,
    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    requires = {'undefined'},
    atlas = 'CustomVouchers',
    redeem = function(self, card)
        G.GAME.modifiers.money_per_hand =  (G.GAME.modifiers.money_per_hand or 1) +1
    end
}