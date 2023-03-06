item_kaya_custom = class({})
item_kaya_custom2 = class({})
item_kaya_custom3 = class({})
item_kaya_custom4 = class({})
item_kaya_custom5 = class({})
item_kaya_custom6 = class({})
item_kaya_custom7 = class({})
item_kaya_custom8 = class({})

LinkLuaModifier( "modifier_item_kaya_custom", "items/item_kaya_custom", LUA_MODIFIER_MOTION_NONE )

function item_kaya_custom:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom2:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom3:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom4:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom5:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom6:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom7:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

function item_kaya_custom8:GetIntrinsicModifierName()
	return "modifier_item_kaya_custom"
end

modifier_item_kaya_custom = class({})

--------------------------------------------------------------------------------

function modifier_item_kaya_custom:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_item_kaya_custom:IsPurgable()
	return false
end

--------------------------------------------------------------------------------

function modifier_item_kaya_custom:OnCreated( kv )
		self.ability = self:GetAbility()
		self.parent = self:GetParent()
		self.caster = self:GetCaster()
		self.bonus_dmg = self:GetAbility():GetSpecialValueFor( "bonus_dmg" )
		self.bonus_life = self:GetAbility():GetSpecialValueFor( "bonus_life" )
		self.bonus_int = self:GetAbility():GetSpecialValueFor( "bonus_int" )
		self.bonus_manaregen = self:GetAbility():GetSpecialValueFor( "mana_regen" )
end

--------------------------------------------------------------------------------

function modifier_item_kaya_custom:DeclareFunctions()
	local funcs =
	{
		MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_EVENT_ON_TAKEDAMAGE,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
	}
	return funcs
end

--------------------------------------------------------------------------------

function modifier_item_kaya_custom:GetModifierSpellAmplify_Percentage( params )
local intellect = self.caster:GetIntellect()
local truedmg = intellect * self.bonus_dmg
	return truedmg
end

function modifier_item_kaya_custom:GetModifierBonusStats_Intellect( params )
	return self.bonus_int
end

function modifier_item_kaya_custom:GetModifierConstantManaRegen( params )
	return self.bonus_manaregen
end

function modifier_item_kaya_custom:OnTakeDamage(keys)
		if keys.attacker:HasModifier("modifier_item_kaya_custom") then
			if keys.attacker == self:GetParent() and keys.unit ~= self.parent then
				if keys.damage_flags ~= 16 and keys.damage_type ~= 1 then
                                        maxph = keys.attacker:GetHealth()
					spell_vampir = keys.original_damage * (self.bonus_life / 100)
                                        if maxph > spell_vampir and keys.inflictor and bit.band(keys.damage_flags, DOTA_DAMAGE_FLAG_REFLECTION) == DOTA_DAMAGE_FLAG_REFLECTION then
					keys.attacker:Heal(spell_vampir, self)
					else
					keys.attacker:Heal(maxph * 0.9, self)
				end
			end
		end
	end
end	
