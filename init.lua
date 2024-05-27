-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lazypath = "/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.runtimepath:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
