-- LazyVim init
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  -- telescope extensions
  { 'fhill2/telescope-ultisnips.nvim' },

  -- auto theme switcher dark/light mode
  { 'mariogt/auto-dark-mode.nvim' },

  -- themes
  { 'savq/melange-nvim' },
  { 'craftzdog/solarized-osaka.nvim' },
  { 'rebelot/kanagawa.nvim' },
  { "rose-pine/neovim",               name = "rose-pine" },
  { "mariogt/gruvbox.nvim",           priority = 1000,   config = true, opts = ... },
  { "NLKNguyen/papercolor-theme" },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- hex colorizer
  { "norcalli/nvim-colorizer.lua" },

  -- mix
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { 'nvim-treesitter/playground' },
  { "nvim-lua/plenary.nvim" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  },

  -- file explorer
  { "nvim-tree/nvim-tree.lua" },

  -- undo manager
  { 'mbbill/undotree' },

  -- git
  { 'tpope/vim-fugitive' },
  { 'lewis6991/gitsigns.nvim' },

  -- folke noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },

  -- floaterm
  { 'voldikss/vim-floaterm' },

  -- lsp
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },

  -- snippets - autocompletion
  { 'hrsh7th/nvim-cmp' },     -- autocompletion engine
  { 'hrsh7th/cmp-nvim-lsp' }, -- source for lsp
  { 'hrsh7th/cmp-buffer' },   -- source for text in buffer
  { 'hrsh7th/cmp-path' },     -- source for file system paths in commands
  { 'hrsh7th/cmp-cmdline' },  -- source for folke command line
  { 'quangnguyen30192/cmp-nvim-ultisnips' },
  { 'onsails/lspkind.nvim' }, -- vs-code like pictograms
  { 'SirVer/ultisnips' },
  { 'honza/vim-snippets' },

  -- copilot
  { 'github/copilot.vim' },

  -- -- Tabby plugin
  -- {
  --   "TabbyML/vim-tabby",
  --   lazy = false,
  --   dependencies = {
  --     "neovim/nvim-lspconfig",
  --   },
  --   init = function()
  --     vim.g.tabby_agent_start_command = { "npx", "tabby-agent", "--stdio" }
  --     vim.g.tabby_inline_completion_trigger = "auto"
  --   end,
  -- },

  -- vim-tmux-navigator
  { 'christoomey/vim-tmux-navigator' },
  lazy = true,

  -- autopair
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
})
