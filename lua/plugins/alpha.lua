return {
    {
		"goolord/alpha-nvim",
		config = function ()
		    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
			  "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
		}
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞   Find file", ":Telescope find_files <CR>"),
      dashboard.button("t", "   Browse files", ":NvimTreeToggle<CR>"),
      dashboard.button("c", "   Open config", ":e ~/.config/nvim<CR>"),
	  dashboard.button("q", "󰩈   Quit", ":qa!<CR>"),
    }
	dashboard.section.footer.val = "HelloWorld!(print)"

    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
	}
}
