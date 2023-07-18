vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<Space>wv', '<C-w>v')
vim.keymap.set('n', '<Space>wh', '<C-w>s')


local n_opts = { silent = true, noremap = true }
vim.keymap.set('v', '>', '<gv', n_opts)
vim.keymap.set('v', '<', '>gv', n_opts)
vim.keymap.set('n', '>', '<<', n_opts)
vim.keymap.set('n', '<', '>>', n_opts)
