local pom = require('pom')
--Create Plugin Commands
local cmd = vim.api.nvim_create_user_command

cmd(
  'PomTimer',
  --[[this creates a function, that just calls the next function with opts passed in
  --opts has built in keys, i just use these
    args: (string) The args passed to the command, if any <args>
    count: (number) Any count supplied <count>
  --]]
  function(opts) pom.set_timer(opts.args) end,
  {nargs = "*"}
)

cmd(
  'Pomreset',
  function() pom.reset() end,
  { }
)

cmd(
  'Pompause',
  function() pom.pause() end,
  {}
)

