return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      -- Disable smooth scrolling effect that's applied by default for some reason
      enabled = false,
    },
    terminal = {
      win = {
        position = "float",
        border = "rounded",
      },
    },
    picker = {
      layout = { preset = "vertical", cycle = false, layout = { width = 128 } },
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
