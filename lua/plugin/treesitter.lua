require('nvim-treesitter').setup {
  ensure_installed = {
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
  },
}

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
