local wk = lvim.builtin.which_key.mappings
local personal_keybindings = {
  a={
    name="Copilot",
    v={"Visual"},
    q={"Quick Start"},
    i={"Ask Directly"},
  },
}

for key, value in pairs(personal_keybindings) do
  wk[key] = value
end
