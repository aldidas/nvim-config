require('mason').setup()
require('mason-lspconfig').setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = require('lspconfig')
lsp_config.tsserver.setup {
  filetypes = { 'javascript', 'typescript', 'typescriptreact', 'typescript.tsx' },
  root_dir = function () return vim.loop.cwd() end
}
lsp_config.tailwindcss.setup {}
lsp_config.intelephense.setup {}
lsp_config.pyright.setup {}
lsp_config.html.setup {}
lsp_config.cssls.setup {}
lsp_config.svelte.setup {}
lsp_config.volar.setup {}
lsp_config.lua_ls.setup {}
