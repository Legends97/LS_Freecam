--[[
██╗     ███████╗ ██████╗ ███████╗███╗   ██╗██████╗ ███████╗
██║     ██╔════╝██╔════╝ ██╔════╝████╗  ██║██╔══██╗██╔════╝
██║     █████╗  ██║  ███╗█████╗  ██╔██╗ ██║██║  ██║███████╗
██║     ██╔══╝  ██║   ██║██╔══╝  ██║╚██╗██║██║  ██║╚════██║
███████╗███████╗╚██████╔╝███████╗██║ ╚████║██████╔╝███████║
╚══════╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
]]

local function isPlayerAllowed(source)
        -- Prüfe ob source gültig ist
        if not source or source == 0 then
            print("[LS_Freecam] FEHLER: Ungültiger Spieler source")
            return false
        end
    
        -- Sicherer Identifiers-Abruf
        local identifiers
        local success, err = pcall(function()
            identifiers = GetPlayerIdentifiers(source)
        end)
    
        if not success or not identifiers then
            print("[LS_Freecam] FEHLER: Identifiers konnten nicht abgerufen werden:", err)
            return false
        end
    
        -- Whitelist-Check
        for _, allowedID in ipairs(Config.AllowedSteamIDs) do
            for _, playerID in ipairs(identifiers) do
                if playerID == allowedID then
                    print("[LS_Freecam] Zugriff gewährt für:", playerID)
                    return true
                end
            end
        end
    
        print("[LS_Freecam] Keine passende Steam-ID gefunden für Spieler", source)
        return false
    end
    
    -- Event-Handler mit Error-Protection
    RegisterNetEvent('LS_Freecam:CheckPermission')
    AddEventHandler('LS_Freecam:CheckPermission', function()
        local _source = source
        local allowed = isPlayerAllowed(_source)
        TriggerClientEvent('LS_Freecam:PermissionResult', _source, allowed)
    end)
    
    print("[LS_Freecam] Server-Script geladen. Whitelist-Einträge:", #Config.AllowedSteamIDs)