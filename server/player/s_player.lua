
RegisterNetEvent("GetPlayerInfo")
AddEventHandler("GetPlayerInfo", function(session) 

    local source = source
    HttpGet("/Player/PlayerId", session, function(error_code, result_data, result_headers)

        Citizen.Trace(result_data)

    end)

end)