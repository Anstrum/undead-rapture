local sounds = {}


	sounds.volume = 0.3
	sounds.music = nil

	function sounds.load()
		love.audio.setVolume(sounds.volume)
		sounds.music = love.audio.newSource("assets/sounds/music/lone-rider.mp3", 'stream')
		love.audio.play(sounds.music)

		logger.addLog("menu sounds loaded", false)
	end

	function sounds.unload()
		love.audio.stop()
	end


return sounds