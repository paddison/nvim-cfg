local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- manual configuration would look like this :
-- lspconfig.rust_analyzer.setup({})

-- if we're happy with default values, we can just do this though:
lsp_zero.setup_servers({ 'rust_analyzer', 'clangd' })

-- configure the keybindings
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local cmp_select = { behaviour = cmp.SelectBehavior.Select }
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),

    -- Ctrl+Space to trigger completion menu
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

lsp_zero.set_preferences({
	sign_icons = { }
})
