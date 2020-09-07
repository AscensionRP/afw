

function create_character(player_id, firstname, lastname, dob)

    TriggerServerEvent("CreateCharacter", player_id, firstname, lastname, dob)

end



RegisterNetEvent("CreateCharacter:Response")
AddEventHandler("CreateCharacter:Response", function()



end)



function get_all_characters(player_id)

    TriggerServerEvent("GetAllCharacters", player_id)

end


RegisterNetEvent("GetAllCharacters:Response")
AddEventHandler("GetAllCharacters:Response", function()



end)