
RegisterServerEvent("ClearServerChat")
AddEventHandler("ClearServerChat", function()
	local _source = source

		TriggerEvent("getPermissions", _source)
end)

RegisterServerEvent("getPermissions")
AddEventHandler("getPermissions", function(_source)
	if IsPlayerAceAllowed(_source, "ServerChatClear.cmds") then
		TriggerClientEvent("chat:clear", -1)
	elseif not IsPlayerAceAllowed(_source, "ServerChatClear.cmds") then
		TriggerClientEvent("NoPermissions", _source)
	else
		TriggerClientEvent("chatMessage", _source, "^1SYSTEM: Something went wrong, please make sure that everything is setted up properly")
	end
end)