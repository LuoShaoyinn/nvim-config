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
    { -- bufferline
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    }, 
	{ -- nvim-tree
        'kyazdani42/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons', 
    },
    { -- nvim gdb
        'https://github.com/sakhnik/nvim-gdb'
    }
})

require("plugins.bufferline")
require("plugins.nvim-tree")
