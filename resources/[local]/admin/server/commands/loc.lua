local function cmd_loc(source, args, raw_command)
    local player_id = source
    local coords    = GetEntityCoords(GetPlayerPed(player_id))

    local x = tonumber(string.format("%.3f", coords.x))
    local y = tonumber(string.format("%.3f", coords.y))
    local z = tonumber(string.format("%.3f", coords.z))

    TriggerClientEvent("chat:addMessage", player_id, {
        color = { 255, 0, 0 },
        args  = { "[ADMIN]", "x = " .. x .. ", y = " .. y .. ", z = " .. z }
    })
end
RegisterCommand("loc", cmd_loc, true)
