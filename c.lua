ESX = nil
Citizen.CreateThread(function()
	-- Joueur
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)

--[[
	Default = -1,
	White = 0,
	Blue = 1,
	Electric_Blue = 2,
	Mint_Green = 3,
	Lime_Green = 4,
	Yellow = 5,
	Golden_Shower = 6,
	Orange = 7,
	Red = 8,
	Pony_Pink = 9,
	Hot_Pink = 10,
	Purple = 11,
	Blacklight = 12
]]

RegisterNetEvent('itemrgb')
AddEventHandler('itemrgb', function(Model) 


	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'itemrgb', {
		css = 'Hollidays', 
		title= "Phare RGB", 
		align = 'right', 
		elements = {
			{ label='Classique', value = -1 },
			{ label='Blanc', value = 0 },
			{ label='Bleu', value = 1 },
			{ label='Bleu Electrique', value = 2 },
			{ label='Vert Menthe', value = 3 },
			{ label='Vert Citron', value = 4 },
			{ label='Jaune', value = 5 },
			{ label='Golden Shower', value = 6 },
			{ label='Orange', value = 7 },
			{ label='Rouge', value = 8 },
			{ label='Rose Poney', value = 9 },
			{ label='Rose Petant', value = 10 },
			{ label='Violet', value = 11 },
			{ label='Lumiere Noire', value = 12 },
		
		}
	}, 	function(data, menu)
		
		print(data.current.value)
		local veh = GetVehiclePedIsUsing(PlayerPedId())
		ToggleVehicleMod(veh, 22, true) 
		SetVehicleHeadlightsColour(veh, data.current.value)

	end,

	function(data, menu) menu.close() end)

end)





