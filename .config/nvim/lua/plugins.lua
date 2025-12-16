-- :PackerCompile after plugin config changes
-- :PackerClean to remove disabled/unused plugins
-- :PackerInstall to clean and install new/missing plugins
-- :PackerUpdate to clean, update, and install plugins
-- :PackerStatus to list installed plugins

-- only required if packer configured as "opt"
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- packer can manage itself
    use "wbthomason/packer.nvim"

    -- file tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional
        },
    }

    -- tabline
    use "romgrk/barbar.nvim"

    -- autopairs
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
end)

