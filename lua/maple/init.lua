-- maple.nvim/lua/maple/init.lua

local M = {}

function M.setup(opts)
	require("maple.theme").setup(opts or {}, require("maple.palette").colors(opts.theme or "autumn"))
	local lualine = require("maple.lualine")
	lualine.load_lualine(opts.theme)
	-- Expose the theme globally for LazyVim
	_G.Snacks = M
end

return M
