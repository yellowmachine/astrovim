-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
--
vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
}

vim.cmd [[hi DiagnosticUnderlineError gui=undercurl guisp=Red]]

vim.cmd [[
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=Orange
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=Blue
  hi DiagnosticUnderlineHint  gui=undercurl guisp=Green
]]

require("gruvbox").setup {}
vim.cmd.colorscheme "gruvbox"
