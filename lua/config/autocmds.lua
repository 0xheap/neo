-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

local function set_ui_highlights()
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#808080", bg = "NONE" })
  -- blink.cmp completion menu (tweak colors here)
  vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#080808" })
  vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#303030", bg = "#080808" })
  vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#303030" })
  vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = "#80a0ff", bold = true })
  vim.api.nvim_set_hl(0, "BlinkCmpLabel", { fg = "#c6c6c6" })
  vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", { fg = "#808080" })
  vim.api.nvim_set_hl(0, "BlinkCmpSource", { fg = "#d183e8" })
  vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { bg = "#79dac8" })
end

vim.api.nvim_create_autocmd("ColorScheme", { callback = set_ui_highlights })
set_ui_highlights()
