local wk = lvim.builtin.which_key.mappings
local personal_keybindings = {
  a = {
    name = "Copilot",
    v = { "Visual" },
    q = { "Quick Start" },
    i = { "Ask Directly" },
  },
  h = {
    name = "Personal",
    o = { "<cmd>AerialToggle!<cr>", "Symbol Outline" },
    s = { "<cmd>SessionManager! load_session<cr>", "SessionManager" },
    l = { "<cmd>Lazy<cr>", "Show Lazy Panel" },
    h = { "<cmd>nohlsearch<cr>", "No Highlight" },
    t = { "<cmd>lua require 'lvim.core.terminal' .htop_toggle()<cr>","Htop Toggle"}
  },
  t = {
    name = "LaTex",
    m = { "<cmd>VimtexContextMenu<CR>", "Open Context Menu" },
    u = { "<cmd>VimtexCountLetters<CR>", "Count Letters" },
    w = { "<cmd>VimtexCountWords<CR>", "Count Words" },
    d = { "<cmd>VimtexDocPackage<CR>", "Open Doc for package" },
    e = { "<cmd>VimtexErrors<CR>", "Look at the errors" },
    s = { "<cmd>VimtexStatus<CR>", "Look at the status" },
    a = { "<cmd>VimtexToggleMain<CR>", "Toggle Main" },
    v = { "<cmd>VimtexView<CR>", "View pdf" },
    i = { "<cmd>VimtexInfo<CR>", "Vimtex Info" },
    l = {
      name = "Clean",
      l = { "<cmd>VimtexClean<CR>", "Clean Project" },
      c = { "<cmd>VimtexClean<CR>", "Clean Cache" },
    },
    c = {
      name = "Compile",
      c = { "<cmd>CompileAndRun<CR>", "Compile Project" },
      o = {
        "<cmd>VimtexCompileOutput<CR>",
        "Compile Project and Show Output",
      },
      s = { "<cmd>VimtexCompileSS<CR>", "Compile project super fast" },
      e = { "<cmd>VimtexCompileSelected<CR>", "Compile Selected" },
    },
    r = {
      name = "Reload",
      r = { "<cmd>VimtexReload<CR>", "Reload" },
      s = { "<cmd>VimtexReloadState<CR>", "Reload State" },
    },
    o = {
      name = "Stop",
      p = { "<cmd>VimtexStop<CR>", "Stop" },
      a = { "<cmd>VimtexStopAll<CR>", "Stop All" },
    },
    t = {
      name = "TOC",
      o = { "<cmd>VimtexTocOpen<CR>", "Open TOC" },
      t = { "<cmd>VimtexTocToggle<CR>", "Toggle TOC" },
    },
  }
}

for key, value in pairs(personal_keybindings) do
  wk[key] = value
end
