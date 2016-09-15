function love.load()
	x = 0
	y = 0
	u = 300
	p = 300
end

function love.update(dt)
	if love.keyboard.isDown("right") then
		x = x+1
	elseif love.keyboard.isDown("left") then
		x = x-1
	end

	if love.keyboard.isDown("up") then
		y = y-1
	elseif love.keyboard.isDown("down") then
		y = y+1
	end

	if love.keyboard.isDown("d") then
		u = u+1
	elseif love.keyboard.isDown("a") then
		u = u-1
	end

	if love.keyboard.isDown("w") then
		p = p-1
	elseif love.keyboard.isDown("s") then
		p = p+1
	end
end

function love.draw()
	love.graphics.setColor(0, 0, 50)
	love.graphics.rectangle("fill", x, y, 100, 100)

	love.graphics.setColor(0, 50, 0)
	love.graphics.circle("fill", u, p, 50, 50)
end
