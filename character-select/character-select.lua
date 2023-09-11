local characterSelect = {}

	characterSelect.list = {}
	characterSelect.currentCharacter = nil

	characterSelect.nameFont = nil
	characterSelect.textFont = nil


	function characterSelect.load()
		table.insert(characterSelect.list, require("character-select/character-cyrus"))
		table.insert(characterSelect.list, require("character-select/character-ethan"))
		table.insert(characterSelect.list, require("character-select/character-maggie"))

		characterSelect.currentCharacter = characterSelect.list[1]
		characterSelect.nameFont = love.graphics.newFont("assets/fonts/shadowed-serif.TTF", 22)
		characterSelect.nicknameFont = love.graphics.newFont("assets/fonts/saddlebag.ttf", 22)
		characterSelect.textFont = love.graphics.newFont("assets/fonts/saddlebag.ttf", 15)

		characterSelect.name = love.graphics.newText(characterSelect.nameFont, characterSelect.currentCharacter.name)
		characterSelect.nickname = love.graphics.newText(characterSelect.nicknameFont, characterSelect.currentCharacter.nickname)
		characterSelect.description = love.graphics.newText(love.graphics.newFont(15), characterSelect.currentCharacter.description)

		-- characterSelect.cyrusName = love.graphics.newText(characterSelect.nameFont, characterSelect.cyrusName)
		-- characterSelect.ethanName = love.graphics.newText(characterSelect.nameFont, characterSelect.ethanName)
		-- characterSelect.maggieName = love.graphics.newText(characterSelect.nameFont, characterSelect.maggieName)

		logger.addLog("character select loaded", false)
	end

	function characterSelect.update(dt)

	end

	function characterSelect.draw()
		colors.set(colors.white)

		-- draw current character picture --
		love.graphics.draw(characterSelect.currentCharacter.image, screen.width - 425, 25, 0, 0.5, 0.5)

		-- draw the current character informations --

		love.graphics.draw(characterSelect.name, screen.width / 4 - characterSelect.name:getWidth() / 2 - 25, characterSelect.name:getHeight())
		love.graphics.draw(characterSelect.nickname, screen.width / 4 - characterSelect.nickname:getWidth() / 2 - 25, characterSelect.nickname:getHeight() * 2)

		love.graphics.draw(characterSelect.description, 25, 100)

	end

return characterSelect