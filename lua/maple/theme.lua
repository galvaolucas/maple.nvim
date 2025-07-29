local maple = require("maple.palette")

local function hi(name, opts)
	vim.api.nvim_set_hl(0, name, opts)
end

function maple.setup(opts, c)
	opts = opts or {}
	local transparent = opts.transparent or false
	local italic = opts.italic or false

	if transparent then
		c.bg = "NONE"
		c.border = "NONE"
		c.selection = c.selection
	end

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "maple"

	hi("Normal", { fg = c.fg, bg = c.bg })
	hi("Cursor", { fg = c.bg, bg = c.cursor })
	hi("Visual", { bg = c.selection })
	hi("LineNr", { fg = c.comment })
	hi("CursorLineNr", { fg = c.white, bold = true })
	hi("Comment", { fg = c.comment, italic = true })
	hi("StatusLine", { fg = c.fg, bg = nil })
	hi("VertSplit", { fg = c.border })
	hi("WinSeparator", { fg = c.border })

	hi("Identifier", { fg = c.cursor })
	hi("Function", { fg = c.blue })
	hi("Statement", { fg = c.magenta })
	hi("Keyword", { fg = c.magenta, bold = true })
	hi("Type", { fg = c.yellow })
	hi("String", { fg = c.green })
	hi("Number", { fg = c.yellow })
	hi("Boolean", { fg = c.red })
	hi("Constant", { fg = c.bright_blue })

	hi("DiagnosticError", { fg = c.red, undercurl = false })
	hi("DiagnosticWarn", { fg = c.columbia_blue, undercurl = false })
	hi("DiagnosticInfo", { fg = c.blue, undercurl = false })
	hi("DiagnosticHint", { fg = c.cyan, undercurl = false })
	hi("DiagnosticUnderlineError", { fg = c.red, undercurl = true })
	hi("DiagnosticUnderlineWarn", { fg = c.yellow, undercurl = true })
	hi("DiagnosticUnderlineInfo", { fg = c.blue, undercurl = false })
	hi("DiagnosticUnderlineHint", { fg = c.cyan, undercurl = false })

	hi("NvimTreeNormal", { bg = c.bg })
	hi("NvimTreeNormalNC", { bg = c.bg })
	hi("NvimTreeEndOfBuffer", { bg = c.bg })
	hi("NvimTreeVertSplit", { fg = c.border, bg = c.bg })

	hi("GitSignsAdd", { fg = c.green })
	hi("GitSignsChange", { fg = c.blue })
	hi("GitSignsDelete", { fg = c.red })

	hi("DiffAdd", { bg = "#a4dfae" })
	hi("DiffChange", { bg = "#8fc7ff" })
	hi("DiffDelete", { bg = "#edabab" })
	hi("DiffText", { bg = "#8fc7ff" })

	hi("TelescopeBorder", { fg = c.border, bg = c.bg })
	hi("TelescopePromptBorder", { fg = c.border, bg = c.bg })
	hi("TelescopeResultsBorder", { fg = c.border, bg = c.bg })
	hi("TelescopePreviewBorder", { fg = c.border, bg = c.bg })
	hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg })
	hi("TelescopePromptPrefix", { fg = c.green, bg = c.bg })
	hi("TelescopePromptTitle", { fg = c.green, bg = c.bg, bold = true })
	hi("TelescopeResultsTitle", { fg = c.fg, bg = c.bg })
	hi("TelescopePreviewTitle", { fg = c.fg, bg = c.bg })
	hi("TelescopeSelection", { fg = c.black, bg = c.green, bold = true })
	hi("TelescopeMultiSelection", { fg = c.green, bg = c.bg })
	hi("TelescopeMatching", { fg = c.yellow, bold = true })

	hi("@comment", { fg = c.comment, italic = true })
	hi("@keyword", { fg = c.magenta, bold = true })
	hi("@keyword.function", { fg = c.magenta })
	hi("@function", { fg = c.blue })
	hi("@function.call", { fg = c.blue })
	hi("@method", { fg = c.blue })
	hi("@variable", { fg = c.fg })
	hi("@property", { fg = c.cyan })
	hi("@field", { fg = c.cyan })
	hi("@string", { fg = c.green })
	hi("@number", { fg = c.yellow })
	hi("@boolean", { fg = c.red })
	hi("@constant", { fg = c.cyan })
	hi("@type", { fg = c.yellow })
	hi("@namespace", { fg = c.magenta })
	hi("@operator", { fg = c.magenta })
	hi("@parameter", { fg = c.fg })
	hi("@punctuation.delimiter", { fg = c.fg })
	hi("@punctuation.bracket", { fg = c.blue })

	hi("@lsp.type.namespace", { link = "@namespace" })
	hi("@lsp.type.type", { link = "@type" })
	hi("@lsp.type.class", { link = "@type" })
	hi("@lsp.type.enum", { link = "@type" })
	hi("@lsp.type.interface", { link = "@type" })
	hi("@lsp.type.struct", { link = "@type" })
	hi("@lsp.type.parameter", { link = "@parameter" })
	hi("@lsp.type.variable", { link = "@variable" })
	hi("@lsp.type.property", { link = "@property" })
	hi("@lsp.type.enumMember", { link = "@constant" })
	hi("@lsp.type.function", { link = "@function" })
	hi("@lsp.type.method", { link = "@method" })
	hi("@lsp.type.macro", { link = "@function" })

	hi("Pmenu", { fg = c.fg, bg = c.bg })
	hi("PmenuSel", { fg = c.black, bg = c.green })
	hi("PmenuSbar", { bg = c.selection })
	hi("PmenuThumb", { bg = c.selection })
	hi("CursorLine", { bg = c.black })
	hi("ColorColumn", { bg = c.border })
	hi("StatusLineNC", { fg = c.comment, bg = nil })
	hi("TabLine", { fg = c.comment, bg = c.border })
	hi("TabLineFill", { bg = c.border })
	hi("TabLineSel", { fg = c.fg, bg = c.selection })
	hi("VisualNOS", { fg = c.red, bg = c.bg })

	hi("Search", { bg = c.yellow, fg = c.black })
	hi("IncSearch", { bg = c.yellow, fg = c.black, bold = true })
	hi("CursorLineNr", { fg = c.white, bold = true })
	hi("SnacksDashboardDesc", { fg = c.magenta })

	hi("LazySpecial", { fg = c.bright_magenta })
	hi("LazyReasonPlugin", { fg = c.magenta })

	vim.api.nvim_create_autocmd("ColorScheme", {
		pattern = "*",
		callback = function()
			vim.api.nvim_set_hl(0, "@type.builtin.tsx", { fg = c.magenta, bold = true })
			vim.api.nvim_set_hl(0, "@tag.builtin.tsx", { fg = c.bright_red })
			vim.api.nvim_set_hl(0, "@tag", { fg = c.bright_yellow })
			vim.api.nvim_set_hl(0, "@tag.tsx", { fg = c.bright_blue, bold = false })
			vim.api.nvim_set_hl(0, "@spell.tsx", { fg = c.white, bold = false })
			vim.api.nvim_set_hl(0, "@number.tsx", { fg = c.bright_green, bold = false })
			vim.api.nvim_set_hl(0, "@type.tsx", { fg = c.bright_yellow, bold = false })
			vim.api.nvim_set_hl(0, "@boolean.tsx", { fg = c.magenta, bold = true })
			vim.api.nvim_set_hl(0, "@_jsx_element", { fg = c.cyan, bold = false })
			vim.api.nvim_set_hl(0, "@_jsx_element.tsx", { fg = c.bright_red, bold = false })
			vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.bright_blue })
			vim.api.nvim_set_hl(0, "@lsp.type.property.typescriptreact", { fg = c.bright_red })
			vim.api.nvim_set_hl(0, "@operator.tsx", { fg = c.bright_blue })
			vim.api.nvim_set_hl(0, "@_jsx_attribute.tsx", { fg = c.bright_yellow })
			vim.api.nvim_set_hl(0, "@punctuation.bracket.tsx", { fg = c.columbia_blue })
			vim.api.nvim_set_hl(0, "@keyword.import.tsx", { fg = c.magenta })
			vim.api.nvim_set_hl(0, "@keyword.tsx", { fg = c.magenta })
			vim.api.nvim_set_hl(0, "@keyword.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.exception.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.exception.tsx", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.operator.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.operator.tsx", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.coroutine.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.coroutine.tsx", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.conditional.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.conditional.tsx", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.return.typescript", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@keyword.return.tsx", { fg = c.magenta, italic = italic })
			vim.api.nvim_set_hl(0, "@lsp.type.variable.typescriptreact", { fg = c.bright_yellow })
			vim.api.nvim_set_hl(0, "@lsp.type.parameter.typescriptreact", { fg = c.bright_magenta })
			vim.api.nvim_set_hl(0, "@lsp.typemod.parameter.declaration.typescriptreact", { fg = c.bright_magenta })
			vim.api.nvim_set_hl(0, "@lsp.mod.declaration.typescriptreact", { fg = c.bright_magenta })
			vim.api.nvim_set_hl(0, "@lsp.type.type.typescriptreact", { fg = c.bright_yellow, bold = true })
			vim.api.nvim_set_hl(0, "@lsp.type.property.typescriptreact", { fg = c.bright_white, bold = false })
			vim.api.nvim_set_hl(0, "@variable.typescript", { fg = c.bright_yellow, bold = false })
			vim.api.nvim_set_hl(0, "@variable.parameter.tsx", { fg = c.bright_yellow, bold = false })
			vim.api.nvim_set_hl(0, "@constructor.typescript", { fg = c.bright_blue, bold = true })
			vim.api.nvim_set_hl(0, "@lsp.mod.defaultLibrary.typescript", { fg = c.bright_green, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.mod.declaration.typescript", { fg = c.bright_yellow, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.mod.local.typescript", { fg = c.bright_yellow, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.type.namespace.typescriptreact", { fg = c.magenta, bold = true })
			vim.api.nvim_set_hl(0, "@lsp.type.property.typescriptreact", { fg = c.bright_white, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.mod.declaration.typescript", { fg = c.bright_blue, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.type.class.typescript", { fg = c.bright_white, bold = false })
			vim.api.nvim_set_hl(0, "@lsp.type.variable.typescript", { fg = c.bright_white, bold = false })
			vim.api.nvim_set_hl(
				0,
				"@lsp.typemod.parameter.declaration.typescript",
				{ fg = c.bright_white, bold = false }
			)

			vim.api.nvim_set_hl(
				0,
				"@lsp.typemod.property.declaration.typescriptreact",
				{ fg = c.bright_white, bold = false }
			)

			vim.api.nvim_set_hl(
				0,
				"@lsp.type.interface.typescriptreact",
				{ fg = c.bright_yellow, bold = true, italic = italic }
			)
			vim.api.nvim_set_hl(
				0,
				"@lsp.typemod.class.defaultLibrary.typescriptreact",
				{ fg = c.bright_cyan, bold = true }
			)

			vim.api.nvim_set_hl(0, "@lsp.type.property.lua", { fg = c.magenta, bold = false })
			vim.api.nvim_set_hl(0, "@property.lua", { fg = c.magenta, bold = false })
		end,
	})

	vim.api.nvim_create_autocmd("ColorScheme", {
		pattern = "maple",
		callback = function()
			vim.api.nvim_set_hl(0, "Normal", { bg = c.bg })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = c.bg })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = c.bg })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "NONE", bg = c.bg })

			-- Sidebars
			vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = c.bg })
			vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = c.bg })
			vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = c.bg })
			vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = c.bg })

			-- Telescope
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = c.bg })
			vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = c.bg })

			vim.api.nvim_set_hl(0, "NvimTreeDirectoryName", { fg = c.magenta })
			vim.api.nvim_set_hl(0, "NvimTreeDirectoryIcon", { fg = c.magenta })
			vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = c.magenta })
			vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = c.magenta })
		end,
	})

	if italic then
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "maple",
			callback = function()
				vim.api.nvim_set_hl(0, "Keyword", { italic = true })
				vim.api.nvim_set_hl(0, "@keyword", { italic = true })
				vim.api.nvim_set_hl(0, "@keyword.function", { italic = true })
				vim.api.nvim_set_hl(0, "@operator", { italic = true })
			end,
		})
	end

	vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
		pattern = "*",
		callback = function()
			vim.api.nvim_set_hl(0, "Directory", { fg = c.bright_blue })
		end,
	})
end

return maple
