require('lualine').setup({
  options = {
    theme = 'dracula-nvim',
    disabled_filetypes = { 'packer', 'NvimTree' }
  }
})
require('colorizer').setup()

require('indent_blankline').setup({
  space_char_blankline = " ",
  char_highlight_list = {
    'IndentBlanklineIndent'
  }
})

vim.cmd [[highlight IndentBlanklineIndent guifg=#44475a gui=nocombine]]
