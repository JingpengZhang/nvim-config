return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup({
      type = "matrix",
      matrix = {
        head = {
          cursor = {
            "乾",
            "坤",
            "震",
            "巽",
            "坎",
            "离",
            "艮",
            "兑",
          },
        },
      },
    })
  end,
}
