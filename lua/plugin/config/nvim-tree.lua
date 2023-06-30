require 'nvim-tree'.setup {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        preserve_window_proportions = true,
    },
    git = {
        enable = false,
        ignore = true,
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    renderer = {
        root_folder_label = false,
        highlight_git = false,
        highlight_opened_files = "none",

        indent_markers = {
            enable = true,
            icons = {
                corner = "╰",
            },
        },

        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
            },

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
                    arrow_open = "",
                    arrow_closed = "",
                },
            },
        },
    },
}

vim.keymap.set('n', '<leader>to', ':NvimTreeOpen<cr>', {})
vim.keymap.set('n', '<leader>tc', ':NvimTreeClose<cr>', {})
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>', {})
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<leader>tr', ':NvimTreeRefresh<cr>', {})

