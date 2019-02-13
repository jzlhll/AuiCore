local AddonName, AddonTable = ...
local Addon = LibStub('AceAddon-3.0'):NewAddon(AddonTable, AddonName)
Addon.Enables = {}
--au0-- 是否激活【施法延迟时间文字】 附加图片TODO
Addon.Enables.CDT = true --au0
Addon.Enables.CDTEnabls = {}
--【施法延迟时间文字】是否启用
Addon.Enables.CDTEnabls.enable = Addon.Enables.CDT
--au1-- 【施法延迟时间文字】显示倒计时还是显示正计时/总计时，当前%s1 
Addon.Enables.CDTEnabls.showremain = false --au1

--au0-- 是否激活【队友着色】 附加图片TODO
Addon.Enables.FriendColor = true --au0

--au0-- 是否激活声望增强（声望满了以后直接显示数字进度） 附加图片TODO
Addon.Enables.ReputationPlus = true --au0

--au0-- 是否隐藏姓名版上的Debuff图标（比如你使用WA或者NamePlateAuras等插件，实现了血条上显示目标的Debuff图标） 附加图片TODO
Addon.Enables.HideNameplateDebuffIcon = false --au0