return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function()
    require("codesnap").setup({
      mac_window_bar = true,
      watermark = "JPZhang",
      code_font_family = "ComicShannsMono Nerd Font",
      bg_theme = "bamboo",
    })
  end,
}
