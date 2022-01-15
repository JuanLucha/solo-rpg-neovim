local dices = require("dices")
local utils = require("utils")

-- constants
local event_actions_1 = {
	"Attainment",
	"Starting",
	"Neglect",
	"Fight",
	"Recruit",
	"Triumph",
	"Violate",
	"Oppose",
	"Malice",
	"Communicate",
	"Persecute",
	"Increase",
	"Decrease",
	"Abandon",
	"Gratify",
	"Inquire",
	"Antagonize",
	"Move",
	"Waste",
	"Truce",
	"Expose",
	"Haggle",
	"Imprison",
	"Release",
	"Celebrate",
	"Develop",
	"Travel",
	"Block",
	"Harm",
	"Debase",
	"Overindulge",
	"Adjourn",
	"Adversity",
	"Kill",
	"Disrupt",
	"Usurp",
	"Create",
	"Betray",
	"Agree",
	"Abuse",
	"Excitement",
	"Activity",
	"Assist",
	"Care",
	"Negligence",
	"Passion",
	"Work",
	"Control",
	"Attract",
	"Failure",
	"Pursue",
	"Vengeance",
	"Proceedings",
	"Dispute",
	"Punish",
	"Guide",
	"Transform",
	"Overthrow",
	"Oppress",
	"Change",
	"Release",
	"Befriend",
	"Judge",
	"Desert",
	"Dominate",
	"Procrastinate",
	"Praise",
	"Separate",
	"Take",
	"Break",
	"Heal",
	"Delay",
	"Stop",
	"Lie",
	"Return",
	"Imitate",
	"Struggle",
	"Inform",
	"Bestow",
	"Postpone",
	"Oppress",
	"Inspect",
	"Ambush",
	"Spy",
	"Attach",
	"Carry",
	"Open",
	"Carelessness",
	"Ruin",
	"Extravagance",
	"Trick",
	"Arrive",
	"Propose",
	"Divide",
	"Refuse",
	"Mistrust",
	"Deceive",
	"Cruelty",
	"Intolerance",
	"Trust",
}

local event_actions_2 = {
	"Goals",
	"Dreams",
	"Environment",
	"Outside",
	"Inside",
	"Reality",
	"Allies",
	"Enemies",
	"Evil",
	"Good",
	"Emotions",
	"Opposition",
	"War",
	"Peace",
	"Innocent",
	"Love",
	"Spirit",
	"Intellect",
	"Ideas",
	"Joy",
	"Advice",
	"Plot",
	"Competition",
	"Prison",
	"Illness",
	"Food",
	"Attention",
	"Success",
	"Failure",
	"Travel",
	"Jealousy",
	"Dispute",
	"Home",
	"Investment",
	"Suffering",
	"Wishes",
	"Tactics",
	"Stalemate",
	"Randomness",
	"Misfortune",
	"Victory",
	"Dispute",
	"Riches",
	"Normal",
	"Technology",
	"Hope",
	"Magic",
	"Illusions",
	"Portals",
	"Danger",
	"Weapons",
	"Animals",
	"Weather",
	"Elements",
	"Nature",
	"Masses",
	"Leadership",
	"Fame",
	"Anger",
	"Information",
	"Messages",
	"Energy",
	"Balance",
	"Tension",
	"Friendship",
	"Physical",
	"Project",
	"Pleasures",
	"Pain",
	"Possessions",
	"Benefits",
	"Plans",
	"Lies",
	"Expectations",
	"Legal",
	"Bureaucracy",
	"Business",
	"Path",
	"News",
	"Exterior",
	"Death",
	"Disruption",
	"Power",
	"Burden",
	"Intrigues",
	"Fears",
	"Ambush",
	"Rumor",
	"Wounds",
	"Extravagance",
	"Representative",
	"Adversities",
	"Opulence",
	"Liberty",
	"Military",
	"Mundane",
	"Trials",
	"Masses",
	"Vehicle",
	"Art",
}

