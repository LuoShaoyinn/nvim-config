local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
	"clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
	lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local md = {"n", "i"}

require("lazy").setup({
    require("plugins.bufferline")(),
    require("plugins.nvim-tree")(),
    require("plugins.nvim-gdb")(),
    require("plugins.vim-glsl")(),
    require("plugins.nvim-lspconfig")(),
    require("plugins.avante")(),
    -- Add any other plugins here
})
