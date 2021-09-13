RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    TriggerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)


RegisterNetEvent('nh-context:sendMenu', function(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end)

function CreateNewMenu(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end

RegisterCommand('testmenu', function(source)
    exports['kn_menu']:CreateNewMenu({
        {
            id = 1,
            header = "Cloakroom",
            txt = ""
        },
        {
            id = 2,
            header = "Civilan Clothes",
            txt = "Get back into your clothes",
            params = {
                event = "kn:weazel:citizen",
                args = {
                    
                }
            }
        },
        {
            id = 3,
            header = "Reporter Clothes",
            txt = "Get into your uniform",
            params = {
                event = "kn:weazel:change",
                args = {
                    
                }
            }
        }
    })
end)
