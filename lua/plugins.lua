local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  -- use 'doums/darcula'
  use { 'nvim-lualine/lualine.nvim' } -- statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'jayp0521/mason-null-ls.nvim' -- mason-null-ls
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'lukas-reineke/lsp-format.nvim' -- for Format
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- use 'b3nj5m1n/kommentary' -- Comment  --> jsx에서 제대로 작동하지 않음
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comment
  use 'tpope/vim-commentary'
  use 'L3MON4D3/LuaSnip' -- Snippet
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({ "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'kdheepak/lazygit.nvim' -- lazygit

  use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function() require("toggleterm").setup() end } -- toggleterm

  -- debugging
  use 'mfussenegger/nvim-dap'
  -- use 'leoluz/nvim-dap-go'
  -- use 'rcarriga/nvim-dap-ui'
  -- use 'theHamsta/nvim-dap-virtual-text'
  -- use 'nvim-telescope/telescope-dap.nvim'
  -- use 'puremourning/vimspector'

  -- emmet-vim
  use 'mattn/emmet-vim'

  -- multi-block
  use 'mg979/vim-visual-multi'

  -- live-server
  use 'manzeloth/live-server'

  -- vim-illuminate cursor
  use 'RRethy/vim-illuminate'

  -- styled components
  use 'styled-components/vim-styled-components'

  -- indent blank line
  -- use 'lukas-reineke/indent-blankline.nvim'

  -- undo tree
  use 'mbbill/undotree'

  -- Go To Preview
  use 'rmagatti/goto-preview'

  -- Barbar
  use { 'romgrk/barbar.nvim' }
end)
