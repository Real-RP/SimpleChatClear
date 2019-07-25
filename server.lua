
RegisterServerEvent("ClearServerChat")
AddEventHandler("ClearServerChat", function()
	local _source = source

		TriggerEvent("getPermissions", _source)
end)

RegisterServerEvent("getPermissions")
AddEventHandler("getPermissions", function(_source)
	if IsPlayerAceAllowed(_source, "ServerChatClear.cmds") then
		TriggerClientEvent("chat:clear", -1)
		TriggerClientEvent("MessageAfterServerClear", _source)
	elseif not IsPlayerAceAllowed(_source, "ServerChatClear.cmds") then
		TriggerClientEvent("NoPermissions", _source)
	end
end)
