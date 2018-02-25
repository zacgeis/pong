local function class(parent_metatable)
  local metatable = {}
  metatable.__index = metatable
  if parent_metatable then
    setmetatable(metatable, parent_metatable)
  end
  metatable.new = function(...)
    local newObj = {}
    if metatable.__init then
      metatable.__init(newObj, ...)
    end
    setmetatable(newObj, metatable)
    return newObj
  end
  return metatable
end

return class

-- Shape = class()
-- function Shape:__init(x, y)
--   self.x = x
--   self.y = y
-- end
-- function Shape:loc()
--   print(self.x, self.y)
-- end
-- test = Shape.new(1, 1)
-- test:loc()
--
-- Square = class(Shape)
-- function Square:__init(x, y, l)
--   self.x = x
--   self.y = y
--   self.l = l
-- end
-- function Square:area()
--   print(self.l * 2)
-- end
-- test2 = Square.new(2, 2, 2)
-- test2:loc()
-- test2:area()
