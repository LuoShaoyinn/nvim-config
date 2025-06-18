return function()
  return {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    opts = {
      -- Your bufferline specific configuration goes here
      options = {
        mode = "buffers",
        separator_style = "nil",
        always_show_bufferline = false, 
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true, 
          }
        }
      }
    }
  }
end
