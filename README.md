# 🍁 Maple.nvim

A warm, soft Neovim theme inspired by the Maple VSCode theme. Includes Lualine support and transparent background option.

## Installation

```lua
{
  "lucasgalvao/maple.nvim",
  config = function()
    require("colors.maple").setup({ transparent = true })
  end
}

```

Then in your init.lua:

```
    vim.cmd("colorscheme maple")
```

If you wanna also use the lualine theme:

```
require("maple.lualine")
```
