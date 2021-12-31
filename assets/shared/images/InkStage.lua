function onCreate()
	
	
	


	

	makeAnimatedLuaSprite('theCookie','backgroundforink',-600,-50)
	addAnimationByPrefix('theCookie','bounce','cookiesforink',24,true)
	addLuaSprite('theCookie',false)
	


end

function onBeatHit()
	objectPlayAnimation('theCookie','bounce',true)	
	

end 

function onStephit()
	

end

function onUpdate() 
	

end