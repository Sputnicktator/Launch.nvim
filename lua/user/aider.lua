local M = {
  "GeorgesAlkhouri/nvim-aider",
  event = "VeryLazy",
}

function M.config()
  require("nvim_aider").setup {
    aider_cmd = "aider --model gpt-4.1",
  }
end

return M
