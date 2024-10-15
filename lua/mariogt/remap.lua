-- leader remap
vim.g.mapleader = " "

-- alternative ESC (remember <C-[> == Esc)
vim.keymap.set("i", "<A-f>", "<esc>")
vim.keymap.set("v", "<A-f>", "<esc>")

-- file explorer
vim.keymap.set("n", "<leader>¿", vim.cmd.Ex)

-- formating
vim.keymap.set("n", "<F12>", "gg=G")

-- buffer nav
vim.keymap.set("n", "<F1>", vim.cmd.bp)    -- next buffer
vim.keymap.set("n", "<F2>", vim.cmd.bn)    -- prev buffer
vim.keymap.set("n", "<F3>", vim.cmd.bd)    -- close buffer
vim.keymap.set("n", "<F4>", vim.cmd.close) -- close window

-- keep cursor in the middle of screen when page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- saving buffers
vim.keymap.set("n", "<F5>", vim.cmd.w)  -- save
vim.keymap.set("n", "<F6>", vim.cmd.wa) -- save all

-- copy to vim/system clipboard
vim.keymap.set({ "n", "v" }, "leader>y", [["+y]]) -- vim clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])         -- system clipboard

-- set read only
vim.keymap.set("n", "<F7>", ":set readonly!<CR>")

-- open todo file
vim.keymap.set("n", "<F9><F9>", ":e ~/OneDrive/Documentos/remember.txt<CR>G")

-- copy all
-- vim.keymap.set("n", "<F8>", "<cmd>%y+<CR>")

-- exit to normal mode from terminal insert mode
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- new floaterm
vim.keymap.set("n", "<F9>", ":FloatermNew --height=0.9 --width=0.9 --wintype=float --tittle=doom --autoclose=1<CR>")
-- floaterm toggle
vim.keymap.set("n", "<F8>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<F8>", "<C-\\><C-n>:FloatermToggle<CR>")

-- exit vim
vim.keymap.set("n", "<F10>", vim.cmd.qa) -- quit all

-- select all
vim.keymap.set("n", "ÑÑ", "gg<S-v>G")

-- select paragraph
vim.keymap.set("n", "ññ", "vip$")

-- select line
vim.keymap.set("n", "ñññ", "0v$")

-- move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remap split nav
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>")

-- split window
vim.keymap.set("n", "ss", vim.cmd.vsplit) -- vertical split
vim.keymap.set("n", "SS", vim.cmd.split)  -- horizontal split

-- split window resize
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- disable search highlight
vim.keymap.set("n", "++", "<cmd>nohl<CR>")

-- more convenient search & replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--tmux vim like shortcuts integration
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateUp<CR>")
