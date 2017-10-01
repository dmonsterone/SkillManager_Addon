
local sword_mh = SkillManager:CreateSkillPalette('sword_mh')
sword_mh.uid = "Mesmer_sword_mh"
sword_mh.profession = GW2.CHARCLASS.Mesmer
sword_mh.icon = "sword"
-- sword_mh.id =   --> set a skill ID if you want it to download an icon for this skillset 
sword_mh.skills_luacode = {
	[10170] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0, 
		 icon = 'Mind Slash',  
	 },
	 [10171] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 10170,
		 icon = 'Mind Gash',  
	 },
	 [10172] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 10171,
		 icon = 'Mind Spike',  
	 },
	 [10334] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Blurred Frenzy',  
	 },
	 [10173] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Leap',  
	 },
	 [10337] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0, 
		 parent = 10173,
		 icon = 'Swap',  
	 },
}
function sword_mh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 10334)
end
function sword_mh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Sword or context.player.mainhand_alt == GW2.WEAPONTYPE.Sword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function sword_mh:Activate(context)
	Player:SwapWeaponSet()
end
function sword_mh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( sword_mh )



local sword_ambush_mh = SkillManager:CreateSkillPalette('sword_ambush_mh')
sword_ambush_mh.uid = "Mesmer_sword_ambush_mh"
sword_ambush_mh.profession = GW2.CHARCLASS.Mesmer
sword_ambush_mh.icon = "sword"
-- sword_ambush_mh.id =   --> set a skill ID if you want it to download an icon for this skillset 
sword_ambush_mh.skills_luacode = {
	[45230] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Mirage Thrust',  
	 },
	 [10334] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Blurred Frenzy',  
	 },
	 [10173] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Leap',  
	 },
	 [10337] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0, 
		 parent = 10173,
		 icon = 'Swap',  
	 },
}
function sword_ambush_mh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 44321)
end
function sword_ambush_mh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Sword or context.player.mainhand_alt == GW2.WEAPONTYPE.Sword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.player.buffs and context.player.buffs[40408]
end
function sword_ambush_mh:Activate(context)
	
end
function sword_ambush_mh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( sword_ambush_mh )



local sword_oh = SkillManager:CreateSkillPalette('sword_oh')
sword_oh.uid = "Mesmer_sword_oh"
sword_oh.profession = GW2.CHARCLASS.Mesmer
sword_oh.icon = "sword"
-- sword_oh.id =   --> set a skill ID if you want it to download an icon for this skillset 
sword_oh.skills_luacode = {
	[10280] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 2.25, 
		 icon = 'Illusionary Riposte',  
	 },
	 [10358] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.75, 
		 parent = 10280,
		 icon = 'Counter Blade',  
	 },
	 [10174] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 1, 
		 icon = 'Phantasmal Swordsman',  
	 },
}
function sword_oh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 10174)
end
function sword_oh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Sword or context.player.offhand_alt == GW2.WEAPONTYPE.Sword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function sword_oh:Activate(context)
	Player:SwapWeaponSet()
end
function sword_oh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( sword_oh )



local axe = SkillManager:CreateSkillPalette('axe')
axe.uid = "Mesmer_axe"
axe.profession = GW2.CHARCLASS.Mesmer
axe.icon = "axe"
-- axe.id =   --> set a skill ID if you want it to download an icon for this skillset 
axe.skills_luacode = {
	[44791] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Lacerating Chop',  
	 },
	 [44840] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 44791,
		 icon = 'Ethereal Chop',  
	 },
	 [41164] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 44840,
		 icon = 'Mirror Strikes',  
	 },
	 [45243] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Lingering Thoughts',  
	 },
	 [43761] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Axes of Symmetry',  
	 },
}
function axe:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 45243)
end
function axe:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Axe or context.player.mainhand_alt == GW2.WEAPONTYPE.Axe) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function axe:Activate(context)
	Player:SwapWeaponSet()
end
function axe:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( axe )



local axe_ambush = SkillManager:CreateSkillPalette('axe_ambush')
axe_ambush.uid = "Mesmer_axe_ambush"
axe_ambush.profession = GW2.CHARCLASS.Mesmer
axe_ambush.icon = "axe"
-- axe_ambush.id =   --> set a skill ID if you want it to download an icon for this skillset 
axe_ambush.skills_luacode = {
	[44321] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Imaginary Axes',  
	 },
	 [45243] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Lingering Thoughts',  
	 },
	 [43761] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Axes of Symmetry',  
	 },
}
function axe_ambush:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 45243)
end
function axe_ambush:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Axe or context.player.mainhand_alt == GW2.WEAPONTYPE.Axe) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.player.buffs and context.player.buffs[40408]
end
function axe_ambush:Activate(context)
	Player:SwapWeaponSet()
