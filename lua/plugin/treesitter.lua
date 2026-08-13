require('nvim-treesitter').setup {}

require('nvim-treesitter').install {
  "javascript",
  "typescript",
  "c",
  "cpp",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "html",
  "bash",
  "python",
  "regex",
}

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
