io.stdout:setvbuf("no")
love.graphics.setDefaultFilter("nearest")

require("generalFunctions")

function love.load()
	screen.init()
end

function love.update(dt)
	currentDt = dt
	mouse.update()
end

function love.quit()
end

function love.keypressed(key)
end

function love.mousepressed(x, y, click)
end

function love.draw()
	colors.set(colors.white)
end
