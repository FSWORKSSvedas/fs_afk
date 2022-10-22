Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if Config.Warn and time == math.ceil(Config.Timer - 60) then
						Config.Notify(Config.Notifications['4min'], 'info')
					end	
					if Config.Warn and time == math.ceil(Config.Timer - 180) then
						Config.Notify(Config.Notifications['2min'], 'info')
					end			
					if Config.Warn and time == math.ceil(Config.Timer - 240) then
						Config.Notify(Config.Notifications['1min'], 'info')
					end					


					time = time - 1
				else
					TriggerServerEvent("KickPlayer")
				end
			else
				time = Config.Timer
			end

			prevPos = currentPos
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		TriggerServerEvent("CheckPlayerPing")
	end
end)



-- LT: Neliesti -- EN: Don't touch
RegisterNetEvent('fs_afk:sendNotification')
AddEventHandler('fs_afk:sendNotification', function(msg, type)
    Config.Notify(msg, type)
end)