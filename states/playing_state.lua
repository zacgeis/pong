local class = require("class")
local GameState = require("states/game_state")

local PlayingState = class(GameState)

function PlayingState:keypressed(key)
end

function PlayingState:update(dt)
end

function PlayingState:draw()
  love.graphics.setColor(255, 255, 255)

  local screenWidth, screenHeight = love.graphics.getDimensions()

  local message = "playing"
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

return PlayingState
