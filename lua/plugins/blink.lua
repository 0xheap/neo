-- Completion / snippet menu (blink.cmp) appearance
-- Docs: https://cmp.saghen.dev/configuration/completion

return {
  {
    "saghen/blink.cmp",
    opts = {
      appearance = {
        nerd_font_variant = "mono",
        -- Icons next to each suggestion type (Text, Function, Snippet, …)
        kind_icons = {
          Text = "󰉿",
          Method = "󰊕",
          Function = "󰊕",
          Constructor = "󰒓",
          Field = "󰜢",
          Variable = "󰆦",
          Property = "󰖷",
          Class = "",
          Interface = "",
          Struct = "󰆼",
          Module = "󰘦",
          Snippet = "󱄽",
          Keyword = "󰻾",
          Constant = "󰏿",
        },
      },

      completion = {
        -- Popup window (the suggestion list)
        menu = {
          border = "rounded",
          min_width = 24,
          max_height = 12,
          winblend = 0,
          scrollbar = true,
          scrolloff = 2,
          -- Prefer menu below cursor, then above
          direction_priority = { "s", "n" },

          draw = {
            padding = { 1, 1 },
            gap = 1,
            snippet_indicator = "~",
            treesitter = { "lsp" },

            -- Layout: icon | label + details | [source]
            -- Swap columns to taste (see blink.cmp docs)
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "source_name" },
            },

            components = {
              -- Show source like your old cmp: [lsp], [snippets], …
              source_name = {
                width = { max = 12 },
                text = function(ctx)
                  return string.format("[%s]", ctx.source_name or ctx.source_id or "")
                end,
                highlight = "BlinkCmpSource",
              },
            },
          },
        },

        -- Documentation popup (floats beside the menu)
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
          window = {
            border = "rounded",
            min_width = 20,
            max_width = 80,
            max_height = 20,
            winblend = 0,
          },
        },

        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
