-- maple.nvim/lua/maple/init.lua

local M = {}

function M.setup(opts)
	require("maple.theme").setup(opts or {}, require("maple.palette").colors(opts.theme or "autumn"))
end

return M
