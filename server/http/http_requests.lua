
RegisterNetEvent("CreatePlayer")
AddEventHandler("CreatePlayer", function(user_id, person_type_id, steam_id) 

    local http_data = {
        user_id        = user_id,
        person_type_id = person_type_id,
        steam_id       = steam_id,
        source         = source
    }
    
    HttpPost("/Person/CreatePlayer", json.encode(http_data), function(error_code, result_data, result_headers) 
    
        -- TODO

    end)

end)

RegisterNetEvent("CreateCharacter")
AddEventHandler("CreateCharacter", function()


end)