local name, private = ...
_G[name] = private

local function U1GetCfgValue(name, key)
    return _163BuffValues[key]
end

--[[------------------------------------------------------------
--隐藏姓名版上的Debuff图标
---------------------------------------------------------------]]
local hookNamePlates = function(frame)
    if(frame and frame.UnitFrame and not frame.UnitFrame.UpdateBuffs_o) then
        frame.UnitFrame.BuffFrame.UpdateBuffs_o = frame.UnitFrame.BuffFrame.UpdateBuffs
        frame.UnitFrame.BuffFrame.UpdateBuffs = function(self, unit, filter)
            if U1GetCfgValue(name, "hideNameplateDebuff") then
                return self:UpdateBuffs_o(unit, "NONE")
            else
                return self:UpdateBuffs_o(unit, filter)
            end
        end
    end
end

function Buff163_StartHookNamePlates()
    CoreOnEvent("NAME_PLATE_CREATED", function(event, ...)
        local frame = ...;
        hookNamePlates(...)
    end)
    for i = 1, 40 do
        hookNamePlates(_G["NamePlate"..(i)])
    end
end