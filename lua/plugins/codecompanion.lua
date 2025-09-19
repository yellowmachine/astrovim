return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter", -- Recomendado para mejor soporte de código
  },
  opts = {
    strategies = {
      chat = {
        adapter = "ollama", -- Cambia a Ollama
        model = "starcode2:instruct",
        -- Opcional: Especifica el modelo aquí para chats
      },
      inline = { -- Para sugerencias inline (como Copilot)
        adapter = "ollama",
        model = "starcode2:instruct",
      },
      agent = { -- Para workflows/agents
        adapter = "ollama",
        model = "starcode2:instruct",
      },
    },
    -- Configuración general (incluye tu log_level)
    opts = {
      log_level = "DEBUG", -- Útil para depurar errores
    },
    -- Opcional: Mejora la UI
    display = {
      diff = { enabled = true },
    },
  },
}
