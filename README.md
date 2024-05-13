![mariogt nvim setup](/media/gtnvim.png "nvim")

## Overview

My Neovim config files, inspired by:

**ThePrimagean** 🍻

- Video : <https://www.youtube.com/watch?v=w7i4amO_zaE&t=1s>
- Github: <https://github.com/ThePrimeagen/init.lua>

**Devaslife** (craftzdog) 🐶

- Video : <https://www.youtube.com/watch?v=fFHlfbKVi30&t=3190s>
- Github: <https://github.com/craftzdog/dotfiles-public/tree/master>

## Details

This is my first successful attemp to generate a usable Neovim setup for my programming needs, trying to reconfigure my emacs brain 🦬 the struggle is real!

Some context, right now I'm living in a Mac/PC world, Win 11 + WSL2 on my PC Mega Tower, macOS (obviously) on my MacBook Pro M3 Max. In this setup NeoVim blends perfectly, works fast on my laptop, my PC, and over SSH, super fast and low latency experience!

### WSL2 tips

Drastically improve your linux and NeoVim speed on Windows 11 putting these lines into /etc/wsl.conf

```
[interop]
appendWindowsPath = false
```

The only drawback is that you will not be able to call windows apps from WSL2, but the speed gains compensate this issue.
Strangely WSL2 on my Windows 10 tower works okayish without this hack, but my Windows 11 laptop have to had this setting on, period.

## Plugins

### Plugin manager

- <https://github.com/folke/lazy.nvim>

### Navigation

- <https://github.com/nvim-telescope/telescope.nvim>
- <https://github.com/ThePrimeagen/harpoon/tree/harpoon2>

### Code parser/formatting/highlighting

- <https://github.com/nvim-treesitter/nvim-treesitter>
- <https://github.com/nvim-treesitter/playground>
- <https://github.com/windwp/nvim-autopairs>

### Undo management

- <https://github.com/mbbill/undotree>

### Git

- <https://github.com/tpope/vim-fugitive>
- <https://github.com/lewis6991/gitsigns.nvim>

### Comment/uncomment

- <https://github.com/numToStr/Comment.nvim>

### Lsp related

- <https://github.com/williamboman/mason.nvim>
- <https://github.com/williamboman/mason-lspconfig.nvim>
- <https://github.com/neovim/nvim-lspconfig>
- <https://github.com/hrsh7th/cmp-nvim-lsp>
- <https://github.com/hrsh7th/nvim-cmp>

### Snippets (I'm still searching for a good Yasnippet replacement)

- <https://github.com/L3MON4D3/LuaSnip>

### Themes

- <https://github.com/ellisonleao/gruvbox.nvim>
- <https://github.com/craftzdog/solarized-osaka.nvim>
- <https://github.com/savq/melange-nvim>
- <https://github.com/rebelot/kanagawa.nvim>
- <https://github.com/rose-pine/neovim>
- <https://ellisonleao/gruvbox.nvim%22>

### Statusline

- <https://github.com/nvim-lualine/lualine.nvim>

## Self-hosted AI coding assistant

- <https://github.com/TabbyML/tabby>
- <https://github.com/TabbyML/vim-tabby>

## Patched fonts

- <https://github.com/ryanoasis/nerd-fonts/releases>
