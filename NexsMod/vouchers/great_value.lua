
SMODS.Voucher {
    key = 'great_value',
    pos = { x = 0, y = 0 },
    loc_txt = {
        name = 'Great Value',
        text = {
            [1] = 'Get {C:blue}+1{} {C:money}Money{} per {C:blue}Hand'
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
    atlas = 'CustomVouchers',
    redeem = function(self, card)
        G.GAME.modifiers.money_per_hand =  (G.GAME.modifiers.money_per_hand or 1) +1
    end
}