SMODS.ConsumableType {
    key = 'xmpl_newtype',
    primary_colour = HEX('7732a8'),
    secondary_colour = HEX('1ef7f0'),
    default = 'c_xmpl_consumable2',
    shop_rate = 0,
}

SMODS.Consumable {
    key = 'consumable2',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 2
    },
    config = {
        extra = {
            dollars = 5
        }
    },
    set = 'xmpl_newtype',
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars,
                card.ability.extra.dollars * G.GAME.hands_played
            }
        }
    end,
    use = function(self, card, area, copier)
        ease_dollars(card.ability.extra.dollars * G.GAME.hands_played)
    end,
    can_use = function(self, card)
        return true
    end,
}