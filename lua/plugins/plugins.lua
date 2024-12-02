return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function ()
			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{ 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },
	"mbbill/undotree",
	"tpope/vim-fugitive",
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
    "lewis6991/gitsigns.nvim",
    -- lsp
	'neovim/nvim-lspconfig',
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-jdtls",
    -- autocompletion
    'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
}
