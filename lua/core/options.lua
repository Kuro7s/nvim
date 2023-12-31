local o = vim.opt
local g = vim.g

vim.g.mapleader = ' '

o.splitright = true
o.signcolumn = 'yes'
o.splitbelow = true
o.clipboard = 'unnamedplus'
o.autoread = true
o.swapfile = false
o.backup = false
o.writebackup = false
o.undofile = true
o.wrap = false
-- Line numbers
o.number = true
o.numberwidth = 2
o.relativenumber = true
-- Indentation
o.tabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.expandtab = true
o.autoindent = true
o.smartindent = true
-- Colorscheme
o.termguicolors = true
o.background = 'dark'
-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
-- Shell
o.shell = 'nu' -- Change to your fav shell :)
o.shellcmdflag = '-c'
o.shellquote = ''
o.shellxquote = ''
