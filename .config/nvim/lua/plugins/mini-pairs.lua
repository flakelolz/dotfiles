return {
  "echasnovski/mini.pairs",
  opts = {
    mappings = {
      ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a&<\\].", register = { cr = false } },
    },
  },
}
