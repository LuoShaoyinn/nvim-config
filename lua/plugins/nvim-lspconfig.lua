
-- functions
get_root_dir = function(fname)
    local util = require('lspconfig.util')
    return util.root_pattern('compile_commands.json', '.ccls')(fname)
        or util.find_git_ancestor(fname) 
        or vim.fn.getcwd()
end


-- keybindings
-- LSP Mappings (Must be in your on_attach function)
local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Go To Definition, which is the LSP version overriding the built-in 'gd'
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- Show symbol documentation/hover information
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Show all references to the symbol under the cursor
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    -- Code Actions (e.g., fixing a typo, reorganizing imports)
    vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, opts)

    -- Renames the symbol globally
    vim.keymap.set('n', 'rn', vim.lsp.buf.rename, opts)

    -- Go To Implementation
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

    -- Go To Type Definition
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, opts)

    -- Navigate Diagnostics (errors, warnings, etc.)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
end

return function()

vim.lsp.set_log_level("Warn")
vim.lsp.enable('ccls')
vim.lsp.enable('ruff')

return {
    -- 'neovim/nvim-lspconfig' is the plugin that houses all LSP server configurations
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    ft = { 'c', 'cpp', 'objc', 'objcpp', 'opencl', 'py' },
    
    config = function() 
        vim.lsp.config("ccls", {
            cmd = {"ccls"}, 
            on_attach = on_attach,
            single_file_support = true,
            root_dir = get_root_dir(vim.api.nvim_buf_get_name(0)),
            init_options = {
                compilationDatabaseDirectory = "",
                cache = {
                    directory = vim.fn.expand('~') .. '/.cache/ccls'
                },
                index = {
                    threads = 16;
                },
                clang = {
                    extraArgs = { 
                        "-I/usr/include", 
                        "-I/usr/local/include", 
                        "-I/usr/include/c++/13",
                    },
                    resourceDir = ""
                } 
            }
        })
        vim.lsp.config("ruff", {
            cmd = {"ruff", "server"}, 
            on_attach = on_attach,
            single_file_support = true,
            root_dir = get_root_dir(vim.api.nvim_buf_get_name(0)),
            init_options = {
                compilationDatabaseDirectory = "",
                cache = {
                    directory = vim.fn.expand('~') .. '/.cache/ruff'
                },
                index = {
                    threads = 16;
                }
            }
        })
    end,
}
end

