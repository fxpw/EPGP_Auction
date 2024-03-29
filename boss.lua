local mod = EPGP:NewModule("boss", "AceEvent-3.0", "AceTimer-3.0")
local Debug = LibStub("LibDebug-1.0")
local L = LibStub("AceLocale-3.0"):GetLocale("EPGP")
local timer
local in_combat = false
local award_queue = {}

local function IsRLorML()
  if UnitInRaid("player") then
    local loot_method, ml_party_id, ml_raid_id = GetLootMethod()
    if loot_method == "master" and ml_party_id == 0 then return true end
    if loot_method ~= "master" and IsRaidLeader() then return true end
  end
  return false
end

function mod:PopAwardQueue(event_name)
  if in_combat then return end
  Debug("PopAwardQueue stage 1: %s", event_name)

  if #award_queue == 0 then
    if timer then
      self:CancelTimer(timer, true)
      timer = nil
    end
    return
  end
  Debug("PopAwardQueue stage 2: %s", event_name)

  if StaticPopup_Visible("EPGP_BOSS_DEAD") or
     StaticPopup_Visible("EPGP_BOSS_ATTEMPT") then
    return
  end

  Debug("PopAwardQueue stage 3: %s", event_name)

  local boss_name = table.remove(award_queue, 1)
    Debug("PopAwardQueue stage 4: %s %s", event_name, boss_name)
  local dialog
  if event_name == "kill" or event_name == "BossKilled" then
    Debug("PopAwardQueue: display Popup for %s %s", event_name, boss_name)
    dialog = StaticPopup_Show("EPGP_BOSS_DEAD", boss_name)
  elseif event_name == "wipe" and mod.db.profile.wipedetection then
    dialog = StaticPopup_Show("EPGP_BOSS_ATTEMPT", boss_name)
  end

  if dialog then
    dialog.reason = boss_name
  end
end

local function BossAttempt(event_name, boss_name)
  Debug("Boss attempt: %s %s", event_name, boss_name)
  -- Temporary fix since we cannot unregister DBM callbacks
  if not mod:IsEnabled() then return end

  if CanEditOfficerNote() and IsRLorML() then
    tinsert(award_queue, boss_name)
    if not timer then
      Debug("Calling PopAwardQueue: %s %s", event_name, boss_name)
      timer = mod:ScheduleRepeatingTimer("PopAwardQueue", 0.1, event_name)
    end
  end
end

function mod:PLAYER_REGEN_DISABLED()
  in_combat = true
end

function mod:PLAYER_REGEN_ENABLED()
  in_combat = false
end

function mod:DebugTest()
  BossKilled("BossKilled", "Sapphiron")
end

mod.dbDefaults = {
  profile = {
    enabled = false,
    wipedetection = false,
  },
}

mod.optionsName = L["Boss"]
mod.optionsDesc = L["Automatic boss tracking"]
mod.optionsArgs = {
  help = {
    order = 1,
    type = "description",
    name = L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."]
  },
  wipedetection = {
    type = "toggle",
    name = L["Wipe awards"],
    desc = L["Awards for wipes on bosses. Requires Deadly Boss Mods or BigWigs"],
    order = 2,
    disabled = function(v) return not DBM end,
  },
}

local function dbmCallback(event, mod)
  return BossAttempt(event, mod.combatInfo.name)
end

function chatMsgAddon(event, prefix, message, type, sender)
  if prefix ~= "BigWigs" then return end

  local sync, rest = select(3, message:find("(%S+)%s*(.*)$"))

  if sync ~= "Death" then return end

  Debug("chatMsgAddon: %s %s %s", prefix, sync, rest)
  BossAttempt("kill", rest)
end

function mod:OnEnable()
  self:RegisterEvent("PLAYER_REGEN_DISABLED")
  self:RegisterEvent("PLAYER_REGEN_ENABLED")
  if DBM then
    EPGP:Print(L["Using %s for boss kill tracking"], "DBM")
    DBM:RegisterCallback("kill", dbmCallback)
    DBM:RegisterCallback("wipe", dbmCallback)
  elseif BigWigs then
    EPGP:Print(L["Using %s for boss kill tracking"], "BigWigs")
    self:RegisterEvent("CHAT_MSG_ADDON", chatMsgAddon)
  end
end
