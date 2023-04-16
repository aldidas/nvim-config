require('mason').setup()
require('mason-lspconfig').setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = require('lspconfig')
lsp_config.tailwindcss.setup {}
lsp_config.tsserver.setup {
  filetypes = { 'javascript', 'typescript', 'typescriptreact', 'typescript.tsx' },
  root_dir = function () return vim.loop.cwd() end
}
