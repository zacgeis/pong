local class = require("class")

local GameState = require("states/game_state")
local Manager = require("manager")

local CountdownState = class(GameState)

function CountdownState:__init(timeLimit, nextState)
  self.timeLimit = timeLimit + 1
  self.nextState = nextState
end

function CountdownState:update(dt)
  self.timeLimit = self.timeLimit - dt
  if self.timeLimit <= 1 then
    Manager.setActiveState(self.nextState)
  end
end

function CountdownState:draw()
  love.graphics.setColor(255, 255, 255)

  local screenWidth, screenHeight = love.graphics.getDimensions()

  local message = math.floor(self.timeLimit)
  local font = love.graphics.newFont(50)
  love.graphics.setFont(font)
  local messageWidth = font:getWidth(message)
  local messageHeight = font:getHeight(message)
  love.graphics.print(
    message,
    (screenWidth / 2) - (messageWidth / 2),
    (screenHeight / 2) - messageHeight
  )
end

return CountdownState
