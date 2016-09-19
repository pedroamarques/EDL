function love.load()
  playerx,playery = 700,300
  enemyx,enemyy = 50,300
  score = 0	
  som = love.audio.newSource( "GuileTheme.mp3")
  somPonto = love.audio.newSource("sonic.mp3")
end
function love.draw()
  love.graphics.setColor( 0, 0, 250)
  love.graphics.print("Pontos: " .. score, 60, 60)

  love.graphics.setColor( 0, 255, 127)
  love.graphics.rectangle("fill", playerx, playery, 60, 60)

  love.graphics.setColor( 255, 250, 250)
  love.graphics.circle("fill", enemyx, enemyy, 20)
  
  love.audio.play(som)

end
function love.update()
  if playery > 530 then
      playery = playery - 10
  else if playery < 2 then
      playery = playery + 10	
  else if love.keyboard.isDown("w", "up") then
      playery = playery - 10
  else if love.keyboard.isDown("s", "down") then
      playery = playery + 10
      end
     end
    end
  end
  enemyx = enemyx + 5
  if enemyx > 800 then
    enemyx = 0
	
    enemyy = math.random(1,580)
  end 
  if math.abs(playerx - enemyx) < 50 and math.abs(playery - enemyy) < 50 then
    enemyx = 0
    score = score + 1
	love.audio.play(somPonto)
    enemyy = math.random(1,529)	
		
	end  
end
