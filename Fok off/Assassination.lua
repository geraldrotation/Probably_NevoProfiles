
ProbablyEngine.rotation.register_custom(259, "~|cFFC41F3BNevoAssassin|r~", {



  {"Cloak of shadows", "modifier.lshift"},
  
  {"Redirect", "modifier.lcontrol"},
  
  {"Smoke bomb", "modifier.lalt"},


 {"14185", { --Prep
 "modifier.cooldowns",
 "!player.buff(11327)", --vanish buff
 "player.spell(1856).cooldown > 60", -- Vanish
 }},
 
 {"1856", { --Vanish
 "modifier.cooldowns",
 "!player.buff(1784)", --Stealth
 "!player.buff(121471)", --Shadow Blades
 "player.spell(121741).cooldown < 5",
 "target.range <= 5",
 }},
 
 {"121471", {
 "modifier.cooldowns",
 "target.range <= 5",
 }}, --Shadow blades
 
 {"5171", "!player.buff(5171)"}, --Slice and dice
 
 {"111240", { --dispatch
 "target.debuff(1943).duration <= 2", --rupture
 "player.energy > 90",
 }},

 {"1329", { --muti
 "target.debuff(1943).duration <= 2",
 "player.energy > 90",
 }},
 
 {"137619", { --MFD
 "player.spell(137619).exists",
 "player.combopoints = 0",
 }},
 
 {"1943", { --rupture
 "target.debuff(1943).duration <= 4.25",
 "player.combopoints = 5",
 }},
 
 {"1943", {
 "target.debuff(1943).duration <= 1.5",
 "player.combopoints >= 2",
 }}, --Rupture
 
 {"51723", { --FoK
 "player.combopoints < 5",
 "modifier.multitarget",
 }},
 
 {"79140", { --Vendetta
 "modifier.cooldowns",
 "target.range <= 5",
 }},
 
 {"envenom", { --envenom
 "player.spell(114015).exists", --anticipation 
 "player.buff(115189).count >= 4", --anticipation buff
 "player.combopoints = 5",
 }},

 {"envenom", { --envenom
 "!player.spell(114015).exists",
 "player.combopoints > 4",
 }},
 
 {"envenom", { --envenom
 "player.combopoints >= 2",
 "player.buff(5171).duration <= 2",
 }},
 
 {"envenom", {
 "target.debuff(Vendetta)",
 "player.combopoints = 5"
 }},

 
  {"111240", { --dispatch
 "player.spell(114015).exists", --anticipation
 "player.buff(115189).count <= 4",--anticipation
 }},
 
 {"111240", { --dispatch
 "!player.spell(114015).exists",
 "player.combopoints < 5",
 }},
 
 {"1329", {
 "player.spell(114015).exists", --anticipation
 "player.buff(115189).count <= 4",--anticipation
 }},
 
 {"1329", {
 "!player.spell(114015).exists",
 "player.combopoints < 5",
 }},
 
 {"111240", { --dispatch
 "player.spell(114015).exists", --anticipation
 "player.buff(115189).count <= 4",--anticipation
 }},
 
 {"111240", { --dispatch
 "!player.spell(114015).exists",
 "player.combopoints < 5",
 }},
 
 
 
},

{ --OOC

{"2823", "player.buff(2823).duration <= 600"}, --Deadly poison


--{"1329", "player.buff(11327)"}, -- Mutilate if vanishbuff.
{"1329"},
}

)