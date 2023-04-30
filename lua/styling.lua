local mode_map = {
  ['NORMAL'] = '<N>',
  ['O-PENDING'] = '<NP>',
  ['INSERT'] = '<I>',
  ['VISUAL'] = '<V>',
  ['V-BLOCK'] = '<VB>',
  ['V-LINE'] = '<VL>',
  ['V-REPLACE'] = '<VR>',
  ['REPLACE'] = '<R>',
  ['COMMAND'] = '<C>',
  ['SHELL'] = '<SH>',
  ['TERMINAL'] = '<T>',
  ['EX'] = '<EX>',
  ['S-BLOCK'] = '<SB>',
  ['S-LINE'] = '<SL>',
  ['SELECT'] = '<S>',
  ['CONFIRM'] = '<C>',
  ['MORE'] = '<M>',
}

require('lualine').setup({
  options = {
    theme = 'catppuccin',
    disabled_filetypes = { 'NvimTree' },
  },
  sections = {
    lualine_a = { 
      { 
        'mode', 
        fmt = function(s) return mode_map[s] or s end 
      }
    }
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
