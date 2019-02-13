local L = LibStub("AceLocale-3.0"):NewLocale("Acheron", "koKR")
if not L then return end

-- config strings

L["config"] = "설정"
L["Toggle the Configuration Dialog"] = "설정창을 엽니다."

L["show"] = "보기"
L["Show Acheron Death Reports"] = "Acheron 죽음 보고서 보기"

L["Hint"] = "\n\n|cffafa4ff좌-클릭|r |cffffffff 보고서 보기|r\n|cffafa4ff우-클릭|r |cffffffff 설정 보기|r"

L["General"] = "일반"
L["Enable"] = "활성화"
L["Enable or disable data collection"] = "자료 수집을 활성화 또는 비활성화 합니다."
L["History"] = "기록"
L["The amount of history, in seconds, of combat log to keep per report"] = "전투 로그에서 보고서에 기록할 초를 설정합니다."
L["Number of Reports"] = "보고서 수"
L["The total number of death reports to keep, 0 for no limit"] = "죽음 보고서에 기록할 총 수, 0은 제한이 없습니다."
L["Clear Acheron When Joining Party/Raid"] = "파티/공격대에 참여시 Acheron 삭제"
L["Clear Acheron when joining party/raid (will confirm first if Confirm Clear is checked)"] = "파티/공격대에 참여시 Acheron 삭제합니다 (확인 삭제가 체크되어 있으면 가장 먼저 확인합니다)"
L["Confirm Clear"] = "확인 삭제"
L["Confirm before clearing any/all Acheron death reports"] = "어떤/모든 Acheron 죽음 보고서를 지우기전에 확인합니다."
L["Clear Acheron?"] = "Acheron을 삭제하겠습니까?"
L["Clear Acheron for %s?"] = "%에 대한 Acheron을 삭제하겠습니까?"
L["Yes"] = "예"
L["No"] = "아니요"
L["Disable in PvP"] = "PvP 시 비활성화"
L["Automatically disables Acheron when entering a PvP zone"] = "PvP 지역 입장시 Acheron을 자동적으로 비활성화"
--L["Log Level"] = "레벨 기록"
--L["Determines the amount of output from the addon"] = "애드온으로부터 출력할 량을 결정합니다."

L["Enable White List"] = "허용 목록 활성화"
L["When the white list is enabled, only auras on the white list will be tracked."] = "허용 목록 활성화시, 허용 목록에 오오라만 추적됩니다."
L["Enable Black List"] = "차단 목록 활성화"
L["When the black list is enabled, any auras on the black list will not be tracked."] = "차단 목록 활성화시, 차단 목록에 어떤 오오라는 추적되지 않습니다."
L["Auras"] = "오오라"
L["Aura"] = "오오라"
L["List"] = "목록"
L["Select the desired list from the dropdown menu and enter the name of a buff or debuff to track."] = "기록된 버프 또는 디버프의 이름을 입력하거나 드롭다운 메뉴에서 원하는 목록을 선택합니다."
L["You must select the list from the dropdown menu for which to add this aura"] = "오오라에 어떤 것을 추가할지 드롭다운 메뉴에서 원하는 목록을 선택합니다."
L["You must enter a value for the aura name"] = "오오라 이름을 입력해야 합니다."
L["White List"] = "허용 목록"
L["Black List"] = "차단 목록"
L["Delete"] = "삭제"
L["Are you sure you want to delete this aura from the white list?"] = "당신은 정말로 허용 목록의 해당 오오라를 삭제하길 원합니까?"
L["Are you sure you want to delete this aura from the black list?"] = "당신은 정말로 차단 목록의 해당 오오라를 삭제하길 원합니까?"

L["Pets"] = "소환수"
L["Show Pets"] = "소환수 보기"
L["Include pets in the dropdown list of available death reports"] = "죽음 보고서의 드롭다운 목록에 소환수를 포함합니다."
L["Show Only My Pet"] = "자신의 소환수만 보기"
L["Only show your own pet in the dropdown list of available death reports"] = "죽음 보고서의 드롭다운 목록에 자신의 소환수만 포함합니다."

L["Display"] = "표시"
L["Font Size"] = "글꼴 크기"
L["The font size of the death report entries"] = "죽음 보고에 들어갈 글꼴의 크기입니다."
L["Timeline to Show"] = "타임라인 보기"
L["If the main UI is displayed without a specific player chosen, display the last this number of death reports"] = "기본 UI에서 특정 플레이어를 선택하지 않고있는 경우, 사망 보고서의 마지막 번호가 표시가 표시됩니다."

L["Profile: %s"] = "프로필: %s"

-- combat log strings

L["Melee"] = "일반"
L["Environment"] = ""
L["Unknown"] = "알수없음"
L["Death"] = "죽음"
L["Dodge"] = "회피"
L["Parry"] = "막음"
L["Miss"] = "빚맞힘"
L["Resist"] = "저항"

-- report strings

L["Filter"] = "선별"
L["Show"] = "보기"
L["Time to Show"] = "시간 표시"
L["Amount to Show >"] = "총 시간 >"
L["Damage"] = "피해"
L["Healing"] = "치유"
L["Buffs"] = "버프"
L["Debuffs"] = "디버프"

L["Report"] = "보고"
L["Report To"] = "보고 -"
L["Whisper To"] = "귓속말 -"
L["Absolute Health"] = "절대 체력"

L["Clear"] = "삭제"
L["Clear All"] = "모두 삭제"
L["Ctrl-left-click a line in the combat log to report.\nAlt-left-click a line to report just that line."] = "Ctrl-좌-클릭 : 전투 로그의 라인을 보고합니다.\nAlt-좌-클릭 : 라인에서 이 라인을 보고합니다."

L["say"] = "일반"
L["party"] = "파티"
L["raid"] = "공격대"
L["guild"] = "길드"
L["officer"] = "길드관리자"
L["whisper"] = "귓속말"


L["Acheron: %s [%s]"] = "Acheron: %s [%s]"
L["Acheron: No whisper target"] = "Acheron: 귓속말 대상이 없습니다."
L["Acheron: Whisper target is not a player"] = "Acheron: 귓속말 대상이 플레이어가 아닙니다."
L["Acheron: You are not in a party"] = "Acheron: 당신은 파티에 속해 있지 않습니다."
L["Acheron: You are not in a raid"] = "Acheron: 당신은 공격대에 속해 있지 않습니다."
L["Acheron: You are not in a guild"] = "Acheron: 당신은 길드에 속해 있지 않습니다."
L["Acheron: No such channel: %s"] = "Acheron: 해당 채널이 없습니다: %s"

L["Ctrl-left-click to report from this point.\nAlt-left-click to report just this line."] = "Ctrl-좌-클릭 : 이 지점에서 보고합니다.\nAlt-좌-클릭 : 이 라인에서 보고합니다."
L["Critical"] = "치명타"
L["Crushing"] = "강타"

-- log levels

L["NONE"] = "비활성화"
L["ERROR"] = "오류만"
L["WARN"] = "오류와 경고"
L["INFO"] = "정보 메시지"
L["DEBUG"] = "디버그 메시지"
L["TRACE"] = "디버그 결과 메시지"
L["SPAM"] = "모두"
