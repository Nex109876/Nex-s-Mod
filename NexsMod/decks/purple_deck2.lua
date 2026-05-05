
SMODS.Back {
    key = 'purple_deck2',
    pos = { x = 1, y = 0 },
    config = {
    },
    loc_txt = {
        name = 'Purple Deck',
        text = {
            [1] = '{C:red}+1 Discards{}, {C:blue}+1 Hands{},',
            [2] = 'No money gained from excess hands'
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'CustomDecks',
    apply = function(self, back)
        G.GAME.starting_params.hands = G.GAME.starting_params.hands + 1
        G.GAME.starting_params.hands = G.GAME.starting_params.hands + 1
        G.GAME.modifiers.money_per_hand =  (G.GAME.modifiers.money_per_hand or 1) -1
    end
}