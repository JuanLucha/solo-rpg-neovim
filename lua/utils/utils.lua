local M = {}

function M.mdfy(value)
	local line = vim.api.nvim_win_get_cursor(0)[1]
	local result = { "```" }
	local final = {}
	if type(value) == "string" then
		table.insert(final, value)
	else
		final = value
	end
	for i = 1, #final do
		table.insert(result, final[i])
	end
	table.insert(result, "```")
	vim.api.nvim_buf_set_lines(0, line, line, true, result)
end

function M.is_odd(number)
	return number % 2
end

return M
