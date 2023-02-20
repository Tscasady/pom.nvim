local pom = require('pom')
--Create Plugin Commands
local cmd = vim.api.nvim_create_user_command

cmd(
  'PomTimer',
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

