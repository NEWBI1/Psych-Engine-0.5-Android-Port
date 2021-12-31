local angleshit = 1;
local anglevar = 1;

function onCreate()
	
	makeLuaSprite('theSky','citysky',-1200,-700)
	addLuaSprite('theSky',false)
	
	makeLuaSprite('theCity','background city',-100,-100)
	addLuaSprite('theCity',false)
	

	
	

	makeLuaSprite('theGround','bground',-1100,300)
	addLuaSprite('theGround',false)
	

	makeAnimatedLuaSprite('theCookie','bcookie ppl',-700,-50)
	addAnimationByPrefix('theCookie','bounce','bcookie ppl',24,true)
	addLuaSprite('theCookie',false)
	
	

end

function onBeatHit()
		
	
	
	if curBeat > 63 then
		if curBeat < 128 then
			triggerEvent('Add Camera Zoom', 0.04,0.05)

			if curBeat % 2 == 0 then
				angleshit = anglevar;
			else
				angleshit = -anglevar;
			end
			setProperty('camHUD.angle',angleshit*3)
			setProperty('camGame.angle',angleshit*3)
			doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
			doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
		else
			setProperty('camHUD.angle',0)
			setProperty('camHUD.x',0)
			setProperty('camHUD.x',0)
		end
	end
	
	if curBeat > 159 then
		if curBeat < 192 then
			triggerEvent('Add Camera Zoom', 0.04,0.05)

			if curBeat % 2 == 0 then
				angleshit = anglevar;
			else
				angleshit = -anglevar;
			end
			setProperty('camHUD.angle',angleshit*3)
			setProperty('camGame.angle',angleshit*3)
			doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
			doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
		else
			setProperty('camHUD.angle',0)
			setProperty('camHUD.x',0)
			setProperty('camHUD.x',0)
		end
	end

	if curBeat > 223 then
		if curBeat < 280 then
			triggerEvent('Add Camera Zoom', 0.04,0.05)

			if curBeat % 2 == 0 then
				angleshit = anglevar;
			else
				angleshit = -anglevar;
			end
			setProperty('camHUD.angle',angleshit*3)
			setProperty('camGame.angle',angleshit*3)
			doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
			doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'cubicOut')
			doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
		else
			setProperty('camHUD.angle',0)
			setProperty('camHUD.x',0)
			setProperty('camHUD.x',0)
		end
	end

end 

function onStephit()
	
	if curBeat > 63 then
		if curBeat < 128 then
			if curStep % 4 == 0 then
				doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'cubicOut')
				doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'cubicIn')
			end
			if curStep % 4 == 2 then
				doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'cubicIn')
				doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'cubicIn')
			end
		end
	end
	
	if curBeat > 159 then
		if curBeat < 192 then
			if curStep % 4 == 0 then
				doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'cubicOut')
				doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'cubicIn')
			end
			if curStep % 4 == 2 then
				doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'cubicIn')
				doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'cubicIn')
			end
		end
	end

	if curBeat > 223 then
		if curBeat < 280 then
			if curStep % 4 == 0 then
				doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'cubicOut')
				doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'cubicIn')
			end
			if curStep % 4 == 2 then
				doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'cubicIn')
				doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'cubicIn')
			end
		end
	end

end

function onUpdate(elapsed) 
	local currentBeat = (SongPos / 1000)*(bpm/60)
		for i=0,7 do
		setActorY(defaultStrum0Y + 10 * math.pi)
	end
	

end