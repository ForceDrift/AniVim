return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = 'v0.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
keymap = { 
        preset = 'enter',
        -- If you want to keep Tab for cycling, you can also do this:
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
      },
      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = {
        -- Show documentation UI automatically
        documentation = { 
          auto_show = true, 
          auto_show_delay_ms = 200,
          window = { border = 'rounded' }
        },
        menu = { border = 'rounded' },
      },

      -- Show function signatures (parameter hints) as you type
      signature = { 
        enabled = true,
        window = { border = 'rounded' }
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },
}
