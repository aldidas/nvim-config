local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-nvim-lsp-signature-help',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-buffer',
	'hrsh7th/vim-vsnip',
	'nvim-tree/nvim-web-devicons',
	'nvim-tree/nvim-tree.lua',
  'nvim-lua/lsp-status.nvim',
  'gpanders/editorconfig.nvim',
  'nathom/filetype.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'windwp/nvim-autopairs',
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy'
  },
	{
		'nvim-treesitter/nvim-treesitter',
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end
	},
	{
		'nvim-telescope/telescope.nvim', 
    tag = '0.1.1',
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    }
	},
  {
    'catppuccin/nvim',
    name = 'catppuccin'
  },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 
      'nvim-tree/nvim-web-devicons', 
    }
	},
  {
    'TimUntersberger/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  'norcalli/nvim-colorizer.lua',
  'xiyaowong/transparent.nvim',
})
