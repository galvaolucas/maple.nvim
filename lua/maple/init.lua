local M = {}

function M.setup(opts)
	opts = opts or {}
	local colors = require("maple.palette").colors(opts.theme or "autumn")
	require("maple.theme").setup(opts, colors)

	vim.g.colors_name = "maple" -- this is what registers it as a proper colorscheme
end

return M
