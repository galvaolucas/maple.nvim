local maple = require("maple")
local theme = maple.opts.theme or "autumn"

if theme == "autumn" then
	maple.colors = {
		bg = "#1C1C1A", -- very dark earthy base
		fg = "#EDE8DC", -- soft parchment cream (not white)

		red = "#A4243B", -- deep wine red
		orange = "#BD632F", -- warm terracotta
		yellow = "#D8973C", -- golden honey
		green = "#A4B97F", -- added: olive pistachio for soft greens
		blue = "#6C9AAB", -- added: dusty slate blue
		magenta = "#CBA1C1", -- added: muted rose-lavender
		cyan = "#78AFA4", -- added: jade slate
		pink = "#D8A1A1", -- added: gentle rose

		parchment = "#D8C99B", -- accent for UI / menus

		black = "#121110", -- near-black with brown undertones
		white = "#FFFDFD",

		bright_black = "#2A2A27",
		bright_red = "#E85D75",
		bright_green = "#D3E4B5",
		bright_yellow = "#FFE9A3",
		bright_blue = "#A4D2E2",
		bright_magenta = "#E5C0DE",
		bright_cyan = "#AEE9DA",
		bright_white = "#FFFFFF",

		comment = "#8C8579", -- dusty book brown
		cursor = "#D8973C", -- golden beam
		selection = "#3B3129", -- leatherbound brown
		border = "#5C4435", -- wood grain
		status_line = "#2D2A27", -- stone surface
		brown = "#635C51",
	}
end
if theme == "spring" then
	maple.colors = {
		bg = "#F7EDF0", -- light rose porcelain (main background)
		fg = "#2C2C2C", -- dark gray for contrast

		-- Syntax / accent
		red = "#EE7674", -- coral blush
		orange = "#FFA07A", -- soft peach
		yellow = "#FFC857", -- marigold gold
		green = "#86CB92", -- sage mint
		blue = "#7D84B2", -- periwinkle
		magenta = "#D6A2E8", -- added: lilac pop
		cyan = "#8AD3C3", -- added: mint lagoon
		pink = "#F4A6BA", -- added: pastel rose

		-- Neutrals
		black = "#1A1A1A", -- grounding neutral
		white = "#FFFFFF", -- pure white

		-- UI Variants
		bright_black = "#C3BCC0",
		bright_red = "#FBA1A1",
		bright_green = "#C6F0D3",
		bright_yellow = "#FFF4C2",
		bright_blue = "#B5B9E3",
		bright_magenta = "#F6D9FA",
		bright_cyan = "#C6F5ED",
		bright_white = "#FAFAFA",

		-- Interface
		comment = "#A59EA8", -- soft plum-gray
		cursor = "#FFC857", -- marigold beam
		selection = "#EFDDE0", -- subtle blush selection
		border = "#D0C4CC", -- gentle UI lines
		status_line = "#E3D7DB", -- pinkish light-gray
	}
end

return maple
