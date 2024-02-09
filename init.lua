-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- load plugins
require("my.plugins-setup")

-- setup options 
require("my.core.options")

-- map keyboard shortcuts
require("my.core.keymaps")

-- configure plugins
require("my.config.telescope")
require("my.config.treesitter")
require("my.config.lsp")

require("my.config.nvim-dap")

-- code completion / snippets
-- require("my.config.nvim-cmp")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
