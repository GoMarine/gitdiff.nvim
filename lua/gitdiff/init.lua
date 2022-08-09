local pickers = require("telescope.pickers")
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local M = {}

local function get_branch(branch)
  if branch == nil or  branch == '' then
      vim.ui.input({ prompt = 'Enter branch name: ' }, function(input)
      if input == nil or input == '' then
        branch='master'
      else
        branch=input
      end
    end)
  end
  return branch
end

local function get_results(branch)
  local cmd=":!git diff --name-only $(git merge-base HEAD " .. branch .. ")"
  local files=vim.api.nvim_command_output(cmd)
  local results= {}

  for f in files:gmatch("[^\r\n]+") do
    if f ~=cmd then
      table.insert(results, f)
    end
  end

  return results
end

function M.diff(branch)
  local results=get_results(get_branch(branch))
  local opts = opts or {}
  pickers.new(opts, {
    prompt_title = "Files changed:",
    finder = finders.new_table {
      results = results
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end



return M
