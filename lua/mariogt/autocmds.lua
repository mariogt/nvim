-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

-- Format MD files after saving
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.md", "*.MD" },
  desc = "Auto-format MD files after saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":silent !mdformat " .. fileName)
  end,
  group = autocmd_group,
})

-- Format sh files after saving
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.sh" },
  desc = "Auto-format sh files after saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":silent !shfmt -l -w " .. fileName)
  end,
  group = autocmd_group,
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})
