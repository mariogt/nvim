vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.autoread = true

vim.opt.background = 'dark'
vim.cmd.colorscheme('gruvbox')
-- rose-pine-main
-- rose-pine-moon
-- rose-pine-dawn

-- shared clipboard
vim.o.clipboard = "unnamedplus"

-- disable mouse
vim.opt.mouse = ""
