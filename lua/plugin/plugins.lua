local plugins = {
    -- Color Schemes
    {
        'catppuccin/nvim',
        opts = require 'plugin.config.catppuccin',
        config = function(_, opts)
            require 'catppuccin'.setup(opts)
        end,
    },
    {
        'rose-pine/neovim',
        event = 'ColorSchemePre',
        name = 'rose-pine',
        config = true,
    },
    'projekt0n/github-nvim-theme',
    'EdenEast/nightfox.nvim',
    'folke/tokyonight.nvim',
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
    },
    -- Statusline
    {
        'nvim-lualine/lualine.nvim',
        opts = require 'plugin.config.lualine',
    },
    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        init = function()
            vim.api.nvim_create_autocmd('BufEnter', {
                callback = function(e)
                    if vim.fn.isdirectory(e.file) == 1 then
                        require 'nvim-tree.api'.tree.open(e.file)
                    end
                end,
            })
        end,
        keys = {
            { '<leader>to', mode = 'n' },
            { '<leader>tc', mode = 'n' },
            { '<leader>tk', mode = 'n' },
            { '<leader>tt', mode = 'n' },
            { '<leader>tf', mode = 'n' },
            { '<leader>tr', mode = 'n' },
        },
        cmd = {
            'NvimTreeOpen',
            'NvimTreeClose',
            'NvimTreeCollapse',
            'NvimTreeToggle',
            'NvimTreeFocus',
            'NvimTreeRefresh',
        },
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
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    'ray-x/lsp_signature.nvim',
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
    },
    -- Dashboard
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        opts = require 'plugin.config.dashboard',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- Comments
    {
        'folke/todo-comments.nvim',
        config = true,
    },
    {
        'numToStr/Comment.nvim',
        keys = {
            { 'gcc', mode = "n" },
            { 'gc',  mode = { 'n', 'o', 'x' } },
            { 'gbc', mode = "n", },
            { 'gb',  mode = { 'n', 'o', 'x' }, },
        },
        config = true,
    },
    -- Startup time
    'dstein64/vim-startuptime',
    -- Misc
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        config = true,
    },
    'nvim-lua/plenary.nvim',
    {
        'Saecki/crates.nvim',
        config = true,
    },
    {
        'windwp/nvim-autopairs',
        config = true,
    },
}

return plugins
