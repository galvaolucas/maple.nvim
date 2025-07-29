local maple = require("maple")

load_lualine = function(theme)
	local palette = maple.palette(theme)
	local colors = {
		blue = palette.colors.blue,
		cyan = palette.colors.cyan,
		black = palette.colors.bright_black,
		white = palette.colors.white,
		red = palette.colors.red,
		violet = palette.colors.magenta,
		bright_magenta = palette.colors.bright_magenta,
		brown = palette.colors.brown,
	}

	local function clock()
		return "  " .. os.date("%H:%M")
	end

	local transparent = false
	if maple and maple.config then
		transparent = maple.opts.transparent or false
	end

	local maple_theme = {}

	if transparent then
		maple_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.white, gui = "bold" },
				b = { fg = colors.black, bg = colors.bright_magenta },
				c = { fg = colors.black, bg = colors.bright_magenta },
			},
			insert = { a = { fg = colors.black, bg = nil } },
			visual = { a = { fg = colors.black, bg = nil } },
			replace = { a = { fg = colors.black, bg = nil } },
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
				b = { fg = colors.white, bg = colors.brown },
				c = { fg = colors.white },
			},
			insert = { a = { fg = colors.black, bg = colors.blue } },
			visual = { a = { fg = colors.black, bg = colors.cyan } },
			replace = { a = { fg = colors.black, bg = colors.red } },
			inactive = {
				a = { fg = colors.white, bg = colors.brown, gui = "bold" },
				b = { fg = colors.white, bg = colors.brown },
				c = { fg = colors.white },
			},
		}
	end

	local section_separators
	if transparent then
		section_separators = { left = "|", right = "|" }
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
			lualine_a = { { "mode", separator = { left = section_separators.right }, right_padding = 2 } },
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
