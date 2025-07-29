local maple = require("maple")

-- Color definitions table
local themes = {}

themes.autumn = {
	bg = "#1C1C1A",
	fg = "#EDE8DC",
	red = "#A4243B",
	orange = "#BD632F",
	yellow = "#D8973C",
	green = "#A4B97F",
	blue = "#6C9AAB",
	magenta = "#CBA1C1",
	cyan = "#78AFA4",
	pink = "#D8A1A1",
	parchment = "#D8C99B",
	black = "#121110",
	white = "#FFFDFD",
	bright_black = "#2A2A27",
	bright_red = "#E85D75",
	bright_green = "#D3E4B5",
	bright_yellow = "#FFE9A3",
	bright_blue = "#A4D2E2",
	bright_magenta = "#E5C0DE",
	bright_cyan = "#AEE9DA",
	bright_white = "#FFFFFF",
	comment = "#8C8579",
	cursor = "#D8973C",
	selection = "#3B3129",
	border = "#5C4435",
	status_line = "#2D2A27",
	brown = "#635C51",
}

themes.spring = {
	bg = "#1F2B2F", -- desaturated #273E47
	fg = "#F8F5F2", -- near-white, soft for dark bg
	red = "#F97068", -- your coral
	orange = "#FF9F50", -- blend of amber + coral
	yellow = "#FFBF69", -- your amber
	green = "#16C172", -- your green
	blue = "#9FA0FF", -- your soft indigo
	magenta = "#C586FF", -- blend of indigo + red
	cyan = "#5DDDCB", -- green + blue mix
	pink = "#FF9DA5", -- red + lightness
	parchment = "#F0E8D5", -- soft cream
	black = "#121817", -- hard black
	white = "#FFFFFF", -- pure white
	bright_black = "#2C3D43", -- bright bg
	bright_red = "#FF8D88", -- lighter coral
	bright_green = "#6FF0B4", -- mint green
	bright_yellow = "#FFE09F", -- bright amber
	bright_blue = "#B3B4FF", -- tint of indigo
	bright_magenta = "#D6A4FF", -- lavender magenta
	bright_cyan = "#A6F4E2", -- pale mint
	bright_white = "#FAF9F7", -- off-white
	comment = "#7A888D", -- faded blue-gray
	cursor = "#FFBF69", -- warm amber
	selection = "#374A51", -- darkened background
	border = "#455D66", -- desaturated background edge
	status_line = "#2B3A3F", -- UI element bg
	brown = "#9B7350", -- amber + red mix
}

-- Define the colors function inside this file
function maple.colors(theme)
	if themes[theme] then
		return themes[theme]
	else
		vim.notify(
			"maple.nvim: Unsupported theme '" .. tostring(theme) .. "', falling back to 'autumn'",
			vim.log.levels.WARN
		)
		return themes.autumn
	end
end

-- Apply the colors immediately using current opts
return maple
