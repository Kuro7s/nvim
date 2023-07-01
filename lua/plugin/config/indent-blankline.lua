vim.g.indent_blankline_filetype_exclude = { 'dashboard' }

require 'indent_blankline'.setup {
    char_highlight_list = {
        'LineNr', -- Default looks horrible with oxocarbon
    },
}

