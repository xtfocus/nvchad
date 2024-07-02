return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim", -- lsp
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "ruff",
        "isort",
        "black",
        "pyright",
        "yaml-language-server",
        "mypy",
        "debugpy",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
      },
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  { -- Git signs
    "lewis6991/gitsigns.nvim",
    version = "*",
    opts = function()
      require("gitsigns").setup {
        -- use default
      }
    end,
  },

  -- {
  --   "SmiteshP/nvim-navic",
  --   config = function ()
  --     return require "configs.navic"
  --   end
  -- },

  --
  {
    "utilyre/barbecue.nvim",
    version = "*",
    name = "barbecue",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = function()
      return require "configs.barbecue"
    end,
  },

  {
    --"jose-elias-alvarez/null-ls.nvim",
    "nvimtools/none-ls.nvim",

    ft = { "python" },
    opts = function()
      return require "configs.null-ls" -- https://github.com/dreamsofcode-io/neovim-python/blob/main/configs/null-ls.lua
    end,
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
  -- see below for full list of optional dependencies 👇
    },
    opts = function()
      return require "configs.markdown-conceallevel"
    end,
  },

}
