-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'scrooloose/nerdtree'
  use('nvim-lua/plenary.nvim')

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
	--or				 , branch = '0.1x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'rebelot/kanagawa.nvim',
	as = 'kanagawa',
	config = function()
		vim.cmd('colorscheme kanagawa-wave')
	end
  })

      use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
	use('nvim-treesitter/playground')
    use {
        'thePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { {"nvim-lua/plenary.nvim"} }
    }
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'vonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
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
end)
