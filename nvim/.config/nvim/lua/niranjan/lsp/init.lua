local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "niranjan.lsp.lsp-installer"
require("niranjan.lsp.handlers").setup()
require "niranjan.lsp.null-ls"
