return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/notes", -- Change this to your actual vault path
      },
      -- You can add multiple workspaces:
      -- {
      --   name = "work",
      --   path = "~/Documents/work-notes",
      -- },
    },
    ui = {
      enable = false,
    },
  },
}
