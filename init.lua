-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")

local mason_registry = require("mason-registry")
local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
  .. "/node_modules/@vue/language-server"

-- lspconfig.tsserver.setup({
--   init_options = {
--     plugins = {
--       {
--         name = "@vue/typescript-plugin",
--         location = vue_language_server_path,
--         languages = { "vue" },
--       },
--     },
--   },
--   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
-- })

-- No need to set `hybridMode` to `true` as it's the default value
lspconfig.volar.setup({})
