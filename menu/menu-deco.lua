local deco = {}

	deco.backgroundPicture = nil
	deco.backgroundShowUp = 0

	deco.title = "Undead Rapture"
	deco.titleFont = nil
	deco.titleShowUp = -5.8

	function deco.load()
		deco.titleFont = love.graphics.newFont("assets/fonts/shadowed-serif.TTF", 30)
		deco.backgroundPicture = love.graphics.newImage("assets/menu/main-menu-background.jpg")
		deco.title = love.graphics.newText(deco.titleFont, deco.title)
		sounds.music = love.audio.newSource("assets/sounds/music/lone-rider.mp3", 'stream')
		sounds.add("music/lone-rider.mp3", "menu-music", 1, "stream")
		sounds.play("menu-music")		
		logger.addLog("menu deco loaded", false)
	end

	function deco.unload()
		sounds.setVolume("menu-music", 0.3, true, 2)

		logger.addLog("menu deco unloaded", false)
	end


	function deco.update(dt)
		deco.backgroundShowUp = deco.backgroundShowUp + 1 * dt
		deco.titleShowUp = deco.titleShowUp + 1 * dt
	end


	function deco.draw()
		colors.set({1, 1, 1, deco.backgroundShowUp})
		love.graphics.draw(deco.backgroundPicture, 0, 0, 0, screen.width / deco.backgroundPicture:getWidth(), screen.height / deco.backgroundPicture:getHeight())
		colors.set({0.55, 0.25, 0.037, deco.titleShowUp})
		colors.set({0.1, 0.1, 0.1, deco.titleShowUp})
		love.graphics.draw(deco.title, screen.width / 2 - deco.title:getWidth() / 2, 20)
	end

return deco