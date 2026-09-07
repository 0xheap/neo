local function open_project_readme()
  local root = LazyVim.root()
  local files = { "README.md", "readme.md", "README.MD", "README", "readme" }
  local found = nil
  for _, f in ipairs(files) do
    local p = root .. "/" .. f
    if vim.uv.fs_stat(p) then
      found = p
      break
    end
  end
  if not found then
    vim.notify("No README file found in " .. root, vim.log.levels.WARN)
    return
  end
  Snacks.win({
    file = found,
    width = 0.85,
    height = 0.85,
    border = "rounded",
    keys = {
      q = "close",
      ["<Esc>"] = "close",
    },
  })
end

return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "markdown", "norg", "rmd", "org" },
    opts = {
      heading = {
        enabled = true,
        sign = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      code = {
        enabled = true,
        sign = false,
        style = "full",
        width = "block",
        right_pad = 2,
      },
      bullet = {
        enabled = true,
      },
      checkbox = {
        enabled = true,
      },
      table = {
        enabled = true,
        style = "full",
      },
      callout = {
        note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
        tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
        important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
        warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
        caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
      },
    },
    init = function()
      vim.api.nvim_create_user_command("Readme", open_project_readme, {
        desc = "Open project README inside Neovim popup",
      })
    end,
    keys = {
      { "<leader>um", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Markdown Rendering" },
      { "<leader>rm", open_project_readme, desc = "View Project README (float)" },
    },
  },
}
