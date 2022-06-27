-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- colortheme
    use "rafamadriz/neon"
    -- lsp.config
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- lsp.installer
    use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",}
    -- auto comment
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end}
    
    -- tree and icons
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- buffer_line
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons',
    config=function() require("bufferline").setup{} end
    }
    -- tab_line
    use {'windwp/windline.nvim', config=function() require('wlsample.bubble') end}
    -- syntax
    use {'nvim-treesitter/nvim-treesitter'}
    -- auto pairs
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end}

    -- which key
    use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }end}
    
    -- finder
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }}
end)

