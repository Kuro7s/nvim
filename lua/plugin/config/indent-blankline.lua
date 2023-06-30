vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { link = 'NormalNC' })

require 'indent_blankline'.setup {
    show_current_context = true,
    char_highlight_list = {
        'LineNr', -- Default looks horrible with oxocarbon
    },
}
