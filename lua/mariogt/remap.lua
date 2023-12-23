-- leader remap
vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>¿", vim.cmd.Ex)

-- formating indent LSP
vim.keymap.set("n", "<F12>", function()
    vim.lsp.buf.format { async = true }
end)

-- buffer nav
vim.keymap.set("n", "<F1>", vim.cmd.bp)    -- next buffer
vim.keymap.set("n", "<F2>", vim.cmd.bn)    -- prev buffer
vim.keymap.set("n", "<F3>", vim.cmd.bd)    -- close buffer
vim.keymap.set("n", "<F4>", vim.cmd.close) -- close window

-- copy all
vim.keymap.set("n", "<F5>", "<cmd>%y+<CR>")

-- quit & saving
vim.keymap.set("n", "<F6>", vim.cmd.qa) -- quit all
vim.keymap.set("n", "<F7>", vim.cmd.w)  -- save
vim.keymap.set("n", "<F8>", vim.cmd.wa) -- save all

-- select all
vim.keymap.set("n", "ÑÑ", "gg<S-v>G")

-- select paragraph
vim.keymap.set("n", "ññ", "vip$")

-- remap split nav
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>")

-- split window
vim.keymap.set("n", "ss", vim.cmd.vsplit) -- vertical split
vim.keymap.set("n", "SS", vim.cmd.split)  -- horizontal split

-- disable highlight
vim.keymap.set("n", "++", "<cmd>nohl<CR>")
