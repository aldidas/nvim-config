local api = vim.api
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local colors = require('dracula').colors()

require('telescope').setup({
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        prompt_position = 'top'
      }
    },
    mappings = {
      i = {
        ['<esc>'] = actions.close
      }
    }
  }
})

local TelescopeColors = {
  TelescopePromptBorder = { fg = colors.visual, bg = colors.visual },
  TelescopePromptNormal = { fg = colors.fg, bg = colors.visual },
  TelescopeResultsBorder = { fg = colors.menu, bg = colors.menu },
  TelescopeResultsNormal = { fg = colors.fg, bg = colors.menu },
  TelescopePreviewBorder = { fg = colors.bg, bg = colors.bg },
  TelescopePreviewNormal = { fg = colors.fg, bg = colors.bg },
}
for hl, col in pairs(TelescopeColors) do
  api.nvim_set_hl(0, hl, col)
end
