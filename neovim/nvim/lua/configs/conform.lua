local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    java = { "google-java-format" },
    html = { "prettier" },
    css = { "prettier" },
    js = { "prettier" },
    golang = { "gofmt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
