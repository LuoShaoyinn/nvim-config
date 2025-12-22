local map = vim.api.nvim_set_keymap
local opt = {silent = true, noremap = true} 

-- terminal 
map("t", "<ESC>", "<C-\\><C-n>", opt)

-- bufferline
map("", "<A-h>", "<Cmd>BufferLineCyclePrev<CR>", opt)
map("", "<A-l>", "<Cmd>BufferLineCycleNext<CR>", opt)
map("", "<A-w>", "<Cmd>bdelete<CR>", opt)

-- n, optvim tree
map("", "<A-t>t", "<Cmd>NvimTreeToggle<CR>", opt)

-----------------------------------------------------------
-- Avante (AI Agent) - Alt-A prefix
-----------------------------------------------------------

-- Ask: Open the sidebar chat (Alt-A then A)
map("n", "<A-a>a", "<Cmd>AvanteAsk<CR>", opt)
map("v", "<A-a>a", "<Cmd>AvanteAsk<CR>", opt)

-- Edit: Inline code replacement (Alt-A then E)
-- Note: This is best used in Visual mode to highlight code
map("v", "<A-a>e", "<Cmd>AvanteEdit<CR>", opt)

-- Refresh: Clear the chat/context (Alt-A then R)
map("n", "<A-a>r", "<Cmd>AvanteRefresh<CR>", opt)
