local M = {}

M.options = {
	theme = "autumn",
	transparent = false,
	italic = true,
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
	return M.options
end

function M.load()
	local opts = M.options
	local colors = require("maple.palette").colors(opts.theme or "autumn")
	require("maple.theme").setup(opts, colors)
	require("maple.lualine").load_lualine(opts.theme)

	vim.g.colors_name = "maple"
end

return M
