function onCreate()
	
	makeLuaSprite('theSky','sky',-700,-700)
	addLuaSprite('theSky',false)
	

	makeLuaSprite('theClouds','clouds bg',-700,-700)
	addLuaSprite('theClouds',false)
	setLuaSpriteScrollFactor('theClouds', 0.3, 0.5);
	

	makeLuaSprite('theGround','ground',-700,300)
	addLuaSprite('theGround',false)
	

	makeAnimatedLuaSprite('theCookie','cookie ppl',-600,-50)
	addAnimationByPrefix('theCookie','bounce','cookie ppl',24,true)
	addLuaSprite('theCookie',false)
	


end

function onBeatHit()
	objectPlayAnimation('theCookie','bounce',true)	
	

end 

function onStephit()
	

end

function onUpdate() 
	

end