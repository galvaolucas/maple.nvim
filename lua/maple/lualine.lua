local maple = require("maple.pallete")
local colors = maple.colors

local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.columbia_blue },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.black, bg = colors.blue, gui = "bold" },
	},
	visual = {
		a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
	},
	replace = {
		a = { fg = colors.black, bg = colors.red, gui = "bold" },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

-- Auto setup lualine on require
require("lualine").setup({
	options = {
		theme = theme,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { "filename", "branch" },
		lualine_c = { "%=" },
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
