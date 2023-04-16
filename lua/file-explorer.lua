require('nvim-tree').setup({
  view = {
    width = 30,
    number = false,
    relativenumber = false,
    mappings = {
      list = {
        { key = 'cf', action = 'create' },
        { key = '<S-r>', action = 'rename' }
      }
    }
  }
})

vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
