lvim.builtin.which_key.mappings["t"] =
{
  name = "MySQL",
  e = {
    name = "Execute",
    q = { "<cmd>SqlsExecuteQuery<CR>", "Execute Query" },
    v = { "<cmd>SqlsExecuteQueryVertical<CR>", "Execute Query Vertical" },
  },
  s = {
    name = "Show",
    d = { "<cmd>SqlsShowDatabase<CR>", "Show Database" },
    s = { "<cmd>SqlsShowSchemas<CR>", "Show Schemas" },
    c = { "<cmd>SqlsShowConnections<CR>", "Show Connections" },
  },
  c = {
    name = "Select",
    d = { "<cmd>SqlsSwitchDatabase<CR>", "Select Database" },
    c = { "<cmd>SqlsSwitchConnection<CR>", "Select Connection" },
  }
}
