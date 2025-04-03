return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hint = {
        enabled = false,
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
            },
          },
        },
        golangci_lint_ls = {
          cmd = { "golangci-lint-langserver" },
          filetypes = { "go" },
          init_options = {
            command = { "golangci-lint", "run", "--out-format", "json" },
          },
        },
      },
    },
  },
}
