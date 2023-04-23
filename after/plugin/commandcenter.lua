local telescope = require("telescope")
local command_center = require("command_center")
local noremap = { noremap = true }

command_center.add({
  {
    desc = "Open command_center",
    cmd = "<CMD>Telescope command_center<CR>",
    keys = {
      {"n", "<Leader>fc", noremap},
      {"v", "<Leader>fc", noremap},
    },
  }
}, command_center.mode.REGISTER_ONLY)

telescope.setup {
  extensions = {
    command_center = {
      components = {
        command_center.component.DESC,
        command_center.component.KEYS,
      },
      sort_by = {
        command_center.component.DESC,
        command_center.component.KEYS,
      },
      auto_replace_desc_with_cmd = false,
    }
  }
}

telescope.load_extension('command_center')
