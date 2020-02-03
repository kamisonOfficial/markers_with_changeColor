local markery = {
-- posX | posY | posZ | type | size | R == 252 | G == 3 | B == 3
createMarker(1671.939453125,-1700.8427734375,20.483444213867-0.9,"cylinder",1.5,252,3,3),
createMarker(1671.939453125,-1703.8427734375,20.483444213867-0.9,"cylinder",1.5,252,3,3),
createMarker(1671.939453125,-1706.8427734375,20.483444213867-0.9,"cylinder",1.5,252,3,3),
createMarker(1671.939453125,-1709.8427734375,20.483444213867-0.9,"cylinder",1.5,252,3,3),
createMarker(1671.939453125,-1712.8427734375,20.483444213867-0.9,"cylinder",1.5,252,3,3),
}

setTimer (function()
	for k,v in pairs (markery) do
		r,g,b,a = getMarkerColor (v)
			if r == 252 and g ~= 251 and b == 3 then
			setMarkerColor (v,r,g+4,b,255)
			
			elseif r > 4 and g == 251 and b == 3 then
			setMarkerColor (v,r-4,g,b,255)
			
			elseif r == 4 and g == 251 and b ~= 247 then
			setMarkerColor (v,r,g,b+4,255)
			
			elseif r == 4 and g ~= 3 and b == 247 then
			setMarkerColor (v,r,g-4,b,255)
			
			elseif r ~= 252 and g ~= 7 and b == 247 then
			setMarkerColor (v,r+4,g,b,255)
			
			elseif r ~= 252 and g ~= 7 and b == 247 then
			setMarkerColor (v,r+4,g,b,255)

			elseif r == 252 and g ~= 7 and b ~= 3 then
			setMarkerColor (v,r,g,b-4,255)
			end
	end
end,50,0)
