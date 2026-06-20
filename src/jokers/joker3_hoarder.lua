SMODS.Joker {
    key = '3',
    atlas = 'placeholders',
    pos = {
        x = 2,
        y = 0
    },
    rarity = 2, -- Uncommon
    cost = 5,

    config = { extra = {} },

    calculate = function(self, card, context)
        if context.selling_card then
            if context.card == card then return end
            local set = context.card.config.center.set
            if set == 'Joker' or set == 'Tarot' or set == 'Planet' or set == 'Spectral' then
                card:start_dissolve()
            end
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost + 2
        calculate_reroll_cost(true)
        -- card is not in G.jokers yet so find_joker won't find it; set directly
        if G.shop_jokers then for _, v in ipairs(G.shop_jokers.cards) do v.cost = 0 end end
        if G.shop_booster then for _, v in ipairs(G.shop_booster.cards) do v.cost = 0 end end
        if G.shop_vouchers then for _, v in ipairs(G.shop_vouchers.cards) do v.cost = 0 end end
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost - 2
        calculate_reroll_cost(true)
        -- card is still in G.jokers at this point; defer set_cost until after removal
        G.E_MANAGER:add_event(Event({func = function()
            if G.shop_jokers then for _, v in ipairs(G.shop_jokers.cards) do v:set_cost() end end
            if G.shop_booster then for _, v in ipairs(G.shop_booster.cards) do v:set_cost() end end
            if G.shop_vouchers then for _, v in ipairs(G.shop_vouchers.cards) do v:set_cost() end end
            return true
        end}))
    end
}
