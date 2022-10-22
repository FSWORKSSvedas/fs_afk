RegisterServerEvent("KickPlayer")
AddEventHandler("KickPlayer", function()
	DropPlayer(source,"" .. Config.ServerName .. " \n" .. Config.AFKKickNotify .. "")
end)

RegisterServerEvent("CheckPlayerPing")
AddEventHandler("CheckPlayerPing", function()
	pingas = GetPlayerPing(source)
	if pingas >= Config.PingLimit then
		DropPlayer(source,"" .. Config.ServerName .. " \n" ..  Config.PingKickNotify .. " " .. Config.PingLimit .. " \n" .. Config.YourPingNotify .. " " .. pingas .. "")
	end
end)