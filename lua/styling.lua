require('lualine').setup({
  options = {
    theme = 'catppuccin',
    disabled_filetypes = { 'packer', 'NvimTree' },
  }
})

require('colorizer').setup()

require('catppuccin').setup({
  flavour = 'macchiato',
  transparent_background = true,
  indent_blankline = {
    enabled = true,
    colored_indent_levels = true
  }
})

vim.cmd.colorscheme "catppuccin-macchiato"
