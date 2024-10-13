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
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
    },
    find_command = {
      "rg",
      "--files",
      "--hidden",
      -- hide these files and folders
      "--glob=!**/.git/*",
      "--glob=!**/.idea/*",
      "--glob=!**/.vscode/*",
      "--glob=!**/build/*",
      "--glob=!**/dist/*",
      "--glob=!**/yarn.lock",
      "--glob=!**/package-lock.json",
    },
  },
  pickers = {
    find_files = {
      -- options dropdown/cursor/ivy
      --theme = "dropdown",
    }
  }
}
