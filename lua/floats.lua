local api = vim.api
local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close
      }
    }
  }
}

local colors = {
  fg = '#e2e4e5',
  dark = '#26233a',
  darker = '#1f1d2e',
  darkest = '#191724',
  border = '#6e6a86'
}

local FloatColors = {
  TelescopePromptBorder = { fg = colors.darkest, bg = colors.darkest },
  TelescopePromptNormal = { fg = colors.fg, bg = colors.darkest },
  TelescopeResultsBorder = { fg = colors.darker, bg = colors.darker },
  TelescopeResultsNormal = { fg = colors.fg, bg = colors.darker },
  TelescopePreviewBorder = { fg = colors.dark, bg = colors.dark },
  TelescopePreviewNormal = { fg = colors.fg, bg = colors.dark },
  LazyNormal = { bg = colors.darker },
  NormalFloat = { bg = colors.darker },
  MasonNormal = { bg = colors.darker },
}
for hl, col in pairs(FloatColors) do
  api.nvim_set_hl(0, hl, col)
end
