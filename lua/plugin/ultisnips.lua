-- ultisnip default folders
if IsMacOS then
  vim.g.UltiSnipsSnippetDirectories = { "~/github/scripts/gtsnippets" }
elseif IsLinux then
  vim.g.UltiSnipsSnippetDirectories = { "~/github/scripts/gtsnippets" }
elseif IsWSL then
  vim.g.UltiSnipsSnippetDirectories = { "/mnt/d/dev/github/scripts/gtsnippets" }
elseif IsWindows then
  vim.g.UltiSnipsSnippetDirectories = { "d:\\dev\\github\\scripts\\gtsnippets" }
end

