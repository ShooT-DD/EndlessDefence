item_syk = class({})
LinkLuaModifier("item_syk_passive", "items/item_syk", LUA_MODIFIER_MOTION_NONE)

function item_syk:GetIntrinsicModifierName() return "item_syk_passive" end
function item_syk:IsStealable() 			return false end
item_syk_passive = class({})

function item_syk_passive:IsDebuff()			return false end
function item_syk_passive:IsHidden() 			return true end
function item_syk_passive:IsPurgable() 		return false end
function item_syk_passive:IsPurgeException() 	return false end
function item_syk_passive:AllowIllusionDuplicate() return false end
function item_syk_passive:DeclareFunctions() return 
	{
	MODIFIER_EVENT_ON_ATTACK_LANDED, 
	MODIFIER_PROPERTY_STATS_INTELLECT_BONUS, 
	MODIFIER_PROPERTY_STATS_STRENGTH_BONUS, 
	MODIFIER_PROPERTY_STATS_AGILITY_BONUS, 
	MODIFIER_EVENT_ON_TAKEDAMAGE, 
	MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE, 
	MODIFIER_PROPERTY_MP_REGEN_AMPLIFY_PERCENTAGE, 
	MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE,
	MODIFIER_PROPERTY_IGNORE_MOVESPEED_LIMIT,
	MODIFIER_PROPERTY_HEAL_AMPLIFY_PERCENTAGE_SOURCE,
	MODIFIER_PROPERTY_HP_REGEN_AMPLIFY_PERCENTAGE,
	MODIFIER_PROPERTY_STATUS_RESISTANCE,
	MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
	MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
	} 
end

local abil_name_list = {
["alchemist_chemical_rage"] = true,
["ability_chrono_time"] = true,
["crystal_maiden_freezing_field"] = true,
["dark_seer_ion_shell"] = true,
["dark_seer_surge"] = true,
["dazzle_shallow_grave"] = true,
["dazzle_shadow_wave"] = true,
["dragon_knight_elder_dragon_form"] = true,
["lich_frost_shield"] = true,
["legion_commander_press_the_attack"] = true,

}
	local chance_2 = 65
	local chance_3 = 40
	local chance_4 = 15

