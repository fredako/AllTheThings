--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

_.Holidays = bubbleDown({["u"] = HOLIDAY_NOBLEGARDEN}, {
	holiday(235477, {	-- Noblegarden
		["g"] = {
			n(VENDORS, {
				["g"] = {
					n(32837, {	-- Noblegarden Merchant
						["coords"] = {
							{ 47.11, 59.89, 7 },	-- Bloodhoof Village, Mulgore
							{ 61.35, 52.98, 18 },	-- Brill, Tirisfal Glades
							{ 47.64, 47.31, EVERSONG_WOODS },	-- Falconwing Square, Eversong Woods
							{ 51.91, 41.87, 1 },	-- Razor Hill, Durotar
						},
						["maps"] = {
							1,	-- Durotar
							7,	-- Mulgore
							18,	-- Tirisfal Glades
							EVERSONG_WOODS,
						},
						["races"] = HORDE_ONLY,
						["g"] = {
							{	-- Noblegarden Chocolate	Note!! Currency used to purchase items
								["itemID"] = 44791,			-- Noblegarden Chocolate
								["g"] = {
									-- Mounts
									{	-- Swift Springstrider
										["itemID"] = 72145,			-- Swift Springstrider
									},
									-- Pets
									{	-- Noblegarden Bunny
										["itemID"] = 141532,		-- Noblegarden Bunny
									},
									{	-- Mystical Spring Bouquet
										["itemID"] = 116258,		-- Mystical Spring Bouquet
									},
									{	-- Spring Rabbit's Foot
										["itemID"] = 44794,			-- Spring Rabbit's Foot
									},
									-- Toys
									{	-- Noble Gardener's Hearthstone
										["itemID"] = 165802,	-- Noble Gardener's Hearthstone
									},
									-- Appearances
									{	-- Black Spring Circlet
										["itemID"] = 74282,			-- Black Spring Circlet
									},
									{	-- Black Tuxedo Pants
										["itemID"] = 151804,		-- Black Tuxedo Pants
									},
									{	-- Blue Spring Circlet
										["itemID"] = 164922,		-- Blue Spring Circlet
									},
									{	-- Brown Spring Circlet
										["itemID"] = 164923,		-- Brown Spring Circlet
									},
									{	-- Elegant Dress
										["itemID"] = 151806,		-- Elegant Dress
									},
									{	-- Pink Spring Circlet
										["itemID"] = 74283,			-- Pink Spring Circlet
									},
									{	-- Spring Circlet
										["itemID"] = 44803,			-- Spring Circlet
									},
									{	-- Spring Robes
										["itemID"] = 44800,			-- Spring Robes
									},
									{	-- White Tuxedo Shirt
										["itemID"] = 6833,			-- White Tuxedo Shirt
									},
									{	-- Yellow Spring Circlet
										["itemID"] = 164924,		-- Yellow Spring Circlet
									},
									-- Other
									{	-- Blossoming Branch
										["itemID"] = 44792,			-- Blossoming Branch
										-- ["achievementID"] = 2416,	-- Hard Boiled
										-- ["criteriaID"] = 1,			-- Hard Boiled
										["description"] = "This item is required for the achievement \"Hard Boiled\".",
									},
									{	-- Noblegarden Egg
										["itemID"] = 44818,			-- Noblegarden Egg
									},
									{	-- Spring Flowers
										["itemID"] = 45073,			-- Spring Flowers
										-- ["achievementID"] = 2798,	-- Noble Gardener
										-- ["criteriaID"] = 8,			-- Shake Your Bunny-Maker [Alliance/Horde]
										["description"] = "This item is required for the achievement \"Shake Your Bunny-Maker\".",
									},
									{	-- Tome of Polymorph: Rabbit
										["itemID"] = 44793,			-- Tome of Polymorph: Rabbit
										["spellID"] = 61721,		-- Polymorph(Rabbit)
										["classes"] = { MAGE },
									},
								},
							},
							{	-- Intricately-Painted Egg
								["itemID"] = 116358,		-- Intricately-Painted Egg
							},
							{	-- Magnificently-Painted Egg
								["itemID"] = 116359,		-- Magnificently-Painted Egg
							},
							{	-- Poorly-Painted Egg
								["itemID"] = 116357,		-- Poorly Painted Egg
							},
						},
					}),
					n(32836, {	-- Noblegarden Vendor
						["coords"] = {
							{ 49.01, 51.19, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
							{ 55.72, 51.31, 57 },	-- Dolanaar, Teldrassil
							{ 43.03, 65.32, 37 },	-- Goldshire, Elwynn Forest
							{ 54.11, 50.81, 27 },	-- Kharanos, Dun Morogh
						},
						["maps"] = {
							27,	-- Dun Morogh
							37,	-- Elwynn Forest
							57,	-- Teldrassil
							AZUREMYST_ISLE,
						},
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							{	-- Noblegarden Chocolate	Note!! Currency used to purchase items
								["itemID"] = 44791,			-- Noblegarden Chocolate
								["g"] = {
									-- Mounts
									{	-- Swift Springstrider
										["itemID"] = 72145,			-- Swift Springstrider
									},
									-- Pets
									{	-- Noblegarden Bunny
										["itemID"] = 141532,		-- Noblegarden Bunny
									},
									{	-- Mystical Spring Bouquet
										["itemID"] = 116258,		-- Mystical Spring Bouquet
									},
									{	-- Spring Rabbit's Foot
										["itemID"] = 44794,			-- Spring Rabbit's Foot
									},
									-- Toys
									{	-- Noble Gardener's Hearthstone
										["itemID"] = 165802,	-- Noble Gardener's Hearthstone
									},
									-- Appearances
									{	-- Black Spring Circlet
										["itemID"] = 74282,			-- Black Spring Circlet
									},
									{	-- Black Tuxedo Pants
										["itemID"] = 151804,		-- Black Tuxedo Pants
									},
									{	-- Blue Spring Circlet
										["itemID"] = 164922,		-- Blue Spring Circlet
									},
									{	-- Brown Spring Circlet
										["itemID"] = 164923,		-- Brown Spring Circlet
									},
									{	-- Elegant Dress
										["itemID"] = 151806,		-- Elegant Dress
									},
									{	-- Pink Spring Circlet
										["itemID"] = 74283,			-- Pink Spring Circlet
									},
									{	-- Spring Circlet
										["itemID"] = 44803,			-- Spring Circlet
									},
									{	-- Spring Robes
										["itemID"] = 44800,			-- Spring Robes
									},
									{	-- White Tuxedo Shirt
										["itemID"] = 6833,			-- White Tuxedo Shirt
									},
									{	-- Yellow Spring Circlet
										["itemID"] = 164924,		-- Yellow Spring Circlet
									},
									-- Other
									{	-- Blossoming Branch
										["itemID"] = 44792,			-- Blossoming Branch
										-- ["achievementID"] = 2416,	-- Hard Boiled
										-- ["criteriaID"] = 1,			-- Hard Boiled
										["description"] = "This item is required for the achievement \"Hard Boiled\".",
									},
									{	-- Noblegarden Egg
										["itemID"] = 44818,			-- Noblegarden Egg
									},
									{	-- Spring Flowers
										["itemID"] = 45073,			-- Spring Flowers
										-- ["achievementID"] = 2798,	-- Noble Gardener
										-- ["criteriaID"] = 8,			-- Shake Your Bunny-Maker [Alliance/Horde]
										["description"] = "This item is required for the achievement \"Shake Your Bunny-Maker\".",
									},
									{	-- Tome of Polymorph: Rabbit
										["itemID"] = 44793,			-- Tome of Polymorph: Rabbit
										["spellID"] = 61721,		-- Polymorph(Rabbit)
										["classes"] = { MAGE },
									},
								},
							},
							{	-- Intricately-Painted Egg
								["itemID"] = 116358,		-- Intricately-Painted Egg
							},
							{	-- Magnificently-Painted Egg
								["itemID"] = 116359,		-- Magnificently-Painted Egg
							},
							{	-- Poorly-Painted Egg
								["itemID"] = 116357,		-- Poorly Painted Egg
							},
						},
					}),
				},
			}),
		},
	}),
});
