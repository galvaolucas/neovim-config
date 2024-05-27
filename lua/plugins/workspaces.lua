return {
  "sanathks/workspace.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("workspace").setup({
      workspaces = {
        { name = "admin", path = "~/programacao/instacasa/V2/", keymap = { "<leader>adminv2" } },
        { name = "plataforma", path = "~/programacao/instacasa/V2/plataforma-v2/", keymap = { "<leader>plataforma" } },
        { name = "devfolio", path = "~/programacao/devfolio/", keymap = { "<leader>devfolio" } },
      },
    })
  end,
}
