-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Rose-pine (colorscheme)
	use ({
		'rose-pine/neovim',
		as = 'rose-pine',
		 config = function()
			 vim.cmd("colorscheme rose-pine")
		 end
	 })

	 -- Treesitter
	 use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	 use('nvim-treesitter/playground') -- just in case, probably won't need it much


	 -- Harpoon
	 use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	 use {
		 "ThePrimeagen/harpoon",
		 branch = "harpoon2",
		 requires = { {"nvim-lua/plenary.nvim"} }
	 }

	 -- Undotree
	 use "mbbill/undotree"

	 -- vim fugitive (git)
	 use "tpope/vim-fugitive"
 end)
