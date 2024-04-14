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

-- Register the language
vim.filetype.add {
  extension = {
    templ = "templ"
  }
}

-- Make sure we have a tree-sitter grammar for the language
local treesitter_parser_config = require "nvim-treesitter.parsers".get_parser_configs()
treesitter_parser_config["templ"] = treesitter_parser_config.templ or {
  install_info = {
    url = "https://github.com/vrischmann/tree-sitter-templ.git",
    files = { "src/parser.c", "src/scanner.c" },
    branch = "master",
  },
}

vim.treesitter.language.register('templ', 'templ')

-- Register the LSP as a config
local configs = require 'lspconfig.configs'
if not configs.templ then
  configs.templ = {
    default_config = {
      cmd = { "templ", "lsp" },
      filetypes = { 'templ' },
      root_dir = require "lspconfig.util".root_pattern("go.mod", ".git"),
      settings = {},
    },
  }
end


-- code completion / snippets
require("my.config.nvim-cmp")

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

-- setup nvim-go
require('go').setup({})

-- setup lsp client
require('lspconfig').gopls.setup({})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
