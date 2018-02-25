local GameState = {}

function GameState:new()
  local newObj = {}
  self.__index = self
  setmetatable(newObj, self)
  return newObj
end

function GameState:draw()
end

function GameState:keypressed(key)
end

function GameState:update(dt)
end

return GameState
