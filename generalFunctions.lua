currentDt = 0

screen = {}
	screen.width = 800
	screen.height = 600
	screen.title = "Project starter"
	function screen.init()
		love.window.setMode(screen.width, screen.height)
		love.window.setTitle(screen.title)
	end

mouse = {}
	mouse.x = 0
	mouse.y = 0
	function mouse.update()
		mouse.x = love.mouse.getX()
		mouse.y = love.mouse.getY()
	end

colors = {}
	function colors.set(color)
		love.graphics.setColor(color)
	end
	colors.red = {1, 0, 0, 1}
	colors.green = {0, 1, 0, 1}
	colors.blue = {0, 0, 1, 1}
	colors.white = {1, 1, 1, 1}
	colors.black = {0, 0, 0, 1}


