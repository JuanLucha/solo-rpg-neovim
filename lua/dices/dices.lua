local M = {}

function M.dice(number, sides, reason)
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
	return (number .. "D" .. sides .. ": " .. result .. " " .. result_string .. " - " .. reason)
end

function M.dice_md(number, sides, reason)
	local line = vim.api.nvim_win_get_cursor(0)[1]
	local result = { "```" }
	table.insert(result, M.dice(number, sides, reason))
	table.insert(result, "```")
	vim.api.nvim_buf_set_lines(0, line, line, true, result)
end

return M
