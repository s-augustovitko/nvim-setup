-- Window Splitting
vim.keymap.set('n', '<Space>wv', '<C-w>v')
vim.keymap.set('n', '<Space>wh', '<C-w>s')

-- Indentation
local n_opts = { silent = true, noremap = true }
vim.keymap.set('v', '<S-TAB>', '<gv', n_opts)
vim.keymap.set('v', '<TAB>', '>gv', n_opts)

vim.keymap.set('n', '<S-TAB>', '<<', n_opts)
vim.keymap.set('n', '<TAB>', '>>', n_opts)

-- Window movement
vim.keymap.set("n", "<C-h>", "<C-w>h", n_opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", n_opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", n_opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", n_opts)

vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>", n_opts)
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>", n_opts)
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>", n_opts)
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>", n_opts)
