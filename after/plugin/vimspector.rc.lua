local status, vs = pcall(require, "vimspector")
if (not status) then return end



vs.setup({
  function()
    vim.g.vimspector_enable_mappings = 'HUMAN'
  end
})
