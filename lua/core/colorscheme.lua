local io = require 'io'

-- Default is Catppuccin Mocha https://github.com/catppuccin/catppuccin
local colorscheme = 'catppuccin-mocha'

local file = io.open(require('core.colorscheme_path'))
if file then
    colorscheme = file:read()
    file:close()
end

pcall(function() vim.cmd.colorscheme(colorscheme) end)

