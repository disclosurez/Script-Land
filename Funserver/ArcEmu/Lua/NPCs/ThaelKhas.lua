{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}}
{\*\generator Msftedit 5.41.15.1515;}\viewkind4\uc1\pard\f0\fs20 function ThaelKhas_PowerWordFortitude(Unit, Event)\par
Unit:CastSpellOnTarget(48161, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ShadowBolt(Unit, Event)\par
Unit:FullCastSpellOnTarget(47809, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ArcaneMissiles(Unit, Event)\par
Unit:FullCastSpellOnTarget(42846, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_FrostNova(Unit, Event)\par
Unit:FullCastSpellOnTarget(42917, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_PyroBlast(Unit, Event)\par
Unit:FullCastSpellOnTarget(42891, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_RainofFire(Unit, Event)\par
Unit:FullCastSpellOnTarget(47820, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ArcaneExplosion(Unit, Event)\par
Unit:FullCastSpellOnTarget(42921, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_GreaterHeal(Unit, Event)\par
Unit:CastSpellOnTarget(48063, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_Summon(Unit, Event)\par
local x = Unit:GetX();\par
local y = Unit:GetY();\par
local z = Unit:GetZ();\par
local o = Unit:GetO();\par
Unit:SpawnCreature (95000, x, y, z, o, 14 ,60000);\par
end\par
\par
function ThaelKhas_OnCombat(unit)\par
unit:SendChatMessage(14, 0, "You will be killed by me. The leader of The Unholy Might!")\par
unit:RegisterEvent("ThaelKhas_PowerWordFortitude", 4500, 0)\par
unit:RegisterEvent("ThaelKhas_ShadowBolt",8500, 0)\par
unit:RegisterEvent("ThaelKhas_ArcaneMissiles",1100 0, 0)\par
unit:RegisterEvent("ThaelKhas_FrostNova",6700, 0)\par
unit:RegisterEvent("ThaelKhas_PyroBlast",15000, 0)\par
unit:RegisterEvent("ThaelKhas_RainofFire",17000, 0) \par
unit:RegisterEvent("ThaelKhas_ArcaneExplosion",100 00, 0)\par
unit:RegisterEvent("ThaelKhas_GreaterHeal",45000, 0)\par
Unit:RegisterEvent("ThaelKhas_Summon", 60000, 10)\par
Unit:RegisterEvent("ThaelKhas_Phase1", 5000, 1)\par
end\par
\par
function ThaelKhas_PowerWordFortitude(Unit, Event)\par
Unit:CastSpellOnTarget(48161, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ShadowBolt(Unit, Event)\par
Unit:FullCastSpellOnTarget(47809, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ArcaneMissiles(Unit, Event)\par
Unit:FullCastSpellOnTarget(42846, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_FrostNova(Unit, Event)\par
Unit:FullCastSpellOnTarget(42917, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_PyroBlast(Unit, Event)\par
Unit:FullCastSpellOnTarget(42891, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_RainofFire(Unit, Event)\par
Unit:FullCastSpellOnTarget(47820, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_ArcaneExplosion(Unit, Event)\par
Unit:FullCastSpellOnTarget(42921, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_GreaterHeal(Unit, Event)\par
Unit:CastSpellOnTarget(48063, Unit:GetMainTank())\par
end\par
\par
function ThaelKhas_Summon(Unit, Event)\par
local x = Unit:GetX();\par
local y = Unit:GetY();\par
local z = Unit:GetZ();\par
local o = Unit:GetO();\par
Unit:SpawnCreature (95001, x, y, z, o, 14 ,60000);\par
end\par
\par
function ThaelKhas_Phase1(Unit, Event)\par
if Unit:GetHealthPct() <= 75 then\par
Unit:SetModel(21135)\par
Unit:SetScale(1)\par
Unit:SendChatMessage(14, 0, "Grr... You made me angry!")\par
Unit:CastSpell(27082)\par
unit:RegisterEvent("ThaelKhas_PowerWordFortitude", 5600, 0)\par
unit:RegisterEvent("ThaelKhas_ShadowBolt",11000, 0)\par
unit:RegisterEvent("ThaelKhas_ArcaneMissiles",1500 0, 0)\par
unit:RegisterEvent("ThaelKhas_FrostNova",17800, 0)\par
unit:RegisterEvent("ThaelKhas_PyroBlast",22000, 0)\par
unit:RegisterEvent("ThaelKhas_RainofFire",34000, 0) \par
unit:RegisterEvent("ThaelKhas_ArcaneExplosion",130 00, 0)\par
unit:RegisterEvent("ThaelKhas_GreaterHeal",450000, 0)\par
Unit:RegisterEvent("ThaelKhas_Summon", 60000, 10)\par
end\par
end\par
\par
function ThaelKhas_OnLeaveCombat(unit)\par
unit:RemoveEvents()\par
end\par
\par
function ThaelKhas_OnKilledTarget(unit)\par
unit:SendChatMessage(14, 0, "What.. did i s..ay, you lose.. No one here in the land can beat ME!!!")\par
unit:RemoveEvents()\par
end\par
\par
function ThaelKhas_OnDeath(unit)\par
Unit:SendChatMessage(14,0, "You.. killed Thael'Kas... The leader of The Unholy Might! I will come back! I WILL COME BACK!")\par
unit:RemoveEvents()\par
end\par
\par
\par
\par
RegisterUnitEvent(700001, 1, "ThaelKhas_OnCombat")\par
RegisterUnitEvent(700001, 2, "ThaelKhas_OnLeaveCombat")\par
RegisterUnitEvent(700001, 3, "ThaelKhas_OnKilledTarget")\par
RegisterUnitEvent(700001, 4, "ThaelKhas_OnDeath")\par
}
 