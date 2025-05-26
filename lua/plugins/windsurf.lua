return {
  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set(
        "i",
        "<C-CR>",
        function() return vim.fn["codeium#Accept"]() end,
        { expr = true, silent = true, desc = "Accept Codeium suggestion" }
      )
      vim.keymap.set(
        "i",
        "<C-;>",
        function() return vim.fn["codeium#CycleCompletions"](1) end,
        { expr = true, silent = true, desc = "Next Codeium suggestion" }
      )
      vim.keymap.set(
        "i",
        "<C-,>",
        function() return vim.fn["codeium#CycleCompletions"](-1) end,
        { expr = true, silent = true, desc = "Prev Codeium suggestion" }
      )
      vim.keymap.set(
        "i",
        "<C-x>",
        function() return vim.fn["codeium#Clear"]() end,
        { expr = true, silent = true, desc = "Clear Codeium suggestion" }
      )
    end,
  },
}
