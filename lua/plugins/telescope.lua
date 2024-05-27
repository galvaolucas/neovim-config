return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<d-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
  "sanathks/workspace.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("workspace").setup({
      workspaces = {
        { name = "admin", path = "~/programacao/instacasa/V2/admin/", keymap = { "<leader>admin" } },
        { name = "node_api", path = "~/programacao/instacasa/V2/node-api/", keymap = { "<leader>api" } },
      },
    })
  end,
}
