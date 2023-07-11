require 'telescope'.setup {
    pickers = {
        find_files = {
            hidden = true,
            find_command = {
                'rg',
                '--files',
                '--color=never',
                '--no-heading',
                '--line-number',
                '--column',
                '--smart-case',
                '--hidden',
                '--glob',
                '!{.git/*,target/*,bin/*,build/*,out/*,dist/*,node_modules/*,lib/*,ext/*,external/*,deps/*,third_party/*,third-party/*,3rd-party/*,.cache/*}',
                '--path-separator',
                '/',
            },
        },
        colorscheme = {
            enable_preview = true,
        },
    }
}

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

return opts

