return {
    descriptions = {
        Joker = {
            j_xmpl_joker1 = {
                name = 'Joker1',
                text = {
                    '{C:chips}+#1#{} chips'
                }
            },
            j_xmpl_joker2 = {
                name = 'Joker2',
                text = {
                    {
                        'Gives {C:money}$#1#{} for each',
                        'scoring {C:clubs}Clubs{} card'
                    },{
                        'Money scales by {C:attention}#2#',
                        'every trigger',
                        '{C:inactive}(Resets at end of round)'
                    }
                }
            },
            j_xmpl_joker3 = {
                name = 'Joker3',
                text = {
                    {
                        '{C:red}+#1#{} Discards when held'
                    }, {
                        'Gives {C:money}money{} equal to number',
                        'of {C:red}discards{} remaining at',
                        'end of round'
                    }
                }
            },
            j_xmpl_joker4 = {
                name = 'Joker4',
                text = {
                    'All shop boosters',
                    'are {C:money}free'
                }
            },
            j_xmpl_joker5 = {
                name = 'Joker5',
                text = {
                    'All shop items',
                    'cost {C:money}half{} as much'
                }
            }
        },
        Tarot = {
            c_xmpl_consumable1 = {
                name = 'Consumable1',
                text = {
                    'Gives {C:money}$#1#'
                }
            }
        },
        xmpl_newtype = {
            c_xmpl_consumable2 ={
                name = 'Consumable2',
                text = {
                    'Gives {C:money}$#1#{} for',
                    'each played {C:blue}Hand',
                    '{C:inactive}(Currently: {C:money}$#2#{C:inactive})'
                }
            }
        },
        Other = {
            undiscovered_xmpl_newtype = {
                name = 'Undiscovered NewType',
                text = {
                    "Purchase or use",
                    "this card in an",
                    "unseeded run to",
                    "learn what it does",
                }
            },
            p_xmpl_booster1 = {
                name = 'Standard NewPack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:xmpl_newtype} NewType{} cards to",
                    "be used immediately",
                }
            }
        }
    },
    misc = {
        dictionary = {
            b_xmpl_newtype_cards = 'Example NewType',
            k_xmpl_newtype = 'Example NewType',
            k_xmpl_newpack = 'NewType Pack'
        },
        labels = {
            xmpl_newtype = 'NewType'
        }
    }
}