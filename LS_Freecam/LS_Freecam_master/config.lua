--[[
██╗     ███████╗ ██████╗ ███████╗███╗   ██╗██████╗ ███████╗
██║     ██╔════╝██╔════╝ ██╔════╝████╗  ██║██╔══██╗██╔════╝
██║     █████╗  ██║  ███╗█████╗  ██╔██╗ ██║██║  ██║███████╗
██║     ██╔══╝  ██║   ██║██╔══╝  ██║╚██╗██║██║  ██║╚════██║
███████╗███████╗╚██████╔╝███████╗██║ ╚████║██████╔╝███████║
╚══════╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
]]

Config = {
    Ranges = {
        alive = 50.0,    -- 50m wenn lebendig
        dead = 500.0     -- 500m wenn tot
    },
    ActivationCommand = "freecam",
    
    -- OPTIONAL: Nur wenn du die Whitelist zentral verwalten willst
    AllowedSteamIDs = {
        "steam:11000014b87ca12", -- Twitch.tv/legends_l97
        "steam:110000187654321"  -- Backup-ID
    },
-- NEUE GESCHWINDIGKEITEN
Speed = {
    normal = 0.05,  -- Standard-Geschwindigkeit
    turbo = 1.5     -- Geschwindigkeit mit Shift
}
}