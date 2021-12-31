local xx = 350;
local yy = 550;
local xx2 = 900;
local yy2 = 600;
local ofs = 37;
local followchars = true;
function onCreate()
	
	makeLuaSprite('theSky','sky',-700,-700)
	addLuaSprite('theSky',false)
	

	makeLuaSprite('theClouds','clouds bg',-700,-700)
	addLuaSprite('theClouds',false)
	setLuaSpriteScrollFactor('theClouds', 0.3, 0.5);
	

	makeLuaSprite('theGround','ground',-700,300)
	addLuaSprite('theGround',false)
	

	makeAnimatedLuaSprite('theCookie','cookie ppl',-600,-50)
	addAnimationByPrefix('theCookie','bounce','cookie ppl',24,false)
	addLuaSprite('theCookie',false)
	


end

function onBeatHit()
	
	
	if curBeat < 47 then
		if curBeat % 2 == 0 then
			objectPlayAnimation('theCookie','bounce',true)	
		end
	end

	if curBeat > 47 then
		objectPlayAnimation('theCookie','bounce',true)
	end

	if curBeat < 175 then
		if curBeat > 243 then
			if curBeat % 2 == 0 then
				objectPlayAnimation('theCookie','bounce',true)	
			end
		end
	end


end 

function onStephit()
	

end

function onUpdate() 
	
	if curBeat < 175 then
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
				if getProperty('dad.animation.curAnim.name') == 'hey' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
		
			end
		end
		if followchars == true then
			if mustHitSection == true then
				setProperty('defaultCamZoom',0.7)
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

	if curBeat > 237 then
		setProperty('defaultCamZoom',0.6)
	end	
	if curBeat > 238 then
		setProperty('defaultCamZoom',0.7)
	end	
	if curBeat > 239 then
		setProperty('defaultCamZoom',0.8)
	end	
	if curBeat > 240 then
		setProperty('defaultCamZoom',0.9)
	end	
	if curBeat > 241 then
		setProperty('defaultCamZoom',1.0)
	end	
	if curBeat > 242 then
		setProperty('defaultCamZoom',1.1)
	end	
	if curBeat > 243 then
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
				if getProperty('dad.animation.curAnim.name') == 'hey' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
		
			end
		end
		if followchars == true then
			if mustHitSection == true then
				setProperty('defaultCamZoom',0.7)
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

	if curBeat > 307 then
		setProperty('defaultCamZoom',0.9)
	end	
end