-- see https://neovim.io/doc/user/options.html#option-summary
-- for all available options and their meaning

-- configuring the cursor
-- these are the defaults with visual mode changed to hor20
vim.opt.gcr = "n-c-sm:block,i-ci-ve:ver25,r-cr-o-v:hor20"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tgc = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- disable mouse support (because i'm kewl)
vim.opt.mouse = ""
