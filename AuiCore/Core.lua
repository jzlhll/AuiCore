local AddonName, AddonTable = ...
local Addon = LibStub('AceAddon-3.0'):NewAddon(AddonTable, AddonName)
--allan-- 是否激活【施法延迟时间文字】
Addon.Enables = {}
Addon.Enables.CDT = true

--allan-- 是否激活【队友着色】
Addon.Enables.FriendColor = true

--allan-- 是否激活声望增强（声望满了以后直接显示数字）
Addon.Enables.ReputationPlus = true
