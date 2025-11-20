local M = {
  "GeorgesAlkhouri/nvim-aider",
}

function M.config()
  require("nvim_aider").setup {
  -- Command that executes Aider
  aider_cmd = "aider --model gpt-4.1",
  }
end

return M