end
function axe_ambush:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( axe_ambush )



local greatsword = SkillManager:CreateSkillPalette('greatsword')
greatsword.uid = "Mesmer_greatsword"
greatsword.profession = GW2.CHARCLASS.Mesmer
greatsword.icon = "greatsword"
-- greatsword.id =   --> set a skill ID if you want it to download an icon for this skillset 
greatsword.skills_luacode = {
	[10219] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.0, 
		 icon = 'Spatial Surge',  
	 },
	 [10333] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Mirror Blade',  
	 },
	 [10218] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.25, 
		 icon = 'Mind Stab',  
	 },
	 [10221] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 1, 
		 icon = 'Phantasmal Berserker',  
	 },
	 [10220] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Wave',  
	 },
}
function greatsword:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 10219)
end
function greatsword:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Greatsword or context.player.mainhand_alt == GW2.WEAPONTYPE.Greatsword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function greatsword:Activate(context)
	Player:SwapWeaponSet()
end
function greatsword:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( greatsword )



local greatsword_ambush = SkillManager:CreateSkillPalette('greatsword_ambush')
greatsword_ambush.uid = "Mesmer_greatsword_ambush"
greatsword_ambush.profession = GW2.CHARCLASS.Mesmer
greatsword_ambush.icon = "greatsword"
-- greatsword_ambush.id =   --> set a skill ID if you want it to download an icon for this skillset 
greatsword_ambush.skills_luacode = {
	[44241] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 1.5, 
		 icon = 'Split Surge',  
	 },
	 [10333] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Mirror Blade',  
	 },
	 [10218] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.25, 
		 icon = 'Mind Stab',  
	 },
	 [10221] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 1, 
		 icon = 'Phantasmal Berserker',  
	 },
	 [10220] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Wave',  
	 },
}
function greatsword_ambush:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 44241)
end
function greatsword_ambush:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Greatsword or context.player.mainhand_alt == GW2.WEAPONTYPE.Greatsword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.player.buffs and context.player.buffs[40408]
end
function greatsword_ambush:Activate(context)
	Player:SwapWeaponSet()
end
function greatsword_ambush:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( greatsword_ambush )



local pistol = SkillManager:CreateSkillPalette('pistol')
pistol.uid = "Mesmer_pistol"
pistol.profession = GW2.CHARCLASS.Mesmer
pistol.icon = "pistol"
-- pistol.id =   --> set a skill ID if you want it to download an icon for this skillset 
pistol.skills_luacode = {
	[10175] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Phantasmal Duelist',  
	 },
	 [10229] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Magic Bullet',  
	 },
}
function pistol:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 10175)
end
function pistol:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Pistol or context.player.offhand_alt == GW2.WEAPONTYPE.Pistol) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function pistol:Activate(context)
	Player:SwapWeaponSet()
end
function pistol:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( pistol )



local scepter = SkillManager:CreateSkillPalette('scepter')
scepter.uid = "Mesmer_scepter"
scepter.profession = GW2.CHARCLASS.Mesmer
scepter.icon = "scepter"
-- scepter.id =   --> set a skill ID if you want it to download an icon for this skillset 
scepter.skills_luacode = {
	[10289] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Ether Bolt',  
	 },
	 [10290] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 10289,
		 icon = 'Ether Blast',  
	 },
	 [10291] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 10290,
		 icon = 'Ether Clone',  
	 },
	 [10276] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 2, 
		 icon = 'Illusionary Counter',  
	 },
	 [10314] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 parent = 10276,
		 icon = 'Counterspell',  
	 },
	 [10168] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 2, 
		 icon = 'Confusing Images',  
	 },
}
function scepter:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3].id == 10168)
end
function scepter:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Scepter or context.player.mainhand_alt == GW2.WEAPONTYPE.Scepter) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function scepter:Activate(context)
	Player:SwapWeaponSet()
end
function scepter:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( scepter )



