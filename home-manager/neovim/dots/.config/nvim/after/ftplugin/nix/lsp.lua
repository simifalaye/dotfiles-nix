local lsp = require("utils.lsp")
lsp.start({
  name = "nills",
  cmd = { "nil" },
  filetypes = { "nix" },
  single_file_support = true,
  root_patterns = {
    "flake.nix",
    ".git",
  },
  settings = {
    ["nil"] = {
      formatting = { command = { "nix fmt" } },
    },
  },
})
