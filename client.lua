
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if IsControlPressed(0, Config.ClientUnlock--[[default 19: left alt--]]) and IsControlJustPressed(0, Config.ClientClear--[[default 264: Q--]]) then
			TriggerEvent("chat:clear")
			if Config.UsehbNotify == true and Config.UseMythicNotify == false then
				TriggerEvent("hb_notifications:display", "top-middle", Config.ChatClientClear, "rgb(252, 3, 3)" , 5000)
			elseif Config.UseMythicNotify == true and Config.UsehbNotify == false then
				exports['mythic_notify']:DoHudText('error', Config.ChatClientClear)
			elseif Config.UsehbNotify == true and Config.UseMythicNotify == true then
				TriggerEvent('chat:addMessage', { args = { "^8^*"..Config.Author, Config.Errorconfigs }, color = 0,0,0 })
			end
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

RegisterNetEvent("MessageAfterServerClear")
AddEventHandler("MessageAfterServerClear", function()
	if Config.UsehbNotify == true and Config.UseMythicNotify == false then
		TriggerEvent("hb_notifications:display", "top-middle", Config.ChatServerClear, "rgb(252, 3, 3)" , 5000)
	elseif Config.UseMythicNotify == true and Config.UsehbNotify == false then
		exports['mythic_notify']:DoHudText('error', Config.ChatServerClear)
	elseif Config.UsehbNotify == true and Config.UseMythicNotify == true then
		TriggerEvent('chat:addMessage', { args = { "^8^*"..Config.Author, Config.Errorconfigs }, color = 0,0,0 })
	end
end)

RegisterNetEvent("NoPermissions")
AddEventHandler("NoPermissions", function()
	if Config.UseMythicNotify == true and Config.UsehbNotify == false then
		exports['mythic_notify']:DoHudText('error', Config.NoPermissions)
	elseif Config.UsehbNotify == true and Config.UseMythicNotify == false then
		TriggerEvent("hb_notifications:display", "top-middle", Config.NoPermissions, "rgb(252, 3, 3)" , 5000)
	elseif Config.UsehbNotify == true and Config.UseMythicNotify == true then
		TriggerEvent('chat:addMessage', { args = { "^8^*"..Config.Author, Config.Errorconfigs }, color = 0,0,0 })
	else
		TriggerEvent('chat:addMessage', { args = { "^8^*"..Config.Author, Config.NoPermissions }, color = 0,0,0 })
	end
end)
