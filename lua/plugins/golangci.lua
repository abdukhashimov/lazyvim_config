-- ~/.config/nvim/lua/plugins/golang.lua

return {
  -- Add golangci-lint integration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- Enable golangci-lint as part of gopls
              analyses = {
                staticcheck = true,
              },
              -- Configure golangci-lint integration
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      -- Configure golangci-lint
      linters_by_ft = {
        go = { "golangcilint" },
      },
      linters = {
        golangcilint = {
          cmd = "golangci-lint",
          args = {
            "run",
            "--out-format=json",
            "--issues-exit-code=1",
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
      },
    },
  },
}
