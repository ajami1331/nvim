local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
    };
    { 
        'rose-pine/neovim', 
        name = 'rose-pine', 
        config = function() 
            vim.cmd('colorscheme rose-pine')
        end
    };

    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'};

    'theprimeagen/harpoon';
    'tpope/vim-fugitive';

    'github/copilot.vim';

    'Civitasv/cmake-tools.nvim';
    
    {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
        {'mfussenegger/nvim-dap'},
        {'jay-babu/mason-nvim-dap.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }
    };
    { 'nvim-tree/nvim-tree.lua', opt = {} };
    { 'nvim-tree/nvim-web-devicons', opt = {} };
})
