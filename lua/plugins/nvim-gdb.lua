return function()
  return {
    'https://github.com/sakhnik/nvim-gdb',
    cmd = { "Gdb", "GdbDebug", "GdbRun" }, 
    opts = {
      -- Your nvim-gdb specific configuration goes here
      -- Example:
        signs = {
            breakpoint = "🔴",
            current_line = "▶️",
        },
        commands = {
            "set confirm off",
            "set pagination off",
            "set disassembly-flavor intel",
        },
    }
  }
end
