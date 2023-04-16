require'nvim-treesitter.configs'.setup {
	ensure_installer = { "all" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
    additional_vim_regex_highlighting = false
	},
}
