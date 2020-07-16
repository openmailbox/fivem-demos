local function create(data)
    local coords = data.coords
    SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, false)
end
RegisterNetEvent(Events.CREATE_TELEPORT)
AddEventHandler(Events.CREATE_TELEPORT, create)
