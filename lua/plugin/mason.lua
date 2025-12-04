require("mason").setup()

require("mason-lspconfig").setup {
  ensure_installed = {
    "bashls",
    "rust_analyzer",
    "clangd",
    "cssls",
    "gopls",
    "html",
    "jsonls",
    "lua_ls",
    "marksman",
    "ts_ls",
    "zls",
    "pylsp",
    "ruby_lsp",
    "herb_ls",
    "yamlls",
    "lemminx",
    "powershell_es"
  }
}
