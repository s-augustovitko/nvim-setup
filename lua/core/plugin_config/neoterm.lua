require('neoterm').setup({
  mode = 'horizontal', -- vertical/horizontal/fullscreen
})

vim.keymap.set({ 'n', 't' }, '<C-t>', '<CMD>NeotermToggle<CR>')
