local selector = {}

selector.characterList = {}
selector.characterSelected = nil

function selector.load(characterList) 
    selector.characterList = characterList

    logger.addLog("character select selector loaded", false)
end

function selector.update(dt)
end

function selector.draw()
end



return selector