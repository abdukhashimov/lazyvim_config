return {
  -- Add protobuf syntax support
  {
    "bufbuild/vim-buf",
    ft = "proto",
  },

  -- Configure nvim-lspconfig for protobuf
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bufls = {
          filetypes = { "proto" },
        },
      },
    },
  },

  -- Configure linters
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        proto = { "buf_lint" },
      },
      linters = {
        buf_lint = {
          cmd = "buf",
          args = { "lint", "--path", "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
}
