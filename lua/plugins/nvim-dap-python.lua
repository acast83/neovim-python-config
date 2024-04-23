-- Configuring nvim-dap for Python
return {
  -- Plugin URL: https://github.com/mfussenegger/nvim-dap-python
  'mfussenegger/nvim-dap-python',
  ft = 'python',  -- This plugin is loaded only for Python files
  dependencies = {
    -- DAP core plugin: https://github.com/mfussenegger/nvim-dap
    'mfussenegger/nvim-dap',
    -- DAP UI enhancements: https://github.com/rcarriga/nvim-dap-ui
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    -- Setup nvim-dap-python
    -- Update the path below to point to your Python executable
    require('dap-python').setup('/home/aca/.pyenv/shims/python')

    -- Loading the required modules for DAP and DAP UI
    local dap, dapui = require("dap"), require("dapui")


    -- Define custom breakpoint signs
    vim.fn.sign_define('DapBreakpoint', {text = '🔴', texthl = 'Error'})
    vim.fn.sign_define('DapBreakpointActive', {text = '🔵', texthl = 'Warning'})


    -- Configure DAP UI to open automatically when debugging starts
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

    -- Ensure the DAP UI closes when the debugging session ends
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end
}