local abil_skymage_list = {
["skywrath_mage_arcane_bolt"] = true,
["skywrath_mage_concussive_shot"] = true,
["skywrath_mage_mystic_flare"] = true,
}
function item_syk_passive:OnAttackLanded(keys)
	local caster = self:GetParent()
	
	if keys.attacker.split_attack or keys.target:GetUnitName() == "rosh" or keys.target:GetUnitName() == "boss_krot" then return end

	local multicast = 0
	if RollPercentage(chance_4) then
		multicast = 4
	elseif RollPercentage(chance_3) then
		multicast = 3
	elseif RollPercentage(chance_2) then
		multicast = 2
	end
	
	for i = 0, 8 do
	local abil = self:GetCaster():GetAbilityByIndex(i)
	local caster = self:GetParent()
	local target = keys.target
	local ability = self:GetAbility()
	
	if abil_name_list[abil:GetAbilityName()] and keys.target:GetTeamNumber() ~= self:GetParent():GetTeamNumber() and keys.target:IsAlive() and keys.attacker == self:GetParent() and self:GetCaster():IsAlive() and abil:GetLevel() > 0 and abil:GetAutoCastState() and abil:IsOwnersManaEnough() and keys.unit ~= self:GetParent() and abil:IsCooldownReady() then
			abil:StartCooldown(abil:GetCooldown(-1) * self:GetParent():GetCooldownReduction())
			abil:UseResources(true, false, true)
			caster:SetCursorCastTarget(caster)
	elseif self:GetCaster():IsAlive() and not keys.target:IsBuilding() and keys.target:GetTeamNumber() ~= self:GetParent():GetTeamNumber() and keys.target:IsAlive() and keys.attacker == self:GetParent() and abil:GetLevel() > 0 and abil:GetAutoCastState() and abil:IsOwnersManaEnough() and keys.unit ~= self:GetParent() and abil:IsCooldownReady() then
		if caster:FindModifierByName( "modifier_imba_multicast_passive" ) and multicast > 1 then
			Timers:CreateTimer(0.1, function()
			for i = 1, multicast do
				local enemies = FindUnitsInRadius(
					caster:GetTeamNumber(), 
					caster:GetAbsOrigin(), 
					nil, 
					1000, 
					DOTA_UNIT_TARGET_TEAM_ENEMY, 
					DOTA_UNIT_TARGET_BASIC, 
					DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES, 
					FIND_ANY_ORDER, 
					false)
				if enemies[i] then
					for _, enemy in pairs(enemies) do
						if enemy:GetUnitName() ~= "rosh" and enemy:GetUnitName() ~= "boss_krot" then
						caster:SetCursorCastTarget(enemy)
						end
					end
					caster:EmitSound("Hero_OgreMagi.Fireblast.x"..i+1)
					local pfx = ParticleManager:CreateParticle("particles/units/heroes/hero_ogre_magi/ogre_magi_multicast.vpcf", PATTACH_OVERHEAD_FOLLOW, caster)
					ParticleManager:SetParticleControl(pfx, 1, Vector(i+1, 1, 0))
					abil:StartCooldown(abil:GetCooldown(-1) * self:GetParent():GetCooldownReduction())
					abil:UseResources(true, false, true)
					abil:OnSpellStart()
				end
				end
			end
			)
			if abil_skymage_list[abil:GetAbilityName()] then
				local Sky_Stacks = caster:GetModifierStackCount("cent_mdmg", self:GetAbility())
				caster:SetModifierStackCount("cent_mdmg", self:GetAbility(), (Sky_Stacks + 1))
			end
		else
			abil:StartCooldown(abil:GetCooldown(-1) * self:GetParent():GetCooldownReduction())
			caster:SetCursorCastTarget(target)
			abil:UseResources(true, false, true)
			abil:OnSpellStart()
				if abil_skymage_list[abil:GetAbilityName()] then
					local Sky_Stacks = caster:GetModifierStackCount("cent_mdmg", self:GetAbility())
					caster:SetModifierStackCount("cent_mdmg", self:GetAbility(), (Sky_Stacks + 1))
				end
		end
		elseif self:GetCaster():IsAlive() and bit.band(abil:GetBehaviorInt(), DOTA_ABILITY_BEHAVIOR_POINT) == DOTA_ABILITY_BEHAVIOR_POINT and not keys.target:IsBuilding() and keys.target:GetTeamNumber() ~= self:GetParent():GetTeamNumber() and keys.target:IsAlive() and keys.attacker == self:GetParent() and abil:GetLevel() > 0 and abil:GetAutoCastState() and abil:IsOwnersManaEnough() and keys.unit ~= self:GetParent() and abil:IsCooldownReady() then
		if caster:FindModifierByName( "modifier_imba_multicast_passive" ) and multicast > 1 then
			Timers:CreateTimer(0.1, function()
			for i = 1, multicast do
				local enemies = FindUnitsInRadius(
					caster:GetTeamNumber(), 
					caster:GetAbsOrigin(), 
					nil, 
					1000, 
					DOTA_UNIT_TARGET_TEAM_ENEMY, 
					DOTA_UNIT_TARGET_BASIC, 
					DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES, 
					FIND_ANY_ORDER, 
					false)
				if enemies[i] then
					for _, enemy in pairs(enemies) do
						if enemy:GetUnitName() ~= "rosh" and enemy:GetUnitName() ~= "boss_krot" then
						caster:SetCursorCastTarget(enemy)
						end
					end
					caster:EmitSound("Hero_OgreMagi.Fireblast.x"..i+1)
					local pfx = ParticleManager:CreateParticle("particles/units/heroes/hero_ogre_magi/ogre_magi_multicast.vpcf", PATTACH_OVERHEAD_FOLLOW, caster)
					ParticleManager:SetParticleControl(pfx, 1, Vector(i+1, 1, 0))
					abil:StartCooldown(abil:GetCooldown(-1) * self:GetParent():GetCooldownReduction())
					abil:UseResources(true, false, true)
					abil:OnSpellStart()
				end
				end
			end
			)
			if abil_skymage_list[abil:GetAbilityName()] then
				local Sky_Stacks = caster:GetModifierStackCount("cent_mdmg", self:GetAbility())
				caster:SetModifierStackCount("cent_mdmg", self:GetAbility(), (Sky_Stacks + 1))
			end
		else
			local pos = abil:GetCursorPosition()
			abil:StartCooldown(abil:GetCooldown(-1) * self:GetParent():GetCooldownReduction())
			caster:SetCursorCastTarget(pos)
			abil:UseResources(true, false, true)
			abil:OnSpellStart()
				if abil_skymage_list[abil:GetAbilityName()] then
					local Sky_Stacks = caster:GetModifierStackCount("cent_mdmg", self:GetAbility())
					caster:SetModifierStackCount("cent_mdmg", self:GetAbility(), (Sky_Stacks + 1))
				end
		end

	end
	end
