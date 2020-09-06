
local base_service_url = ""
local service_header   = {}


local function Http(method, endpoint, data, callback)

    local data = data or ''
    PerformHttpRequest(base_service_url .. endpoint, callback, 'GET', data, service_header)

end

function HttpGet(endpoint, data, callback)
    Http('GET', endpoint, json.encode(data), callback)
end

function HttpPost(endpoint, data, callback)
    Http('POST', endpoint, json.encode(data), callback)
end

function HttpPut(endpoint, data)
    Http('PUT', endpoint, json.encode(data), function() end)
end

Citizen.CreateThread(function()

    Citizen.Wait(0)
    base_service_url = GetConvar("ascension_service", "")

end)