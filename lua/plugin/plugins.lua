local plugins = {
    -- Color Schemes
    'catppuccin/nvim',
    { 'rose-pine/neovim', name = 'rose-pine' },
    'nyoom-engineering/oxocarbon.nvim',
    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
    -- Icons
    'nvim-tree/nvim-web-devicons',
    -- Git
    'lewis6991/gitsigns.nvim',
    -- Tabline
    { 'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
    -- Statusline
    'nvim-lualine/lualine.nvim',
    -- File explorer
    'nvim-tree/nvim-tree.lua',
    -- Fuzzy finder
    { 'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = { {'nvim-lua/plenary.nvim'} } },
    -- Completion
    'hrsh7th/nvim-cmp', -- The completion plugin
    'hrsh7th/cmp-buffer', -- buffer completions
    'hrsh7th/cmp-path', -- path completions
    'hrsh7th/cmp-nvim-lsp', -- LSP
    'saadparwaiz1/cmp_luasnip', -- snippet completions
    'hrsh7th/cmp-nvim-lsp-signature-help',
    -- Snippets
    'L3MON4D3/LuaSnip', --snippet engine
    'rafamadriz/friendly-snippets', -- a bunch of snippets to use
    -- Lsp support
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    { 'simrat39/rust-tools.nvim', dependencies = { 'neovim/nvim-lspconfig' } },
    -- Terminal
    'akinsho/toggleterm.nvim',
    -- Dashboard
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require 'dashboard'.setup {
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                }
            }
        end,
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    -- Comments
    'folke/todo-comments.nvim',
    'numtostr/comment.nvim',
    -- Misc
    { 'j-hui/fidget.nvim', tag = 'legacy' },
    { 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    'nvim-lua/plenary.nvim',
    'Saecki/crates.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'windwp/nvim-autopairs',
    -- Startup time
    'dstein64/vim-startuptime',
}

return plugins

