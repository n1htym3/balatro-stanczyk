SMODS.Booster {
    key = 'booster1',
    config = {
        choose = 1,
        extra = 4
    },
    group_key = 'k_stanczyk_newpack',
    weight = 1,
    kind = 'NewPack',
    create_card = function(self, card, i)
        return {set = 'stanczyk_newtype', area = G.consumeables, skip_materialize = true, soulable = true, key_append = 'newpackgen', }
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { math.min(card.ability.choose + (G.GAME.modifiers.booster_choice_mod or 0), math.max(1, card.ability.extra + (G.GAME.modifiers.booster_size_mod or 0))), math.max(1, card.ability.extra + (G.GAME.modifiers.booster_size_mod or 0)) } }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.SET.Tarot)
        ease_background_colour({ new_colour = G.C.SET.Tarot, special_colour = G.C.BLACK, contrast = 2 })
    end,
}