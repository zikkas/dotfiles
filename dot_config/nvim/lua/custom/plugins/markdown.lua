-- Render markdown buffers in place
vim.pack.add { 'https://github.com/MeanderingProgrammer/markdown.nvim' }
require('render-markdown').setup {}

-- Markdown preview (the `yarn install` build runs via the PackChanged hook in init.lua)
vim.g.mkdp_filetypes = { 'markdown' }
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }
