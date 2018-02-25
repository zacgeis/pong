local screenWidth = 800
local screenHeight = 600
love.window.setMode(screenWidth, screenHeight, {resizable = false, highdpi = true})
love.window.setTitle("PONG")

local Manager = require("manager")
local WelcomeState = require("states/welcome_state")

function love.load()
  Manager.setActiveState(WelcomeState:new())
end

function love.draw()
  Manager.draw()
end

function love.update(dt)
  Manager.update(dt)
end

function love.keypressed(key)
  Manager.keypressed(key)
end
