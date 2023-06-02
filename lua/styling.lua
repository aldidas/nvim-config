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

require('lualine').setup {
  options = {
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
}

require('colorizer').setup {}

vim.cmd [[highlight IndentBlankLineIndent guifg=#43454f gui=nocombine]]
require('indent_blankline').setup {
  space_char_blankline = " ",
  char_highlight_list = {
    'IndentBlankLineIndent'
  }
}

-- require('colorbuddy').colorscheme('snazzybuddy')
require('rose-pine').setup {
  variant = 'moon'
}

vim.cmd.colorscheme "rose-pine"
