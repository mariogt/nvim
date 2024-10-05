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
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- themes
  { 'ellisonleao/gruvbox.nvim' },
  { 'savq/melange-nvim' },
  { 'craftzdog/solarized-osaka.nvim' },
  { 'rebelot/kanagawa.nvim' },
  { "rose-pine/neovim",              name = "rose-pine" },
  { "mariogt/gruvbox.nvim",      priority = 1000,   config = true, opts = ... },
  {
    "mariogt/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
      require("colorbuddy").colorscheme("cobalt2")
    end
  },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- hex colorizer
  {
    "norcalli/nvim-colorizer.lua"
  },

  -- mix
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { 'nvim-treesitter/playground' },
  { "nvim-lua/plenary.nvim" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },

  -- lsp
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },

  -- autocompletion & snippets
  { 'hrsh7th/nvim-cmp' },             -- autocompletion engine
  { 'hrsh7th/cmp-buffer' },           -- source for text in buffer
  { 'hrsh7th/cmp-path' },             -- source for file system paths in commands
  { 'rafamadriz/friendly-snippets' }, -- useful snippet library
  { 'saadparwaiz1/cmp_luasnip' },     -- for lua autocompletion
  { 'onsails/lspkind.nvim' },         -- vs-code like pictograms
  { 'L3MON4D3/LuaSnip' },             -- snippet engine

  -- tabby ml
  { 'TabbyML/vim-tabby' },

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

  -- git signs
  {
    'lewis6991/gitsigns.nvim',
  }

})
