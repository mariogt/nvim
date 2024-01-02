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
    "tsserver",
    "zls"
  }
}
