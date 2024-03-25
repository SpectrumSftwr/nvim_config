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
  use 'wbthomason/packer.nvim'								-- PACKER!
  -- My plugins here
  use  { 'catppuccin/nvim', as = "catppuccin"}				-- My first Theme
  use 'nvim-tree/nvim-tree.lua'								-- File tree
  use 'nvim-tree/nvim-web-devicons'							-- Some nice icons for the file tree
  use {
    'nvim-lualine/lualine.nvim',							-- LUALINE FOR THAT NICE LINE AT THE BOTTOM
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'						-- TREESITTER FOR SYNTAX HIGHLIGHTING
  use {
    'nvim-telescope/telescope.nvim',						-- TELESCOPE FOR FUZZY FINDING
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',							-- LSP CONFIGURATION PLUGIN AND A BUNCH OF DEPENDENCIES
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'nvim-java/nvim-java-test'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
          {'mfussenegger/nvim-jdtls'},
          {'mfussenegger/nvim-dap'},
          {'rcarriga/nvim-dap-ui'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use  ('ThePrimeagen/harpoon')					-- THE GREATEST OF ALL TIME
  use ('tpope/vim-fugitive')					-- Fugitive == GIT functionality
  use ('lukas-reineke/virt-column.nvim')		-- Adds the Virtual 80 line column (Just looks a bit nicer than default)
  --use ('folke/tokyonight.nvim')					-- Tokyo Night Theme (VERY NICE)
  use ('ellisonleao/gruvbox.nvim')
  use ('christoomey/vim-tmux-navigator') 		-- Used for tmux and vim split window navigation
  use  ('ThePrimeagen/harpoon')
  use ('tpope/vim-fugitive')
  use ('lukas-reineke/virt-column.nvim')
  use ('folke/tokyonight.nvim')
  use ('csexton/trailertrash.vim')
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
