local map = vim.api.nvim_set_keymap
local opt = {silent = true, noremap = true} 

-- terminal 
map("t", "<ESC>", "<C-\\><C-n>", opt)

-- bufferline
map("", "<A-b>h", "<Cmd>BufferLineCyclePrev<CR>", opt)
map("", "<A-b>l", "<Cmd>BufferLineCycleNext<CR>", opt)
map("", "<A-b>w", "<Cmd>bdelete<CR>", opt)

-- n, optvim tree
map("", "<A-t>t", "<Cmd>NvimTreeToggle<CR>", opt)
