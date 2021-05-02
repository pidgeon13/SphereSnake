--Hello Sam
--Hi

-- window attributes
window_attr = {resizable = false}
x_size = 720
y_size = 720

-- sphere attrubites
sph_r = y_size/3 -- radius
sph_centre_x, sph_centre_y = x_size/2, y_size/2 -- centre point
num_lat_lines = 12 -- how many latitude lines to show

-- player position, offset from centre
x_pos = 0
y_pos = 0

require "control"
require"latitude_line"

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
    -- first, draw the enclosing circle
    love.graphics.circle("line",sph_centre_x, sph_centre_y, sph_r)
    -- next, draw latitude lines
    DrawLatLines(num_lat_lines)
end
