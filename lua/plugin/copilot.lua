-- Copilot setup
-- Disable Copilot's default <Tab> mapping
vim.g.copilot_no_tab_map = true

-- Custom keymap: accept suggestion with Ctrl+Tab in insert mode
vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', {
  expr = true,
  replace_keycodes = false,
})
