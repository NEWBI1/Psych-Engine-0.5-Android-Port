local angleshit = 1;
local anglevar = 1;

function onCreate()
	
	makeLuaSprite('theSky','bsky',-1200,-700)
	addLuaSprite('theSky',false)
	
	makeAnimatedLuaSprite('theSun','sun bop',-100,-50)
	addAnimationByPrefix('theSun','bounce','sun bop',24,false)
	setLuaSpriteScrollFactor('theSun', 0.1, 0.2);
	addLuaSprite('theSun',false)
	

	
	

	makeLuaSprite('theGround','bground',-1100,300)
	addLuaSprite('theGround',false)
	

	makeAnimatedLuaSprite('theCookie','bcookie ppl',-700,-50)
	addAnimationByPrefix('theCookie','bounce','bcookie ppl',24,false)
	addLuaSprite('theCookie',false)
	
	

end

function onBeatHit()
	if curBeat < 352 then
		objectPlayAnimation('theCookie','bounce',true)	
		if curBeat % 2 == 0 then
			objectPlayAnimation('theSun','bounce',true)
		end
	end
	
	if curBeat > 31 then
		if curBeat < 352 then
			triggerEvent('Add Camera Zoom', 0.04,0.05)

			if curBeat % 2 == 0 then
				angleshit = anglevar;
			else
				angleshit = -anglevar;
			end
			setProperty('camHUG.angle',angleshit*2)
			setProperty('camGame.angle',angleshit*2)
			doTweenAngle('turn', 'camHUG', angleshit, stepCrochet*0.002, 'circOut')
			doTweenX('tuin', 'camHUG', -angleshit*4, crochet*0.001, 'linear')
			doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
			doTweenX('ttrn', 'camGame', -angleshit*4, crochet*0.001, 'linear')
		else
			setProperty('camHUD.angle',0)
			setProperty('camHUD.x',0)
			setProperty('camHUD.x',0)
		end
	end

	
end 

function onStephit()
	
	if curBeat > 31 then
		if curBeat < 352 then
			if curStep % 4 == 0 then
				doTweenY('rrr', 'camHUG', -6, stepCrochet*0.002, 'circOut')
				doTweenY('rtr', 'camGame.scroll', 6, stepCrochet*0.002, 'sineIn')
			end
			if curStep % 4 == 2 then
				doTweenY('rir', 'camHUG', 0, stepCrochet*0.002, 'sineIn')
				doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
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