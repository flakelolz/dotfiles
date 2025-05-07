return {
  "Saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" } },
    },
    signature = { enabled = true, window = { border = "rounded" } },
    keymap = {
      ['<C-space>'] = { function(cmp) cmp.show() end },
      preset = "default",
      ["<C-K>"] = { "show", "show_documentation", "hide_documentation" },
    },

    -- LazyDev configuration
    sources = {
      -- add lazydev to your completion providers
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },
  },
}
