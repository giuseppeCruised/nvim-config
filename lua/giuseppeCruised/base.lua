vim.cmd("autocmd!")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.expandtab = true
vim.opt.shell = 'fish'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 2


vim.opt.number = true
vim.opt.guicursor = ""
vim.opt.wrap = false
vim.opt.errorbells = false
vim.opt.scrolloff = 8
vim.opt.relativenumber = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

vim.g.mapleader = " "
