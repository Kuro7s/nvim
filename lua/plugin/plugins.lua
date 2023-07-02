local plugins = {
    -- Color Schemes
    'catppuccin/nvim',
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require 'rose-pine'.setup()
        end
    },
    'nyoom-engineering/oxocarbon.nvim',
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require 'nvim-treesitter.install'.update { with_sync = true }
        end,
        opts = require 'plugin.config.nvim-treesitter',
        config = function(_, opts)
            require 'nvim-treesitter.configs'.setup(opts)
        end
    },
    -- Icons
    'nvim-tree/nvim-web-devicons',
    -- Git
    {
        'lewis6991/gitsigns.nvim',
        opts = require 'plugin.config.gitsigns',
        config = function(_, opts)
            require 'gitsigns'.setup(opts)
        end
    },
    -- Statusline
    {
        'nvim-lualine/lualine.nvim',
        opts = require 'plugin.config.lualine',
        config = function(_, opts)
            require 'lualine'.setup(opts)
        end
    },
    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require 'plugin.config.nvim-tree'
        end
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
        },
        keys = {
            { '<leader>ff', mode = 'n' },
            { '<leader>fw', mode = 'n' },
            { '<leader>fb', mode = 'n' },
            { '<leader>fh', mode = 'n' },
            { '<leader>fc', mode = 'n' },
            { '<leader>fr', mode = 'n' },
        },
        config = function(_, _)
            require 'plugin.config.telescope'
        end
    },
    -- Completion (cmp.lua)
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require 'plugin.config.cmp'
        end
    },
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    -- Lsp support (lsp.lua)
    'williamboman/mason.nvim',
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require 'plugin.config.lsp'
        end
    },
    { 'simrat39/rust-tools.nvim', dependencies = { 'neovim/nvim-lspconfig' } },
    -- Terminal
    {
        'akinsho/toggleterm.nvim',
        opts = require 'plugin.config.toggleterm',
        config = function(_, opts)
            require 'toggleterm'.setup(opts)
        end
    },
    -- Dashboard
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        opts = require 'plugin.config.dashboard',
        config = function(_, opts)
            require 'dashboard'.setup(opts)
        end,
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- Comments
    'folke/todo-comments.nvim',
    {
        'numToStr/Comment.nvim',
        keys = {
            { 'gcc', mode = "n" },
            { 'gc',  mode = { 'n', 'o', 'x' } },
            { 'gbc', mode = "n", },
            { 'gb',  mode = { 'n', 'o', 'x' }, },
        },
        config = function()
            require 'Comment'.setup()
        end
    },
    -- Startup time
    'dstein64/vim-startuptime',
    -- Misc
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        config = function()
            require 'fidget'.setup()
        end,
    },
    'nvim-lua/plenary.nvim',
    {
        'Saecki/crates.nvim',
        config = function()
            require 'crates'.setup()
        end
    },
    {
        'windwp/nvim-autopairs',
        config = function()
            require 'nvim-autopairs'.setup()
        end
    },
}

return plugins
