local status_ok, plugin = pcall(require, "cmp")

if not status_ok then return end

plugin.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	window = {
	},

	mapping = plugin.mapping.preset.insert({
		['<C-b>'] = plugin.mapping.scroll_docs(-4),
		['<C-f>'] = plugin.mapping.scroll_docs(4),
		['<C-Space>'] = plugin.mapping.complete(),
		['<C-e>'] = plugin.mapping.abort(),
		['<CR>'] = plugin.mapping.confirm({ select = true }),
		["<Tab>"] = function(fallback)
			if plugin.visible() then
				plugin.confirm({ select = true })
			else
				fallback()
			end
		end,
	}),

	sources = plugin.config.sources(
    {
	  	{ name = 'nvim_lsp' },
	  	{ name = 'vsnip' },
	  },
    {
	  	{ name = 'buffer' },
	  }
  )
})

plugin.setup.filetype('gitcommit', {
	sources = plugin.config.sources(
    {
		  {
        name = 'cmp_git'
      },
    },
    {
		  {
        name = 'buffer'
      },
	  }
  )
})

plugin.setup.cmdline({'/', '?'}, {
	mapping = plugin.mapping.preset.cmdline(),
	sources = {
		{
      name = 'buffer'
    }
	}
})

plugin.setup.cmdline(':', {
	mapping = plugin.mapping.preset.cmdline(),
	sources = plugin.config.sources(
    {
		  {
        name = 'path'
      }
	  },
    {
		  {
        name = 'cmdline'
      }
	  }
  )
})
