--[[
    This legendary joker, "Mammon", with the effects of:
    • Joker slots +1 
    • +1 slots per 15 jokers sold (X remaining)
    • (max +5 slots)

    -> Based on the symbol of Greed from mythology, appearance from Helluva Boss  
]]

--[[
    !Known Bugs:
    - Adding a large amount of copies of this joker will cause issues, getting to 0/-30 jokers.
]]

SMODS.Joker {
    key = '1',
    atlas = 'placeholders',
    pos = {
        x = 0,
        y = 0
    },
    rarity = 4, -- Legendary
    cost = 20,  -- Default Legendary Cost

    -- Store the variable representing the amount of jokers sold and slots gained
    config = {
        extra = {
            jokers_sold = 0,
            added_slots = 1,
        }
    },

    -- Calculate the actual effects of this joker
    calculate = function(self, card, context)
        if context.card == card then return end -- Guard against self sell
        if context.selling_card then
            card.ability.extra.jokers_sold = card.ability.extra.jokers_sold + 1

            -- Start at adding 1, increase by 1 for every 15 sold, caps at 5
            local slots = math.min(1 + math.floor(card.ability.extra.jokers_sold / 15), 5)

            if card.ability.extra.added_slots ~= slots then
                G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                card.ability.extra.added_slots = slots
                return {
                    message = "UPGRADE!"
                }
            end
        end
    end,

    -- Store the variables to be used in display
    loc_vars = function(self, info_queue, card)
        local remaining =
            card.ability.extra.added_slots < 5
            and "[" .. 15 - (card.ability.extra.jokers_sold % 15) .. "] "
            or ""

        return {
            vars = {
                card.ability.extra.added_slots,     -- Added slots
                remaining                           -- Remaining to next
            }
        }
    end,


    -- Effect when joker is added to the deck
    add_to_deck = function(self, card, from_debuff)
        card:set_edition("e_negative", true)
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.added_slots
    end,

    -- Effect when joker is removed from the deck
    remove_from_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.added_slots
    end
}