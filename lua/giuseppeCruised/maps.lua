local keymap = vim.keymap
keymap.set('i', 'jk', '<Esc>')

keymap.set('n', '<leader>h', ':noh<Cr>')
keymap.set('n', '<leader>r', ':%s/')

keymap.set('n', 'gb', ':b#<Cr>')

keymap.set('n', '<C-h>', 'gT')
keymap.set('n', '<C-l>', 'gt')

keymap.set('n', 'ca', ':lua vim.lsp.buf.code_action()<CR>')

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', '*', '*zz')
keymap.set('n', '#', '#zz')

keymap.set('i', 'ö', '[')
keymap.set('n', 'ö', '[')
keymap.set('i', 'ä', ']')
keymap.set('n', 'ä', ']')
keymap.set('i', 'Ö', '{')
keymap.set('n', 'Ö', '{')
keymap.set('i', 'Ä', '}')
keymap.set('n', 'Ä', '}')
