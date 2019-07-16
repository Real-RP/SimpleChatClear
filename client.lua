
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if IsControlPressed(0, Config.ClientUnlock--[[default 19: left alt--]]) and IsControlJustPressed(0, Config.ClientClear--[[default 264: Q--]]) then
			TriggerEvent("chat:clear")
		end
	end
end)

if Config.EnableServerClear == true then

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			
			if IsControlPressed(0, Config.ServerUnlock--[[default 19: left alt--]]) and IsControlJustPressed(0, Config.ServerClear--[[default 264: Q--]]) then
				TriggerServerEvent("ClearServerChat")
			end
		end
	end)

end

RegisterNetEvent("NoPermissions")
AddEventHandler("NoPermissions", function()
	if Config.UseMythicNotify == true then
		exports['mythic_notify']:DoHudText('error', Config.NoPermissions)
	else
		TriggerEvent('chat:addMessage', { args = { "^8^*"..Config.Author, Config.NoPermissions }, color = 0,0,0 })
	end
end)
