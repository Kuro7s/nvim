local bufferline = require 'bufferline'

bufferline.setup {
    options = {
        offsets = {
            {
                filetype = 'NvimTree',
                separator = false,
            },
        },
        diagnostics = 'nvim_lsp',
    },
}

