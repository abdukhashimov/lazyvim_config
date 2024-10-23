return {
  -- Ensure mason.nvim is configured
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "protolint" })
    end,
  },

  -- Add treesitter parser for proto files
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "proto" })
      end
    end,
  },

  -- Configure LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        protols = {
          mason = false,
          filetypes = { "proto" },
          root_dir = require("lspconfig.util").root_pattern(
            "proto.work",
            "buf.work",
            "buf.yaml",
            "buf.gen.yaml",
            ".git"
          ),
          settings = {
            protols = {},
          },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        proto = { "clang_format" },
      },
      formatters = {
        clang_format = {
          prepend_args = {
            "--style={IndentWidth: 4, BasedOnStyle: google, AlignConsecutiveAssignments: true, ColumnLimit: 10000}",
          },
        },
      },
    },
  },

  -- Add filetype detection for proto files
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      vim.filetype.add({
        extension = {
          proto = "proto",
        },
      })
    end,
  },
}
