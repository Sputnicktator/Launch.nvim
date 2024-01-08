local M = {
  "GustavoPrietoP/doom-themes.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  vim.cmd.colorscheme "doom-ayu-mirage"
end

return M
