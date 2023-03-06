item_yasha_1 = class({})
item_yasha_2 = class({})
item_yasha_3 = class({})
item_yasha_4 = class({})
item_yasha_5 = class({})
item_yasha_6 = class({})
item_yasha_7 = class({})
item_yasha_8 = class({})

LinkLuaModifier( "modifier_item_yasha_lua", "items/item_yasha_lua", LUA_MODIFIER_MOTION_NONE )

function item_yasha_1:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_2:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_3:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_4:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_5:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_6:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_7:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

function item_yasha_8:GetIntrinsicModifierName()
	return "modifier_item_yasha_lua"
end

modifier_item_yasha_lua = class({})

--------------------------------------------------------------------------------

function modifier_item_yasha_lua:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function modifier_item_yasha_lua:IsPurgable()
	return false
end

--------------------------------------------------------------------------------

function modifier_item_yasha_lua:OnCreated( kv )
		self.ability = self:GetAbility()
		self.parent = self:GetParent()
		self.caster = self:GetCaster()
		self.bonus_agi = self:GetAbility():GetSpecialValueFor( "bonus_agi" )
		self.move_speed = self:GetAbility():GetSpecialValueFor( "move_speed" )
		
end

--------------------------------------------------------------------------------

function modifier_item_yasha_lua:DeclareFunctions()
	local funcs =
	{
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE,
		MODIFIER_PROPERTY_IGNORE_MOVESPEED_LIMIT,
	}
	return funcs
end

--------------------------------------------------------------------------------


function modifier_item_yasha_lua:GetModifierBonusStats_Agility( params )
	return self.bonus_agi
end

function modifier_item_yasha_lua:GetModifierIgnoreMovespeedLimit() return 1 end
function modifier_item_yasha_lua:GetModifierMoveSpeedBonus_Percentage() return self.move_speed end