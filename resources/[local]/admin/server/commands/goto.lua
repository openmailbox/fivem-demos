local function cmd_goto(source, args, raw_command)
    local player_id = source
    local x         = tonumber(args[1])
    local y         = tonumber(args[2])
    local z         = tonumber(args[3])

    if not x or not y or not z then
        TriggerClientEvent("chat:addMessage", player_id, {
            color = { 255, 0, 0 },
            args  = { "[ADMIN]", "Invalid location. Syntax: /goto <x> <y> <z>" }
        })
    else
        TriggerClientEvent(Events.CREATE_TELEPORT, player_id, { coords = vector3(x, y, z) })
        TriggerClientEvent("chat:addMessage", player_id, {
            color = { 255, 0, 0 },
            args  = { "[ADMIN]", "Moved to " .. x .. ", " .. y .. ", " .. z }
        })
    end
end
RegisterCommand("goto", cmd_goto, true)
