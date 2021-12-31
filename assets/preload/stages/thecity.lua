local angleshit = 1;
local anglevar = 1;
local xx = 1090;
local yy = 300;
local xx2 = 1800;
local yy2 = 300;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	
	makeLuaSprite('theSky','citysky',-1000,-700)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('theSky', 0.3, 0.5);

	makeLuaSprite('theShine','shine',-1000,-700)
	addLuaSprite('theShine',false)
	setLuaSpriteScrollFactor('theShine', 0.3, 0.5);

	makeLuaSprite('theCity','background city',-1800,-500)
	addLuaSprite('theCity',false)
	setLuaSpriteScrollFactor('theCity', 0.3, 0.5);

	makeLuaSprite('theLines','power line',-1200,-700)
	addLuaSprite('theLines',false)
	setLuaSpriteScrollFactor('theLines', 0.5, 0.7);

	makeAnimatedLuaSprite('theSparks','chispas',-400,-300)
	addAnimationByPrefix('theSparks','bounce','chispas',24,true)
	addLuaSprite('theSparks',false)
	setLuaSpriteScrollFactor('theSparks', 0.5, 0.7);
	
	makeLuaSprite('theGround','building',-1200,500)
	addLuaSprite('theGround',false)

	makeLuaSprite('theCords','powerline front',-1100,-1200)
	addLuaSprite('theCords',true)
	setLuaSpriteScrollFactor('theCords', 0.6, 0.8);
	
	

	
	

	
	
	

end

function onBeatHit()
		
	
	
	if curBeat > 63 then
		if curBeat < 128 then
			

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

function onUpdate()
	
	if curBeat > 31 then
		if curBeat < 201 then
			health = getProperty('health')
			if getProperty ('health') > 0.05 then
				setProperty ('health', health-0.0005);
			end
		end
	end

	if curBeat > 194 then
		if curBeat < 196 then
			health = getProperty('health')
			if getProperty ('health') > 0.1 then
				setProperty ('health', health-0.020);
			end
		end	
	end

	if curBeat > 204 then
		health = getProperty('health')
			if getProperty ('health') > 0.05 then
				setProperty ('health', health-0.0005);
			end
	end
	
	
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.4)
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
			if getProperty('dad.animation.curAnim.name') == 'danceLeft' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'danceRight' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
		else
			triggerEvent('Camera Follow Pos','','')
		end
    end


	if followchars == true then
        if mustHitSection == true then
            setProperty('defaultCamZoom',0.4)
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
		else
			triggerEvent('Camera Follow Pos','','')
		end
    end

end