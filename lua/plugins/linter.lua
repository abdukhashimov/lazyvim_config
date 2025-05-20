local function get_sqlfluff_config()
  local cwd = vim.fn.getcwd()
  return cwd .. "/.sqlfluff"
end

return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      sqlfluff = {
        args = function()
          return {
            "lint",
            "--format=json",
            "--dialect=postgres",
            "--config",
            get_sqlfluff_config(),
          }
        end,
      },
    },
  },
}
