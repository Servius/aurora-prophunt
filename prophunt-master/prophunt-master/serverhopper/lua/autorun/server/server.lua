if SERVER then
util.AddNetworkString("hopperopen")

	function starthoppinman( pl, text )
		if (text == "!servers") or (text == "/servers") then
			net.Start("hopperopen", pl)
			net.Send(pl)
			return ""
		end
	end
	hook.Add( "PlayerSay", "starthoppinman", starthoppinman )

end