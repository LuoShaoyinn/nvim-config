return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false, -- Use false to always pull the latest changes
        build = "make",  -- This is important for the AI features to work
        opts = {
            auto_set_keymaps = false,
            provider = "ollama",
            providers = {
                ollama = {
                    __inherited_from = "openai",
                    api_key_name = "",
                    endpoint = "http://localhost:11434/v1",
                    model = "devstral-small-2",
                },
            },
        },
        -- ADD THIS SECTION BELOW
        dependencies = {
            -- "nvim-treesitter/nvim-treesitter",
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = { insert_mode = true },
                    },
                },
            },
        },
    },
}
