return {
  "folke/snacks.nvim",
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
      layout = { preset = "vertical", cycle = false },
      sources = {
        files = { hidden = true, ignored = true },
        grep = { hidden = true, ignored = true },
        explorer = { hidden = true, ignored = true, layout = { layout = { width = 32 } } },
        -- stylua: ignore
        buffers = { on_show = function() vim.cmd.stopinsert() end },
      },
    },
  },
}
