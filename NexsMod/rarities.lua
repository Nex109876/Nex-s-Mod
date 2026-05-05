SMODS.Rarity {
    key = "unimplimented",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('7ed321'),
    loc_txt = {
        name = "unimplimented"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}