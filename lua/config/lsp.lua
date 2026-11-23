vim.lsp.enable({ "basedpyright", "clangd", "dartls", })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local o = { buffer = args.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, o)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, o)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, o)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, o)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, o)
  end,
})
