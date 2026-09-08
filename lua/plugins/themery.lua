return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "tokyonight",
          "tokyonight-storm",
          "tokyonight-day",
          "tokyonight-moon",
          "catppuccin",
          "catppuccin-latte",
          "catppuccin-frappe",
          "catppuccin-macchiato",
          "catppuccin-mocha",
          "rose-pine",
          "rose-pine-main",
          "rose-pine-moon",
          "rose-pine-dawn",
          "suannhai-jiufen",
          "suannhai-sumi",
          "suannhai-lam-ni",
          "suannhai-rouiro",
          "suannhai-koiai",
          "suannhai-torinoko",
          "suannhai-shironeri",
          "suannhai-hue-poo",
          "hardhat",
          "hardhat-vivid",
          "hardhat-diffused",
          "hardhat-light",
        },
        livePreview = true,
      })
    end,
    keys = {
      { "<leader>th", "<cmd>Themery<cr>", desc = "Theme Switcher" },
    },
  },
  -- Adding some popular themes so you have something to switch between
  { "folke/tokyonight.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "WeiTing1991/suannhai.nvim", lazy = true },
  { "g-kirti/hardhat.nvim", lazy = true },
}
