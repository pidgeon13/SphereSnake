-- handles player input
function love.keypressed( key, scancode, isrepeat)
    if key == "left" then
        theta = theta + math.pi/10
    elseif key == "right" then
        theta = theta - math.pi/10
    end
    if key == "up" then
        alpha = alpha + math.pi/10
    elseif key == "down" then
        alpha = alpha - math.pi/10
    end 
end
