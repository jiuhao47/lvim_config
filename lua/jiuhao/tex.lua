-- Setup Lsp.
local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("texlab", {
  on_attach = require("lvim.lsp").common_on_attach,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = capabilities,
})


-- Setup formatters.
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { command = "latexindent", filetypes = { "tex" } },
})

-- Set a linter.
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "proselint", filetypes = { "tex" } },
})

--Setup plugins

table.insert(lvim.plugins,
  {
    "lervag/vimtex",
    {
      "micangl/cmp-vimtex",
      config = function()
        require('cmp_vimtex').setup({
          additional_information = {
            info_in_menu = true,
            info_in_window = true,
            info_max_length = 60,
            match_against_info = true,
            symbols_in_menu = true,
          },
          bibtex_parser = {
            enabled = true,
          },
          search = {
            browser = "xdg-open",
            default = "google_scholar",
            search_engines = {
              google_scholar = {
                name = "Google Scholar",
                get_url = require('cmp_vimtex').url_default_format("https://scholar.google.com/scholar?hl=en&q=%s"),
              },
              -- Other search engines.
            },
          },
        })
      end
    },
    "kdheepak/cmp-latex-symbols",
    --"KeitaNakamura/tex-conceal.vim", -- for live code symbols transformation
    --"SirVer/ultisnips", -- for quick code snippets
  }
)
-- UltiSnip configuration.
vim.cmd([[
  let g:UltiSnipsExpandTrigger="<CR>"
  let g:UltiSnipsJumpForwardTrigger="<Plug>(ultisnips_jump_forward)"
  let g:UltiSnipsJumpBackwardTrigger="<Plug>(ultisnips_jump_backward)"
  let g:UltiSnipsListSnippets="<c-x><c-s>"
  let g:UltiSnipsRemoveSelectModeMappings=0
  let g:UltiSnipsEditSplit="tabdo"
  let g:UltiSnipsSnippetDirectories=[$HOME."/.config/nvim/UltiSnips"]
]])

-- Vimtex configuration.
-- vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_enabled = 1
vim.cmd [[
  command! CompileAndRun try | execute 'VimtexCompile' | execute 'VimtexCompile' | execute 'luafile ~/personal/test/test.lua' | catch | echo "Error: " . v:exception | endtry
]]
-- Setup cmp.
--[[ vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("LaTeXGroup", { clear = true }),
  pattern = "tex",
  callback = function()
    require("texcmp")
  end,
}) ]]

-- Mappings
--[[ lvim.builtin.which_key.mappings["C"] = {
  name = "LaTeX",
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
    c = { "<cmd>VimtexCompile<CR>", "Compile Project" },
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
} ]]
