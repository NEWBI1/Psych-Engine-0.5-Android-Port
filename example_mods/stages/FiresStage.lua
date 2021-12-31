local xx = -200;
local yy = 50;
local xx2 = 200;
local yy2 = 50;
local ofs = 48;
local followchars = true;
local del = 0;
local del2 = 0;
local angleshit2 = 1;
local alpha = 1;
local angleshit = 1;
local anglevar = 1;

function onCreate()
	
	makeLuaSprite('floor','floor',-1508,-914)
	addLuaSprite('floor',false)

	--makeLuaSprite('bg','bg',-1028,-432)
	--addLuaSprite('bg',false)

	--makeAnimatedLuaSprite('friends','friends',-970,-441)
	--addAnimationByPrefix('friends','bounce','friends',24,true)
	--addLuaSprite('friends',false)
	
end

function onBeatHit()
	--objectPlayAnimation('friends','bounce',true)
	
	if curBeat > 3 then
		doTweenY('tuin', 'dad.HUD', -angleshit*200, crochet*0.002, 'cubicIn')
	end

	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.02,0.03)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*0)
		setProperty('camGame.angle',angleshit*0)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'cubicOut')
		doTweenY('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'cubicOut')
		doTweenY('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end

	
	
end 

function onStephit()
	
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', 8, stepCrochet*0.002, 'cubicOut')
			doTweenY('rtr', 'camGame.scroll', 0, stepCrochet*0.002, 'cubicIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 8, stepCrochet*0.002, 'cubicIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'cubicIn')
		end
	end


end

function onUpdate() 
	
	if followchars == true then
		if mustHitSection == false then
			setProperty('defaultCamZoom',0.7)
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx-ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx+ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx,yy-ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx,yy)
			end
	   
			end
	end
	if followchars == true then
		if mustHitSection == true then
			setProperty('defaultCamZoom',0.6)
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx2,yy2)
			end

		end

	end

end