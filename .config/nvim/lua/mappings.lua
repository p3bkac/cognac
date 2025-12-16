local map = vim.api.nvim_set_keymap
local api = vim.api
local opts = { noremap = true, silent = true }

-- general
map("i", "jk", "<Esc>", opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- barbar.nvim navigation
map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)

-- nvim-tree toggling
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", opts)

