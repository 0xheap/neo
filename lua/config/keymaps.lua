-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "<C-t>", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme", silent = true })

-- Terminal (LazyVim uses snacks.nvim)
vim.keymap.set({ "n", "t" }, "<C-\\>", function()
  Snacks.terminal.focus(nil, { cwd = LazyVim.root() })
end, { desc = "Toggle terminal" })
