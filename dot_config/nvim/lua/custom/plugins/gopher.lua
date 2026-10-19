-- Go tooling (the `install_deps` build runs via the PackChanged hook in init.lua)
vim.pack.add { 'https://github.com/olexsmir/gopher.nvim' }
require('gopher').setup {}
