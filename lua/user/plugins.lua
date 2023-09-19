local status, packer = pcall(require, 'packer')

if(not status) then
	print("Packer isn't installed :(")
	return
end

vim.cmd[[packadd packer.nvim]]

-- Install polugins here
return packer.startup(function(use)
	use 'wbthomason/packer.nvim' -- Actually Packer

	-- Themes
	-- use 'navarasu/onedark.nvim' --One Dark Theme
	use 'rebelot/kanagawa.nvim' -- Kanagawa  

	-- Lualine
	use 'nvim-tree/nvim-web-devicons' -- Icons
	use { 'nvim-lualine/lualine.nvim' }

	-- Completion
	use 'hrsh7th/nvim-cmp' --The Completion Plugin
	use 'hrsh7th/cmp-buffer' -- Buffer completions
	use 'hrsh7th/cmp-path' -- Path Completions
	use 'hrsh7th/cmp-cmdline' -- Commandline completions
	use 'saadparwaiz1/cmp_luasnip' -- Lua Snippets 
	use "hrsh7th/cmp-nvim-lsp" 
	use "hrsh7th/cmp-nvim-lua" 

	-- Snippets
	--use 'L3MON4D3/LuaSnip' -- Snippet Engine for Lua
	-- use 'rafamadriz/friendly-snippets' -- a shit ton of snippets
	use 'tpope/vim-commentary' -- Block Comments in Visual Mode

	-- LSP
	use "williamboman/mason.nvim" -- simple to use language server installer
	use "williamboman/mason-lspconfig.nvim" 
	use 'neovim/nvim-lspconfig' -- enable LSP
	use 'sbdchd/neoformat' -- enable LSP
	use 'Hoffs/omnisharp-extended-lsp.nvim' -- extended LSP for meta / standard library files 

	--Treesitter Don't forget to install -> winget install BurntSushi.ripgrep.MSVC
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("user.treesitter")
		end,
	}) 

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}

	-- use {
	-- 	"nvim-telescope/telescope-file-browser.nvim",
	-- 	requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	-- }
	
	-- Noice
	use { "rcarriga/nvim-notify" }
	use {
		'folke/noice.nvim',
		requires = { {'MunifTanjim/nui.nvim', "rcarriga/nvim-notify"} }
	}

	-- Oil
	-- use {'stevearc/oil.nvim'}
	
	-- Nvim-Tree
	-- use {
	-- 	'nvim-tree/nvim-tree.lua',
	-- 	requires = {
	-- 		'nvim-tree/nvim-web-devicons', -- optional
	-- 	},
	-- }

	-- Toggle Terminals
	use {"akinsho/toggleterm.nvim"}

	-- Misc
	use 'mg979/vim-visual-multi' --Multi-Cursor
end)
