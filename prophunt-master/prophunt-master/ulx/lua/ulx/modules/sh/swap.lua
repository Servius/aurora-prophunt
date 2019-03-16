function ulx.forceswap( calling_ply, target_ply )
    if target_ply:Team() == TEAM_PROPS then
        target_ply:Kill()
        target_ply:SetTeam(TEAM_HUNTERS)
    elseif target_ply:Team() == TEAM_HUNTERS then
        target_ply:Kill()
        target_ply:SetTeam(TEAM_PROPS)
    end
    ulx.fancyLogAdmin( calling_ply, "#A has forced #T to switch teams.", target_ply )
end

local forceswap = ulx.command( CATEGORY_NAME, "ulx forceswap", ulx.forceswap, "!forceswap" )
forceswap:defaultAccess( ULib.ACCESS_ADMIN )
forceswap:addParam{ type=ULib.cmds.PlayerArg }
forceswap:help( "Swaps a players team" )
