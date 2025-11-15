-- server/main.lua

RegisterCommand("login", function(source, args, rawCommand)
    TriggerClientEvent("myApp:requestLogin", source)
end)

RegisterNetEvent("myApp:processLogin")
AddEventHandler("myApp:processLogin", function(username, password)
    PerformLogin(username, password, source)
end)

function PerformLogin(username, password, playerId)
    local http = require("socket.http")
    local ltn12 = require("ltn12")

    local response_body = {}
    local res, code, response_headers, status = http.request {
        url = "https://api.dkon.app/api/v3/method/account.signIn",
        method = "POST",
        headers = {
            ["Content-Type"] = "application/json"
        },
        source = ltn12.source.string(json.encode({
            clientId = "1302",
            username = username,
            password = password
        })),
        sink = ltn12.sink.table(response_body)
    }

    local response = json.decode(table.concat(response_body))

    if not response.error and response.error_code == 0 then
        -- Successful login
        TriggerClientEvent("myApp:loginSuccess", playerId, response.accessToken, response.accountId)
    else
        -- Failed login
        TriggerClientEvent("myApp:loginFailed", playerId)
    end
end
