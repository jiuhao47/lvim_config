require("swenv").setup(
  {
    post_set_env = function()
      vim.cmd("LspRestart")
    end,
  }
)

lvim.builtin.which_key.mappings["t"] =
{
  name = "Python",
  c = {"<cmd>lua require('swenv.api').pick_venv()<cr>","Choose a virtualenv"},
}
