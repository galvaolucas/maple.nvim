-- maple.nvim/lua/maple/init.lua

local M = {}

function M.setup(opts)
	require("maple.theme").setup(opts or {})
end

return M
