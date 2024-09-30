require('neoterm').setup({
  position = 'bottom',
})

vim.keymap.set({ 'n', 't' }, '<C-t>', '<CMD>NeotermToggle<CR>')
