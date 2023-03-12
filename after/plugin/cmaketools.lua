require("cmake-tools").setup {
  cmake_command = "cmake",
  cmake_build_directory = "",
  cmake_build_directory_prefix = "cmake_build_", -- when cmake_build_directory is "", this option will be activated
  cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
  cmake_build_options = {},
  cmake_console_size = 10, -- cmake output window height
  cmake_console_position = "belowright", -- "belowright", "aboveleft", ...
  cmake_show_console = "always", -- "always", "only_on_error"
  cmake_dap_configuration = { name = "cpp", type = "codelldb", request = "launch" }, -- dap configuration, optional
  cmake_variants_message = {
    short = { show = true },
    long = { show = true, max_length = 40 }
  }
}


vim.keymap.set("n", "<leader>cm", function()
  require("cmake-tools").build({})
end)

vim.keymap.set("n", "<leader>cr", function()
  require("cmake-tools").run({})
end)

vim.keymap.set("n", "<leader>cd", function()
  require("cmake-tools").debug({})
end)

vim.keymap.set("n", "<leader>cc", function()
  require("cmake-tools").clean({})
end)

vim.keymap.set("n", "<leader>ct", function()
  require("cmake-tools").test({})
end)

vim.keymap.set("n", "<leader>cs", function()
  require("cmake-tools").stop({})
end)
