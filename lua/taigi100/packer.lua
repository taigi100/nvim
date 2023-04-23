-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy searches and such
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'navarasu/onedark.nvim', as = 'onedark' }

  use ({
	  'nvim-treesitter/nvim-treesitter',
	  {
		  run = ':TSUupdate'
	  }
  })

  --Bookmarks
  use 'theprimeagen/harpoon'
  --UndoTree
  use 'mbbill/undotree'
  --Git
  use 'tpope/vim-fugitive'

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
          }
  }

  -- Display shortcuts
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use "lukas-reineke/indent-blankline.nvim"

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      }
  }

--[[   use {
      'rmagatti/auto-session',
      config = function()
          require("auto-session").setup {
              log_level = "error",
          }
      end
  }

  use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      config = function()
          require('session-lens').setup({
              path_display={'shorten'},
              prompt_title='Sessions',
          })

      end
  } ]]

  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use 'nvim-tree/nvim-web-devicons'
  use "nvim-lua/plenary.nvim"

  -- Lua
  use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
          require("trouble").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
          require('dashboard').setup {
              -- config
          }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
  }

  use 'rcarriga/nvim-notify'

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use { 'bennypowers/nvim-regexplainer',
  config = function() require'regexplainer'.setup() end,
  requires = {
      'nvim-treesitter/nvim-treesitter',
      'MunifTanjim/nui.nvim',
  } }


  use 'windwp/nvim-ts-autotag'

  use {
      'gelguy/wilder.nvim',
      config = function()
          -- config goes here
      end,
  }

  use("github/copilot.vim")

  use {
      "ThePrimeagen/refactoring.nvim",
      requires = {
          {"nvim-lua/plenary.nvim"},
          {"nvim-treesitter/nvim-treesitter"}
      }
  }

  use {
      "nvim-telescope/telescope-project.nvim",
      requires = {
          {"nvim-telescope/telescope.nvim"},
          {"nvim-telescope/telescope-file-browser.nvim"}
      }
  }

  use 'mfussenegger/nvim-dap'

  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use {
      "FeiyouG/command_center.nvim",
      requires = { "nvim-telescope/telescope.nvim" }
  }

  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }

  use {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp dapDebugServer"
  }


  end)


