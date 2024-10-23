return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sql = { "sql_formatter" },
    },
    formatters = {
      sql_formatter = {
        command = "sql-formatter",
        args = { "--config", vim.fn.expand("~/.sql-formatter.json") }, -- optional
      },
    },
  },
}
