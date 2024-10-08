-- https://github.com/nvim-telescope/telescope.nvim#pickers
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>xs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>sx', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- required if you want to show dot files on telescope
local telescope = require('telescope')
telescope.setup {
  pickers = {
    find_files = {
      --theme = "dropdown",
      hidden = true
    }
  }
}
