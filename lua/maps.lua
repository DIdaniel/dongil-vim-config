local keymap = vim.keymap

-- keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- ESC
keymap.set('i', 'jk', '<ESC>')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')

keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<right>', '<C-w>l')

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-l>', '<C-w>l')

-- Greatest remap ever ---> About paste
keymap.set("x", "<leader>p", "\"_dP")

-- Next greatest remap ever ---> asbjornHanland
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")

-- NvimTreeToggle
keymap.set('n', '<Leader>e', ':NvimTreeToggle<cr>')

-- vimspector
-- keymap.set('n', '<Leader>dd', ':call vimspector#Launch()<CR>')
-- keymap.set('n', '<Leader>dx', ':VimspectorReset<CR>')
-- keymap.set('n', '<Leader>de', ':VimspectorEval<CR>')
-- keymap.set('n', '<Leader>dw', ':VimspectorWatch<CR>')
-- keymap.set('n', '<Leader>do', ':VimspectorShowOutput<CR>')

-- nvim-dap
-- keymap.set('n', '<Leader>dh', ':DapToggleBreakpoint()<CR>')
-- keymap.set('n', '<C-t>', ':DapStepOut()<CR>')
-- keymap.set('n', '<C-i>', ':DapStepInto()<CR>')
-- keymap.set('n', '<C-o>', ':DapStepOver()<CR>')
-- keymap.set('n', '<Leader>dn', ':DapContinue()<CR>')
-- keymap.set('n', '<Leader>dr', ':DapToggleRepl()<CR>')

-- Resize window
-- keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-S-Up>', ':resize -2<CR>')
keymap.set('n', '<C-S-Down>', ':resize +2<CR>')
keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>')
keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>')

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")

-- Undo tree
keymap.set("n", "<Leader>u", "<Cmd>UndotreeToggle<CR>")
