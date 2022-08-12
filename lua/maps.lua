local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

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

keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- Resize window
-- keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-S-Up>', ':resize -2<CR>')
keymap.set('n', '<C-S-Down>', ':resize +2<CR>')
keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>')
keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>')