local scepter_ambush = SkillManager:CreateSkillPalette('scepter_ambush')
scepter_ambush.uid = "Mesmer_cepter_ambush"
scepter_ambush.profession = GW2.CHARCLASS.Mesmer
scepter_ambush.icon = "scepter"
-- scepter_ambush.id =   --> set a skill ID if you want it to download an icon for this skillset 
scepter_ambush.skills_luacode = {
	[42304] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.0, 
		 icon = 'Ether Barrage',  
	 },
	 [10276] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 2, 
		 icon = 'Illusionary Counter',  
	 },
	 [10314] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 parent = 10276,
		 icon = 'Counterspell',  
	 },
	 [10168] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 2, 
		 icon = 'Confusing Images',  
	 },
}
function scepter_ambush:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 42304)
end
function scepter_ambush:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Scepter or context.player.mainhand_alt == GW2.WEAPONTYPE.Scepter) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.player.buffs and context.player.buffs[40408]
end
function scepter_ambush:Activate(context)
	Player:SwapWeaponSet()
end
function scepter_ambush:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( scepter_ambush )



local staff = SkillManager:CreateSkillPalette('staff')
staff.uid = "Mesmer_staff"
staff.profession = GW2.CHARCLASS.Mesmer
staff.icon = "staff"
-- staff.id =   --> set a skill ID if you want it to download an icon for this skillset 
staff.skills_luacode = {
	[10273] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Winds of Chaos',  
	 },
	 [10310] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0, 
		 icon = 'Phase Retreat',  
	 },
	 [10216] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Phantasmal Warlock',  
	 },
	 [10331] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Chaos Armor',  
	 },
	 [10169] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.25, 
		 icon = 'Chaos Storm',  
	 },
}
function staff:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 10273)
end
function staff:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Staff or context.player.mainhand_alt == GW2.WEAPONTYPE.Staff) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function staff:Activate(context)
	Player:SwapWeaponSet()
end
function staff:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( staff )



local staff_ambush = SkillManager:CreateSkillPalette('staff_ambush')
staff_ambush.uid = "Mesmer_staff_ambush"
staff_ambush.profession = GW2.CHARCLASS.Mesmer
staff_ambush.icon = "staff"
-- staff_ambush.id =   --> set a skill ID if you want it to download an icon for this skillset 
staff_ambush.skills_luacode = {
	[40184] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 1, 
		 icon = 'Chaos Vortex',  
	 },
	 [10310] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0, 
		 icon = 'Phase Retreat',  
	 },
	 [10216] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Phantasmal Warlock',  
	 },
	 [10331] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Chaos Armor',  
	 },
	 [10169] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.25, 
		 icon = 'Chaos Storm',  
	 },
}
function staff_ambush:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 40184)
end
function staff_ambush:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Staff or context.player.mainhand_alt == GW2.WEAPONTYPE.Staff) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.player.buffs and context.player.buffs[40408]
end
function staff_ambush:Activate(context)
	Player:SwapWeaponSet()
end
function staff_ambush:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( staff_ambush )



local focus = SkillManager:CreateSkillPalette('focus')
focus.uid = "Mesmer_focus"
focus.profession = GW2.CHARCLASS.Mesmer
focus.icon = "focus"
-- focus.id =   --> set a skill ID if you want it to download an icon for this skillset 
focus.skills_luacode = {
	[10186] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.25, 
		 icon = 'Temporal Curtain',  
	 },
	 [10363] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 parent = 10186,
		 icon = 'Into the Void',  
	 },
	 [10282] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 1, 
		 icon = 'Phantasmal Warden',  
	 },
}
function focus:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 10282)
end
function focus:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Focus or context.player.offhand_alt == GW2.WEAPONTYPE.Focus) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function focus:Activate(context)
	Player:SwapWeaponSet()
end
function focus:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( focus )



local torch = SkillManager:CreateSkillPalette('torch')
torch.uid = "Mesmer_torch"
torch.profession = GW2.CHARCLASS.Mesmer
torch.icon = "torch"
-- torch.id =   --> set a skill ID if you want it to download an icon for this skillset 
torch.skills_luacode = {
	[10285] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'The Prestige',  
	 },
	 [10189] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.75, 
		 icon = 'Phantasmal Mage',  
	 },
}
function torch:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 10285)
end
function torch:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Torch or context.player.offhand_alt == GW2.WEAPONTYPE.Torch) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function torch:Activate(context)
	Player:SwapWeaponSet()
end
function torch:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( torch )

local shield = SkillManager:CreateSkillPalette('shield')
shield.uid = "Mesmer_shield"
shield.profession = GW2.CHARCLASS.Mesmer
shield.icon = "shield"
-- shield.id =   --> set a skill ID if you want it to download an icon for this skillset 
shield.skills_luacode = {
	[30769] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.0, 
		 icon = 'Echo of Memory',  
	 },
	 [29649] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.0, 
		 parent = 30769,
		 icon = 'Deja Vu',  
	 },
	 [30643] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.0, 
		 icon = 'Tides of Time',  
	 },
}
function shield:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 30643)
end
function shield:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Shield or context.player.offhand_alt == GW2.WEAPONTYPE.Shield) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function shield:Activate(context)
	Player:SwapWeaponSet()
