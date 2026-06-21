SMODS.Joker {
    key = '4',
    atlas = 'placeholders',
    pos = { x = 3, y = 0 },
    rarity = 3, -- Rare
    cost = 7,

    config = { extra = {} },

    calculate = function(self, card, context)
        if context.using_consumeable
        and context.consumeable
        and context.consumeable.ability.set == 'Planet' then
            ease_dollars(3)

            local lowest_card = nil
            local lowest_value = math.huge
            for _, v in pairs(G.playing_cards) do
                if not SMODS.has_enhancement(v, 'm_stone') then
                    local id = v:get_id()
                    if id < lowest_value then
                        lowest_value = id
                        lowest_card = v
                    end
                end
            end
            if lowest_card then
                if lowest_card.area == G.hand then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.15, func = function()
                        lowest_card:flip(); play_sound('card1', 1, 0.6); lowest_card:juice_up(0.3, 0.3); return true
                    end}))
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
                        lowest_card:set_ability(G.P_CENTERS.m_stone); return true
                    end}))
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.15, func = function()
                        lowest_card:flip(); play_sound('tarot2', 1, 0.6); lowest_card:juice_up(0.3, 0.3); return true
                    end}))
                else
                    lowest_card:set_ability(G.P_CENTERS.m_stone)
                end
            end

            return {
                message = localize('$')..3,
                colour = G.C.MONEY
            }
        end
    end
}
