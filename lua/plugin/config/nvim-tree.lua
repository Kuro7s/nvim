require 'nvim-tree'.setup {
    sync_root_with_cwd = true,
    hijack_cursor = true,
    disable_netrw = true,

    update_focused_file = {
        enable = true,
    },

    renderer = {
        root_folder_label = false,
        indent_markers = {
            enable = true,
        },
        icons = {
            git_placement = 'after',
            glyphs = {
                default = "󰈚",
                symlink = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = '',
                    unmerged = '',
                    renamed = '',
                    deleted = '',
                    untracked = '',
                    staged = '',
                },
            },
        },
    },
    git = {
        ignore = false,
    },
}

vim.keymap.set('n', '<leader>to', ':NvimTreeOpen<cr>', {})
vim.keymap.set('n', '<leader>tc', ':NvimTreeClose<cr>', {})
vim.keymap.set('n', '<leader>tk', ':NvimTreeCollapse<cr>', {})
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>', {})
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<leader>tr', ':NvimTreeRefresh<cr>', {})
