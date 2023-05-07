vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert', 'preview' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require('cmp')
cmp.setup {
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	mapping = {
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true
		})
	},
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 3 },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lua', keyword_length = 2 },
		{ name = 'buffer', keyword_length = 2 },
		{ name = 'vsnip', keyword_length = 2 }
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				vsnip = '⋗',
				buffer = 'b',
				path = 'p'
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end
	}
}

require('prettier').setup {
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
}

require('mason').setup {}
require('mason-lspconfig').setup {}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = require('lspconfig')
lsp_config.tsserver.setup {
  capabilities = capabilities,
  filetypes = { 'javascript', 'typescript', 'typescriptreact', 'typescript.tsx' },
  root_dir = function () return vim.loop.cwd() end
}
lsp_config.tailwindcss.setup {
  capabilities = capabilities
}
lsp_config.intelephense.setup {
  capabilities = capabilities
}
lsp_config.pyright.setup {
  capabilities = capabilities
}
lsp_config.html.setup {
  capabilities = capabilities
}
lsp_config.cssls.setup {
  capabilities = capabilities
}
lsp_config.jsonls.setup {
  capabilities = capabilities
}
lsp_config.svelte.setup {
  capabilities = capabilities
}
lsp_config.astro.setup {
  capabilities = capabilities
}
lsp_config.volar.setup {
  capabilities = capabilities
}
lsp_config.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true)
      },
      telemetry = {
        enable = false
      }
    }
  }
}

require('nvim-autopairs').setup {}
require('nvim-surround').setup {}
require('nvim_comment').setup {}
