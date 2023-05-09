local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'dcampos/nvim-snippy'
  use 'dcampos/cmp-snippy'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }

  -- use 'lukas-reineke/indent-blankline.nvim'

  use {
    'williamboman/mason.nvim', -- Simple to use language server installer
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
  }

  use 'roxma/vim-tmux-clipboard'
  use 'stevearc/aerial.nvim'
  use 'morhetz/gruvbox'
  use 'vv9k/bogster'

  -- Formatting using clang-format.
  use 'sbdchd/neoformat'

  -- Comment plugin
  use 'numToStr/Comment.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
