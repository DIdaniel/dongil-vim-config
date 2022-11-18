local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end
local status3, mason_null_ls = pcall(require, "mason-null-ls")
if (not status3) then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss", "cssls", "html", "tsserver" },
}

require 'lspconfig'.tailwindcss.setup {}

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
    "tsserver"
  }
})
