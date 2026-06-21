SMODS.Joker {
    key = '5',
    atlas = 'placeholders',
    pos = { x = 4, y = 0 },
    rarity = 3, -- Rare
    cost = 7,

    config = { extra = { x_mult = 1 } },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult } }
    end,

    calculate = function(self, card, context)
        if context.selling_card and not context.blueprint_card then
            if context.card == card then return end
            local rarity = context.card.config.center.rarity
            if rarity == 3 then
                card.ability.extra.x_mult = card.ability.extra.x_mult + 0.75
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.RED,
                }
            end
        end
        if context.joker_main then
            if card.ability.extra.x_mult > 1 then
                return {
                    message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.x_mult } },
                    x_mult = card.ability.extra.x_mult,
                }
            end
        end
    end,
}
