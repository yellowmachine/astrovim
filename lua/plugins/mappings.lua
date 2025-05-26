return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<leader>t1"] = { ":ToggleTerm 1<CR>", desc = "Open terminal 1" },
          ["<leader>t2"] = { ":ToggleTerm 2<CR>", desc = "Open terminal 2" },
          --["<leader>as"] = { ":Autosave toggle<CR>", desc = "Toggle autosave" },
        },
      },
    },
  },
}
