return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local config = require("nvim-web-devicons")
    config.setup({})
    config.get_icons()
  end,
}
