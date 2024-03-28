local autocmd = vim.api.nvim_create_autocmd

autocmd({ "ModeChanged" }, {
  callback = function()
    local current_mode = vim.fn.mode()
    if current_mode == "n" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#FFD700" })
      vim.fn.sign_define("smoothcursor", { text = "󰜴" })
    elseif current_mode == "v" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#00BFFF" })
      vim.fn.sign_define("smoothcursor", { text = "󰫙" })
    elseif current_mode == "V" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#00FFFF" })
      vim.fn.sign_define("smoothcursor", { text = "󰩬" })
    elseif current_mode == "�" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    elseif current_mode == "i" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#00FF00" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    end
  end,
})

return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup({
      type = "default",
      cursor = "󰜴",
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
      fancy = {
        enable = true, -- enable fancy mode
        head = { cursor = "󰜴", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
        body = {
          { cursor = "", texthl = "SmoothCursorRed" },
          { cursor = "", texthl = "SmoothCursorOrange" },
          { cursor = "", texthl = "SmoothCursorYellow" },
          { cursor = "", texthl = "SmoothCursorGreen" },
          { cursor = "", texthl = "SmoothCursorAqua" },
          { cursor = "", texthl = "SmoothCursorBlue" },
          { cursor = "", texthl = "SmoothCursorPurple" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" }, -- false to disable fancy tail
      },
    })
  end,
}
