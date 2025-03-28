local dap = require "dap"

vim.fn.sign_define("DapBreakpoint", {
  text = "",
  texthl = "DiagnosticSignError",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapBreakpointRejected", {
  text = "",
  texthl = "DiagnosticSignError",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapStopped", {
  text = "",
  texthl = "DiagnosticSignWarn",
  linehl = "Visual",
  numhl = "DiagnosticSignWarn",
})

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = "/home/joe/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}
dap.configurations.cpp = {
  {
    name = "Debug rpi openocd",
    type = "cppdbg",
    request = "launch",
    cwd = "${workspaceFolder}",
    program = "${workspaceFolder}/build/wavebuilder.elf",
    stopAtEntry = false,
    MIMode = "gdb",
    miDebuggerServerAddress = "localhost:3333",
    miDebuggerPath = "gdb-multiarch",
    serverLaunchTimeout = 5000,
    postRemoteConnectCommands = {
      {
        text = "monitor reset",
        ignoreFailures = false,
      },
      {
        text = "load",
        ignoreFailures = false,
      },
    },
  },
}
