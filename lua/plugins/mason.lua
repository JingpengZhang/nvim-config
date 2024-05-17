return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "diagnostic-languageserver",
        "dockerfile-language-server",
        "eslint-lsp",
        "goimports",
        "goimports-reviser",
        "gopls",
        "js-debug-adapter",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
      },
      automatic_installation = true,
    },
  },
}
