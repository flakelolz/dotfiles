return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
    formatters = {
      clang_format = {
        command = "clang-format",
        append_args = function()
          return { "--style={BasedOnStyle: Google, IndentWidth: 4}" }
        end,
      },
    },
  },
}
