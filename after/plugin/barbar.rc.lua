local status, barbar = pcall(require, "bufferline")
if (not status) then return end

barbar.setup {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = true,
  clickable = true,
  icons = true,
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '', -- ▎
  icon_separator_inactive = '▎', -- ▎
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', opts)
map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', opts)

-- Go to Buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 0<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
-- vim.keymap.set('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

-- Pick buffer
map('n', '<leader>b', '<Cmd>BufferPick<CR>', opts)

-- Close Buffer
map('n', '<leader>x', '<Cmd>bwipeout<CR>', opts)
-- map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
