
ProbablyEngine.rotation.register_custom(260, "~|cFFC41F3BNevoCombat|r~", {




--Testing github m8 swaglord 420



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




{"Blade flurry", {
  "toggle.blade",
  "!player.buff(blade flurry)",
  --"player.spell(blade flurry).cooldown <= 11"
}},

{ "/cancelaura Blade Flurry", {
  "!toggle.blade",
  "player.buff(blade flurry)",
}},

 -- Poison in combat should it ever fall
 { "Deadly Poison", {
  "player.alive",
  "!player.buff(Deadly Poison)"
 }},
   
-- MODIFIERS

{"Cloak of shadows", "modifier.lshift"},  
{ "Redirect", (function() return canRED("Player","Target") end)},

--{"Blade Flurry", "modifier.lshift"},
{"Smoke bomb", "modifier.lalt"},  
--{"/run ProbablyEngine.buttons.toggle('blade')", "modifier.lcontrol"},
{ "Shiv", "target.dispellable(Shiv)", "target" },
 --HEALTHSTONES CODE.
 {"#5512", "player.health <= 45"},
 
 -- Tricks of the trade focus target shit.
{ "Tricks of the Trade", {"focus.exists", "focus" }},


  --AoE JK you dont do this your combat (Blade flurry is manual)
  {"crimson tempest", {
  "modifier.multitarget",
  "player.combopoints = 5",
  "target.debuff(crimson tempest).duration <= 2",
  }},
  
  {"Fan of knives", {
  "modifier.multitarget",
  "player.combopoints < 5"
  }},
  
  -- Shanking things.
  
  {"Preparation", {
  "!player.buff(Vanish)",
  "player.spell(Vanish).cooldown >= 60 ",
  }},
  
  {"Expose Armor", { "target.debuff(Weakened armor).duration <= 2", "toggle.Expose"}},
  
  {"#gloves"},
  
  {"Blood fury", "player.buff(Shadow blades)"},
  
  {"berserking", "player.buff(Shadow blades)"},
  
  {"Arcane torrent", "player.energy < 60"},
  
  {"Ambush"},
  
  {"Vanish", {
  "modifier.cooldowns",
  "player.combopoints < 3",
  "toggle.vanish",
  "!player.buff(adrenaline rush)",
  "player.energy >= 30",
  "player.buff(moderate insight)"
  }},
  
  {"Vanish", {

  "modifier.cooldowns",
  "toggle.vanish",
  "player.combopoints < 3",
  "!player.buff(adrenaline rush)",
  "player.energy >= 30",
  "player.buff(deep insight)"
  }},
  
    {"Vanish", {
  "player.spell(114015).exists", --Anticipation
  "player.buff(115189).count <= 3", --Anticipation buff
  "modifier.cooldowns",
  "toggle.vanish",
  "player.combopoints < 3",
  "!player.buff(adrenaline rush)",
  "player.energy >= 30",
  "player.buff(moderate insight)"
  }},
  
  {"Vanish", {
  "player.spell(114015).exists", --Anticipation
  "player.buff(115189).count <= 3", --Anticipation buff
  "modifier.cooldowns",
  "player.combopoints < 3",
  "toggle.vanish",
  "!player.buff(adrenaline rush)",
  "player.energy >= 30",
  "player.buff(deep insight)"
  }},

  
  
  {"Killing spree", {
  "modifier.cooldowns",
  "player.energy < 35",
  "!player.buff (adrenaline rush)",
  "!player.buff (Shadow blades)",
  }},
  
  
  {"Shadow blades", {
  "modifier.cooldowns",
  "player.spell(killing spree).cooldown > 30"
  }},
  
  
  
  {"Adrenaline rush", {
  "player.buff(Shadow blades)",
  "modifier.cooldowns"
  }},
  
  {{
{"#trinket1"},
{"#trinket2"},
},{
"player.buff(adrenaline rush)",
}},
  
  {"slice and dice", {
  "player.buff(slice and dice).duration <= 2.5",
  "player.combopoints >= 2"
  }},
  
  {"Marked for death", {
  "player.combopoints = 0",
  "target.debuff(revealing strike).duration > 2"
  }},
  
  {"Revealing strike", "target.debuff(revealing strike).duration <= 0.5"},
  
  {"Sinister strike", {
  "!player.spell(114015).exists",
  "player.combopoints <= 4",
  }},
  
  {"Sinister strike", {
  "player.spell(114015).exists", --Anticipation
  "player.buff(115189).count <= 4", --Anticipation buff
  }},
  
  {"Sinister strike", {
  "player.spell(114015).exists", --Anticipation
  "player.combopoints < 5"
  }},
  
  -- actions+=/run_action_list,name=finisher,if=   !talent.anticipation.enabled   |   buff.deep_insight.up  |  cooldown.shadow_blades.remains<=11  |  anticipation_charges>=4  |  (buff.shadow_blades.up&anticipation_charges>=3)

   
 {"rupture", {
 "!player.buff(Blade flurry)",
 "toggle.rupture",
 "!player.buff(13750)",
 "!player.buff(2825)",
 "!player.buff(80353)",
 "!player.buff(13877)",
 "!player.buff(32182)",
 "!modifier.multitarget",
 "target.debuff(rupture).duration <= 2.5",
 "player.combopoints = 5"
 }},
 
  {"Eviscerate", {
 "!player.spell(114015).exists", --Anticipation
 "player.combopoints = 5"
 }},
 
 {"Eviscerate", {
 "player.spell(114015).exists", --Anticipation
 "player.buff(Deep Insight)",
 "player.combopoints = 5"
 }},
 
 {"Eviscerate", {
 "player.spell(114015).exists", --Anticipation
 "player.combopoints = 5",
 "player.spell(Shadow blades).cooldown <= 11"
 }},
 
 {"Eviscerate", {
 "player.spell(114015).exists", --Anticipation
 "player.buff(Shadow blades)",
 "player.combopoints = 5",
 "player.buff(115189).count >= 3"
 }},
 
 
 {"Eviscerate", {
 "player.spell(114015).exists", --Anticipation
 "player.buff(115189).count >= 4", --Anticipation buff
 "player.combopoints = 5",
}},
  

  
  
  -- Cooldowns m8? Swear on my mums lyfe.

  
  
  }, 
  --OOC 
  {
 {"Ambush", { "target.alive"}, "target"},
   -- Poisons
  { "Deadly Poison", {
   "player.alive",
   "!player.buff(Deadly Poison)"
   }},
   
  { "Leeching Poison", "!player.buff(Leeching Poison)", "player.spell(108211).exists" },
   
   --AMBUSH FOR VANISHING AND OPENER YOU FKIN PUSSY M8
 {"Ambush", { "target.alive"}, "target"}, 

  },
 function()
-- ProbablyEngine.toggle.create('feint', 'Interface\\Icons\\ability_rogue_feint','Feint','Enable or Disable use of feint')
 ProbablyEngine.toggle.create('vanish', 'Interface\\Icons\\ability_vanish','Vanish','Enable or Disable use of Vanish') 
 ProbablyEngine.toggle.create('rupture', 'Interface\\Icons\\ability_rogue_rupture','Rupture','Enable or Disable use of Rupture')  
 ProbablyEngine.toggle.create('blade', 'Interface\\Icons\\ability_rogue_slicedice.png','Blade Flurry','Enable or Disable use of BladeFlurry') 
 ProbablyEngine.toggle.create('Expose', 'Interface\\Icons\\Ability_warrior_riposte.png','Expose armor','Enable or Disable use of Expose armor. Use this if it bugs out on nazgrim / adds ect') 
 end)