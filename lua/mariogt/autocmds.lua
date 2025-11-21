-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

-- remove all trailing spaces before saving
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.*" },
  desc = "Remove all trailing spaces before saving",
  callback = function()
    vim.cmd(":%s/\\s\\+$//e")
  end,
  group = autocmd_group,
})

-- Format MD files before saving
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.md", "*.MD" },
  desc = "Auto-format MD files before saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":silent !mdformat " .. fileName)
  end,
  group = autocmd_group,
})

-- Format sh files before saving
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.sh" },
  desc = "Auto-format sh files before saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":!shfmt -i 2 -w " .. fileName)
  end,
  group = autocmd_group,
})

-- Format ruby files before saving
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.rb" },
  desc = "Auto-format ruby files before saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":!rubyfmt -i " .. fileName)
  end,
  group = autocmd_group,
})

-- Reload ultisnips after saving a snippets file
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.snippets" },
  desc = "Reload snippets after saving",
  callback = function()
    vim.cmd(":CmpUltisnipsReloadSnippets")
  end,
  group = autocmd_group,
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})
