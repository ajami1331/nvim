local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

require("mason-nvim-dap").setup({
  automatic_setup = true,
})
require 'mason-nvim-dap'.setup_handlers {}