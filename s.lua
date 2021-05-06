
ESX  = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('rgb', function(source) TriggerClientEvent('itemrgb', source) end)