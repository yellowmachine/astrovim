-- Desactiva el plegado gestionado por LSP (fix del error)
vim.lsp.handlers["textDocument/foldingRange"] = function() end

-- Fuerza el método de plegado clásico por indentación y lo desactiva por defecto
vim.opt.foldmethod = "indent" -- Usa "manual" si prefieres sin plegado automático
vim.opt.foldenable = false -- Así no se pliega nada al abrir archivos

return {}
