local plugins = {
    -- Color Schemes
    'catppuccin/nvim',
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    'ellisonleao/gruvbox.nvim',
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
    'hrsh7th/cmp-cmdline', -- cmdline completions
    'hrsh7th/cmp-nvim-lsp', -- LSP
    'saadparwaiz1/cmp_luasnip', -- snippet completions
    'ray-x/cmp-treesitter', -- Treesitter source
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
            }
        end,
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    -- Todo comments highlights
    'folke/todo-comments.nvim',
    -- Git support
    'tpope/vim-fugitive',
    -- Misc
    'numtostr/comment.nvim',
    'nvim-lua/plenary.nvim',
    'Saecki/crates.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'windwp/nvim-autopairs',
}

return plugins

