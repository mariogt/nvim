-- leader remap
vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>¿", vim.cmd.Ex)

-- formating indent LSP
vim.keymap.set("n", "<F12>", function()
    vim.lsp.buf.format { async = true }
end)

-- quit & saving
vim.keymap.set("n", "<F6>", vim.cmd.qa) -- quit all
vim.keymap.set("n", "<F7>", vim.cmd.w)  -- save
vim.keymap.set("n", "<F8>", vim.cmd.wa) -- save all

-- buffer nav
vim.keymap.set("n", "<F1>", vim.cmd.bp)    -- next buffer
vim.keymap.set("n", "<F2>", vim.cmd.bn)    -- prev buffer
vim.keymap.set("n", "<F3>", vim.cmd.bd)    -- close buffer
vim.keymap.set("n", "<F4>", vim.cmd.close) -- close window

-- copy all
vim.keymap.set("n", "<F5>", "<cmd>%y+<CR>")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- remap split nav
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>")

-- split window
vim.keymap.set("n", "ss", vim.cmd.split)
vim.keymap.set("n", "sv", vim.cmd.vsplit)

-- disable highlight
vim.keymap.set("n", "++", "<cmd>nohl<CR>")
