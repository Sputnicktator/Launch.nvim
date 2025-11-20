local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" },
    highlight = { enable = true,
                  disable = function(lang, bufnr) -- Disable in files with more than 5K
                  return vim.api.nvim_buf_line_count(bufnr) > 5000
                  end,
                },
    -- indent = { enable = true },
  }
end

return M
