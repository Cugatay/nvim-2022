local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

local formatting = null_ls.builtins.formatting
null_ls.setup {
	debug = false,
	sources = {
		-- formatting.eslint_d,
		    -- null_ls.builtins.diagnostics.eslint_d.with({
		    --     diagnostics_format = '[eslint] #{m}\n(#{c})'
		    --   }),
    -- null_ls.builtins.code_actions.xo,

		formatting.prismaFmt, -- Prisma
		formatting.dprint, -- Rust
    -- formatting.stylelint,

    -- null_ls.builtins.diagnostics.fish
    --[[
		formatting.prettierd.with({
			filetypes = {
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"markdown",
				"graphql",
			},
		}),
		formatting.stylua,
    --]]
	},
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
  end,
}
