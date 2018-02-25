local class = require("class")
local GameState = require("states/game_state")
local PlayingState = require("states/playing_state")
local CountdownState = require("states/countdown_state")
local Manager = require("manager")

local WelcomeState = class(GameState)

function WelcomeState:keypressed(key)
  Manager.setActiveState(CountdownState.new(3, PlayingState.new()))
end

function WelcomeState:draw()
  love.graphics.setColor(255, 255, 255)

  local screenWidth, screenHeight = love.graphics.getDimensions()

  local yOffset = 90
  local titleMessage = "Welcome to PONG"
  local font = love.graphics.newFont(30)
  love.graphics.setFont(font)
  local titleMessageWidth = font:getWidth(titleMessage)
  local titleMessageHeight = font:getHeight(titleMessage)
  love.graphics.print(
    titleMessage,
    (screenWidth / 2) - (titleMessageWidth/ 2),
    (screenHeight / 2) - yOffset
  )

  local continueMessage = "Press any key to continue."
  local font = love.graphics.newFont(14)
  love.graphics.setFont(font)
  local continueMessageWidth = font:getWidth(continueMessage)
  local continueMessageHeight = font:getHeight(continueMessage)
  love.graphics.print(
    continueMessage,
    (screenWidth / 2) - (continueMessageWidth / 2),
    (screenHeight / 2) - yOffset + titleMessageHeight + 10
  )
end

return WelcomeState
