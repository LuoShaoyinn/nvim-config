return {
    'kyazdani42/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFindFile", "NvimTreeClose" },
    opts = {
      -- Your nvim-tree specific configuration goes here
        sort_by = "case_sensitive", 
        git = {
            ignore = false,
            enable = true,
        },
        disable_netrw = true,
        hijack_netrw = true,
        view = {
            width = 30,
            float = {
                enable = false,
                open_win_config = {
                    width = 30,
                    height = 30,
                    col = 0,
                    row = 0,
                    relative = "editor",
                    border = "single",
                    title = "NvimTree",
                    title_pos = "center"
                }
            }
        },
        renderer = {
            group_empty = true,
            highlight_git = true,
            icons = {
                git_placement = "before",
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },
            },
        },
        filters = {
            dotfiles = false,
            custom = {},
            exclude = {},
        },
        update_focused_file = {
            enable = false,
            update_cwd = false,
            ignore_list = {},
        },
        system_open = {
            cmd = nil,
            args = {},
        },
        diagnostics = {
            enable = false,
            show_on_dirs = false,
            icons = {
                error = "",
                hint = "",
                info = "",
            },
        },
        actions = {
            open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
            enable = true,
            exclude = {
                filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                buftype = { "nofile", "terminal", "prompt" },
            },
            },
            }
        }
    }
}
