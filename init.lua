vim.loader.enable()

require 'core'
require 'plugin'

local colorscheme = require 'core.colorscheme'
vim.cmd.colorscheme(colorscheme)