end
function shield:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( shield )



local trident = SkillManager:CreateSkillPalette('trident')
trident.uid = "Mesmer_Trident"
trident.profession = GW2.CHARCLASS.Mesmer
trident.icon = "trident"
-- trident.id =   --> set a skill ID if you want it to download an icon for this skillset 
trident.skills_luacode = {
	[10258] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Siren\'s Call',  
	 },
	 [10259] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Blinding Tide',  
	 },
	 [10327] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Spinning Revenge',  
	 },
	 [10328] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Whaler',  
	 },
	 [10260] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.75, 
		 icon = 'Illusion of Drowning',  
	 },
}
function trident:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 10258)
end
function trident:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.Diving and (context.player.aquatic == GW2.WEAPONTYPE.Trident or context.player.aquatic_alt == GW2.WEAPONTYPE.Trident) and (context.player.weaponset == 0 or context.player.weaponset == 1) and context.player.transformid == 0
end
function trident:Activate(context)
	Player:SwapWeaponSet()
end
function trident:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( trident )



local spear = SkillManager:CreateSkillPalette('spear')
spear.uid = "Mesmer_spear"
spear.profession = GW2.CHARCLASS.Mesmer
spear.icon = "spear"
-- spear.id =   --> set a skill ID if you want it to download an icon for this skillset 
spear.skills_luacode = {
	[10315] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Stab',  
	 },
	 [10316] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 10315,
		 icon = 'Jab',  
	 },
	 [10317] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 10316,
		 icon = 'Evasive Strike',  
	 },
	 [10318] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 1.75, 
		 icon = 'Feigned Surge',  
	 },
	 [10322] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0, 
		 parent = 10318,
		 icon = 'Feign',  
	 },
	 [10251] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Illusionary Mariner',  
	 },
	 [10325] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Slipstream',  
	 },
	 [10255] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 1.25, 
		 icon = 'Vortex',  
	 },
}
function spear:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3].id == 10251)
end
function spear:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.Diving and (context.player.aquatic == GW2.WEAPONTYPE.Spear or context.player.aquatic_alt == GW2.WEAPONTYPE.Spear) and (context.player.weaponset == 0 or context.player.weaponset == 1) and context.player.transformid == 0
end
function spear:Activate(context)
	Player:SwapWeaponSet()
end
function spear:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( spear )



local downed = SkillManager:CreateSkillPalette('downed')
downed.uid = "Mesmer_downed"
downed.profession = GW2.CHARCLASS.Mesmer
downed.icon = "downed"
downed.id = 10196  --> set a skill ID if you want it to download an icon for this skillset 
downed.skills_luacode = {
	[10196] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Mind Blast',  
	 },
	 [10366] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Deception',  
	 },
	 [10224] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Phantasmal Rogue',  
	 },
	 [1175] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Bandage',  
	 },
}
function downed:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 10196)
end
function downed:CanActivate(context)
	return false
end
function downed:Activate(context)
end
function downed:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( downed )



local drowning = SkillManager:CreateSkillPalette('drowning')
drowning.uid = "Mesmer_drowning"
drowning.profession = GW2.CHARCLASS.Mesmer
drowning.icon = "drowning"
drowning.id = 10196  --> set a skill ID if you want it to download an icon for this skillset 
drowning.skills_luacode = {
	[10196] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Mind Blast',  
	 },
	 [10366] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Deception',  
	 },
	 [10224] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1, 
		 icon = 'Phantasmal Rogue',  
	 },
	 [1175] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 1, 
		 icon = 'Bandage',  
	 },
}
function drowning:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 10196)
end
function drowning:CanActivate(context)
	return false
end
function drowning:Activate(context)
end
function drowning:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( drowning )



-- ALL the skills which do not belong to a set
local mesmer = SkillManager:CreateSkillPalette('Mesmer')
mesmer.uid = "Mesmer_Mesmer"
mesmer.profession = GW2.CHARCLASS.Mesmer
mesmer.icon = "mesmer"
mesmer.skills_luacode = {
-- HEALING
	[40200] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.75, 
		 icon = 'False Oasis',  
	 },
	[30305] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.5, 
		 icon = 'Well of Eternity',  
	 },
	 [10176] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1, 
		 icon = 'Ether Feast',  
	 },
	 [10177] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1.25, 
		 icon = 'Mirror',  
	 },
	 [10213] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 2.25, 
		 icon = 'Mantra of Recovery',  
	 },
	 [10214] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0, 
		 parent = 10213,
		 icon = 'Power Return',  
	 },
	 [21750] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1, 
		 icon = 'Signet of the Ether',  
	 },

