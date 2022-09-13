local status, lsp = pcall(require, 'lspconfig')
if (not status) then 
  print("no lsp!")
  return
end
 

--local on_attach = function(client, bufnr)
  --if client.server_capabilities.documentFormattingProvider then
    --vim.api.nvim_command [[augroup Format]]
    --vim.api.nvim_command [[autocmd! * <buffer>]]
    --vim.api.nvim_command [[autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]]
    --vim.api.nvim_command [[augroup END]]
  --end
--end

lsp.tsserver.setup{
 -- on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsc" },
  cmd = { "typescript-language-server", "--stdio" }
}

lsp.sumneko_lua.setup {
--          on_attach = on_attach,
  settings = {
    Lua = { 
      diagnostics = { globals = { 'vim' } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) }
  }
}

