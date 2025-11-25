return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hint = {
        enabled = false,
      },
      servers = {
        gopls = {
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          settings = {
            gopls = {
              directoryFilters = {
                "-**/node_modules",
                "-**/.git",
                "-**/vendor",
                "-**/proto",
              },
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
              analyses = {
                ST1000 = false,
              },
            },
          },
        },
      },
    },
  },
}
