-- Remove join/leave & death messages
AddEventHandler('chatMessage', function(author, color, message)
    if message:find("joined the game")
    or message:find("left the game")
    or message:find("killed")
    or message:find("was killed")
    then
        CancelEvent()
    end
end)

-- Completely suppress GTA notification feed without creating a black bar
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Prevent notification bar from appearing at all
        ThefeedHideThisFrame()

        -- Hide HUD notification components
        HideHudComponentThisFrame(7)   -- Wanted stars / notifications
        HideHudComponentThisFrame(9)   -- Mission text
        HideHudComponentThisFrame(10)  -- Weapon wheel info
        HideHudComponentThisFrame(11)  -- Cash changes
    end
end)
