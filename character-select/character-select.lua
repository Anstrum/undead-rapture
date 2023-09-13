local characterSelect = {}

	characterSelect.selector = require("character-select/character-select-selector")

	characterSelect.list = {}
	characterSelect.currentCharacter = nil

	function characterSelect.load()
		local cyrus = require("character-select/character-cyrus")
		local ethan = require("character-select/character-ethan")
		local maggie = require("character-select/character-maggie")

		characterSelect.list[cyrus.name] = cyrus
		characterSelect.list[ethan.name] = ethan
		characterSelect.list[maggie.name] = maggie

		characterSelect.selector.load(characterSelect.list)

		logger.addLog("character select loaded", false)
	end

	function characterSelect.update(dt)
	end

	function characterSelect.draw()
	end

return characterSelect