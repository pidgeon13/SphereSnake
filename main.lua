--Hello Sam
--Hi

-- window attributes
window_attr = {resizable = false}
x_size = 720
y_size = 720

-- player position
x_pos = 0
y_pos = 0

function love.load()
    -- one-time initial set-up
    love.window.setMode(x_size, y_size, window_attr)
    love.window.setTitle('SphereSnake')
end

function love.update()
    -- updates the state of the game every frame
    -- called before love.draw()
end

function love.draw()
    -- redraws the game every frame
    -- called after love.update()
    love.graphics.circle("line", x_size/2,y_size/2, y_size/3)
    love.graphics.arc("line", "open", x_size/2,y_size/2 - 10, 100, 0.5, 3)
    love.graphics.arc( "line", "open", 100, 100, 100, 0, 2)
end