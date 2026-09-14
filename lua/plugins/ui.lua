-- UI style from your previous config (colors, statusline, tree, dashboard, noice)

return {
  -- Colorscheme: Ayu Dark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("ayu").setup({ mirage = false, terminal = true })
        vim.cmd.colorscheme("ayu-dark")
      end,
    },
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
  },
  { "folke/tokyonight.nvim", lazy = true },
  { "catppuccin/nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },

  -- Disable neo-tree (using snacks.explorer as file tree)
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Top tabs (bufferline: keep active tab simple, not bold)
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      local bufferline = require("bufferline")
      opts.options = opts.options or {}
      opts.options.style_preset = {
        bufferline.style_preset.no_bold,
        bufferline.style_preset.no_italic,
      }
      opts.options.themable = false
      opts.highlights = opts.highlights or {}
      opts.highlights.buffer_selected = {
        bold = false,
        italic = false,
      }
      return opts
    end,
  },

  -- Statusline (bubbles theme)
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      local colors = {
        blue = "#80a0ff",
        cyan = "#79dac8",
        black = "#080808",
        white = "#c6c6c6",
        red = "#ff5189",
        violet = "#d183e8",
        grey = "#303030",
      }

      local bubbles_theme = {
        normal = {
          a = { fg = colors.black, bg = colors.violet },
          b = { fg = colors.white, bg = colors.grey },
          c = { fg = colors.white },
        },
        insert = { a = { fg = colors.black, bg = colors.blue } },
        visual = { a = { fg = colors.black, bg = colors.cyan } },
        replace = { a = { fg = colors.black, bg = colors.red } },
        inactive = {
          a = { fg = colors.white, bg = colors.black },
          b = { fg = colors.white, bg = colors.black },
          c = { fg = colors.white },
        },
      }

      return {
        options = {
          theme = bubbles_theme,
          component_separators = "",
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
          lualine_b = { "filename", "branch" },
          lualine_c = { "%=" },
          lualine_x = {},
          lualine_y = { { "filetype", icons_enabled = false }, "progress" },
          lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
        },
        inactive_sections = {
          lualine_a = { "filename" },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = { "location" },
        },
      }
    end,
  },

  -- Dashboard (snacks — avoids alpha + snacks_picker conflict)
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
                                                    

                                                    

          // Working close to the memory           

                                                    

                                                    

]],
          keys = {},
        },
        sections = {
          { section = "header" },
        },
      },
    },
  },

  -- Command line & messages
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          cmdline = { pattern = "^:", icon = ">", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = "", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "", lang = "regex" },
          filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
          lua = { pattern = "^:%s*lua%s+", icon = "☾", lang = "lua" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "?" },
        },
      },
      messages = { enabled = true, view = "notify" },
      popupmenu = { enabled = true, backend = "nui" },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
      },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = { enabled = true },
    },
  },

  -- Hex/rgb color preview
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPost",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
}
