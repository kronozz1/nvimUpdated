local packer = require 'lib.packer-init'

packer.startup(function(use)
  use { 'wbthomason/packer.nvim' } -- Let packer manage itself

  use { 'airblade/vim-rooter' }
  use { 'christoomey/vim-tmux-navigator' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'tamago324/nlsp-settings.nvim' }
  use { 'nvim-lua/completion-nvim' }
  use { 'nvim-lua/lsp-status.nvim' }
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-eunuch' } -- Adds :Rename, :SudoWrite
  use { 'tpope/vim-unimpaired' } -- Adds [b and other handy mappings
  use { 'tpope/vim-sleuth' } -- Indent autodetection with editorconfig support
  use { 'jessarcher/vim-heritage' } -- Automatically create parent dirs when saving
  use { 'nelstrom/vim-visual-star-search' }
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'tpope/vim-projectionist',
    config = function()
      require('user.plugins.projectionist')
    end
  }
  use {
    'navarasu/onedark.nvim',
    as = 'onedark',
    config = function()
      require('user.plugins.material')
    end
  }


  use {
    'tommcdo/vim-lion',
    config = function()
      require('user.plugins.lion')
    end
  }

  use {
    'whatyouhide/vim-textobj-xmlattr',
    requires = 'kana/vim-textobj-user'
  }

  use {
    'sickill/vim-pasta',
    config = function()
      require('user.plugins.pasta')
    end
  }

  use {
    'jessarcher/vim-sayonara',
    config = function()
      require('user.plugins.sayonara')
    end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("ibl").setup()
      require('user.plugins.indent-blankline')
    end
  }

  use {
    'AndrewRadev/splitjoin.vim',
    config = function()
      require('user.plugins.splitjoin')
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('user.plugins.bufferline')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('user.plugins.lualine')
    end
  }


  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('user.plugins.neoscroll')
    end
  }

  use {
    'vim-test/vim-test',
    config = function()
      require('user.plugins.vim-test')
    end
  }

  use {
    'voldikss/vim-floaterm',
    config = function()
      require('user.plugins.floaterm')
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-live-grep-raw.nvim' },
    },
    config = function()
      require('user.plugins.telescope')
    end
  }



  use {
    'tpope/vim-fugitive',
    requires = 'tpope/vim-rhubarb',
    cmd = 'G',
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('gitsigns').setup { sign_priority = 20 }
    end,
  }


  use {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    config = function()
      require('fidget').setup{}
    end,
  }

  use {
    'phpactor/phpactor',
    branch = 'master',
    ft = 'php',
    run = 'composer install --no-dev -o',
    config = function()
      require('user.plugins.phpactor')
    end
  }

  -- Experimental

  use {
    'luukvbaal/stabilize.nvim',
    config = function() require('stabilize').setup() end
  }

  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('user.plugins.dashboard')
    end
  }
use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
        hijack_cursor = true,
        view = {
          width = 40
        }
      }
    end
  }
  use {
    'mfussenegger/nvim-lint',
    config = function()
      require('user.plugins.nvim-lint')
    end
  }
end)


