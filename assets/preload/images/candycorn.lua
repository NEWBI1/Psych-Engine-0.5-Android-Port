local angleshit = 1;
local anglevar = 1;

function onCreate()
	
	makeLuaSprite('theSky','bsky',-1200,-700)
	addLuaSprite('theSky',false)
	
	makeAnimatedLuaSprite('theSun','sun bop',-100,-50)
	addAnimationByPrefix('theSun','bounce','sun bop',24,true)
	setLuaSpriteScrollFactor('theSun', 0.1, 0.2);
	addLuaSprite('theSun',false)
	

	makeLuaSprite('theClouds','bclouds bg',-700,-700)
	addLuaSprite('theClouds',false)
	setLuaSpriteScrollFactor('theClouds', 0.3, 0.5);
	

	makeLuaSprite('theGround','bground',-1100,300)
	addLuaSprite('theGround',false)
	

	makeAnimatedLuaSprite('theCookie','bcookie ppl',-700,-50)
	addAnimationByPrefix('theCookie','bounce','bcookie ppl',24,true)
	addLuaSprite('theCookie',false)
	
	

end

function onBeatHit()
	objectPlayAnimation('theCookie','bounce',true)	
	objectPlayAnimation('theSun','bounce',true)
	
	if curBeat > 63 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUG.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUG', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUG', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
	
end 

function onStephit()
	
	if curBeat > 63 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUG', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUG', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end

end

function onUpdate() 
	

end