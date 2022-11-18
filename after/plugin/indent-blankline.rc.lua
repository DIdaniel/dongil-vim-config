local status, blankLine = pcall(require, 'indent_blankline')
if (not status) then return end

blankLine.setup({
  show_current_context = false,
  buftype_exclude = { 'terminal' },
  filetype_exclude = { 'dashboard', 'NvimTree', 'packer' },
  context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "tsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_self_closing_element",
    "tsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statment",
    "operation_type"
  }
})
