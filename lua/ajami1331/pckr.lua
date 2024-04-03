local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
   {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  };
  { 
	  'rose-pine/neovim', 
	  as = 'rose-pine', 
	  config = function() 
		  vim.cmd('colorscheme rose-pine')
	  end
  };

  {'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}};

  'theprimeagen/harpoon';
  'tpope/vim-fugitive';

  'github/copilot.vim';

  -- {'Civitasv/cmake-tools.nvim',
  --  requires = {
  --    'nvim-lua/plenary.nvim',
  --   --  'nvim-lua/popup.nvim'
  --  }
  -- };

   {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
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

}
