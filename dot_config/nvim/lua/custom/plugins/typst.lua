-- Typst live preview
vim.pack.add { 'https://github.com/chomosuke/typst-preview.nvim' }
require('typst-preview').setup {
  follow_cursor = true,
  dependencies_bin = {
    tinymist = 'tinymist',
  },

  open_cmd = 'xdg-open %s 2>/dev/null',
}
