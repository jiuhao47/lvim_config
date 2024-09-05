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
    t = { "<cmd>lua require 'lvim.core.terminal' .htop_toggle()<cr>", "Htop Toggle" },
    d = { "<cmd>lua require 'lvim.core.terminal' .lazydocker_toggle()<cr>", "LazyDocker Toggle" },
    n = { "<cmd>lua require 'lvim.core.terminal' .ncdu_toggle()<cr>", "Ncdu Toggle" },
    f = { "<cmd>TodoLocList<cr>", "TodoList" },
    m = { "<cmd>NoiceHistory<cr>", "Message History" },
    w = { "<cmd>set wrap!<cr>", "Toggle Wrap"},
  },
}

for key, value in pairs(personal_keybindings) do
  wk[key] = value
end
