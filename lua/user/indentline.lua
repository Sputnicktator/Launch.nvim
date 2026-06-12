local M = {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = 'VeryLazy',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}

function M.config()
  local icons = require 'user.icons'

  require('ibl').setup {
    indent = { char = icons.ui.LineMiddle },
    scope = {
      enabled = true,
      char = icons.ui.LineMiddle,
    },
    whitespace = {
      remove_blankline_trail = true,
    },
    exclude = {
      filetypes = {
        'help',
        'startify',
        'dashboard',
        'lazy',
        'neogitstatus',
        'NvimTree',
        'Trouble',
        'text',
      },
      buftypes = { 'terminal', 'nofile' },
    },
  }
end

return M
