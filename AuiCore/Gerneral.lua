
local AddonName = ...
local Addon = LibStub('AceAddon-3.0'):GetAddon(AddonName)
--1. 好友着色
if Addon.Enables.FriendColor then
    local classes = {}
    do
        local localClass, class
        for i = 1, GetNumClasses() do
            localClass, class = GetClassInfo(i)
            classes[localClass] = class
        end
    end
    
    local pattern = "|cff%02x%02x%02x%s|r |c%s%s|r"
    
    --override function
    local levelColor = {r=1,g=0.82,b=0.2}
    local function GetCreatureDifficultyColor(level)
        return levelColor
    end
    
    hooksecurefunc("FriendsFrame_UpdateFriendButton", function(button)
        if (not button:IsShown()) then return end
        if (not button.bname) then
            button.bname = button:CreateFontString(nil, "ARTWORK", "FriendsFont_Normal")
            button.bname:SetPoint("TOPRIGHT", -52, -5)
            button.bname:SetJustifyH("RIGHT")
        end
        button.bname:SetText("")
        if (button.buttonType == FRIENDS_BUTTON_TYPE_WOW) then
            local name, level, class, _, connected = GetFriendInfo(button.id)
            if (connected) then
                local color = GetCreatureDifficultyColor(level)
                button.name:SetFormattedText(pattern, color.r*255, color.g*255, color.b*255, level, select(4,GetClassColor(classes[class])), name)
            end
        elseif (button.buttonType == FRIENDS_BUTTON_TYPE_BNET) then
            local _, accountName, _, _, _, bnetIDGameAccount, client, isOnline = BNGetFriendInfo(button.id)
            if (isOnline and client == BNET_CLIENT_WOW and bnetIDGameAccount) then
                local _, name, _, _, _, faction, _, class, _, _, level = BNGetGameAccountInfo(bnetIDGameAccount)
                local color = GetCreatureDifficultyColor(level)
                if (faction == UnitFactionGroup("player")) then
                    button.name:SetFormattedText(pattern, color.r*255, color.g*255, color.b*255, level, select(4,GetClassColor(classes[class])), name)
                    button.name:SetTextColor(1, 0.82, 0)
                else
                    button.name:SetFormattedText("|cffaaaaaa%s %s|r", level, name)
                end
                button.bname:SetFormattedText("|cff82c5ff%s|r",  accountName or UNKNOWN)
            end
        end
    end)
end
-- 好友着色

-- 2. 声望满显示数字
if Addon.Enables.ReputationPlus then
    local rpt,f=EmbeddedItemTooltip,CreateFrame('frame', "ExaltedPlusFrame") f.a=0
    local function updateParagonList()
        for k in ReputationFrame.paragonFramesPool:EnumerateActive() do if k.factionID then
               local id,n=k.factionID,GetFactionInfoByID(k.factionID) f[n]=k
               if not f[id] or f[id].n~=n then f[id]={n=n,v=C_Reputation.GetFactionParagonInfo(id)} end
           end end
    end
    f:SetScript('OnUpdate',function(s,e)
        if s.b then s.a=s.a-e else s.a=s.a+e end
        if s.a>=1 then s.a=1 s.b=true elseif s.a<=0 then s.a=0 s.b=false end
        if ReputationFrame:IsVisible() then for i=1,NUM_FACTIONS_DISPLAYED do
            if s[i] then _G['ReputationBar'..i..'ReputationBar']:SetStatusBarColor(0,1,0,s.a) end
        end end
        --if s.w then ReputationWatchBar.StatusBar:SetStatusBarColor(0,1,0,s.a) end
    end)
   
    hooksecurefunc('GameTooltip_AddQuestRewardsToTooltip',function(tip)
        if tip == rpt then
            local text = _G[tip:GetName() .. "TextLeft" .. tip:NumLines()]
            if text:GetText() == TOOLTIP_QUEST_REWARDS_STYLE_DEFAULT.headerText and f and f[rpt.factionID] then
                local c = format(ARCHAEOLOGY_COMPLETION,f[rpt.factionID].c)
                text:SetText(text:GetText() .. "  ( " .. c .. " )")
            end
        end
    end)
    hooksecurefunc('ReputationFrame_Update',function()
        updateParagonList()
        for i=1,NUM_FACTIONS_DISPLAYED do
            local n,x,r,_,m,v,row,bar,_,_,_,_,_,id=GetFactionInfo(ReputationListScrollFrame.offset+i)
            if id and f[n] and f[id] then
                v,m,_,f[i]=C_Reputation.GetFactionParagonInfo(id)
                f[id].c=f[i] and math.modf(v/m)-1 or math.modf(v/m) v=f[i] and mod(v,m)+m or mod(v,m)
                x=f[i] and CONTRIBUTION_REWARD_TOOLTIP_TITLE or GetText("FACTION_STANDING_LABEL"..r,(UnitSex('player')))..(f[id].c > 0 and "*"..f[id].c or "+")
                f[n].Check:SetShown(false)f[n].Glow:SetShown(false)f[n].Highlight:SetShown(false)f[n].Icon:SetAlpha(f[i] and 1 or .6)
                row=_G['ReputationBar'..i] row.rolloverText=' '..format(REPUTATION_PROGRESS_FORMAT,v,m) row.standingText=x
                bar=_G['ReputationBar'..i..'ReputationBar'] bar:SetMinMaxValues(0,m) bar:SetValue(v)
                _G['ReputationBar'..i..'ReputationBarFactionStanding']:SetText(x)
            else f[i]=nil end
        end
    end)
end
-- 声望