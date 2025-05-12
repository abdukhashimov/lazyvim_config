return {
  {
    "jakewvincent/mkdnflow.nvim",
    config = function()
      require("mkdnflow").setup({
        -- Config goes here; leave blank for defaults
        mappings = {
          MkdnToggleToDo = { { "n", "v" }, "<C-t>" }, -- Map to Ctrl+T in normal and visual modes
        },
      })
    end,
  },
}
