local M = {}

M.setup = function (opts)
end

M.set_timer = function(opts)
  print(opts)
end


M.pause = function(opts)
  print 'working?'
end

M.reset = function(opts)
  print 'working?'
end

--[[os.time
os.difftime
os.clock returns current seconds?, we coudl increment minute every 60 or compare / format os.time or something 
actually idk what this is doing, it is supposed to be seconds but hte values are werid
maybe just have a clock count down, idk this should be contnual, but async? 
what happens to our timer when we close nvim. probably shouldn't do anything
--]]

return M

