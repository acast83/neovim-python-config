-- Set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>") -- exit insert mode with jk 
keymap.set("i", "ii", "<ESC>") -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>") -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5") -- make split windows width bigger 
keymap.set("n", "<leader>sh", "<C-w><5") -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab
keymap.set("n", "<leader>bd", ":confirm bd<CR>", { desc = "Close current buffer" })

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>") -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>") -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>") -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c") -- next diff hunk
keymap.set("n", "<leader>cp", "[c") -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>") -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>") -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>") -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>") -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>") -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>") -- close quickfix list

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize tab

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>") -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer


-- Keymap to toggle NvimTree, podesio sam ga u tree.lua fajlu
-- vim.keymap.set("n", "<leader>et", toggleNvimTree, { desc = "Toggle NvimTree Focus" })

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
keymap.set('n', '<leader>/', require('telescope.builtin').current_buffer_fuzzy_find, {})
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {})
keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, {desc = 'Search current word'})
keymap.set('n', '<leader>fkm', '<cmd>Telescope keymaps<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end)


-- Lua keymaps for folding
keymap.set('n', '<leader>fc', ':foldclose<CR>', { desc = 'Close fold at cursor' })
keymap.set('n', '<leader>fo', ':foldopen<CR>', { desc = 'Open fold at cursor' })
keymap.set('n', '<leader>fC', ':normal! zM<CR>', { desc = 'Close all folds' })
keymap.set('n', '<leader>fO', ':normal! zR<CR>', { desc = 'Open all folds' })
keymap.set('n', '<leader>ft', ':foldtoggle<CR>', { desc = 'Toggle fold at cursor' })
keymap.set('n', '<leader>fA', ':foldopen!<CR>:foldclose<CR>', { desc = 'Toggle all folds' })


-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>") -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)
keymap.set("n", "<leader>hd1", function() require("harpoon.mark").rm_file(1) end)
keymap.set("n", "<leader>hd2", function() require("harpoon.mark").rm_file(2) end)
keymap.set("n", "<leader>hd3", function() require("harpoon.mark").rm_file(3) end)
keymap.set("n", "<leader>hd4", function() require("harpoon.mark").rm_file(4) end)
keymap.set("n", "<leader>hd5", function() require("harpoon.mark").rm_file(5) end)
keymap.set("n", "<leader>hd6", function() require("harpoon.mark").rm_file(6) end)
keymap.set("n", "<leader>hd7", function() require("harpoon.mark").rm_file(7) end)
keymap.set("n", "<leader>hd8", function() require("harpoon.mark").rm_file(8) end)
keymap.set("n", "<leader>hd9", function() require("harpoon.mark").rm_file(9) end)



-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query

-- LSP
keymap.set('n', 'gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

-- Filetype-specific keymaps (these can be done in the ftplugin directory instead if you prefer)
keymap.set("n", '<leader>go', function()
  if vim.bo.filetype == 'python' then
    vim.api.nvim_command('PyrightOrganizeImports')
  end
end)

keymap.set("n", '<leader>tc', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_class();
  end
end)

keymap.set("n", '<leader>tm', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_method();
  end
end)


local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Debugging with Function Keys
keymap("n", "<F1>", "<cmd>lua require'dap'.continue()<CR>", opts)
keymap("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<F2>", "<cmd>lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F3>", "<cmd>lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F4>", "<cmd>lua require'dap'.step_out()<CR>", opts)
keymap("n", "<F5>", "<cmd>lua require'dap'.clear_breakpoints()<CR>", opts)
keymap("n", "<F6>", "<cmd>lua require'dap'.repl.toggle()<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>B', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true })


require('dapui').setup( require("dapui").setup({
  layouts = {
    {
      elements = {
        -- Elements can be "scopes", "breakpoints", "stacks", "watches", or "repl"
        { id = "scopes", size = 0.25 },  -- Adjust size as a fraction of the screen
        { id = "breakpoints", size = 0.25 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 0.25 }
      },
      size = 40,  -- Specifies the size of the sidebar
      position = "left"  -- Sidebar on the left
    },
    {
      elements = {
        "repl"
      },
      size = 10,  -- Smaller size for the lower window
      position = "bottom"  -- Command line REPL at the bottom
    }
  }
})
)  -- Set up dap-ui for a better debugging interface

require('nvim-dap-virtual-text').setup({
    enabled = true,  -- Enable virtual text
    enabled_commands = true,
    highlight_changed_variables = true,
    highlight_new_as_changed = true,
    show_stop_reason = true,
    commented = true,
})

-- Keybindings to toggle dap-ui elements
keymap('n', '<leader>du', "<cmd>lua require('dapui').toggle()<CR>", {desc  = "toggle dap ui elements"})

