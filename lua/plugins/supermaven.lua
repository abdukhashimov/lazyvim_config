return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        -- Default configuration
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        -- Optional: customize colors
        color = {
          suggestion_color = "#ffffff",
          cterm = 244,
        },
        -- Optional: configure logging
        log_level = "info",
      })
    end,
  },
}
