require "options"

local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            require "pluginList"
            require "plugins.bufferline"
            require("utils").hideStuff()
	    require("mason").setup()
            async:close()
        end
    )
)
async:send()
