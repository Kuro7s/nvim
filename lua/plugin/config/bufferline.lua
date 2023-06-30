local bufferline = require 'bufferline'

bufferline.setup {
    options = {
        offsets = {
            {
                filetype = 'NvimTree',
                separator = false,
            },
        },
        separator_style = 'thin',
        diagnostics = 'nvim_lsp',
        always_show_bufferline = true, 
    },
}

