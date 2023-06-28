local io = require 'io'

-- Default is Catppuccin Mocha https://github.com/catppuccin/catppuccin
local colorscheme = 'catppuccin-mocha'
local colorscheme_path = vim.fn.stdpath('config') .. '/colorscheme.txt'
local current_cs_file = io.open(colorscheme_path)
if current_cs_file then
    colorscheme = current_cs_file:read()
    current_cs_file:close()
end

function SaveColorscheme()
    local saved_colorscheme = io.open(colorscheme_path, 'w')
    saved_colorscheme:write(vim.g.colors_name)
    saved_colorscheme:close()
end

-- Hook into the "colorscheme" command
vim.cmd([[
  augroup ColorschemeCommand
    autocmd!
    autocmd ColorScheme * :lua SaveColorscheme()
  augroup END
]])

pcall(function() vim.cmd.colorscheme(colorscheme) end)

