-- handles player input
function love.keypressed( key, scancode, isrepeat)
    if key == "left" then
        x_pos = x_pos - 10
    elseif key == "right" then
        x_pos = x_pos + 10
    end 
end
