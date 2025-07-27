# 🍁 Maple.nvim

A warm, soft Neovim theme inspired by the Maple VSCode theme. Includes Lualine support and transparent background option.

## Installation

```lua
{
  "lucasgalvao/maple.nvim",
  config = function()
    require("colors.maple").setup({ transparent = true })
    vim.cmd("colorscheme maple")
  end
}

```
