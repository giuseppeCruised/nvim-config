local keymap = vim.keymap
keymap.set('i', 'jk', '<Esc>')
keymap.set('n', '<leader>h', ':noh<Cr>')

keymap.set('n', 'gb', ':b#<Cr>')

keymap.set('n', '<C-h>', 'gT')
keymap.set('n', '<C-l>', 'gt')

keymap.set('n', 'ca', ':lua vim.lsp.buf.code_action()<CR>')
