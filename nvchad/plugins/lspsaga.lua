local present, lspsaga = pcall(require, "lspsaga")

if not present then
  return
end

local options = {
}

lspsaga.init_lsp_saga(options)
