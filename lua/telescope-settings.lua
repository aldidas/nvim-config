local api = vim.api
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local colors = require("catppuccin.palettes").get_palette "macchiato"

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close
      }
    }
  }
})

local TelescopeColors = {
  TelescopePromptBorder = { fg = colors.crust, bg = colors.crust },
  TelescopePromptNormal = { fg = colors.text, bg = colors.crust },
  TelescopeResultsBorder = { fg = colors.mantle, bg = colors.mantle },
  TelescopeResultsNormal = { fg = colors.text, bg = colors.mantle },
  TelescopePreviewBorder = { fg = colors.base, bg = colors.base },
  TelescopePreviewNormal = { fg = colors.text, bg = colors.base },
}
for hl, col in pairs(TelescopeColors) do
  api.nvim_set_hl(0, hl, col)
end
