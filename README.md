# Maple.nvim

A warm, soft Neovim colorscheme inspired by the [**Maple VSCode theme**](https://github.com/subframe7536/vscode-theme-maple).  
Features include:

- Elegant pastel palette with calm colors
- Optional transparent background for seamless integration with your terminal
- Built-in Lualine theme support

## Installation

Using your plugin manager (example for lazy.nvim):

```lua
{
  "lucasgalvao/maple.nvim",
  config = function()
    require("colors.maple").setup()
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

The theme also supports transparency and italic. To enable, just pass the properties into the setup call:

```
require("colors.maple").setup({ transparency = true, italic = true })
```

Feel free to open issues or PRs!
