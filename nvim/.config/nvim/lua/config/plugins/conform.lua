return {
  {
    'stevearc/conform.nvim',
    config = function()
      require('conform').setup({
        formatters_by_ft = {
          javascript = { 'biome' },
          typescript = { 'biome' },
          javascriptreact = { 'biome' },
          typescriptreact = { 'biome' },
          json = { 'biome' },
          jsonc = { 'biome' },
          yaml = { 'prettierd' },
          markdown = { 'prettierd' },
          html = { 'prettierd' },
          css = { 'biome' },
          scss = { 'prettierd' },
          lua = { 'stylua' },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end
  }
}
