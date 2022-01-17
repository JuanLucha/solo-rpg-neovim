local utils = require("utils.utils")

local M = {}

function M.dice_value(number, sides)
	math.randomseed(os.time())

	local result = 0
	local i = 1
	while i <= number do
		local new_number = math.ceil(math.random() * sides)
		result = result + new_number
		i = i + 1
	end
	return result
end

function M.dice_string(number, sides, reason)
	math.randomseed(os.time())

	local result_string = "( "
	local result = 0
	local i = 1
	while i <= number do
		local new_number = math.ceil(math.random() * sides)
		result_string = result_string .. tostring(new_number) .. " "
		result = result + new_number
		i = i + 1
	end
	result_string = result_string .. ")"
	if reason ~= nil then
		result_string = result_string .. " - " .. reason
	end
	return (number .. "D" .. sides .. ": " .. result .. " " .. result_string)
end

function M.dice(number, sides, reason)
	print(M.dice_string(number, sides, reason))
end

function M.dice_md(number, sides, reason)
	utils.mdfy(M.dice_string(number, sides, reason))
end

function M.fate_check_md(modifier)
	utils.mdfy(M.fate_check(modifier))
end

function M.fate_die(modifier, reason)
	local result = 0
	local result_text = "( "
	local i = 0
	while i < 4 do
		local new_number = math.ceil(math.random() * 3) - 2
		if new_number == 1 then
			result_text = result_text .. "+"
		elseif new_number == 0 then
			result_text = result_text .. "▢"
		elseif new_number == -1 then
			result_text = result_text .. "-"
		end
		result = result + new_number
		i = i + 1
	end
	local final_result = {}
	if modifier ~= nil then
		result = result + modifier
		if modifier >= 0 then
			result_text = result_text .. " +" .. modifier
		else
			result_text = result_text .. " -" .. modifier
		end
	end
	result_text = result_text .. " )"
	if reason ~= nil then
		table.insert(final_result, reason)
	end
	table.insert(final_result, tostring(result) .. " " .. result_text)
	utils.mdfy(final_result)
end

return M
