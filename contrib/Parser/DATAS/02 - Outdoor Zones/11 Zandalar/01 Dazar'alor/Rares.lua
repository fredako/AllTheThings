---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------

_.Zones =
{
	m(875, { 	-- Zandalar
		m(1163, {	-- Dazar'alor
			n(RARES, {
				n(133208, {	-- Da White Shark
					["questID"] = 50948,
					["coord"] = { 59.2, 88.8, 1165 },
				}),
				n(120899, {	-- Kul'krazahn
					["questID"] = 48333,
					["coord"] = { 55.01, 83.61, 1165 },
					["g"] = {
						i(160947, {	-- Amani Berserker's Chopper
							["bonusID"] = 4776,
						}),
						crit(11, {	-- Kul'krazahn (Adventurer of Zuldazar)
							["achievementID"] = 12944,	-- Adventurer of Zuldazar
						}),
					},
				}),
				n(122639, {	-- Old R'gal
					["coord"] = { 50.6, 59.6, 1165 },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(161049),	-- Ferocious Devilsaur Legwraps
					},
				}),
				n(125816, {	-- Sky Queen
					["questID"] = 53567,
					["coord"] = { 50.01, 84.2, 1165 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};
