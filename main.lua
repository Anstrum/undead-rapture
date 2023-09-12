io.stdout:setvbuf("no")
love.graphics.setDefaultFilter("nearest")

require("generalFunctions")
require("gameManager")

function love.load()
	screen.init()
	gameManager.init()
	gameManager.load()

	logger.addLog("load complete", true)
end

function love.update(dt)
	sounds.update(dt)
	currentDt = dt
	mouse.update()
	gameManager.update(dt)
	logger.update(dt)
end

function love.quit()
	logger.export()
end

function love.keypressed(key)
	gameManager.keypressed(key)
	logger.keypressed(key)
end

function love.mousepressed(x, y, click)
	gameManager.mousepressed(x, y, key)
end

function love.draw()
	colors.set(colors.white)
	gameManager.draw()
	logger.draw()
    love.graphics.print(sounds.list["menu-music"].source:getVolume(), 5, 5)
end
