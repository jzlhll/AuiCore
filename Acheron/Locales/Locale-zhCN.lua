local L = LibStub("AceLocale-3.0"):NewLocale("Acheron", "zhCN")
if not L then return end

-- config strings

L["config"] = "设置"
L["Toggle the Configuration Dialog"] = "打开配置窗口"

L["show"] = "显示"
L["Show Acheron Death Reports"] = "显示Acheron死亡报告"

L["Hint"] = "\n\n|cffafa4ffLeft-click|r |cffffffffto show reports|r\n|cffafa4ffRight-click|r |cffffffffto show config|r"

L["General"] = "一般选项"
L["Enable"] = "启用"
L["Enable or disable data collection"] = "启用或禁用数据收集"
L["History"] = "历史"
L["The amount of history, in seconds, of combat log to keep per report"] = true
L["Number of Reports"] = "报告数量"
L["The total number of death reports to keep, 0 for no limit"] = true
L["Clear Acheron When Joining Party/Raid"] = true
L["Clear Acheron when joining party/raid (will confirm first if Confirm Clear is checked)"] = true
L["Confirm Clear"] = true
L["Confirm before clearing any/all Acheron death reports"] = true
L["Clear Acheron?"] = true
L["Clear Acheron for %s?"] = true
L["Yes"] = true
L["No"] = true
L["Disable in PvP"] = true
L["Automatically disables Acheron when entering a PvP zone"] = true

L["Enable White List"] = true
L["When the white list is enabled, only auras on the white list will be tracked."] = true
L["Enable Black List"] = true
L["When the black list is enabled, any auras on the black list will not be tracked."] = true
L["Auras"] = true
L["Aura"] = true
L["List"] = true
L["Select the desired list from the dropdown menu and enter the name of a buff or debuff to track."] = true
L["You must select the list from the dropdown menu for which to add this aura"] = true
L["You must enter a value for the aura name"] = true
L["White List"] = true
L["Black List"] = true
L["Delete"] = true
L["Are you sure you want to delete this aura from the white list?"] = true
L["Are you sure you want to delete this aura from the black list?"] = true

L["Pets"] = true
L["Show Pets"] = true
L["Include pets in the dropdown list of available death reports"] = true
L["Show Only My Pet"] = true
L["Only show your own pet in the dropdown list of available death reports"] = true

L["Display"] = "显示选项"
L["Font Size"] = "字体大小"
L["The font size of the death report entries"] = "设置死亡报告字体大小"
L["Timeline to Show"] = true
L["If the main UI is displayed without a specific player chosen, display the last this number of death reports"] = true

L["Profile: %s"] = "配置文件: %s"

-- combat log strings

L["Melee"] = "近战攻击"
L["Environment"] = "环境伤害"
L["Unknown"] = "未知"
L["Death"] = "死亡"
L["Dodge"] = "躲闪"
L["Parry"] = "招架"
L["Miss"] = "未击中"
L["Resist"] = "抵抗"

-- report strings

L["Filter"] = true
L["Show"] = "显示"
L["Time to Show"] = "时间显示"
L["Amount to Show >"] = "累计显示 >"
L["Damage"] = true
L["Healing"] = true
L["Buffs"] = true
L["Debuffs"] = true

L["Report"] = true
L["Report To"] = "输出报告到"
L["Whisper To"] = "密语给"
L["Absolute Health"] = true

L["Clear"] = true
L["Clear All"] = "清除所有"
L["Ctrl-left-click a line in the combat log to report.\nAlt-left-click a line to report just that line."]  = true

L["say"] = "说"
L["party"] = "小队"
L["raid"] = "团队"
L["guild"] = "公会"
L["officer"] = "官员"
L["whisper"] = "密语"


L["Acheron: %s [%s]"] = "Acheron: %s [%s]"
L["Acheron: No whisper target"] = "Acheron: 没有密语的目标"
L["Acheron: Whisper target is not a player"] = "Acheron: 密语目标不是一个玩家"
L["Acheron: You are not in a party"] = "Acheron: 你不在一个小队中"
L["Acheron: You are not in a raid"] = "Acheron: 你不在一个团队中"
L["Acheron: You are not in a guild"] = "Acheron: 你不在一个公会中"
L["Acheron: No such channel: %s"] = "Acheron: 没有此频道: %s"

L["Ctrl-left-click to report from this point.\nAlt-left-click to report just this line."] = true
L["Critical"] = "爆击"
L["Crushing"] = "碾压"
