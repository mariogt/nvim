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

Some context, right now I'm living in a Windows world, Win 11 + WSL2 on my laptop, Win 10 + Fedora 39 VM on my PC mega tower. In this setup NeoVim blends perfectly, works fast on my laptop, my Linux VM, and over SSH, super fast and low latency experience!

### WSL2 tips

Drastically improve your linux and NeoVim speed putting these lines into /etc/wsl.conf

```
[interop]
appendWindowsPath = false
```

The only drawback is that you will not be able to call windows apps from WSL2, but the speed gains greatly compensate this issue.

## Plugins

### Plugin manager

- <https://github.com/folke/lazy.nvim>

### Navigation

- <https://github.com/nvim-telescope/telescope.nvim>
- <https://github.com/ThePrimeagen/harpoon/tree/harpoon2>

### Code parser/highlighting

- <https://github.com/nvim-treesitter/nvim-treesitter>
- <https://github.com/nvim-treesitter/playground>

### Undo management

- <https://github.com/mbbill/undotree>

### Git

- <https://github.com/tpope/vim-fugitive>

### Comment/uncomment

- <https://github.com/numToStr/Comment.nvim>

### Lsp related

- <https://github.com/williamboman/mason.nvim>
- <https://github.com/williamboman/mason-lspconfig.nvim>
- <https://github.com/neovim/nvim-lspconfig>
- <https://github.com/hrsh7th/cmp-nvim-lsp>
- <https://github.com/hrsh7th/nvim-cmp>

### snippets (I'm still searching for a good Yasnippet replacement)

- <https://github.com/L3MON4D3/LuaSnip>

### Themes

- <https://github.com/ellisonleao/gruvbox.nvim>
- <https://github.com/craftzdog/solarized-osaka.nvim>
- <https://github.com/savq/melange-nvim>
- <https://github.com/rebelot/kanagawa.nvim>

### Statusline

- <https://github.com/nvim-lualine/lualine.nvim>

## Self-hosted AI coding assistant

- <https://github.com/TabbyML/tabby>
- <https://github.com/TabbyML/vim-tabby>

## Patched fonts

- <https://github.com/ryanoasis/nerd-fonts/releases>
