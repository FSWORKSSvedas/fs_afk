Config = {}

Config.Warn = true  -- Warn Player = Notifications
Config.Timer = 300 -- Timer  5 Minutes By Default {300}
Config.PingLimit = 150 --Ping Limit
Config.ServerName = "FS WORKS" -- Put your own server name here
Config.AFKKickNotify = "Jūs buvote išmestas už tai, kad buvote AFK!" -- AFK kick notification
Config.PingKickNotify = " Per Didelis Pingas    Limitas: " -- PingLimit kick notification
Config.YourPingNotify = " Jūsų Pingas: "  -- Player Ping notification

Config.Notifications = { --Notifications
    --EN
    ['1min'] = 'You will be kicked in 1 minute for being AFK!',
    ['2min'] = 'You will be kicked in 2 minute(s) for being AFK!',
    ['4min'] = 'You have been AFK for 1 minute, in 4 more minutes you will be kicked for being AFK!',
    --LT
   -- ['1min'] = 'Už tai, kad esate AFK, būsite išmestas po 1 minutės!',
   -- ['2min'] = 'Už tai, kad esate AFK, būsite išmestas po 2 minutės!',
   -- ['4min'] = 'Jūs buvote AFK 1 minutę, dar po 4 minučių būsite išmestas už tai, kad esate AFK!',
}

Config.Notify = function(msg, type) -- Exports notifications     By default : esx:notification
ESX.ShowNotification(msg, 7000, type)
end
