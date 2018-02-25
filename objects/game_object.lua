local GameObject = {}

function GameObject:new()
  local newObj = {}
  self.__index = self
  setmetatable(newObj, self)
  return newObj
end

return GameObject
