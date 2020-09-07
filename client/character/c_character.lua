
local player_characters = {}
local character = {}


function get_character_id()

    return character["character_id"]

end


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
AddEventHandler("GetAllCharacters:Response", function(characters)

    player_characters = json.decode(characters)

end)



function load_character(character_id)

    TriggerServerEvent("GetCharacterInfo", character_id)

end

RegisterNetEvent("GetCharacterInfo:Response")
AddEventHandler("GetCharacterInfo:Response", function(characters)

    character = json.decode(characters)
    set_character_health(character["health"])
    set_character_position(character["position"])

end)