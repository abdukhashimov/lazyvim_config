return {
  {
    "terrastruct/d2-vim",
    ft = "d2",
    keys = {
      { "<leader>dp", "<cmd>!d2 --watch % %:r.svg &<cr>", desc = "D2 Preview", ft = "d2" },
      { "<leader>dc", "<cmd>!d2 % %:r.svg<cr>", desc = "D2 Compile", ft = "d2" },
    },
  },
  {
    "ravsii/tree-sitter-d2",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    version = "*",
    build = "make nvim-install",
  },
}
