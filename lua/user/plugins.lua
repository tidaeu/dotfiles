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
  --use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  --use "RRethy/vim-illuminate" 

  --Telescope 
  --use 'nvim-telescope/telescope.nvim'

  --Treesitter
     use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("user.treesitter")
        end,
    }) 

 	-- Misc
	use 'mg979/vim-visual-multi' --Multi-Cursor
	use 'nvim-tree/nvim-web-devicons' -- Icons
end)
