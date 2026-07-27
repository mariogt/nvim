-- Disable deprecated framework warning (optional)
-- vim.lsp.set_log_level("OFF")

-----------------------------------------------------------
-- 1. Language server configurations (new API)
-----------------------------------------------------------

vim.lsp.config("clangd", {})
vim.lsp.config("gopls", {})
vim.lsp.config("cssls", {})
vim.lsp.config("jsonls", {})
vim.lsp.config("bashls", {})
vim.lsp.config("marksman", {})
vim.lsp.config("pylsp", {})
vim.lsp.config("ts_ls", {})
vim.lsp.config("zls", {})
vim.lsp.config("ruby_lsp", {})
vim.lsp.config("yamlls", {})
vim.lsp.config("lemminx", {})
vim.lsp.config("ols", {})

vim.lsp.config("powershell_es", {
  cmd = {
    "pwsh", "-NoLogo", "-NoProfile", "-Command",
    "~/.powershell_es/PowerShellEditorServices/Start-EditorServices.ps1",
    "-HostName", "nvim",
    "-HostProfileId", "nvim",
    "-HostVersion", "1.0.0",
    "-LogLevel", "Information",
    "-Stdio",
    "-BundledModulesPath", "~/.powershell_es/modules"
  },
  filetypes = { "ps1" },
  root_dir = vim.fs.root(0, { ".git" }),
})

vim.lsp.config("html", {
  settings = {
    html = {
      format = {
        wrapLineLength = 120,
      },
    },
    javascript = {
      format = {
        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true,
      },
    },
  },
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      format = {
        enable = true,
      },
    },
  },
})

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {},
  },
})

-----------------------------------------------------------
-- 2. Enable all configured servers
-----------------------------------------------------------

vim.lsp.enable({
  "clangd",
  "gopls",
  "cssls",
  "jsonls",
  "bashls",
  "marksman",
  "pylsp",
  "ts_ls",
  "zls",
  "ruby_lsp",
  "yamlls",
  "lemminx",
  "powershell_es",
  "html",
  "lua_ls",
  "rust_analyzer",
})

-----------------------------------------------------------
-- 3. Global diagnostic keymaps
-----------------------------------------------------------

vim.keymap.set("n", "<leader>ñl", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic" })

vim.keymap.set("n", "<leader>lñ", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic" })

-----------------------------------------------------------
-- 4. LspAttach: buffer-local keymaps
-----------------------------------------------------------

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }

    vim.keymap.set("n", ",,", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "..", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "--", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>e", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})
