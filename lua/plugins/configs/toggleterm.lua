require 'toggleterm'.setup {
    open_mapping = [[<A-;>]],
    direction = 'float',
}

vim.cmd('autocmd! TermOpen term://*')

