---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(1550, {	-- Shadowlands
		m(1533, {	-- Bastion
			n(VENDORS, {
				n(160470, {	-- Adjutant Nikos <Quartermaster>
					["coord"] = { 52.2, 47.0, 1533 },
					["g"] = {
						i(183740, {	-- Court Sinrunner
							["cost"] = 300000000, -- 30,000g
						}),
						i(183094, {	-- Plans: Shadowsteel Helm
							["cost"] = 210000, -- 21g
						}),
						i(183097, {	-- Schematic: PHA7-YNX
							--["cost"] = 210000, -- 21g
						}),
						i(183098, {	-- Technique: Codex of the Still Mind
							--["cost"] = 210000, -- 21g
						}),
						i(183103, {	-- Technique: Contract: The Ascended
							["cost"] = 17650000, -- 1,765g
						}),
						i(183243, {	-- Memory of the Arbiter's Judgment
							["cost"] = 11000000, -- 1,100g
						}),
						i(183870, {	-- Recipe: Crafter's Mark II
							["cost"] = 20000000, -- 2,000g
						}),
						i(180857, {	-- Goldenpaw Kit
							["cost"] = 17650000, -- 1,765g
						}),
					},
				}),
				n(171981,	{	-- Zeleskos <Pet Vendor>
					--["coord"] = { 52.2, 47.0, 1533 },
					["g"] = {
						i(184398),	-- Steward Featherling
						i(180871),	-- Indigo
						i(180628),	-- Pearlwing Heron
						i(180639),	-- Dusty Sporeflutterer
						i(180814),	-- Sable
						i(180815),	-- Brightscale Hatchling
					},
				}),
			}),
		}),
	}),
};