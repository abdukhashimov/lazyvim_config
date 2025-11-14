return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sql = { "sqlfluff" },
      pgsql = { "sqlfluff" },
      proto = { "clang_format" },
      yaml = { "prettier" },
    },
    formatters = {
      sqlfluff = {
        command = "sqlfluff",
        args = { "format", "--dialect=postgres", "-" },
        stdin = true,
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      clang_format = {
        command = "clang-format",
        args = { "--assume-filename", "$FILENAME" },
        stdin = true,
      },
      prettier = {
        command = "prettier",
        args = {
          "--stdin-filepath",
          "$FILENAME",
          "--bracket-spacing=false",
        },
        stdin = true,
      },
    },
  },
}
