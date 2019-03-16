--[[

░█▀▀█ █░░█ █▀▀█ █▀▀█ █▀▀█ █▀▀█ 　 ▒█▀▀█ █▀▀█ █▀▀█ █▀▀█ ▒█░▒█ █░░█ █▀▀▄ ▀▀█▀▀ 
▒█▄▄█ █░░█ █▄▄▀ █░░█ █▄▄▀ █▄▄█ 　 ▒█▄▄█ █▄▄▀ █░░█ █░░█ ▒█▀▀█ █░░█ █░░█ ░░█░░ 
▒█░▒█ ░▀▀▀ ▀░▀▀ ▀▀▀▀ ▀░▀▀ ▀░░▀ 　 ▒█░░░ ▀░▀▀ ▀▀▀▀ █▀▀▀ ▒█░▒█ ░▀▀▀ ▀░░▀ ░░▀░░ 

]]

--[[ Map Content ]]--

-- Efficient Map Resource Downloads
-- If you do not understand how to add
-- new maps, please message Divine.

local mapName = game.GetMap()
local workshopMaps = {
	["ph_restaurant"] = "186139871", -- Hoping this merge request will be a big enough notification to get you(divine) to fix the issue here. The live map updated. 
	["ph_warehousev2"] = "177889282",
	["ph_islandhouse"] = "237152021",
	["ph_parkinglot"] = "277737958"
}

if workshopMaps[mapName] then
	resource.AddWorkshop(workshopMaps[mapName])
else
	resource.AddFile("maps/" .. mapName .. ".bsp")
end