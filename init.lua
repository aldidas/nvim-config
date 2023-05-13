local g = vim.g

g.mapleader = ' '
g.maplocalleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

require('plugins')
require('code-completion')
require('file-explorer')
require('custom-keys')
require('git')
require('options')
require('styling')
require('syntax-highlight')
require('floats')
