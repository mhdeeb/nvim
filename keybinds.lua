local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<LEADER>f", ":lua vim.lsp.buf.formatting_sync() <CR>", opts)
keymap("v", "<LEADER>y", "\"+y", opts)
keymap("v", "<LEADER>p", "\"+p", opts)
keymap("", "<LEADER>p", "\"+p", opts)
keymap("", "<LEADER>x", ":Bdelete<CR>", opts)
keymap("", "<LEADER>j", ":BufferLineCyclePrev<CR>", opts)
keymap("", "<LEADER>l", ":BufferLineCycleNext<CR>", opts)
keymap("", "<LEADER>t", ":NvimTreeToggle<CR>", opts)

