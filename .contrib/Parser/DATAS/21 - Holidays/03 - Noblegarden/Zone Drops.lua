--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

_.Holidays = bubbleDown({["u"] = HOLIDAY_NOBLEGARDEN}, {
	holiday(235477, {	-- Noblegarden
		["g"] = {
			n(ZONEDROPS, {
				["g"] = {
					i(45072, {	-- Brightly Colored Egg
						["maps"] = {
							1,	-- Durotar
							7,	-- Mulgore
							18,	-- Tirisfal Glades
							27,	-- Dun Morogh
							37,	-- Elwynn Forest
							57,	-- Teldrassil
							EVERSONG_WOODS,
							AZUREMYST_ISLE,
						},
						["g"] = {
							i(151804, {	-- Black Tuxedo Pants
							}),
							i(44792, {	-- Blossoming Branch
								["description"] = "This item is required for the achievement \"Hard Boiled\".",
							}),
							i(151806, {	-- Elegant Dress
							}),
							i(44791, {	-- Noblegarden Chocolate
								["description"] = "This item is required for the achievement \"Chocolate Lover\".",
							}),
							i(44803, {	-- Spring Circlet
							}),
							i(45073, {	-- Spring Flowers
								["description"] = "This item is required for the achievement \"Shake Your Bunny-Maker\".",
							}),
							i(44794, {	-- Spring Rabbit's Foot
							}),
							i(44800, {	-- Spring Robes
							}),
							i(72145, {	-- Swift Springstrider
							}),
							i(6833, {	-- White Tuxedo Shirt
							}),
						},
					}),
				},
			}),
		},
	}),
});
