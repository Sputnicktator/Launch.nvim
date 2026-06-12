return {
  'folke/zen-mode.nvim',
  cmd = 'ZenMode',
  opts = {
    window = {
      width = 1,
    },
    on_open = function()
      vim.opt.number = false
      vim.opt.relativenumber = false
      vim.opt.signcolumn = 'no'
      vim.opt.colorcolumn = ''
      require('ibl').update { enabled = false }
    end,
    on_close = function()
      vim.opt.number = true
      vim.opt.relativenumber = false
      vim.opt.signcolumn = 'yes'
      vim.opt.colorcolumn = ''
      require('ibl').update { enabled = true }
    end,
  },
}
