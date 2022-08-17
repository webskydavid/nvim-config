local status, lsp = pcall(require, 'lspconfig')
if (not status) then 
  print("no lsp!")
  return
end

lsp.tsserver.setup{}
