require("config/lazy")
require("config/options")


vim.cmd[[colorscheme tokyonight]]

vim.g.mapleader = " "

local configuration_directory_to_files = {
	keymappings = { "neo-tree-config", "lsp-keymaps", "telescope-keymaps" },
	lsp = { "lsp-config" },
	tree_sitter = { "tree-sitter-config" },
	completions = { "completions-config" },
	lualine = { "lualine-config" }
}


for directory, directory_config_files in pairs(configuration_directory_to_files) do

	for _, config_file in ipairs(directory_config_files) do
		local config_file_path = "config" .. "/" .. directory .. "/".. config_file
		require(config_file_path)
		-- print(config_file_path)
	end

end
