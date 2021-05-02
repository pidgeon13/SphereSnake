function GetLatLine(d)
    -- draws latitude line at distance d from the left edge of the circle
    local d = d%(2*sph_r)
    if d == sph_r then
        love.graphics.line(
            sph_centre_x, y_size/2 - sph_r,
            sph_centre_x, y_size/2 + sph_r
        )
        return
    end
    local s = (sph_r - d)/math.abs(sph_r- d)
    local lat = {}
    lat['centre_x'] = sph_centre_x + (2*sph_r*d - d^2)/(2*(sph_r-d))
    lat['radius'] = s*((lat['centre_x'] - sph_centre_x) + sph_r - d)
    theta = 2*math.asin(sph_r/lat['radius']) -- length of arc angle
    lat['top_angle'] = math.pi/2 + (math.pi - theta)/2
    if s == -1 then
        lat['top_angle'] = lat['top_angle'] - math.pi
    end
    lat['bot_angle'] = lat['top_angle'] + theta
    love.graphics.arc(
        "line", "open", 
        lat['centre_x'], 
        sph_centre_y, 
        lat['radius'], 
        lat['top_angle'], 
        lat['bot_angle']
    )
end

function DrawLatLines(n)
    local j = 2*sph_r/n
    for i = 1, n do
        GetLatLine(x_pos + i*j)
    end
end