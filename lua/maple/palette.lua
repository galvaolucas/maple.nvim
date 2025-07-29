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
	bg = "#1A1A1A", -- dark base
	fg = "#F7EDF0", -- soft foreground (your blush tone)
	red = "#EE7674", -- main red
	orange = "#FFA25C", -- blend between coral and gold
	yellow = "#FFC857", -- original gold
	green = "#86CB92", -- original green
	blue = "#7D84B2", -- original indigo
	magenta = "#C59ACF", -- blend of indigo and blush
	cyan = "#7FCFC4", -- mix of green and blue
	pink = "#F6A6AF", -- mix of coral and blush
	parchment = "#F1E3CE", -- lighter version of blush/gold
	black = "#121212", -- hard black
	white = "#FFFFFF", -- pure white
	bright_black = "#2B2B2B", -- bright bg
	bright_red = "#FF9A99", -- tint of coral
	bright_green = "#A8E4B3", -- tint of green
	bright_yellow = "#FFE18A", -- light gold
	bright_blue = "#A7B8E2", -- tint of indigo
	bright_magenta = "#E2B6E8", -- magenta tint
	bright_cyan = "#B8EFE9", -- pale cyan
	bright_white = "#FDF9F9", -- brighter paper
	comment = "#928D99", -- muted indigo-gray
	cursor = "#FFC857", -- cursor as gold
	selection = "#2F2F38", -- dark indigo/blue
	border = "#4D4660", -- indigo shade
	status_line = "#262631", -- deeper blue
	brown = "#7E5E45", -- coral + gold + shadow
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
