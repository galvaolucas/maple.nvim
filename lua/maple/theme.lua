-- maple.lua – refined version

local maple = {}

local function merge(tbl1, tbl2)
	for k, v in pairs(tbl2) do
		tbl1[k] = v
	end
end

maple.colors = {
	bg = "#0B0C10",
	fg = "#EAEAEA",

	red = "#E27D60",
	green = "#A3D9A5",
	yellow = "#FFE9A3",
	blue = "#84C5F4",
	magenta = "#D7A9E3",
	cyan = "#A6F2E7",
	white = "#FAFAFA",
	black = "#1A1B1E",
	pink = "#FFB3D1",
	columbia_blue = "#C2DFFF",

	bright_black = "#2A2D34",
	bright_red = "#FF9999",
	bright_green = "#C3F6C6",
	bright_yellow = "#FFF5B7",
	bright_blue = "#A8DCFF",
	bright_magenta = "#F0D7FF",
	bright_cyan = "#D4FFFA",
	bright_white = "#FFFFFF",

	cursor = "#F0D7FF",
	selection = "#3C3756",
	comment = "#7A8C98",
	border = "#5B537E",
	status_line = "#2C2C2E",
}

local c = maple.colors

local function hi(name, opts)
	vim.api.nvim_set_hl(0, name, opts)
end

local function hi_link(from, to)
	vim.api.nvim_set_hl(0, from, { link = to })
end

local function apply_italics()
	hi("Keyword", { italic = true })
	hi("@keyword", { italic = true })
	hi("@keyword.function", { italic = true })
	hi("@operator", { italic = true })
	hi("@lsp.type.interface", { italic = true })
end

local function tsx(name, opts)
	hi(name, opts)
	hi(name .. ".tsx", opts)
	hi(name .. ".typescript", opts)
end

function maple.setup(opts)
	opts = opts or {}
	local transparent = opts.transparent or false
	local italic = opts.italic or false

	if transparent then
		c.bg = "NONE"
		c.border = c.selection
		c.status_line = "NONE"
	end

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "maple"

	-- Core UI
	hi("Normal", { fg = c.fg, bg = c.bg })
	hi("Cursor", { fg = c.bg, bg = c.cursor })
	hi("Visual", { bg = c.selection })
	hi("LineNr", { fg = c.comment })
	hi("CursorLineNr", { fg = c.white, bold = true })
	hi("Comment", { fg = c.comment, italic = italic })
	hi("StatusLine", { fg = c.fg, bg = c.status_line })
	hi("VertSplit", { fg = c.border })
	hi("WinSeparator", { fg = c.border })

	-- Syntax
	hi("Identifier", { fg = c.cursor })
	hi("Function", { fg = c.blue })
	hi("Statement", { fg = c.magenta })
	hi("Keyword", { fg = c.magenta, bold = true })
	hi("Type", { fg = c.yellow })
	hi("String", { fg = c.green })
	hi("Number", { fg = c.yellow })
	hi("Boolean", { fg = c.red })
	hi("Constant", { fg = c.bright_blue })

	-- Diff
	hi("DiffAdd", { bg = "#193c36" })
	hi("DiffChange", { bg = "#1c3444" })
	hi("DiffDelete", { bg = "#3c1e26" })
	hi("DiffText", { bg = "#284863" })

	-- Diagnostics
	hi("DiagnosticError", { fg = c.red })
	hi("DiagnosticWarn", { fg = c.yellow })
	hi("DiagnosticInfo", { fg = c.blue })
	hi("DiagnosticHint", { fg = c.cyan })

	-- Treesitter (partial)
	hi("@function", { fg = c.blue })
	hi("@variable", { fg = c.fg })
	hi("@property", { fg = c.cyan })
	hi("@string", { fg = c.green })
	hi("@number", { fg = c.yellow })
	hi("@boolean", { fg = c.red })

	-- Telescope
	hi("TelescopeBorder", { fg = c.border, bg = c.bg })
	hi("TelescopePromptBorder", { fg = c.comment, bg = c.bg })
	hi("TelescopePromptTitle", { fg = c.green, bold = true })
	hi("TelescopeSelection", { fg = c.black, bg = c.green, bold = true })

	-- Pmenu
	hi("Pmenu", { fg = c.fg, bg = c.bg })
	hi("PmenuSel", { fg = c.black, bg = c.green })
	hi("CursorLine", { bg = c.black })
	hi("ColorColumn", { bg = c.border })

	-- Indent guides
	hi("IndentBlanklineChar", { fg = c.border })
	hi("IndentBlanklineContextChar", { fg = c.cyan })

	-- Git signs
	hi("GitSignsAdd", { fg = c.green })
	hi("GitSignsChange", { fg = c.blue })
	hi("GitSignsDelete", { fg = c.red })

	-- TSX/TypeScript refinements
	tsx("@keyword.operator", { fg = c.magenta, italic = italic })
	tsx("@keyword.return", { fg = c.magenta, italic = italic })
	tsx("@type", { fg = c.bright_yellow, bold = false })
	tsx("@boolean", { fg = c.magenta, bold = true })
	tsx("@number", { fg = c.bright_green })

	if italic then
		apply_italics()
	end
end

return maple
