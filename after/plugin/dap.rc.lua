-- ref : https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Javascript-chrome
-- note: chrome has to be started with a remote debugging port google-chrome-stable --remote-debugging-port=9222

local status, dap = pcall(require, 'dap')
if (not status) then return end

local keymap = vim.keymap

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/apps/vscode-node-debug2/out/src/nodeDebug.js' },
}

dap.defaults.fallback.terminal_win_cmd = '20split new'
vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🟦', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '🟢', texthl = '', linehl = '', numhl = '' })

keymap.set('n', '<leader>dh', function() require "dap".toggle_breakpoint() end)
keymap.set('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
keymap.set('n', '<A-k>', function() require "dap".step_out() end)
keymap.set('n', "<A-l>", function() require "dap".step_into() end)
keymap.set('n', '<A-j>', function() require "dap".step_over() end)
keymap.set('n', '<A-h>', function() require "dap".continue() end)
keymap.set('n', '<leader>dn', function() require "dap".run_to_cursor() end)
keymap.set('n', '<leader>dc', function() require "dap".terminate() end)
keymap.set('n', '<leader>dR', function() require "dap".clear_breakpoints() end)
keymap.set('n', '<leader>de', function() require "dap".set_exception_breakpoints({ "all" }) end)
keymap.set('n', '<leader>da', function() require "debugHelper".attach() end)
keymap.set('n', '<leader>dA', function() require "debugHelper".attachToRemote() end)
keymap.set('n', '<leader>di', function() require "dap.ui.widgets".hover() end)
keymap.set('n', '<leader>d?',
  function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
keymap.set('n', '<leader>dk', ':lua require"dap".up()<CR>zz')
keymap.set('n', '<leader>dj', ':lua require"dap".down()<CR>zz')
keymap.set('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')

-- dap.configurations.javascriptreact = { -- change this to javascript if needed
--   {
--     type = "chrome",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     port = 9222,
--     webRoot = "${workspaceFolder}"
--   }
-- }

-- dap.configurations.typescriptreact = { -- change to typescript if needed
--   {
--     type = "chrome",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     port = 9222,
--     webRoot = "${workspaceFolder}"
--   }
-- }
