local cmp = require("cmp")
local lspkind = require("lspkind")
local ultisnips = require("cmp_nvim_ultisnips")
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

-- Capabilities for LSP completion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-----------------------------------------------------------
-- nvim-cmp setup
-----------------------------------------------------------

cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },

  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
    snippet = ultisnips.snippet,
  },

  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      cmp_ultisnips_mappings.jump_backwards(fallback)
    end, { "i", "s" }),
  },

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "ultisnips" },
    { name = "buffer" },
    { name = "path" },
  }),

  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})

-----------------------------------------------------------
-- Cmdline completion
-----------------------------------------------------------

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    {
      name = "cmdline",
      option = { ignore_cmds = { "Man", "!" } },
    },
  }),
})

-----------------------------------------------------------
-- LSP: clangd (new API)
-----------------------------------------------------------

vim.lsp.config("clangd", {
  capabilities = capabilities,
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "h" },
  root_dir = vim.fs.root(0, {
    "compile_commands.json",
    "compile_flags.txt",
    ".git",
  }),
})

-- Enable clangd
vim.lsp.enable("clangd")
