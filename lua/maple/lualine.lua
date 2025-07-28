local maple = require("maple.pallete")
local colors = maple.colors

-- Utility to generate mode sections
local function mode_section(bg)
	return {
		a = { fg = colors.black, bg = bg, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	}
end

-- Define the lualine theme
local theme = {
	normal = mode_section(colors.magenta),
	insert = mode_section(colors.blue),
	visual = mode_section(colors.cyan),
	replace = mode_section(colors.red),
	inactive = {
		a = { fg = colors.fg, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

-- Setup lualine
require("lualine").setup({
	options = {
		theme = theme,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 2 },
		},
		lualine_b = { "filename", "branch" },
		lualine_c = { "%=" },
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
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
