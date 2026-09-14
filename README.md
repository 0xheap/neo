# ⌨️ Neovim Keybindings Reference

A quick reference for every keybinding in this config (LazyVim-based, custom UI/plugins).

> **TL;DR** — The most important key is **`<Space>`** (`<leader>`). Press it and a **which-key** popup shows every available command. Each section below is that same menu, written down.
>
> - `<leader>` = `Space`
> - `<C-…>` = Ctrl — `<S-…>` = Shift — `<A-…>` = Alt
> - `:help` is always there for the rest 😉
>
> Upstream LazyVim docs: https://lazyvim.github.io/configuration

---

## 1. Custom keybindings (unique to THIS config)

| Key | Action |
|-----|--------|
| `<C-n>` | Toggle file explorer (Snacks explorer) |
| `<C-t>` | Pick colorscheme (Snacks picker) |
| `<C-\>` | Toggle terminal (root dir, normal + terminal modes) |
| `<leader>th` | Theme switcher (Themery, live preview) |
| `<leader>rm` | Open project README in floating window |
| `<leader>um` | Toggle Markdown rendering |

Custom command: **`:Readme`** — open the project's README in a floating window.

---

## 2. Modifiers & motion basics

| Keys | Action |
|------|--------|
| `<C-s>` | Save |
| `j` / `k` | Smart down / up (wrap friendly, keeps visual selection) |
| `<C-h/j/k/l>` | Jump to left / lower / upper / right **window** |
| `<C-Up/Down/Left/Right>` | Resize window (height/width) |
| `<A-j>` / `<A-k>` | Move current line/selection **down / up** (n, i, v) |
| `n` / `N` | Next / previous search result (smart on wrapped lines) |
| `<Esc>` | Clear search highlight + stop snippet |
| `<gv` / `>gv` | Indent left/right keeping visual selection |
| `gco` / `gcO` | Toggle comment on new line below / above |
| `gc` | Comment/uncomment selection (linewise) |
| `gcc` | Comment/uncomment current line |

---

## 3. Leader menu overview (`<Space>`)

| Prefix | Group |
|--------|-------|
| `<Space>`  | Files – Find Files |
| `b`   | Buffers |
| `c`   | Code (LSP, format, diagnostics) |
| `f`   | Find / File |
| `g`   | Git |
| `h`   | Git hunks |
| `l`   | Lazy (plugin manager) |
| `n`   | Notifications |
| `q`   | Quit / Session |
| `s`   | Search |
| `tab` | Tabs |
| `u`   | UI toggles |
| `w`   | Windows |
| `x`   | Diagnostics / Quickfix |
| `.`   | Scratch buffer |
| `,`   | Buffers picker |
| `/`   | Grep (root) |
| `:`   | Command history |
| `L`   | LazyVim changelog |
| `S`   | Select scratch buffer |
| `K`   | Keywordprg (man page) |
| `?`   | Keymap help (which-key) |

---

## 4. Find & Files (`<leader>f`, `<Space><Space>`)

| Key | Action |
|-----|--------|
| `<leader><space>` | Find Files (root dir) |
| `<leader>fF` | Find Files (cwd) |
| `<leader>ff` | Find Files (root dir) |
| `<leader>fr` | Recent files |
| `<leader>fR` | Recent files (cwd only) |
| `<leader>fb` | Buffers |
| `<leader>fB` | Buffers (all, incl. hidden) |
| `<leader>fg` | Find files in git repo (git-files) |
| `<leader>fp` | Projects (recent dirs) |
| `<leader>fc` | Find config file |
| `<leader>fn` | New file (`:enew`) |

---

## 5. Search & pickers (`<leader>s`)

| Key | Action |
|-----|--------|
| `<leader>sg` | Grep (root dir) |
| `<leader>sG` | Grep (cwd) |
| `<leader>sw` / `sW` | Grep visual selection or word (root / cwd) |
| `<leader>sb` | Lines in current buffer |
| `<leader>sB` | Grep open buffers |
| `<leader>ss` | LSP symbols (current buffer) |
| `<leader>sS` | LSP workspace symbols |
| `<leader>sd` / `sD` | Diagnostics (workspace / buffer) |
| `<leader>sh` | Help pages |
| `<leader>sH` | Highlight groups |
| `<leader>si` | Icons |
| `<leader>sj` | Jumps |
| `<leader>sk` | Keymaps |
| `<leader>sl` | Location list |
| `<leader>sM` | Man pages |
| `<leader>sm` | Marks |
| `<leader>sR` | Resume last picker |
| `<leader>sq` | Quickfix list |
| `<leader>st` / `sT` | Todo comments (all / TODO+FIX+FIXME) |
| `<leader>su` | Undo history (undotree) |
| `<leader>sa` | Autocmds |
| `<leader>sc` | Command history |
| `<leader>sC` | Commands |
| `<leader>sp` | Search plugins spec |
| `<leader>s"` | Registers |
| `<leader>s/` | Search history |

