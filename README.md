# material.nvim

A port or [Material](https://material-theme.site) colorscheme for NeoVim
written in lua.

Theme is inspired by https://github.com/kaicataldo/material.vim.

![screen](/media/Material.png)

## Features

material.nvim is meant to be a modern colorscheme written in lua for NeoVim
that supports a lot of the new features added to NeoVim like built-in LSP and
[TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter).

+ 5 styles to choose from
    + Deep ocean ![screen](/media/deep-ocean.png)
    + Oceanic ![screen](/media/oceanic.png)
    + Palenight ![screen](/media/palenight.png)
    + Lighter ![screen](/media/lighter.png)
    + Darker ![screen](/media/darker.png)

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [WhichKey](https://github.com/liuchengxu/vim-which-key)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)

## Requirements

+ Neovim >= 0.5.0

## Installation

Install via your favourite package manager:

```lua
-- If you are using Packer
use { 'scthijsse/material.nvim' }
```

## Usage

Enable the colorscheme:

```lua
-- Load the colorscheme
require('material').load()

-- Or with your own options
require('material').load {
    borders = false, -- Enable the border between verticaly split windows visable
    contrast = true, -- Make sidebars and popup menus like nvim-tree and telescope have a different background
    disable_background = false, -- Disable the setting of background color so that NeoVim can use your terminal background
    italic_comments = true, -- Make comments italic
    italic_functions = true, -- Make functions italic
    italic_keywords = true, -- Make keywords italic
    italic_variables = false, -- Make variables and identifiers italic
    style = 'deep ocean', -- The theme comes in five styles, 'darker', 'lighter', 'palenight', 'oceanic' and 'deep ocean'
}
```

## Override the theme

```lua
-- Load the theme before requiring the colors otherwise it won't work
require('material').load {
    ...
}

-- For the available colors see the code
local colors = require('material.colors').get()
vim.cmd(string.format('highlight Normal guibg=%s guifg=%s', colors.bg, colors.fg))
```

## Lualine

To enable the `material-nvim` theme for `Lualine`, simply specify it in your
lualine settings: (make sure to set the theme to 'material-nvim', as
'material' already exists built in to lualine).

```lua
require('lualine').setup {
  options = {
    ...
    theme = 'material-nvim',
    ...
  },
}
```

