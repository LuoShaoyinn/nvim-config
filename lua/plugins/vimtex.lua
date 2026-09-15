return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        -- Evince reloads the PDF automatically when VimTeX recompiles it.
        vim.g.vimtex_view_method = "general"
        vim.g.vimtex_view_general_viewer = "evince"
        vim.g.vimtex_view_general_options = "@pdf"

        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_quickfix_mode = 0
    end,
}