local event_descriptors_1 = {
	"Abnormally",
	"Adventurously",
	"Aggressively",
	"Angrily",
	"Anxiously",
	"Awkwardly",
	"Beautifully",
	"Bleakly",
	"Boldly",
	"Bravely",
	"Busily",
	"Calmly",
	"Carefully",
	"Carelessly",
	"Cautiously",
	"Ceaselessly",
	"Cheerfully",
	"Combatively",
	"Coolly",
	"Crazily",
	"Fully",
	"Generously",
	"Gently",
	"Gladly",
	"Gracefully",
	"Gratefully",
	"Happily",
	"Hastily",
	"Healthily",
	"Helpfully",
	"Helplessly",
	"Hopelessly",
	"Innocently",
	"Intensely",
	"Interestingly",
	"Irritatingly",
	"Jovially",
	"Joyfully",
	"Judgementally",
	"Kindly",
	"Peacefully",
	"Perfectly",
	"Playfully",
	"Politely",
	"Positively",
	"Powerfully",
	"Quaintly",
	"Quarrelsomely",
	"Quietly",
	"Roughly",
	"Rudely",
	"Ruthlessly",
	"Slowly",
	"Softly",
	"Swiftly",
	"Threateningly",
	"Very",
	"Violently",
	"Wildly",
	"Yieldingly",
	"Curiously",
	"Daintily",
	"Dangerously",
	"Defiantly",
	"Deliberately",
	"Delightfully",
	"Dimly",
	"Efficiently",
	"Energetically",
	"Enormously",
	"Enthusiastically",
	"Excitedly",
	"Fearfully",
	"Ferociously",
	"Fiercely",
	"Foolishly",
	"Fortunately",
	"Frantically",
	"Freely",
	"Frighteningly",
	"Kookily",
	"Lazily",
	"Lightly",
	"Loosely",
	"Loudly",
	"Lovingly",
	"Loyally",
	"Majestically",
	"Meaningfully",
	"Mechanically",
	"Miserably",
	"Mockingly",
	"Mysteriously",
	"Naturally",
	"Neatly",
	"Nicely",
	"Oddly",
	"Offensively",
	"Officially",
	"Partially",
}

local event_descriptors_2 = {
	"Abandoned",
	"Abnormal",
	"Amusing",
	"Ancient",
	"Aromatic",
	"Average",
	"Beautiful",
	"Bizarre",
	"Classy",
	"Clean",
	"Cold",
	"Colorful",
	"Creepy",
	"Cute",
	"Damaged",
	"Dark",
	"Defeated",
	"Delicate",
	"Delightful",
	"Dirty",
	"Graceful",
	"Hard",
	"Harsh",
	"Healthy",
	"Heavy",
	"Historical",
	"Horrible",
	"Important",
	"Interesting",
	"Juvenile",
	"Lacking",
	"Lame",
	"Large",
	"Lavish",
	"Lean",
	"Less",
	"Lethal",
	"Lonely",
	"Lovely",
	"Macabre",
	"Remarkable",
	"Rotten",
	"Rough",
	"Ruined",
	"Rustic",
	"Scary",
	"Simple",
	"Small",
	"Smelly",
	"Smooth",
	"Soft",
	"Strong",
	"Tranquil",
	"Ugly",
	"Valuable",
	"Warlike",
	"Warm",
	"Watery",
	"Weak",
	"Young",
	"Disagreeable",
	"Disgusting",
	"Drab",
	"Dry",
	"Dull",
	"Empty",
	"Enormous",
	"Exotic",
	"Faded",
	"Familiar",
	"Fancy",
	"Fat",
	"Feeble",
	"Feminine",
	"Festive",
	"Flawless",
	"Fresh",
	"Full",
	"Glorious",
	"Good",
	"Magnificent",
	"Masculine",
	"Mature",
	"Messy",
	"Mighty",
	"Military",
	"Modern",
	"Extravagant",
	"Mundane",
	"Mysterious",
	"Natural",
	"Nondescript",
	"Odd",
	"Pale",
	"Petite",
	"Poor",
	"Powerful",
	"Quaint",
	"Rare",
	"Reassuring",
}

local details = {
	"Anger",
	"Sadness",
	"Fear",
	"Disfavors Thread",
	"Disfavors PC",
	"Focus NPC",
	"Favors NPC",
	"Focus PC",
	"Disfavors NPC",
	"Focus Thread",
	"Favors PC",
	"Favors Thread",
	"Courage",
	"Happiness",
	"Calm",
}

local M = {}

