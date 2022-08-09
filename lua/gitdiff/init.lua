local pickers = require("telescope.pickers")
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local M = {}
function M.diff_with_master()
  local cmd="!git diff --name-only $(git merge-base HEAD master)"
  local files=vim.api.nvim_command_output(cmd)
  local results= {}
  local opts = opts or {}

  for f in files:gmatch("[^\r\n]+") do
    if f ~=cmd then
      table.insert(results, f)
    end
  end

  pickers.new(opts, {
    prompt_title = "Files changed:",
    finder = finders.new_table {
      results = results
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end
return M
