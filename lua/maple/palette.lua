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
	bg = "#F7EDF0",
	fg = "#2C2C2C",
	red = "#EE7674",
	orange = "#FFA07A",
	yellow = "#FFC857",
	green = "#86CB92",
	blue = "#7D84B2",
	magenta = "#D6A2E8",
	cyan = "#8AD3C3",
	pink = "#F4A6BA",
	black = "#1A1A1A",
	white = "#FFFFFF",
	bright_black = "#C3BCC0",
	bright_red = "#FBA1A1",
	bright_green = "#C6F0D3",
	bright_yellow = "#FFF4C2",
	bright_blue = "#B5B9E3",
	bright_magenta = "#F6D9FA",
	bright_cyan = "#C6F5ED",
	bright_white = "#FAFAFA",
	comment = "#A59EA8",
	cursor = "#FFC857",
	selection = "#EFDDE0",
	border = "#D0C4CC",
	status_line = "#E3D7DB",
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
