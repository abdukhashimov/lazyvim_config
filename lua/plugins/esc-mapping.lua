return {
  {
    "LazyVim/LazyVim",
    init = function()
      vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
      vim.keymap.set("i", "kk", "<Esc>", { desc = "Exit insert mode with kk" })
    end,
  },
}
