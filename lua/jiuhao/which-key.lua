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
    h = { "<cmd>nohlsearch<cr>","No Highlight"},
  }

}

for key, value in pairs(personal_keybindings) do
  wk[key] = value
end
