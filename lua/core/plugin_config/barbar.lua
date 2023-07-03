local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Space>bb', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Space>bn', '<Cmd>BufferNext<CR>', opts)
map('n', '<Space>bc', '<Cmd>BufferClose<CR>', opts)
