local opt = vim.opt
local api = vim.api
local cmd = api.nvim_command

opt.compatible = false
opt.syntax = "ON"
opt.showcmd = true
opt.termguicolors = true
opt.smartcase = true
opt.wrap = false
opt.showmode = false
opt.number = true
opt.cursorline = true
opt.backspace = { 'indent', 'eol', 'start' }
opt.hidden = true
opt.foldmethod = 'syntax'
opt.foldlevelstart = 99
opt.lazyredraw = true
opt.mouse = 'a'
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.clipboard = "unnamed"
opt.swapfile = true
opt.splitright = true
opt.splitbelow = true
opt.signcolumn = 'yes'

cmd[[filetype off]]

api.nvim_create_autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave', 'CmdlineLeave', 'WinEnter' }, {
  pattern = '*',
  group = augroup,
  callback = function() 
    if vim.o.nu and vim.api.nvim_get_mode().mode ~= 'i' then
      vim.opt.relativenumber = true
    end
  end
})

api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter', 'CmdlineEnter', 'WinLeave' }, {
  pattern = '*',
  group = augroup,
  callback = function() 
    if vim.o.nu then
      vim.opt.relativenumber = false
      vim.cmd 'redraw'
    end
  end
})
