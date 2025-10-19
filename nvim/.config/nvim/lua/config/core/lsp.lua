-- core/lsp.lua
vim.lsp.enable({
  "lua_ls",
  "ts_ls",
  "gopls",
  "rust_analyzer",
  "biome",
})

-- Automatically set up on_attach logic for every LSP
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Disable things you don’t want from LSP defaults
    vim.bo[bufnr].formatexpr = nil
    vim.bo[bufnr].omnifunc = nil

    -- Disable document colors globally (optional)
    if vim.lsp.document_color then
      vim.lsp.document_color.enable(false, bufnr)
    end

    -- Keymaps (old ones, updated to buffer-local)
    local opts = { buffer = bufnr, silent = true }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
  end,
})
