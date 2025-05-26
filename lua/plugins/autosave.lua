return {
  "brianhuster/autosave.nvim",
  --event = "InsertEnter",
  lazy = false,
  config = function() vim.g.autosave_enabled = true end,
  opts = {
    events = { "InsertLeave" },
    silent = false,
  },
}
