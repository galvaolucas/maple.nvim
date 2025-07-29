# Maple.nvim

A set of Neovim colorschemes with some pastel colors. Soft to the eyes if you enjoy long coding hours.
Features include:

- Elegant pastel palette with calm colors
- Optional transparent background for seamless integration with your terminal
- Built-in Lualine theme support

Themes available: autumn(default) and spring

- Spring with transparency on Wezterm terminal with JWR dark as terminal's theme

<p align="center">
  <img src="assets/spring_transparent.png" alt="Maple Spring Transparent Theme Preview" />
</p>

## Installation

Using your plugin manager (example for lazy.nvim):

```lua
{
  "lucasgalvao/maple.nvim",
  config = function()
    require("colors.maple").setup({ theme: 'spring' })
  end
}
```

Then in your init.lua:

```
vim.cmd("colorscheme maple")
```

The theme also supports transparency and italic. To enable, just pass the properties into the setup call:

```
require("colors.maple").setup({ transparency = true, italic = true })
```

The lualine support includes: VIM mode, filename, branch name, lsp diagnostics, git diff, filesize, file percent, file position and a clock.

Feel free to open issues or PR's!
