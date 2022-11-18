local status, null_ls = pcall(require, "null-ls")
if (not status) then return end


-- vim.lsp.buf.format({ timeout_ms = 10000 }) -- 2 seconds
-- vim.cmd('map <Leader>lF :lua vim.lsp.buf.range_formatting()<CR>')

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
    timeout_ms = 5000,
  })
end


null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.eslint,
    -- null_ls.builtins.diagnostics.eslint_d.with({
    --   diagnostics_format = '[eslint] #{m}\n(#{c})'
    -- }),
    null_ls.builtins.diagnostics.zsh
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end
}

vim.api.nvim_create_user_command(
  'DisableLspFormatting',
  function()
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
  end,
  { nargs = 0 }
)
