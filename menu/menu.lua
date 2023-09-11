local menu = {}

	menu.deco = require("menu/menu-deco")
	menu.sounds = require("menu/menu-sounds")
	menu.ui = require("menu/menu-ui")

	menu.music = nil

	function menu.load()
		menu.deco.load()
		menu.sounds.load()
		menu.ui.load()

		logger.addLog("menu loaded", false)
	end

	function menu.unload()
		menu.sounds.unload()
		-- TODO: unload everything i can --
	end

	function menu.update(dt)
		menu.deco.update(dt)
		menu.ui.update(dt)
	end

	function menu.keypressed(key)
		menu.ui.keypressed(key)
	end

	function menu.draw()
		menu.deco.draw()
		menu.ui.draw()
	end
	
return menu