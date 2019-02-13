local L = LibStub("AceLocale-3.0"):NewLocale("Acheron", "deDE")
if not L then return end

-- config strings

L["config"] = "Konfiguration"
L["Toggle the Configuration Dialog"] = "Konfigurationsdialog Anzeigen/Ausblenden"

L["show"] = true
L["Show Acheron Death Reports"] = "Zeige Archeron Todesreport"

L["Hint"] = "\n\n|cffafa4ffLeft-click|r |cffffffffto show reports|r\n|cffafa4ffRight-click|r |cffffffffto show config|r"

L["General"] = "Allgemein"
L["Enable"] = "Aktivieren"
L["Enable or disable data collection"] = "De-/Aktivieren des Datensammelns"
L["History"] = "Verlauf"
L["The amount of history, in seconds, of combat log to keep per report"] = true
L["Number of Reports"] = "Anzahl Reporte"
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

L["Display"] = "Anzeige"
L["Font Size"] = "Schriftgröße"
L["The font size of the death report entries"] = "Schriftgröße von Todeseinträgen im Report"
L["Timeline to Show"] = true
L["If the main UI is displayed without a specific player chosen, display the last this number of death reports"] = true

L["Profile: %s"] = "Profil: %s"

-- combat log strings

L["Melee"] = "Schlag"
L["Environment"] = "Umgebung"
L["Unknown"] = "Unbekannt"
L["Death"] = "Tod"
L["Dodge"] = "Ausweichen"
L["Parry"] = "Parieren"
L["Miss"] = "Verfehlen"
L["Resist"] = "Wiederstanden"

-- report strings

L["Filter"] = true
L["Show"] = true
L["Time to Show"] = "Zu zeigender Zeitraum"
L["Amount to Show >"] = "Zu zeigende Menge >"
L["Damage"] = true
L["Healing"] = true
L["Buffs"] = true
L["Debuffs"] = true

L["Report"] = true
L["Report To"] = "Report an"
L["Whisper To"] = "Flüstern an"
L["Absolute Health"] = true

L["Clear"] = true
L["Clear All"] = "Alles löschen"
L["Ctrl-left-click a line in the combat log to report.\nAlt-left-click a line to report just that line."]  = true

L["say"] = "Sagen"
L["party"] = "Gruppe"
L["raid"] = "Schlachtzug"
L["guild"] = "Gilde"
L["officer"] = "Offizier"
L["whisper"] = "Flüstern"

L["Acheron: %s [%s]"] = "Archeron: %s [%s]"
L["Acheron: No whisper target"] = "Archeron: Kein Ziel zum anflüstern"
L["Acheron: Whisper target is not a player"] = "Archeron: Ziel zum anflüstern ist kein Spieler"
L["Acheron: You are not in a party"] = "Archeron: Ihr seid in keiner Gruppe"
L["Acheron: You are not in a raid"] = "Archeron: Ihr seid in keinem Schlachtzug"
L["Acheron: You are not in a guild"] = "Archeron: Ihr seid in keiner Gilde"
L["Acheron: No such channel: %s"] = "Archeron: Es existiert kein Channel: %s"

L["Ctrl-left-click to report from this point.\nAlt-left-click to report just this line."] = true
L["Critical"] = "Kritisch"
L["Crushing"] = "Schmetternd"
