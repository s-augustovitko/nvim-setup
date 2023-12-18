require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "vim", "rust", "python", "go", "javascript", "typescript", "json", "make", "svelte", "toml", "bash", "markdown" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
}
