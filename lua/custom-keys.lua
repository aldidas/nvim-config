local map = vim.api.nvim_set_keymap

map('n', '<leader>gf', ':Telescope git_files<CR>', {})
map('n', '<leader><Space>', ':Telescope find_files<CR>', {})
map('n', '<leader>/', ':Telescope live_grep<CR>', {})
map('n', '<leader>bi', ':Telescope buffers<CR>', {})
map('n', '<leader>:', ':Telescope commands<CR>', {})
map('n', '<leader>op', ':NvimTreeToggle<CR>', { noremap = true }) 
map('n', '<leader>wj', '<C-W><C-J>', { noremap = true })
map('n', '<leader>wk', '<C-W><C-K>', { noremap = true })
map('n', '<leader>wl', '<C-W><C-L>', { noremap = true })
map('n', '<leader>wh', '<C-W><C-H>', { noremap = true })
map('n', '<leader>wv', ':vsplit<CR>', { noremap = true })
map('n', '<leader>ws', ':split<CR>', { noremap = true })
map('n', '<leader>gg', ':Neogit<CR>', { noremap = true })
map('n', '<leader>pf', ':Prettier<CR>', { noremap = true })
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = 'Search current word'
})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = 'Search current word'
})