-- END HEALING.

-- F-Keys.
	[10191] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0, 
		 icon = 'Mind Wrack',  
	 },
	 [10190] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0, 
		 icon = 'Cry of Frustration',  
	 },
	 [10287] = { 
		 slot = GW2.SKILLBARSLOT.Slot_15, 
		 activationtime = 0, 
		 icon = 'Diversion',  
	 },
	 [10192] = { 
		 slot = GW2.SKILLBARSLOT.Slot_16, 
		 activationtime = 0, 
		 icon = 'Distortion',  
	 },
	 [29830] = { 
		 slot = GW2.SKILLBARSLOT.Slot_16, 
		 activationtime = 0, 
		 icon = 'Continuum Split',  
	 },
	  [30747] = { 
		 slot = GW2.SKILLBARSLOT.Slot_16, 
		 activationtime = 0, 
		 parent = 29830,
		 icon = 'Continuum Shift',  
	 },
	 

-- END F-Keys.

-- ELITE.
	[29519] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1, 
		 icon = 'Signet of Humility',  
	 },
	 [10311] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.25, 
		 icon = 'Time Warp',  
	 },
	 [10245] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1.75, 
		 icon = 'Mass Invisibility',  
	 },
	 [30359] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1, 
		 icon = 'Gravity Well',  
	 },
	 [45449] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0, 
		 icon = 'Jaunt',  
	 },
 

-- END ELITE.

-- UTILITY.
	 [45046] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Illusionary Ambush',  
	 },
	 [42851] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.75, 
		 icon = 'Mirage Advance',  
	 },
	 [45666] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0, 
		 parent = 42851,
		 icon = 'Mirage Retreat',  
	 },
	 [43064] = { 
		 slot = GW2.SKILLBARSLOT.Slot_9, 
		 activationtime = 0, 
		 icon = 'Sand through Glass',  
	 },
	 [41065] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Crystal Sands',  
	 },
	 [29526] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Well of Precognition',  
	 },
	 [30525] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.75, 
		 icon = 'Well of Calamity',  
	 },
	 [29856] = { 
		 slot = GW2.SKILLBARSLOT.Slot_9, 
		 activationtime = 1, 
		 icon = 'Well of Recall',  
	 },
	 [30814] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 icon = 'Well of Action',  
	 },
	[10203] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Null Field',  
	 },
	 [10302] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Feedback',  
	 },
	 [10197] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Portal Entre',  
	 },
	 [10187] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Veil',  
	 },
	 [10201] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Decoy',  
	 },
	 [10202] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Mirror Images',  
	 },
		 [10341] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1, 
		 icon = 'Phantasmal Defender',  
	 },
	 [10267] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1, 
		 icon = 'Phantasmal Disenchanter',  
	 },
	 [10200] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Blink',  
	 },
	 [10185] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Arcane Thievery',  
	 },
	 [10244] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1.25, 
		 icon = 'Illusion of Life',  
	 },
	 [29578] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Mimic',  
	 },
	 [10211] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 2.25, 
		 icon = 'Mantra of Pain',  
	 },
	 [10212] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 10211,
		 icon = 'Power Spike',  
	 },
	 [10204] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 2.25, 
		 icon = 'Mantra of Distraction',  
	 },
	 [10206] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 10204,
		 icon = 'Power Lock',  
	 },
	 [10207] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 2.25, 
		 icon = 'Mantra of Resolve',  
	 },
	 [10209] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 10207,
		 icon = 'Power Cleanse',  
	 },
	 [10237] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 2.25, 
		 icon = 'Mantra of Concentration',  
	 },
	 [10238] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 10237,
		 icon = 'Power Break',  
	 },
	 [10236] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 icon = 'Signet of Inspiration',  
	 },
	 [10232] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Signet of Domination',  
	 },
	 [10234] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Signet of Midnight',  
	 },
	 [10247] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1.25, 
		 icon = 'Signet of Illusions',  
	 },

-- END UTILITY.
}
function mesmer:IsActive(context)
	return context.player.transformid == 0
end
function mesmer:CanActivate(context)
	return false
end
function mesmer:Activate(context)
end
function mesmer:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( mesmer )