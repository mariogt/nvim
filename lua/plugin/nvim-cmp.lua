local cmp = require('cmp')
local lspkind = require("lspkind")
local ultisnips = require("cmp_nvim_ultisnips")
local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },

  snippet = { -- configure how nvim-cmp interacts with snippet engine
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
    snippet = ultisnips.snippet,
  },

  -- -- normal mappings
  -- mapping = cmp.mapping.preset.insert({
  --   ["<C-Right>"] = cmp.mapping.select_prev_item(), -- previous suggestion
  --   ["<C-Left>"] = cmp.mapping.select_next_item(),  -- next suggestion
  --   ["<C-u>"] = cmp.mapping.scroll_docs(-4),
  --   ["<C-d>"] = cmp.mapping.scroll_docs(4),
  --   ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
  --   ["<C-e>"] = cmp.mapping.abort(),        -- close completion window
  --   ["<CR>"] = cmp.mapping.confirm({ select = true }),
  -- }),

  -- mappings for tabs freaks
  mapping = {
    ["<Tab>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<S-Tab>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.jump_backwards(fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
  },

  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "ultisnips" },
    { name = "buffer" }, -- text within current buffer
    { name = "path" },   -- file system paths
  }),

  -- configure lspkind for vs-code like pictograms in completion menu
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})

-- `/` cmdline search setup.
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    {
      name = 'cmdline',
      option = {
        ignore_cmds = { 'Man', '!' }
      }
    }
  })
})

-- Configure Clangd
lspconfig.clangd.setup {
  capabilities = capabilities,
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "h" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
}
