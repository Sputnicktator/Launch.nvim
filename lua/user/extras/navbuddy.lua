local M = {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
  },
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>o", "<cmd>Navbuddy<cr>", desc = "Nav" },
  }

  local navbuddy = require "nvim-navbuddy"
  -- local actions = require("nvim-navbuddy.actions")
  navbuddy.setup {
    window = {
      border = "rounded",
    },
    icons = require("user.icons").kind,
    lsp = { auto_attach = true },
  }

  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "<m-s>", ":silent only | Navbuddy<cr>", opts)
  vim.keymap.set("n", "<m-o>", ":silent only | Navbuddy<cr>", opts)
end

return M
