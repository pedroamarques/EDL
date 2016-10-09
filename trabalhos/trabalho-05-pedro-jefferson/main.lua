function love.load()
  playerx,playery = 700,300
  createEnemyTimerMax = 0.8
  createEnemyTimer = createEnemyTimerMax
  enemies = {}
  --nome: tabela enemies
  --escopo: local
  --ciclo de vida: durante toda a execução do jogo
  --alocação: quando os inimigos surgem na tela são adicionados a tabela alocando espaço na memoria
  --/desalocação: quando os circulos colidem com o retangulo ou saiem da tela eles 
  --são excluidos na tabela desalocando espaço na memoria.
 
  score = 0
  r, g, b = 240, 248, 255
  speed = 3
  level = 10
  creu = 1
  som = love.audio.newSource( "GuileTheme.mp3")  
  somPonto = love.audio.newSource("sonic.mp3") 
end

function love.draw(dt)
  love.graphics.setColor( 135, 206, 250)
  love.graphics.print("Pontos: " .. score, 60, 60)
	love.graphics.print("level" .. creu, 75, 75)	
  love.graphics.setColor(r, g, b)
  love.graphics.rectangle("fill", playerx, playery, 60, 60)
  for i, enemy in ipairs(enemies) do
	 love.graphics.setColor( 255, 160, 122)
         love.graphics.circle("fill", enemy.x, enemy.y, 20)
  end
  love.audio.play(som)
end

function love.update(dt)
  createEnemyTimer = createEnemyTimer - (1 * dt)
  if createEnemyTimer < 0 then
	createEnemyTimer = createEnemyTimerMax
	randomNumber = math.random(10, 530)
	newEnemy = { x = 0, y = randomNumber }
	table.insert(enemies, newEnemy)
  end
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
  for i, enemy in ipairs(enemies) do
  	enemy.x = enemy.x + speed
  	if enemy.x > 800 then
   	     table.remove(enemies, i)
	
  	end 
  	if math.abs((playerx+30) - enemy.x) < 50 and math.abs((playery+30) - enemy.y) < 50 then
  	     score = score + 1
		 love.audio.play(somPonto)
 	     table.remove(enemies, i)
	
	end
	if score >= level then
		speed = speed + 1
		level = level + 10
		creu = creu + 1
	end
  end
end
