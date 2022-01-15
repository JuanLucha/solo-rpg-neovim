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

return M