---

## 6. Buffers (`<leader>b`) & Tabs

| Key | Action |
|-----|--------|
| `<S-h>` / `<S-l>` | Previous / Next buffer (tab bar) |
| `[b` / `]b` | Previous / Next buffer |
| `[B` / `]B` | Move buffer left / right in the tab bar |
| `<leader>bj` | Pick a buffer by letter (BufferLine) |
| `<leader>bb` / ``<leader>` `` | Switch to other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Delete other buffers |
| `<leader>bi` | Delete invisible buffers |
| `<leader>bD` | Delete buffer + window |
| `<leader>bp` | Toggle pin |
| `<leader>bP` | Delete all pinless buffers |
| `<leader>br` / `bl` | Close buffers to the right / left |
| `<leader><tab><tab>` | New tab |
| `<leader><tab>]` / `[` | Next / previous tab |
| `<leader><tab>l` / `f` | Last / first tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>o` | Close other tabs |
| `gt` / `gT` | Native: next / previous tab |

---

## 7. Windows (`<leader>w`)

| Key | Action |
|-----|--------|
| `<leader>-` | Split window below |
| `<leader>\|` | Split window right |
| `<leader>wd` | Delete window |
| `<leader>wm` | Toggle zoom window |
| `<leader>uz` | Zen mode |
| `<leader>uZ` | Zoom mode (same as `wm`) |

---

## 8. Git (`<leader>g`)

| Key | Action |
|-----|--------|
| `<leader>gg` | LazyGit (if installed) |
| `<leader>gG` | LazyGit cwd |
| `<leader>gl` / `gL` | Git log (root / cwd) |
| `<leader>gf` | Git log for current file |
| `<leader>gb` | Git blame line |
| `<leader>gd` | Git diff (hunks) |
| `<leader>gD` | Git diff vs `origin` |
| `<leader>gs` | Git status |
| `<leader>gS` | Git stash |
| `<leader>gi` / `gI` | GitHub issues (open / all) |
| `<leader>gp` / `gP` | GitHub PRs (open / all) |
| `<leader>gB` | Open repo on GitHub (current line) |
| `<leader>gY` | Copy GitHub URL to clipboard |

### Git hunks (`<leader>gh`)
| Key | Action |
|-----|--------|
| `ghs` | Stage hunk |
| `ghr` | Reset hunk |
| `ghS` | Stage buffer |
| `ghu` | Undo stage hunk |
| `ghR` | Reset buffer |
| `ghp` | Preview hunk inline |
| `ghb` / `ghB` | Blame line / blame buffer |
| `ghd` / `ghD` | Diff this / diff this `~` (HEAD) |

---

## 9. LSP & Code (`<leader>c`)

| Key | Action |
|-----|--------|
| `gd` | **Goto Definition** (Snacks picker) |
| `gr` | References (Snacks picker) |
| `gI` | Goto Implementation (picker) |
| `gy` | Goto Type Definition (picker) |
| `gD` | Goto Declaration (direct jump) |
| `gai` / `gao` | Incoming / outgoing calls (picker) |
| `K` | Hover |
| `gK` / `<C-k>` (insert) | Signature help |
| `<leader>cl` | LSP info / config |
| `<leader>ca` | Code actions (n + x) |
| `<leader>cr` | Rename symbol |
| `<leader>cR` | Rename file |
| `<leader>cA` | Source actions |
| `<leader>co` | Organize imports |
| `<leader>cc` | Run codelens |
| `<leader>cC` | Refresh codelens |
| `<leader>cf` | Format file |
| `]]` / `[[` | Next / prev reference (word highlight) |
| `<A-n>` / `<A-p>` | Next / prev reference (always) |

LSP servers configured (`lua/plugins/lsp.lua`): **clangd** (C/C++), **vtsls** (TS/JS), **pyrefly** (Python), **gopls** (Go), **rust_analyzer** (Rust), **bashls** (sh), **sqls** (SQL), **lua_ls** (Lua).

---

## 10. Diagnostics & issues (`<leader>x`)

| Key | Action |
|-----|--------|
| `]d` / `[d` | Next / previous diagnostic |
| `]e` / `[e` | Next / previous **error** |
| `]w` / `[w` | Next / previous **warning** |
| `<leader>cd` | Line diagnostics (float) |
| `<leader>xx` | Diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>xL` | Location list (Trouble) |
| `<leader>xQ` | Quickfix list (Trouble) |
| `<leader>cs` | Symbols (Trouble) |
| `<leader>cS` | LSP references/definitions (Trouble) |
| `<leader>xt` / `xT` | Todos (Trouble) |
| `<leader>xl` | Location list |
| `<leader>xq` | Quickfix list |
| `[q` / `]q` | Previous / next quickfix item |

---

## 11. UI toggles (`<leader>u`)

| Key | Action |
|-----|--------|
| `<leader>uf` / `uF` | Toggle auto-format (buffer / win) |
| `<leader>us` | Spell check |
| `<leader>uw` | Wrap |
| `<leader>uL` | Relative line numbers |
| `<leader>ud` | Diagnostics |
| `<leader>ug` | Indent guides |
| `<leader>ua` | Neovim animations |
| `<leader>uD` | Dim inactive |
| `<leader>uT` | Treesitter highlight |
| `<leader>uh` | Inlay hints |
| `<leader>uC` | Colorschemes (picker) |
| `<leader>ub` | Dark/light background |
| `<leader>uA` | Tabline |
| `<leader>uc` | Conceal level |
| `<leader>ul` | Line numbers |
| `<leader>ur` | Redraw / clear search / diff update |
| `<leader>ui` | Inspect position (highlights) |
| `<leader>uI` | Inspect treesitter tree |
| `<leader>un` | Dismiss all notifications |
| `<leader>uS` | Scroll animations |

---

## 12. Quit & sessions (`<leader>q`)

| Key | Action |
|-----|--------|
| `<leader>qq` | Quit all |
| `<leader>qs` | Restore session (pick) |
| `<leader>qS` | Select session |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Don't save current session |

---

## 13. File explorer (Snacks) — inside the `<C-n>` window

| Key | Action |
|-----|--------|
| `a` | **Add** new file (or dir with trailing `/`) |
| `d` | **Delete** (confirm; trash if available) |
| `r` | **Rename** |
| `c` | **Copy** |
| `m` | **Move** |
| `y` | Yank (copy selection) |
| `p` | Paste |
| `l` | Open file / expand dir |
| `h` | Collapse dir / go up |
| `<BS>` | Go up one level |
| `o` | Open with system app |
| `P` | Preview |
| `u` | Refresh |
| `<C-c>` | cd into explorer dir (set cwd) |
| `<C-t>` | Open terminal at explorer dir |
| `<leader>/` | Grep in explorer dir |
| `.` | Focus/follow file |
| `I` | Toggle ignored files |
| `H` | Toggle hidden files |
| `Z` | Close all explorer windows |
| `]g` / `[g` | Next / prev git change |
| `]d` / `[d` | Next / prev diagnostic |
| `]w` / `[w` | Next / prev warning |
| `]e` / `[e` | Next / prev error |

---

## 14. Terminal

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle floating/terminal (root dir) — **custom** |
| `<leader>ft` | Terminal (root dir) |
| `<leader>fT` | Terminal (cwd) |
| `<C-/>` | Toggle terminal window (root dir) |

---

## 15. Markdown

| Key | Action |
|-----|--------|
| `<leader>um` | Toggle Markdown rendering (render-markdown) |
| `<leader>rm` | View project README (floating) |
| `:Readme` | Same as `<leader>rm` |

Markdown rendering: styled headings, full-width code blocks, bullets, checkboxes, tables, and `[!NOTE]`/`[!TIP]`/`[!IMPORTANT]`/`[!WARNING]`/`[!CAUTION]` callouts.

---

## 16. Completion (blink.cmp)

| Keys | Action |
|------|--------|
| `<C-space>` | Trigger completion menu |
| `<C-n>` / `<C-p>` or `↓/↑` | Next / previous suggestion *(when menu open)* |
| `<C-e>` | Dismiss menu |
| `<CR>` | Confirm selection |
| `<C-y>` | Accept selection |
| `Tab` | Accept & advance (snippets) |
| `<C-d>` / `<C-f>` | Scroll docs up / down |

Appearance: rounded menu, icon | label + details | `[source]` columns, docs popup auto-shows after 200ms.

> **Note:** `gd`, `gr`, `gI`, `gy` open **Snacks pickers** (list all matches with preview). The direct-jump variant is still `gD`.
