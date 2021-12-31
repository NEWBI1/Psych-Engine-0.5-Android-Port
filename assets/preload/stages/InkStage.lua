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
	
	makeLuaSprite('underwater','underwater',-1200,-700)
	addLuaSprite('underwater',false)

	makeAnimatedLuaSprite('theCookie2','crewbopping',-500,1200)
	addAnimationByPrefix('theCookie2','crewbopping','crewbopping',24,false)
	addLuaSprite('theCookie2',true)


	

	makeAnimatedLuaSprite('theCookie','cookiesforink',-450,200)
	addAnimationByPrefix('theCookie','backgroundforink','backgroundforink',24,false)
	addLuaSprite('theCookie',false)
	


end

function onBeatHit()
	objectPlayAnimation('theCookie','backgroundforink',true)	
	
	if curBeat % 2 == 0 then
		objectPlayAnimation('theCookie2','crewbopping',true)
	end





end 

function onStephit()
	


end

function onUpdate() 
	
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

	
	if curBeat > 167 then
		doTweenAngle('tuin', 'theCookie2', angleshit2*-500, stepCrochet*0.002, 'circOut')
		doTweenY('tuin', 'theCookie2', -angleshit2*-500, crochet*0.001, 'linear')
	end

	if curBeat < 136 then
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

	if curBeat > 135 then
    	if followchars == true then
    	    if mustHitSection == false then
    	        setProperty('defaultCamZoom',0.9)
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
        	    setProperty('defaultCamZoom',0.9)
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

	if curBeat > 167 then
    	if followchars == true then
    	    if mustHitSection == false then
    	        setProperty('defaultCamZoom',0.6)
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
end