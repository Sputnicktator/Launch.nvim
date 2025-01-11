local M = {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    bind = true,
    hi_parameter = "IncSearch",
  },
  config = function(_, opts) require'lsp_signature'.setup(opts) end
}

return M
