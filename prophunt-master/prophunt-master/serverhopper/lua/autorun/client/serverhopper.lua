----------------------------------
--			Hel Coding			--
----------------------------------

--	Name of your community
community_name 				= "Aurora Entertainment Network"

--	Names for each of the servers

ppopname 					= {"Aurora DarkRP", "Aurora TTT", "Aurora ZRP"}
	
--	Serverip:port   in same order as the names
ppopip 						= { "play.auroraen.com:27015", "play.auroraen.com:27016", "162.248.94.77:27015"} 

--	Console Command to bring up hopper menu
hopper_console_command 		= "serverhopper" 

-- Bind a key to open menu
hopperkey 					= KEY_F6
-- Colour of the top bar of hopper		Color(red,green,blue,transparency)
hoppertopbarcolor 			= Color(50,50,50,255) --Color(50,50,50,255) 

-- Colour of the background of hopper    Color(red,green,blue,transparency)
hopperbackgroundcolor		= Color(255,255,255,255)--Color(10,10,10,255)

-- Groups that ignore max players (reserved spots)
reservedgroups 				= {"superadmin", "sweg"}
-----------------------------------------------------------



if CLIENT then

hook.Add( "Think", "hopperkeylistener", function()
    if  input.IsKeyDown( hopperkey )and (Frame == nil || !Frame:IsVisible()) then
		openhopper()
    end
end )


	net.Receive( "hopperopen", function( len, pl )

			openhopper()
	end)

	local Framesize = (table.Count(ppopip) * 30 + 25 + (table.Count(ppopip)))

	if (Framesize >= 335) then 
		hopperframe = 335 
	else 
		hopperframe = Framesize
	end

concommand.Add(hopper_console_command, openhopper)

function openhopper(ply)
ply = LocalPlayer()

	Frame = vgui.Create( "DFrame" )
	Frame:SetPos( 5, 5 ) 
	Frame:SetSize( 485, hopperframe) 
	Frame:SetTitle( community_name .. ": Server Hopper" ) 
	Frame:SetVisible( true )
	Frame:Center()
	Frame:SetDraggable( true ) 
	Frame:ShowCloseButton( true )
	Frame:MakePopup() 
	Frame:SetBackgroundBlur(true)
	Frame.Paint = function()
		draw.RoundedBox( 5, 0, 3, Frame:GetWide(), 22, hoppertopbarcolor )
	end

	
	local DPanellst = vgui.Create( "DScrollPanel" )
	DPanellst:SetPos( 0 ,25 )
	DPanellst:SetSize( 485, 310)
	DPanellst:SetParent(Frame)
	local scrollb = DPanellst:GetVBar()
	function scrollb:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(50, 50, 50))
	end
	function scrollb.btnUp:Paint(w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(150, 150, 150))
	end
	function scrollb.btnDown:Paint(w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(150, 150, 150))
	end
	function scrollb.btnGrip:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(100, 100, 100))
	end
				
		for v, k in pairs (ppopip) do
			--Pull info from Gametracker--
			local url = Format("http://www.gametracker.com/server_info/%s", k)
			http.Fetch(url, function(body, length, headers, code)
			list.name = tostring(body:match("Name:.-<b>(.-)</b>"))
			list.players_max = tonumber(body:match("<span id=\"HTML_max_players\">(.-)</span>") or "") or -1
			list.players = tonumber(body:match("<span id=\"HTML_num_players\">(.-)</span>") or "") or -1
			list.map = tostring(body:match("id=\"HTML_curr_map\">(.-)</div>"))
			nodotsmap =  string.Trim(list.map)
			
				if DPanellst:Valid() then
				local DPanel = vgui.Create( "DPanel" )
				DPanel:SetPos( 0 , ((30 * v) -30))
				DPanel:SetSize( 485, 30)
				DPanellst:AddItem( DPanel )
			
				DPanel:SetBackgroundColor( hopperbackgroundcolor )
				--Draw Button on server list--
			
				local DButton = vgui.Create( "DButton" )
				DButton:SetPos( 2 , 2 )
				DButton:SetText( table.concat(ppopname,"",v, v ))
				DButton:SetSize( 120, 25 )
				DButton:SetParent(DPanel)
				DButton.DoClick = function()
					LocalPlayer():ConCommand("connect " .. k)
				end

				--Draw players on server list--
				local DLabel = vgui.Create( "DLabel", DPanel )
				DLabel:SetPos( 350, 15 ) 
				DLabel:SetText("Players: ".. list.players.. "/" ..list.players_max )
				DLabel:SizeToContents() 
				--DLabel:SetDark( 1 )
				DLabel:SetTextColor( Color(0,204,0 ) ) -- added this in 
			
				if list.players == list.players_max and !table.HasValue(reservedgroups, ply:GetUserGroup()) then
					DLabel:SetTextColor( Color(255,0,0 ) )
					DButton:SetDisabled(true)
				end
				if list.players < list.players_max then
					DLabel:SetTextColor( Color(0,255,0 ) )
					DButton:SetDisabled(false)
				end
				--Draw map on server list--
				local DLabelmap = vgui.Create( "DLabel", DPanel )
				DLabelmap:SetPos( 130, 5 ) 
				DLabelmap:SetText( nodotsmap) 
				DLabelmap:SizeToContents() 
				DLabelmap:SetTextColor( Color(23,139,255 ) )
			
				--Draw ip on server list--
				local DLabelip = vgui.Create( "DLabel", DPanel )
				DLabelip:SetPos( 350, 3 ) 
				DLabelip:SetText(k)
				DLabelip:SizeToContents() 
				DLabelip:SetTextColor( Color(0,0,0 ) )
				end
			end)
		end
	end
end


	
