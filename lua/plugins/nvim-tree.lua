-- Function to toggle between NvimTree and the last active buffer
local function toggleNvimTree()
    -- Get the buffer number of the current window
    local current_buf = vim.api.nvim_get_current_buf()
    -- Get the filetype of the current buffer
    local current_ft = vim.api.nvim_buf_get_option(current_buf, 'filetype')

    -- Check if the current buffer is NvimTree
    if current_ft == 'NvimTree' then
        -- If it's NvimTree, use <C-w>p to switch to the previous window
        vim.cmd('wincmd p')
    else
        -- Otherwise, open or focus NvimTree
        vim.cmd('NvimTreeFocus')
    end
end


vim.keymap.set("n", "<leader>et", toggleNvimTree, { desc = "Toggle NvimTree Focus" })



-- File Explorer / Tree
return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },
      }
    },
  },
  config = function (_, opts)
    -- Recommended settings to disable default netrw file explorer
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end
}

