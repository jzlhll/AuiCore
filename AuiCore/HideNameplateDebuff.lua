local AddonName = ...
local Addon = LibStub('AceAddon-3.0'):GetAddon(AddonName)

if Addon.Enables.HideNameplateDebuffIcon then
    local C = Addon:NewModule("HideNameplateDebuffMod", 'AceEvent-3.0')

    local hookNamePlates = function(frame)
        if(frame and frame.UnitFrame and not frame.UnitFrame.UpdateBuffs_o) then
            frame.UnitFrame.BuffFrame.UpdateBuffs_o = frame.UnitFrame.BuffFrame.UpdateBuffs
            frame.UnitFrame.BuffFrame.UpdateBuffs = function(self, unit, filter)
                return self:UpdateBuffs_o(unit, "NONE")
            end
        end
    end

    function C:OnEnable()
        self:RegisterEvent("NAME_PLATE_CREATED")
        for i = 1, 40 do
            hookNamePlates(_G["NamePlate"..(i)])
        end
    end

    -- Disabling modules unregisters all events/hook automatically
    --function C:OnDisable()
    --end

    function C:NAME_PLATE_CREATED(event, ...)
        hookNamePlates(...)
    end

end

