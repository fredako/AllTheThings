---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
local oldI, oldQ, oldAch, oldP = i, q, ach, p;
i = function(...) return un(NEVER_IMPLEMENTED, oldI(...)); end
q = function(...) return un(NEVER_IMPLEMENTED, oldQ(...)); end
ach = function(...) return un(NEVER_IMPLEMENTED, oldAch(...)); end
p = function(...) return un(NEVER_IMPLEMENTED, oldP(...)); end
_.NeverImplemented =
{
	n(QUESTS, {
		q(3064,  {	-- <NYI> <TXT> Pirate Hats
			["u"] = NEVER_IMPLEMENTED,
		}),
		q(241,   {	-- <TEST> HEY MISTER WILSON!
			["u"] = NEVER_IMPLEMENTED,
		}),
		q(11179, {	-- [Temporarily Deprecated Awaiting a New Mob]Finlay Is Gutless
			["u"] = NEVER_IMPLEMENTED,	-- can't find a history of a non-"temporarily deprecated" version of this quest
		}),
		q(39991, {	-- Blessing of Cenarius
			["u"] = NEVER_IMPLEMENTED,	-- didn't make it to live, triggers when turning in #39988
		}),
		q(12338, {	-- Candy Bucket
			["description"] = "Name: |cFFf09f26Candy Bucket|r\nCategory: |cFFf09f26Hallow's End|r",
			["isYearly"] = true,
			["races"] = ALLIANCE_ONLY,
			["u"] = NEVER_IMPLEMENTED,
			["g"] = {
				--i(37586), -- Handful of Treats
			},
		}),
		q(38294, {	-- Sumptuous Fur
		--	added in 9.0.1 but has WoD title/rewards, is "engineering" category but tailoring rewards?????  move if this quest is ever found
			["description"] = "Category: |cFFf09f26Engineering|r",
			["isDaily"] = 1,
			["_drop"] = { "g" },	-- drop Hexweave Cloth / Primal Spirit
			["lvl"] = 10,
			["u"] = NEVER_IMPLEMENTED,
		}),
		q(12375, {	-- Candy Bucket
			["description"] = "Name: |cFFf09f26Candy Bucket|r\nCategory: |cFFf09f26Hallow's End|r",
			["isYearly"] = true,
			["races"] = HORDE_ONLY,
			["u"] = NEVER_IMPLEMENTED,
			["g"] = {
				--i(37586), -- Handful of Treats
			},
		}),
		q(12405, {	-- Candy Bucket
			["description"] = "Name: |cFFf09f26Candy Bucket|r\nCategory: |cFFf09f26Hallow's End|r",
			["isYearly"] = true,
			["u"] = NEVER_IMPLEMENTED,
			["g"] = {
				--i(37586), -- Handful of Treats
			},
		}),
		q(12410, {	-- Candy Bucket
			["description"] = "Name: |cFFf09f26Candy Bucket|r\nCategory: |cFFf09f26Hallow's End|r",
			["isYearly"] = true,
			["u"] = NEVER_IMPLEMENTED,
			["g"] = {
				--i(37586), -- Handful of Treats
			},
		}),
		q(28975, {	-- Candy Bucket
			["description"] = "Name: |cFFf09f26Candy Bucket|r\nCategory: |cFFf09f26Hallow's End|r",
			["isYearly"] = true,
			["races"] = HORDE_ONLY,
			["u"] = NEVER_IMPLEMENTED,
			["g"] = {
				--i(37586), -- Handful of Treats
			},
		}),
		q(31806, {	-- Test Quest
			["description"] = "Area: |cFFf09f26The Jade Forest|r",
			["_drop"] = { "g" },	-- all MoP fish are pulled from the API into the rewards for this quest, causing them to show an "Unsorted" source
			["u"] = NEVER_IMPLEMENTED,
		}),
	}),
};

-- Restore original functionality.
i, q, ach, p = oldI, oldQ, oldAch, oldP;
