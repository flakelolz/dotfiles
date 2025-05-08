return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    scroll = {
      enabled = false,
    },
    terminal = {
      win = {
        position = "float",
        border = "rounded",
      },
    },
    picker = {
      sources = {
        explorer = { hidden = true, ignored = true, layout = { layout = { width = 32 } } },
      },
    },
  },
}
