local maple = require("maple")
local p = require("maple.palette")

load_lualine = function(theme)
	local palette = p.colors(theme)
	local colors = {
		blue = palette.blue,
		cyan = palette.cyan,
		black = palette.bright_black,
		white = palette.white,
		red = palette.red,
		violet = palette.magenta,
		bright_magenta = palette.bright_magenta,
		bright_blue = palette.bright_blue,
		brown = palette.brown,
	}

	local function clock()
		return "  " .. os.date("%H:%M")
	end

	local transparent = maple.options and maple.options.transparent or false
	if maple and maple.config then
		transparent = transparent or false
	end

	local maple_theme = {}

	if transparent then
		maple_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.white, gui = "bold" },
				b = { fg = colors.white, bg = nil },
				c = { fg = colors.white, bg = nil },
			},
			insert = { a = { fg = colors.white, bg = nil } },
			visual = { a = { fg = colors.white, bg = nil } },
			replace = { a = { fg = colors.white, bg = nil } },
			inactive = {
				a = { fg = colors.white, bg = nil, gui = "bold" },
				b = { fg = colors.white, bg = nil },
				c = { fg = colors.white },
			},
		}
	else
		maple_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.white, gui = "bold" },
				b = { fg = colors.white, bg = colors.bright_blue },
				c = { fg = colors.white },
			},
			insert = { a = { fg = colors.black, bg = colors.blue } },
			visual = { a = { fg = colors.black, bg = colors.cyan } },
			replace = { a = { fg = colors.black, bg = colors.red } },
			inactive = {
				a = { fg = colors.white, bg = colors.bright_blue, gui = "bold" },
				b = { fg = colors.white, bg = colors.bright_blue },
				c = { fg = colors.white },
			},
		}
	end

	local section_separators
	if transparent then
		section_separators = { left = "", right = "" }
	else
		section_separators = { left = "", right = "" }
	end

	require("lualine").setup({
		options = {
			theme = maple_theme,
			component_separators = "",
			section_separators = section_separators,
		},
		sections = {
			lualine_a = {
				{
					"mode",
					separator = { left = section_separators.right, right = section_separators.left },
					right_padding = 2,
				},
			},
			lualine_b = { "filename", "branch" },
			lualine_c = {
				{ "diagnostics" },
				"%=", -- center alignment
			},
			lualine_x = {
				{ "diff" },
			},
			lualine_y = {
				{ "filetype" },
				{ "filesize" },
				{ "progress" },
				{ "location", separator = { left = section_separators.right }, left_padding = 2 },
			},
			lualine_z = {
				{ clock, separator = { right = section_separators.left }, left_padding = 2 },
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
end

maple.load_lualine = load_lualine

return maple
