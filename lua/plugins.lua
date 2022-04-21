-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'embark-theme/vim'
  use 'folke/tokyonight.nvim'
  use 'nvim-lua/completion-nvim'
  use 'rescript-lang/vim-rescript'
  use 'neovim/nvim-lspconfig'
  use {
  'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "hrsh7th/nvim-cmp",
    requires = {
        "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
        'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
        'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
        'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
    }
  }
  use {
      'tzachar/cmp-tabnine',
      run = './install.sh',
      requires = 'hrsh7th/nvim-cmp'
  }
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use {
  'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
