item_bloodstone_1 = item_bloodstone_1 or class({})
item_bloodstone_2 = item_bloodstone_1 or class({})
item_bloodstone_3 = item_bloodstone_1 or class({})
item_bloodstone_4 = item_bloodstone_1 or class({})
item_bloodstone_5 = item_bloodstone_1 or class({})
item_bloodstone_6 = item_bloodstone_1 or class({})
item_bloodstone_7 = item_bloodstone_1 or class({})
item_bloodstone_8 = item_bloodstone_1 or class({})

LinkLuaModifier("item_bloodstone_custom", "items/item_bloodstone.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_bloodstone_custom_active", "items/item_bloodstone.lua", LUA_MODIFIER_MOTION_NONE)


function item_bloodstone_1:GetIntrinsicModifierName()
	return "item_bloodstone_custom"
end

function item_bloodstone_8:GetIntrinsicModifierName()
	return "item_bloodstone_custom"
end

function item_bloodstone_8:OnSpellStart(keys)
	
	self:GetCaster():AddNewModifier(self:GetCaster(), self, "modifier_item_bloodstone_custom_active", {duration = self:GetSpecialValueFor("duration")})

end

item_bloodstone_custom = class({})
function item_bloodstone_custom:IsHidden() return true end
function item_bloodstone_custom:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_HEALTH_BONUS,
		MODIFIER_PROPERTY_MANA_BONUS,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
		MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE,
		MODIFIER_EVENT_ON_TAKEDAMAGE,
	}
end

function item_bloodstone_custom:OnCreated()
end
function item_bloodstone_custom:GetModifierHealthBonus()
	return self:GetAbility():GetSpecialValueFor("bonus_health")
end

function item_bloodstone_custom:GetModifierSpellAmplify_Percentage()
	return self:GetAbility():GetSpecialValueFor("bonus_dmg")
end

function item_bloodstone_custom:GetModifierManaBonus()
	return self:GetAbility():GetSpecialValueFor("bonus_mana")
end

function item_bloodstone_custom:GetModifierConstantManaRegen()
	return self:GetAbility():GetSpecialValueFor("bonus_mana_regen")
end

function item_bloodstone_custom:OnTakeDamage(keys)
		if keys.attacker:HasModifier("item_bloodstone_custom") then
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

modifier_item_bloodstone_custom_active = class({})
function modifier_item_bloodstone_custom_active:IsHidden() return false end
function modifier_item_bloodstone_custom_active:IsPurgable() return false end
function modifier_item_bloodstone_custom_active:IsDebuff() return false end
function modifier_item_bloodstone_custom_active:RemoveOnDeath() return true end
function modifier_item_bloodstone_custom_active:OnCreated()
	EmitSoundOn("DOTA_Item.Bloodstone.Cast",self:GetCaster())
	self.particle = ParticleManager:CreateParticle("particles/items_fx/bloodstone_heal.vpcf", PATTACH_OVERHEAD_FOLLOW, self:GetCaster())
	ParticleManager:SetParticleControlEnt(self.particle, 2, self:GetCaster(), PATTACH_POINT_FOLLOW, "attach_hitloc", self:GetCaster():GetAbsOrigin(), true)
	self:AddParticle(self.particle, false, false, -1, false, false)
	
end
function modifier_item_bloodstone_custom_active:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE,
	}
	return funcs
end


function modifier_item_bloodstone_custom_active:GetModifierPercentageCooldown()
	return self:GetAbility():GetSpecialValueFor("bonus_cooldown")
end