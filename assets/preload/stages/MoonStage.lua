local xx = 450;
local yy = 600;
local xx2 = 1000;
local yy2 = 600;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;
local angleshit = 1;
local angleshit2 = 1;
local alpha = 1;
function onCreate()
	
	makeLuaSprite('moonsky','moonsky',-1200,-700)
	addLuaSprite('moonsky',false)

	makeLuaSprite('moon','moon',-100,-100)
	addLuaSprite('moon',false)
	setLuaSpriteScrollFactor('moon', 0.3, 0.5);

	makeLuaSprite('marshgrass','marshgrass',-1200,300)
	addLuaSprite('marshgrass',false)
	
	

end

function onBeatHit()
	




end 

function onStephit()
	


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
			setProperty('defaultCamZoom',0.5)
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