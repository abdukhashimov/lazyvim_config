-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = { "^vendor/", "^node_modules/", ".git/", ".cache/" },
    },
  },
}
