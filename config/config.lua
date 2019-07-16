Config = {}

	--clear the chat client sided
	Config.ClientUnlock = 19 --default 19 (left alt)
	Config.ClientClear = 264 --default 264 (Q)
	
	--clear the chat server sided
	Config.EnableServerClear = true --change to true to allow admins to clear the chat for everyone
	Config.ServerUnlock = 19 --the same as above for client clear
	Config.ServerClear = 269 --default 269 (S)
	Config.NoPermissions = "You have no permissions to use this!" --message for people trying to use server side chat clear.
	Config.UseMythicNotify = false --change to true to use Mythoc Notify as message system. You will need to install this: https://forum.fivem.net/t/dev-resource-mythic-notifications/587071 to use it.
	