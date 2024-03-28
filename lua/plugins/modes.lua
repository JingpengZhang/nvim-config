return {
  "mvllow/modes.nvim",
  tag = "v0.2.0",
  config = function()
    require("modes").setup({
      set_cursor = true,
      set_cursorline = true,
      set_number = true,
      colors = {
        copy = "#FFFF00",
        delete = "#c75c6a",
        insert = "#006400",
        visual = "#00BFFF",
      },
      line_opacity = 0.4,
    })
  end,
}
