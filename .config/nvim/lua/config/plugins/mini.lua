require("mini.indentscope").setup({
	draw = {
		delay = 0,
		animation = require("mini.indentscope").gen_animation.none(),
	},
})

require("mini.ai").setup()

require("mini.pairs").setup()

require("mini.surround").setup()

-- Setup mini.diff with proper function reference
local diff = require("mini.diff")
diff.setup()
