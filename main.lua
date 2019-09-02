-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Declaracao de variaveis:
-- Initialize variables
local lives = 3
local score = 0
local died = false
 
local surfista1
local livesText
local scoreText

local baseline = 280

local w = display.contentWidth -- largura da tela
local h = display.contentHeight -- altura da tela


-- background1
local background1 = display.newImage( "imagens/background1.jpg" )
background1.x = 0
background1.y = baseline-115
background1.yScale = 1.5--dá uma esticada na imagem na vertical
 
-- O dobro de praia para fazer a animação
local background2 = display.newImage( "imagens/background1.jpg" )
background2.x = 610-- Quando um dos trilhos termina, aparece o outro
background2.y = baseline-115
background2.yScale = 1.5

local platform = display.newImageRect( "imagens/platform.png", 300, 15 )
platform.x = display.contentCenterX -10
platform.y = display.contentHeight -30
platform.alpha = 0.10

-- Set up display groups
local backGroup = display.newGroup()  -- Display group for the background image
local surfistasGroup = display.newGroup()  -- Grupo de imagens do surfistas
local lixosGroup = display.newGroup()
local textGroup = display.newGroup()

-- bonecoTeste
--configuramos largura e altura dos sprites, bem como o nro. deles
local sheetOptions = { width = 86, height = 120, numFrames = 12 }
--carregamos a spritesheet com as opções
local sheet = graphics.newImageSheet( "imagens/bonecoTeste1.png", sheetOptions )
 
--definimos uma animação (sequence)
local sequences = {
    {
        name = "Idle",
        start = 1,
        count = 1,
        time =0,
        loopCount = 1       
                     
    },
    {
        name = "Walk",
        start = 2,
        count = 8,
        time =500,
        loopCount = 0,
        loopDirection = "forward"
            
    }
}
--criamos um objeto de display com todas as configs anteriores
local player = display.newSprite( sheet, sequences )

--posicionamos o objeto na tela
player.x = w * .1
player.y = h * .6

player:setSequence("Idle")
-- configura um valor inicial para sprite, nesse caso � o "Idle(1)", por isso o boneco come�a parado

--Botões
local buttons = {}

buttons[1] = display.newImage("imagens/button.png")--right
buttons[1].x = 90
buttons[1].y = 280
buttons[1].myName = "right"

buttons[2] = display.newImage("imagens/button.png")--left
buttons[2].x = 30
buttons[2].y = 280
buttons[2].rotation = -180
buttons[2].myName = "left"

buttons[3] = display.newImage("imagens/button.png")--jump
buttons[3].x = 455
buttons[3].y = 280
buttons[3].rotation = -90
buttons[3].myName = "Jump"

local yAxis = 0
local xAxis = 0

local touchFunction = function(e)
	local eventName = e.phase
	local direction = e.target.myName
	
	if eventName == "began" or eventName == "moved" then
        if direction == "right" then 
            player:setSequence("Walk")
            -- caso o bot�o pra direita for precionado ou arrastado, 
			xAxis = 5
			yAxis = 0
        elseif direction == "left" then
            player:setSequence("Walk")
			xAxis = -5
			yAxis = 0
		end
    else 
        -- caso os bot�es sejam soltos uma dessas fun��es ser� executada, 
		-- isso serve para q quando algu�m soltar os bot�es, o player n�o continue movimentando,
		-- ent�o a anima��o � trocada para os frames em q o gaara est� parado
		if e.target.myName == "right" then 
			player:setSequence("Walk")
			-- a anima��o "Walk"(andando) � ativada se o jogar soltar o bot�o para direita
        end
        yAxis = 0
        xAxis = 0
	end
end

local j=1

for j=1, #buttons do 
	buttons[j]:addEventListener("touch", touchFunction)
end

local update = function()
	player.x = player.x + xAxis
    player.y = player.y + yAxis
    
    if player.x <= player.width * .5 then 
		player.x = player.width * .5
	elseif player.x >= w - player.width * .5 then 
		player.x = w - player.width * .5
	end

	if player.y <= player.height * .5 then
		player.y = player.height * .5
	elseif player.y >= h - player.height * .5 then 
		player.y = h - player.height * .5
    end 
    
    player:play() --executa a anima��o, � necess�rio usar essa fun��o para ativar a anima��o
   
end


Runtime:addEventListener("enterFrame", update)

-- movendo Background1
local tPrevious = system.getTimer()
local function move(event)
 if(player.isVisible) then--só move cenário se Cormano estiver correndo
    local tDelta = event.time - tPrevious
    tPrevious = event.time
 
 local xOffset = ( 0.1 * tDelta )
    background1.x = background1.x - xOffset
    background2.x = background2.x - xOffset
 
 if (background1.x + background1.contentWidth) < 0 then
    background1:translate( 610 * 2, 0)
 end
 if (background2.x + background2.contentWidth) < 0 then
    background2:translate( 610 * 2, 0)
 end
 end
end
 
-- faz tudo acontecer
Runtime:addEventListener( "enterFrame", move );


-- Display lives and score
livesText = display.newText( textGroup, "Lives: " .. lives, 50, 80, native.systemFont, 16 )
scoreText = display.newText( textGroup, "Score: " .. score, 120, 80, native.systemFont, 16 )

-- Hide the status bar
display.setStatusBar( display.HiddenStatusBar )

local function updateText()
    livesText.text = "Lives: " .. lives
    scoreText.text = "Score: " .. score
end







