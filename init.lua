-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.o.backup = false
vim.o.writebackup = false
vim.o.wrap = true -- Enable line wrapping
vim.opt.wildignore:append({ "**/node_modules/**", "**/vendor/**" })
vim.cmd.colorscheme("catppuccin")
