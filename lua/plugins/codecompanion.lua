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
        -- Opcional: Especifica el modelo aquí para chats
      },
      inline = { -- Para sugerencias inline (como Copilot)
        adapter = "ollama",
      },
      agent = { -- Para workflows/agents
        adapter = "ollama",
      },
    },
    adapters = { -- Configuración global del adapter Ollama
      ollama = function()
        return require("codecompanion.adapters").use("ollama", {
          schema = {
            model = {
              default = "starcoder2:instruct", -- Tu modelo local
            },
            -- Opcionales para optimizar (ajusta según tu hardware)
            num_ctx = { default = 4096 }, -- Contexto (tokens), reduce si es lento
            temperature = { default = 0.2 }, -- Para código más determinista
          },
        })
      end,
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
