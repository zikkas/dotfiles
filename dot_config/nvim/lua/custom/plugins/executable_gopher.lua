return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  config = function(_, opts)
    require('gopher').setup(opts)
  end,
  build = function()
    require('gopher').install_deps { sync = true }
  end,
}
