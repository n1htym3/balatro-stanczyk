return {
    descriptions = {
        Joker = {
            j_stanczyk_1 = {
            --[[
                This legendary joker, "Mammon", with the effects of:
                • Joker slots +1 
                • +1 slots per 15 jokers sold (X remaining)
                • (max +5 slots)

                -> Based on the symbol of Greed from mythology, appearance from Helluva Boss  

            ]]
                name = 'Mammon',
                text = {
                    {
                        'Gain {C:attention}1{} Joker slot',
                        'per {C:attention}15{} {C:inactive}#2#{}Jokers {C:attention}sold{}',
                        '{C:inactive}(Currenty {C:attention}+#1#{C:inactive} slots){}'
                    },
                    {
                        '{C:inactive}Max +5 slots'
                    }
                }
            },
            j_stanczyk_2 = {
                name = 'Orion',
                text = {
                    {
                        'Every {C:planet}Planet{} becomes',
                        'a {C:spectral}Black Hole{} costing {C:money}$0{}'
                    }
                }
            },
            j_stanczyk_3 = {
                name = 'Hoarder',
                text = {
                    {
                        'All shop items cost {C:money}$0{}',
                        '{C:attention}Rerolls{} cost {C:money}$2{} more',
                    },
                    {
                        '{E:2,C:red}Self destructs{} if any',
                        '{C:attention}Joker{} or {C:planet}Consumable{} is sold'
                    }
                }
            },
            j_stanczyk_4 = {
                name = 'Compromising Crown',
                text = {
                    {
                        'Using a {C:planet}Planet{} card',
                        'gives {C:money}$3{} and turns the',
                        '{C:attention}lowest{} ranked card',
                        'in deck to {C:attention}Stone{}'
                    }
                }
            },
            j_stanczyk_5 = {
                name = 'Merchant Queen',
                text = {
                    {
                        'Each {C:attention}Rare{} sold gives',
                        '{X:red,C:white}X0.75{} Mult',
                        '{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive})'
                    }
                }
            }
        },
        -- Tarot = {
        --     c_stanczyk_consumable1 = {
        --         name = 'Consumable1',
        --         text = {
        --             'Gives {C:money}$#1#'
        --         }
        --     }
        -- },
        -- stanczyk_newtype = {
        --     c_stanczyk_consumable2 ={
        --         name = 'Consumable2',
        --         text = {
        --             'Gives {C:money}$#1#{} for',
        --             'each played {C:blue}Hand',
        --             '{C:inactive}(Currently: {C:money}$#2#{C:inactive})'
        --         }
        --     }
        -- },
        -- Other = {
        --     undiscovered_stanczyk_newtype = {
        --         name = 'Undiscovered NewType',
        --         text = {
        --             "Purchase or use",
        --             "this card in an",
        --             "unseeded run to",
        --             "learn what it does",
        --         }
        --     },
        --     p_stanczyk_booster1 = {
        --         name = 'Standard NewPack',
        --         text = {
        --             "Choose {C:attention}#1#{} of up to",
        --             "{C:attention}#2#{C:stanczyk_newtype} NewType{} cards to",
        --             "be used immediately",
        --         }
        --     }
        -- }
    },
    -- misc = {
    --     dictionary = {
    --         b_stanczyk_newtype_cards = 'Example NewType',
    --         k_stanczyk_newtype = 'Example NewType',
    --         k_stanczyk_newpack = 'NewType Pack'
    --     },
    --     labels = {
    --         stanczyk_newtype = 'NewType'
    --     }
    -- }
}