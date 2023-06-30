local io = require 'io'

-- Default is Catppuccin Mocha https://github.com/catppuccin/catppuccin
local colorscheme_path = vim.fn.stdpath('config') .. '/colorscheme'

local colorscheme = 'catppuccin-mocha'
local current_cs_file = io.open(colorscheme_path, 'r')
if current_cs_file then
    colorscheme = current_cs_file:read()
    current_cs_file:close()
end

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function()
        local saved_colorscheme = io.open(colorscheme_path, 'w')
        if saved_colorscheme then
            saved_colorscheme:write(vim.g.colors_name)
            saved_colorscheme:close()
        end
    end
})

return colorscheme
