-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "<C-t>", function()
  Snacks.picker.colorschemes()
end, { desc = "Colorscheme" })

-- Terminal (LazyVim uses snacks.nvim)
vim.keymap.set({ "n", "t" }, "<C-\\>", function()
  Snacks.terminal.focus(nil, { cwd = LazyVim.root() })
end, { desc = "Toggle terminal" })

-- File explorer (Snacks explorer)
vim.keymap.set("n", "<C-n>", function()
  Snacks.explorer()
end, { desc = "Toggle Explorer" })
