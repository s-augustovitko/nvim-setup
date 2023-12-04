local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins
  use 'Mofiqul/dracula.nvim'                      -- theme
  use { 'neoclide/coc.nvim', branch = 'release' } -- ide utils (autocomplete, format, code actions, etc)
  use 'nvim-tree/nvim-tree.lua'                   -- tree
  use 'nvim-tree/nvim-web-devicons'               -- icons
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }                                     -- status bar
  use 'nvim-treesitter/nvim-treesitter' -- syntax highlight
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }                             -- fuzzy finder
  use 'lewis6991/gitsigns.nvim' -- github signs
  use 'romgrk/barbar.nvim'      -- tabs
  use 'itmecho/neoterm.nvim'    -- floating terminal

  if packer_bootstrap then
    require('packer').sync()
  end
end)
