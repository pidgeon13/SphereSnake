-- window attributes
window_attr = {resizable = false}
x_size = 300
y_size = 300

-- sphere attrubites
sph_r = y_size/3 -- radius
sph_centre_x, sph_centre_y = x_size/2, y_size/2 -- centre point
num_lat_lines = 12 -- how many latitude lines to show
num_long_lines = 8 -- how many longitude lines to show

-- player position, offset from centre
theta = 0 -- around the equator, longitude
alpha = 0 -- north to south, latitude

require "shader"
require "control"

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
    --love.graphics.setColor(0,1,0.5)
    love.graphics.circle("fill",sph_centre_x, sph_centre_y, sph_r)
    --myShader:send("alpha",alpha)
    love.graphics.setShader(myShader)
    love.graphics.circle("line",sph_centre_x, sph_centre_y, sph_r)
end
