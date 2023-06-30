require 'toggleterm'.setup {
    open_mapping = [[<A-;>]],
    direction = 'float',
    float_opts = {
        border = 'curved',
    }
}

vim.cmd('autocmd! TermOpen term://*')

