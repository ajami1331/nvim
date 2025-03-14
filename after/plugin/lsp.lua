require('lsp-zero')

require('mason').setup()
require('mason-lspconfig').setup(
{
    ensure_installed = {'lua_ls', 'ts_ls', 'rust_analyzer', 'clangd', 'dockerls', 'docker_compose_language_service', 'pyright', 'omnisharp', 'gopls'},
})
local lspconfig = require('lspconfig')
lspconfig.intelephense.setup({})
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
lspconfig.ts_ls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.clangd.setup({})
lspconfig.dockerls.setup({})
lspconfig.docker_compose_language_service.setup({})
lspconfig.pyright.setup({})
lspconfig.omnisharp.setup({})
lspconfig.gopls.setup({})
