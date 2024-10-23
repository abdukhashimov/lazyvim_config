-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.diagnostic.enable(false) -- Disable diagnostics for current buffer
  end,
})
