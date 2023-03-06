item_sange_1 = class({})
item_sange_2 = class({})
item_sange_3 = class({})
item_sange_4 = class({})
item_sange_5 = class({})
item_sange_6 = class({})
item_sange_7 = class({})
item_sange_8 = class({})

LinkLuaModifier( "modifier_item_sange_lua", "items/item_sange_lua", LUA_MODIFIER_MOTION_NONE )

function item_sange_1:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_2:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_3:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_4:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_5:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_6:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_7:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

function item_sange_8:GetIntrinsicModifierName()
	return "modifier_item_sange_lua"
end

modifier_item_sange_lua = class({})

--------------------------------------------------------------------------------

function modifier_item_sange_lua:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_item_sange_lua:IsPurgable()
	return false
end

--------------------------------------------------------------------------------

function modifier_item_sange_lua:OnCreated( kv )
		self.ability = self:GetAbility()
		self.parent = self:GetParent()
		self.caster = self:GetCaster()
		self.bonus_str = self:GetAbility():GetSpecialValueFor( "bonus_str" )

end

--------------------------------------------------------------------------------

function modifier_item_sange_lua:DeclareFunctions()
	local funcs =
	{
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_HEAL_AMPLIFY_PERCENTAGE_SOURCE,
		MODIFIER_PROPERTY_HP_REGEN_AMPLIFY_PERCENTAGE,
	}
	return funcs
end

--------------------------------------------------------------------------------



function modifier_item_sange_lua:GetModifierBonusStats_Strength( params )
	return self.bonus_str
end

function modifier_item_sange_lua:GetModifierHealAmplify_PercentageSource() return self:GetAbility():GetSpecialValueFor("heal_amplify") end
function modifier_item_sange_lua:GetModifierHPRegenAmplify_Percentage() return self:GetAbility():GetSpecialValueFor("heal_amplify") end