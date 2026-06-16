SMODS.Joker {
    key = '5',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },
    rarity = 2,
    cost = 6
}

local csc = Card.set_cost
Card.set_cost = function(self)
    csc(self)
    if next(SMODS.find_card('j_stanczyk_5')) then
        self.cost = self.cost / 2
    end
end
