local Manager = {}

local activeState = nil

function Manager.setActiveState(state)
  activeState = state
end

function Manager.draw()
  activeState:draw()
end

function Manager.update(dt)
  activeState:update(dt)
end

function Manager.keypressed(key)
  activeState:keypressed(key)
end

return Manager
