return {
	"nvim-neorg/neorg",
	ft = "norg",
	-- options for neorg. This will automatically call `require("neorg").setup(opts)`
	opts = {
		load = {
			["core.defaults"] = {},
		},
	},
}
