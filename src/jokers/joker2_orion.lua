--[[
    This legendary joker, "Orion", with the effects of:
    • Every planet card becomes a black hole with a cost of $0
    

    -> Based on the painting of Stańczyk, which shows the Orion constellation as a symbol of ego leading to demise.
]]

SMODS.Joker {
    key = '2',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },
    rarity = 4,
    cost = 20,

    config = {
        extra = {
        }
    },

    calculate = function(self, card, context)

        if context.modify_shop_card and context.card and context.card.config.center.key == 'c_black_hole' then
            context.card.cost = 0
            context.card.sell_cost = 0
        end

        if context.create_shop_card and context.set == 'Planet' then
            return {
                shop_create_flags = { 
                    key = 'c_black_hole' 
                }
            }
        end
    end

}