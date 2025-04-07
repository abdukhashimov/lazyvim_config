-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      custom = { "^node_modules$", "^vendor$" },
    },
  },
}
