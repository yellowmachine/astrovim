return {
  "brianhuster/autosave.nvim",
  event = "InsertEnter",
  opts = {
    -- Aquí puedes poner opciones de configuración si quieres
    events = { "InsertLeave" }, -- Guarda al salir del modo inserción
    silent = true, -- No mostrar mensajes de guardado
  },
}
