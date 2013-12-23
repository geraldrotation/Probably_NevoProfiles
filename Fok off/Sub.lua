-- ProbablyEngine Rotation Packager
-- Custom Subtlety Rogue Rotation
-- Created on Dec 16th 2013 2:32 am
ProbablyEngine.rotation.register_custom(261, "~|cFFC41F3BNevoSub|r~", {


{"recuperate",{
	"!target.alive",
	"player.combopoints <= 3",
	"player.buff(slice and dice).duration > 24"
}},


{"slice and dice", {
	"!target.alive",
	"player.combopoints >= 2",
	"player.buff(slice and dice).duration <= 18"
}},

{ "Redirect", (function() return canRED("Player","Target") end)},

-- Feint stuff

{ "Feint", {
"!player.buff(Feint)",
"toggle.feint",
"player.heath <= 75",
 }},


--Enrage dispells 
{ "Shiv", "target.dispellable(Shiv)", "target" }, --such wow
-- CHANGE THIS TO SHIV AND PLAY AROUND WIT IT DOE


--AoE
{"crimson tempest", {
"modifier.multitarget",
"player.combopoints = 5",
"target.debuff(crimson tempest).duration <= 2",
}},
  
{"Fan of knives", {
"modifier.multitarget",
"!player.spell(114015).exists", --Anticipation
"player.combopoints <= 4",
}},

{"Fan of knives", {
"modifier.multitarget",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count <= 4", --Anticipation buff
}},


---- Hotkey bindings. + Random shit im not organised you little bitch dont judge me
{"Cloak of shadows", "modifier.lshift"},
{"Dismantle", "modifier.lcontrol"},
{"Smoke bomb", "modifier.lalt"},

-- Tricks of the trade focus target shit.
{ "Tricks of the Trade", {"focus.exists", "focus" }},


--Something l0l
  --HEALTHSTONES CODE.
  {"#5512", "player.health <= 45"},


--Other stuff i guess
{"Marked for death", {
"player.combopoints = 0",
"player.spell(Marked for death).exists",
}},

{"slice and dice", {
"player.buff(slice and dice).duration <= 3",
"player.combopoints >= 3",
}},


----if u see shit repeated its either not repeated or because im fucking with the ordering.


-- With anticipation
{"Rupture", {
"target.debuff(Rupture).duration <= 3",
"target.debuff(Garrote).duration <= 3",
"player.spell(114015).exists", --Anticipation
"player.combopoints = 5",
}},

{"Eviscerate", {
"@Nevo.Evis()",
"player.buff(115189).count >= 4", --Anticipation buff
"target.debuff(find weakness)",
"!player.buff(115192)", --subterfuge
--"!player.buff(Shadow dance)",
"player.combopoints = 5",
}},


{"Eviscerate", {
"@Nevo.Evis()",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count >= 4", --Anticipation buff
"!player.buff(115192)", --subterfuge
"player.combopoints = 5",
}},

--Without anticipation
{"Rupture", {
"target.debuff(Rupture).duration <= 3",
"target.debuff(Garrote).duration <= 3",
"!player.spell(114015).exists", --Anticipation
"player.combopoints = 5",
}},

{"Eviscerate", {
"@Nevo.Evis()",
"!player.spell(114015).exists", --Anticipation
"!player.buff(115192)", --subterfuge
"player.combopoints = 5",
}},


----------------------------------------------
-- Cooldown related stuff
{"Shadow blades", {
"modifier.cooldowns",
"target.range <= 5",
"!player.spell(Shadow dance).cooldown <= 12 ",
"!player.buff(Shadow dance)"
}},

{"#gloves"},


{"Preparation", {
"modifier.cooldown",
"!player.buff(Vanish)",
"!Player.buff(Shadow dance)",
"player.spell(Vanish).cooldown > 60",
}},


{"Shadow dance", {
"modifier.cooldowns",
"player.energy >= 70",
"target.range <= 5",
"!player.buff(Stealth)",
"!player.buff(Vanish)",
"target.debuff(Find weakness).duration <= 3",
}},


{"Shadow dance", {
"modifier.cooldowns",
"player.energy >= 70",
"target.range <= 5",
"!player.buff(Stealth)",
"!player.buff(Vanish)",
"player.buff(master of subtlety)",
"target.debuff(Find weakness).duration <= 7.3",
}},

{"Vanish", {
"modifier.cooldowns",
"toggle.vanish",
"player.energy >= 55",
"target.debuff(Rupture)",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count <= 4", --Anticipation buff
"player.spell(shadow dance).cooldown >= 4",
"!player.buff(shadow dance)",
"!player.buff(master of subtlety)",
"target.debuff(Find weakness).duration <= 2",
}},

--without anticipation
{"Vanish", {
"modifier.cooldowns",
"toggle.vanish",
"!player.spell(114015).exists", --Anticipation
"player.energy >= 55",
"player.combopoints <= 3",
"player.spell(shadow dance).cooldown >= 4",
"!player.buff(shadow dance)",
"!player.buff(master of subtlety)",
"target.debuff(Find weakness).duration <= 2",
}},

--In Combat

{"Premeditation", {
"player.spell(114015).exists", -- Anticipation talent
"player.buff(115189).count <= 3" --Anticipation buff
}},


{"Premeditation", {
"!player.spell(114015).exists", -- Anticipation talent
"player.combopoints <= 3"
}},

{"Ambush", {
"@Nevo.Ambush",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count <= 3", --Anticipation buff
}},

{"Ambush", {
"@Nevo.Ambush",
"!player.spell(114015).exists", --Anticipation
"player.combopoints <= 4", --Anticipation buff
}},

{"Ambush", {
"@Nevo.Ambush",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count >= 3", --Anticipation buff
"player.combopoints < 5",
}},


{"Hemorrhage", "target.debuff(Hemorrhage).duration <= 0.5"},

--With anticipation
{"Backstab", {
"@Nevo.BackStab()",
"!player.buff(shadow dance)",
"!player.buff(115192)",
"player.behind",
"!player.buff(Vanish)",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count < 4", --Anticipation buff
}},


{"Hemorrhage", {
"@Nevo.Hemo()",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count < 4", --Anticipation buff
"!player.behind"
}},

--Without anticipation
{"Backstab", {
"@Nevo.BackStab()",
"!player.buff(shadow dance)",
"!player.buff(115192)",
"player.behind",
"!player.buff(Vanish)",
"!player.spell(114015).exists", --Anticipation
"player.combopoints <= 4",
}},


{"Hemorrhage", {
"@Nevo.Hemo()",
"!player.behind",
"!player.spell(114015).exists", --Anticipation
"player.combopoints <= 4",
}},

--5CP no CP glitch
{"Backstab", {
"@Nevo.BackStab()",
"!player.buff(shadow dance)",
"!player.buff(115192)",
"player.behind",
"!player.buff(Vanish)",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count >= 4", --Anticipation buff
"player.combopoints < 5",
}},


{"Hemorrhage", {
"@Nevo.Hemo()",
"player.spell(114015).exists", --Anticipation
"player.buff(115189).count >= 4", --Anticipation buff
"player.combopoints < 5",
"!player.behind"
}},



--{"Expose Armor", "target.debuff(Weakened armor).duration <= 3.5"},


},
---OOC HERE
{

{"703", "!target.debuff(Rupture)"},


{"Ambush"}, --{
--"target.debuff(Garrote)",
--}},

--{"Ambush", {
--"target.debuff(Rupture)",
--}},

{"Deadly poison", {
"!last(deadly poison)",
"!player.buff(Deadly poison)",
}},




},
 function()
 ProbablyEngine.toggle.create('feint', 'Interface\\Icons\\ability_rogue_feint','Feint','Enable or Disable use of feint')
 ProbablyEngine.toggle.create('vanish', 'Interface\\Icons\\ability_vanish','Vanish','Enable or Disable use of Vanish')	  
 end)