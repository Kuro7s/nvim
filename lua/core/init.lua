require("core.keymaps")

local opt = vim.opt
local g = vim.g

g.editorconfig = true
opt.autoread = true

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true
opt.autoindent = true

-- Colors 
opt.termguicolors = true
vim.cmd [[ set background=dark ]]

-- Colorscheme
vim.cmd [[ colorscheme catppuccin-mocha ]]

