item_octarine_core1 = item_octarine_core1 or class({})
item_octarine_core2 = item_octarine_core1 or class({})
item_octarine_core3 = item_octarine_core1 or class({})
item_octarine_core4 = item_octarine_core1 or class({})
item_octarine_core5 = item_octarine_core1 or class({})
item_octarine_core6 = item_octarine_core1 or class({})
item_octarine_core7 = item_octarine_core1 or class({})
item_octarine_core8 = class({})

LinkLuaModifier("octarine_core_custom", "items/item_octarine_core.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("octarine_core_active_custom", "items/item_octarine_core.lua", LUA_MODIFIER_MOTION_NONE)

function item_octarine_core1:GetIntrinsicModifierName()
	return "octarine_core_custom"
end
function item_octarine_core8:GetIntrinsicModifierName()
	return "octarine_core_custom"
end

function item_octarine_core8:OnSpellStart(keys)
	local caster = self:GetCaster()
	
	caster:EmitSound("DOTA_Item.Refresher.Activate")
	
	self.refresher_particle = ParticleManager:CreateParticle("particles/items2_fx/refresher.vpcf", PATTACH_CENTER_FOLLOW , self:GetParent())

	
	local no_refresh_skill = {["all_29_killer"] = true,["all_30_ignore_armor"] = true,["all_28_aeon_disk"] = true,["all_21_radius_damage"] = true,["all_4_sabre"] = true}
	for i = 0, caster:GetAbilityCount() - 1 do
        local ability = caster:GetAbilityByIndex( i )
        if ability and not no_refresh_skill[ ability:GetAbilityName() ] then
            ability:EndCooldown()
        end
    end

	local refresher_shared = {
	["item_refresher"] = true, 
	["item_ethereal_blade"] = true,
	["item_octarine_core8"] = true, 
	["item_bloodstone_1"] = true,
	["item_bloodstone_2"] = true,
	["item_bloodstone_3"] = true,
	["item_bloodstone_4"] = true,
	["item_bloodstone_5"] = true,
	["item_bloodstone_6"] = true,
	["item_bloodstone_7"] = true,
	["item_bloodstone_8"] = true,
	
	}

	for i = 0, 5 do
		local item = caster:GetItemInSlot( i )
		if item and not refresher_shared[item:GetName()] then
			item:EndCooldown()
		end
	end
end


octarine_core_custom = class({
    IsHidden                = function(self) return true end,
    IsPurgable              = function(self) return false end,
    IsDebuff                = function(self) return false end,
    IsBuff                  = function(self) return true end,
    RemoveOnDeath           = function(self) return false end,
})

function octarine_core_custom:OnCreated()
	self.static_chance	 	= self:GetAbility():GetSpecialValueFor("static_chance")
	self.static_strikes	 	= self:GetAbility():GetSpecialValueFor("static_strikes")
	self.static_damage	 	= self:GetAbility():GetSpecialValueFor("static_damage")
	self.static_radius		= self:GetAbility():GetSpecialValueFor("static_radius")
	self.static_cooldown	= self:GetAbility():GetSpecialValueFor("static_cooldown")
end

function octarine_core_custom:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_HEALTH_BONUS,
		MODIFIER_PROPERTY_MANA_BONUS,
		MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
		MODIFIER_PROPERTY_CAST_RANGE_BONUS
	}
end

function octarine_core_custom:GetModifierHealthBonus()
	return self:GetAbility():GetSpecialValueFor("bonus_health")
end

function octarine_core_custom:GetModifierManaBonus()
	return self:GetAbility():GetSpecialValueFor("bonus_mana")
end

function octarine_core_custom:GetModifierConstantManaRegen()
	return self:GetAbility():GetSpecialValueFor("bonus_mana_regen")
end

function octarine_core_custom:GetModifierPercentageCooldown()
	return self:GetAbility():GetSpecialValueFor("bonus_cooldown")
end

function octarine_core_custom:GetModifierCastRangeBonus()
	return self:GetAbility():GetSpecialValueFor("cast_range_bonus")
end
