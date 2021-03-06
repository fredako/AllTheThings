--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

_.Holidays = bubbleDown({["u"] = HOLIDAY_NOBLEGARDEN}, {
	holiday(235477, {	-- Noblegarden
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(2798, {	-- Noble Gardener
					["g"] = {
						title(122, {	-- <Name> the Noble
						}),
						ach(2676, {	-- I Found One
						}),
						ach(2418, {	-- Chocoholic
							["cost"] = { { "i", 44791, 100, } },	-- 100x Noblegarden Chocolate
							["g"] = {
								ach(2417, {	-- Chocolate Lover
									["cost"] = { { "i", 44791, 25, } },	-- 25 Noblegarden Chocolate
								}),
							},
						}),
						ach(2436, {	-- Desert Rose
							["g"] = {
								crit(1, {	-- The Badlands
									["maps"] = { 15 },	-- The Badlands
								}),
								crit(2, {	-- Desolace
									["maps"] = { 66 },	-- Desolace
								}),
								crit(3, {	-- Silithus
									["maps"] = { 81 },	-- Silithius
								}),
								crit(4, {	-- Tanaris
									["maps"] = { 71 },	-- Tanaris
								}),
								crit(5, {	-- Thousand Needles
									["maps"] = { 64 },	-- Thousand Needles
								}),
							},
						}),
						ach(2576, {	-- Blushing Bride
						}),
						ach(2416, {	-- Hard Boiled
							["cost"] = { { "i", 44792, 1, } },	-- 1x Blossoming Branch
						}),
						ach(2419, {	-- Spring Fling (A)
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								crit(1, {	-- Azure Watch
									["races"] = ALLIANCE_ONLY,
									["maps"] = { AZUREMYST_ISLE },
								}),
								crit(2, {	-- Dolanaar
									["races"] = ALLIANCE_ONLY,
									["maps"] = { 57 },	-- Teldrassil
								}),
								crit(3, {	-- Goldshire
									["races"] = ALLIANCE_ONLY,
									["maps"] = { 37 },	-- Elwynn Forest
								}),
								crit(4, {	-- Kharanos
									["races"] = ALLIANCE_ONLY,
									["maps"] = { 27 },	-- Dun Morogh
								}),
							},
						}),
						ach(2497, {	-- Spring Fling (H)
							["races"] = HORDE_ONLY,
							["g"] = {
								crit(1, {	-- Bloodhoof Village
									["races"] = HORDE_ONLY,
									["maps"] = { 7 },	-- Bloodhoof Village
								}),
								crit(2, {	-- Brill
									["races"] = HORDE_ONLY,
									["maps"] = { 18 },	-- Tirisfal Glades
								}),
								crit(3, {	-- Falconwing Square
									["races"] = HORDE_ONLY,
									["maps"] = { EVERSONG_WOODS },
								}),
								crit(4, {	-- Razor Hill
									["races"] = HORDE_ONLY,
									["maps"] = { 1 },	-- Durotar
								}),
							},
						}),
						ach(2421, {	-- Noble Garden (A)
							["races"] = ALLIANCE_ONLY,
						}),
						ach(2420, {	-- Noble Garden (H)
							["races"] = HORDE_ONLY,
						}),
						ach(2422, {	-- Shake Your Bunny-Maker
							["cost"] = { { "i", 45073, 12 } },	-- 12x Spring Flowers
							["g"] = {
								crit(1, {	-- Blood Elf
								}),
								crit(2, {	-- Draenei
								}),
								crit(3, {	-- Dwarf
								}),
								crit(4, {	-- Gnome
								}),
								crit(5, {	-- Goblin
								}),
								crit(6, {	-- Human
								}),
								crit(7, {	-- Night Elf
								}),
								crit(8, {	-- Orc
								}),
								crit(9, {	-- Tauren
								}),
								crit(10, {	-- Troll
								}),
								crit(11, {	-- Undead
								}),
								crit(12, {	-- Worgen
								}),
							},
						}),
					},
				}),
				ach(249, {	-- Dressed for the Occasion
				}),
				ach(248, {	-- Sunday's Finest
					["g"] = {
						crit(1),	-- White Tuxedo Shirt
						crit(2),	-- Black Tuxedo Pants
					},
				}),
			}),
		},
	}),
});
