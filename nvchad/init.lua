local map = require("core.utils").map

vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")


map("n", "<leader>s", ":SymbolsOutline <CR>")
map("n", "<leader>q", ":q <CR>")
map("n", "<leader>x", ":bdelete <CR>")
