require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua","bash", "css", "csv", "gitignore", "html", "java", "javascript", "json", "sql", "tsx", "yaml", "xml" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}
