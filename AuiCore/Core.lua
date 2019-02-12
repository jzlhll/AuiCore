local AddonName, AddonTable = ...
local Addon = LibStub('AceAddon-3.0'):NewAddon(AddonTable, AddonName)
----------------DCT----------------------------
--allan-- 是否激活【施法延迟时间文字】
Addon.Enables = {}
Addon.Enables.EnableCDT = true

-----------------DCT----------------------------
--allan-- 是否激活【队友着色】
Addon.Enables.EnableFriendColor = true