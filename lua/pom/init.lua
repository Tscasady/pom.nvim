local M = {}
--local uv = vim.loop
local loop = vim.loop

--vim.defer_fn({fn}, {timeout})
--vim.timer_start({os.clock}, {})
--timer_stopall
--timer_info({id})    GetTimer()->timer_info()
--timer_pause
M.setup = function (opts)
end


-- M.set_timer = function(opts)
--   local minutes = tonumber(opts) * 60000
--   print(minutes)
--   vim.defer_fn(print('hi'), minutes)
--   --vim.defer_fn(vim.cmd([[:CellularAutomaton make_it_rain<CR>]]), minutes)
-- end
--vim.cmd(":set statusline=%{" .. minutes .. "}")

M.set_timer = function(opts)
  local minutes = tonumber(opts) * 60000
  local timer = loop.new_timer()
  timer:start(minutes, 0, vim.schedule_wrap(function()
    vim.cmd([[CellularAutomaton make_it_rain]])
  end
  ))
end



M.pause = function(opts)
  print 'working?'
end

M.reset = function(opts)
  print 'working?'
end

--uv.timer_get_due_in(timer)
return M

