-- setting up the plugin manager 'lazy'
--
-- clones the repo and installs it if it is not found on the specified path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	print("cloning lazy")
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
	print("done")
end
vim.opt.rtp:prepend(lazypath)

-- add plugins
require("lazy").setup({
	-- telescope, a fuzzy finder
	{ 
		"nvim-telescope/telescope.nvim", tag = "0.1.3", 
		dependencies = { "nvim-lua/plenary.nvim" }
	},

    
    -----------------
    -- Coloschemes --
    -----------------
    
	-- rose-pine colorscheme
	{ 'rose-pine/neovim', name = 'rose-pine' },

    -- Theme inspired by Atom
    {
        'navarasu/onedark.nvim',
        --priority = 1000,
        --config = function()
         --   vim.cmd.colorscheme 'onedark'
        --end,
        name = 'onedark'
    },

    -- Catppuccin theme for neovim
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Nord varaint theme for neovim
    { "AlexvZyl/nordic.nvim", lazy = false, priority = 1000 },


    --------------------
    -- Useful plugins --
    --------------------

	-- treesitter, creates a syntax tree on the fly
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- undotree, exposes the vim undo tree to quickly view past changes made 
	{ 'mbbill/undotree' },

	-- LSP Support
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{ 'hrsh7th/cmp-nvim-lsp' }
		}
	},
	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{ 'L3MON4D3/LuaSnip' }
		}
	}
})