M.chaos_factor = 4

function M.set_chaos_factor(chaos_factor)
	if chaos_factor > 6 then
		chaos_factor = 6
	end
	if chaos_factor < 3 then
		chaos_factor = 3
	end

	M.chaos_factor = chaos_factor
end

function M.increase_chaos_factor()
	M.set_chaos_factor(M.chaos_factor + 1)
end

function M.decrease_chaos_factor()
	M.set_chaos_factor(M.chaos_factor - 1)
end

function M.fate_check(modifier, reason)
	math.randomseed(os.time())

	local result = {}
	print(reason)
	if reason ~= nil then
		table.insert(result, reason)
	end
	if modifier == nil then
		modifier = 0
	end
	local dice1 = dices.dice_value(1, 10)
	local dice2 = dices.dice_value(1, 10)
	local chaos_dice = dices.dice_value(1, 10)
	local dice_result = dice1 + dice2 + modifier
	local check = "Yes"
	if dice_result < 10 then
		check = "No"
	end
	local random_event = false
	if chaos_dice <= M.chaos_factor then
		if dice1 == dice2 then
			random_event = true
			check = "Exceptional " .. check:lower() .. " and random event - "
		elseif utils.is_odd(dice1) and utils.is_odd(dice2) then
			check = "Exceptional " .. check:lower()
		elseif not utils.is_odd(dice1) and not utils.is_odd(dice2) then
			random_event = true
			check = check .. " and random event - "
		end
		if random_event == true then
			check = check .. M.event_check()
		end
	end

	table.insert(result, check)

	return result
end

function M.event_check()
	math.randomseed(os.time())

	local die = dices.dice_value(1, 100)
	local random_event = ""
	if die < 8 then
		random_event = "Remote event: "
	elseif die > 7 and die < 29 then
		random_event = "NPC action: "
	elseif die > 28 and die < 36 then
		random_event = "Introduce a new NPC: "
	elseif die > 35 and die < 46 then
		random_event = "Move toward a thread: "
	elseif die > 45 and die < 53 then
		random_event = "Move away from a thread: "
	elseif die > 52 and die < 56 then
		random_event = "Close a thread: "
	elseif die > 55 and die < 68 then
		random_event = "Pc negative: "
	elseif die > 67 and die < 76 then
		random_event = "PC positive: "
	elseif die > 75 and die < 84 then
		random_event = "Ambiguous event: "
	elseif die > 83 and die < 93 then
		random_event = "NPC negative: "
	elseif die > 92 and die < 100 then
		random_event = "NPC positive: "
	end

	random_event = random_event .. M.get_event_meaning()

	return random_event
end

function M.get_event_meaning()
	math.randomseed(os.time())

	return M.get_actions() .. ", " .. M.get_descriptors()
end

function M.get_actions()
	math.randomseed(os.time())

	local result = ""

	if dices.dice_value(1, 10) > 5 then
		result = event_actions_1[dices.dice_value(1, 100)]
	else
		result = event_actions_2[dices.dice_value(1, 100)]
	end

	return result
end

function M.get_descriptors()
	math.randomseed(os.time())

	local result = ""
	if dices.dice_value(1, 10) > 5 then
		result = event_descriptors_1[dices.dice_value(1, 100)]
	else
		result = event_descriptors_2[dices.dice_value(1, 100)]
	end

	return result
end

function M.details_check()
	math.randomseed(os.time())

	local dice = dices.dice_value(1, 10) + dices.dice_value(1, 10)

	if M.chaos_factor == 3 then
		dice = dice + 2
	end
	if M.chaos_factor == 6 then
		dice = dice - 2
	end
	if dice < 4 then
		dice = 4
	end
	if dice > 18 then
		dice = 18
	end
	dice = dice - 3

	return details[dice] .. ": " .. M.get_event_meaning()
end

function M.fate_check_md(modifier, reason)
	utils.mdfy(M.fate_check(modifier, reason))
end

function M.event_check_md()
	utils.mdfy(M.event_check())
end

function M.get_actions_md()
	utils.mdfy(M.get_actions())
end

function M.get_descriptors_md()
	utils.mdfy(M.get_descriptors())
end

function M.details_check_md()
	utils.mdfy(M.details_check())
end

return M
