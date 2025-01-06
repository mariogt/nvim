-- Detect system type
local is_macos = vim.fn.has("mac") == 1
local is_windows = vim.fn.has("win32") == 1
local is_wsl = vim.fn.has("wsl") == 1
local is_linux = vim.fn.has("unix") == 1 and not is_macos and not is_wsl

-- ultisnip default folders
if is_macos then
  vim.g.UltiSnipsSnippetDirectories = { "~/github/scripts/gtsnippets" }
elseif is_linux then
  vim.g.UltiSnipsSnippetDirectories = { "~/github/scripts/gtsnippets" }
elseif is_wsl then
  vim.g.UltiSnipsSnippetDirectories = { "/mnt/d/dev/github/scripts/gtsnippets" }
elseif is_windows then
  vim.g.UltiSnipsSnippetDirectories = { "d:\\dev\\github\\scripts\\gtsnippets" }
end

