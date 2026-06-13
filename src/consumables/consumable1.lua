SMODS.Consumable {
    key = 'consumable1',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 2
    },
    config = {
        extra = {
            dollars = 10
        }
    },
    set = 'Tarot',
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars
            }
        }
    end,
    use = function(self, card, area, copier)
        ease_dollars(card.ability.extra.dollars)
    end,
    can_use = function(self, card)
        return G.GAME.blind
    end,
}