item_kaya_1 = class({})
item_kaya_2 = class({})
item_kaya_3 = class({})
item_kaya_4 = class({})
item_kaya_5 = class({})
item_kaya_6 = class({})
item_kaya_7 = class({})
item_kaya_8 = class({})

LinkLuaModifier( "modifier_item_kaya_lua", "items/item_kaya_lua", LUA_MODIFIER_MOTION_NONE )

function item_kaya_1:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_2:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_3:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_4:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_5:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_6:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_7:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

function item_kaya_8:GetIntrinsicModifierName()
	return "modifier_item_kaya_lua"
end

modifier_item_kaya_lua = class({})

--------------------------------------------------------------------------------

function modifier_item_kaya_lua:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_item_kaya_lua:IsPurgable()
	return false
end

--------------------------------------------------------------------------------

function modifier_item_kaya_lua:OnCreated( kv )
		self.ability = self:GetAbility()
		self.parent = self:GetParent()
		self.caster = self:GetCaster()
		self.bonus_dmg = self:GetAbility():GetSpecialValueFor( "spell_amp" )
		self.spell_lifesteal_amp = self:GetAbility():GetSpecialValueFor( "spell_lifesteal_amp" )
		self.bonus_int = self:GetAbility():GetSpecialValueFor( "bonus_intellect" )
		self.mana_regen_multiplier = self:GetAbility():GetSpecialValueFor( "mana_regen_multiplier" )
		
		self.particle_name = "particles/items3_fx/octarine_core_lifesteal.vpcf"
end

--------------------------------------------------------------------------------

function modifier_item_kaya_lua:DeclareFunctions()
	local funcs =
	{
		MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_MP_REGEN_AMPLIFY_PERCENTAGE,
		MODIFIER_EVENT_ON_TAKEDAMAGE,
	}
	return funcs
end

--------------------------------------------------------------------------------

function modifier_item_kaya_lua:GetModifierSpellAmplify_Percentage( params )
	return self.bonus_dmg
end

function modifier_item_kaya_lua:GetModifierBonusStats_Intellect( params )
	return self.bonus_int
end

function modifier_item_kaya_lua:OnTakeDamage(keys)
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

function modifier_item_kaya_lua:GetModifierMPRegenAmplify_Percentage( params )
	return self.mana_regen_multiplier
end