end

function item_syk_passive:GetModifierBonusStats_Intellect() return self:GetAbility():GetSpecialValueFor("int") end
function item_syk_passive:GetModifierBonusStats_Agility() return self:GetAbility():GetSpecialValueFor("agi") end
function item_syk_passive:GetModifierBonusStats_Strength() return self:GetAbility():GetSpecialValueFor("str") end
function item_syk_passive:GetModifierMPRegenAmplify_Percentage() return self:GetAbility():GetSpecialValueFor("mana_regen_pct") end
function item_syk_passive:GetModifierIgnoreMovespeedLimit() return 1 end
function item_syk_passive:GetModifierMoveSpeedBonus_Percentage() return self:GetAbility():GetSpecialValueFor("move_speed") end
function item_syk_passive:GetModifierHealAmplify_PercentageSource() return self:GetAbility():GetSpecialValueFor("heal_amplify") end
function item_syk_passive:GetModifierHPRegenAmplify_Percentage() return self:GetAbility():GetSpecialValueFor("heal_amplify") end
function item_syk_passive:GetModifierStatusResistance() return self:GetAbility():GetSpecialValueFor("resistance") end

function item_syk_passive:GetModifierPreAttack_BonusDamage() 
return self:GetParent():GetAgility() * self:GetAbility():GetSpecialValueFor("agi_dmg")
end
function item_syk_passive:GetModifierPhysicalArmorBonus() 
	return self:GetParent():GetStrength() * self:GetAbility():GetSpecialValueFor("str_armor")
end
function item_syk_passive:GetModifierSpellAmplify_Percentage()
		local intellect = self:GetParent():GetIntellect()
		local truedmg = intellect * self:GetAbility():GetSpecialValueFor("int_mag_dmg")
	return self:GetAbility():GetSpecialValueFor("bonus_mage_dmg") + truedmg
end

function item_syk_passive:OnTakeDamage(keys)
		if keys.attacker:HasModifier("item_syk_passive") then
			if keys.attacker == self:GetParent() and keys.unit ~= self.parent then
				if keys.damage_flags ~= 16 and keys.damage_type ~= 1 then
                                        maxph = keys.attacker:GetHealth()
					spell_vampir = keys.original_damage * (self:GetAbility():GetSpecialValueFor( "spell_lifesteal_amp" ) / 100)
                                        if maxph > spell_vampir and keys.inflictor and bit.band(keys.damage_flags, DOTA_DAMAGE_FLAG_REFLECTION) == DOTA_DAMAGE_FLAG_REFLECTION then
					keys.attacker:Heal(spell_vampir, self)
					else
					keys.attacker:Heal(maxph * 0.9, self)
				end
			end
		end
	end
end
