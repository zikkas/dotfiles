return {
  'windwp/nvim-ts-autotag',
  ft = {
    'html',
    'javascript',
    'typescript',
    'vue',
  },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
