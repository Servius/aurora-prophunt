local function timeToStr1( time )
	local tmp = time
	local s = tmp % 60
	tmp = math.floor( tmp / 60 )
	local m = tmp % 60
	tmp = math.floor( tmp / 60 )
	local h = tmp % 24
	tmp = math.floor( tmp / 24 )
	local d = tmp % 7
	local w = math.floor( tmp / 7 )

	return string.format( "%02iw %id %02ih %02im %02is", w, d, h, m, s )
end


function ulx.time( calling_ply, target_ply )

	time = timeToStr1( target_ply:GetUTimeTotalTime() )
	ulx.fancyLog( {calling_ply}, "The total playing of #T is #s", target_ply, time )
	
end
local time = ulx.command( "Utility", "ulx time", ulx.time, "!time", true )
time:addParam{ type=ULib.cmds.PlayerArg }
time:defaultAccess( ULib.ACCESS_SUPERADMIN )
time:help( "Gets the player's total playing time." )