local ui = {}


	ui.startTextFont = nil
	ui.startTextAlpha = 0.3
	ui.startTextToAdd = 1
	ui.startText = "Press any key to start a game."

	function ui.load()
		ui.startTextFont = love.graphics.newFont("assets/fonts/saddlebag.ttf", 22)
		ui.startText = love.graphics.newText(ui.startTextFont, ui.startText)

		logger.addLog("menu ui loaded", false)
	end


	function ui.update(dt)
		ui.startTextAlpha = ui.startTextAlpha + ui.startTextToAdd * dt
		if ui.startTextAlpha > 1 then
			ui.startTextAlpha = 1
			ui.startTextToAdd = 0 - ui.startTextToAdd
		else 
			if ui.startTextAlpha < 0.3 then
			ui.startTextAlpha = 0.3
			ui.startTextToAdd = 0 - ui.startTextToAdd
			end
		end
	end

	function ui.keypressed(key)
		gameManager.selectCharacter()
	end

	function ui.draw() 
		colors.set({1, 1, 1, ui.startTextAlpha})
		love.graphics.draw(ui.startText, 0 + ui.startText:getHeight(), screen.height - ui.startText:getHeight() * 1.5)
	end

return ui