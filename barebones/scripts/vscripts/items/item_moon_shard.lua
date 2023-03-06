item_moon_shard_lua = item_moon_shard_lua or class({})
item_moon_shard_lua2 = item_moon_shard_lua or class({})
item_moon_shard_lua3 = item_moon_shard_lua or class({})
item_moon_shard_lua4 = item_moon_shard_lua or class({})
item_moon_shard_lua5 = item_moon_shard_lua or class({})
item_moon_shard_lua6 = item_moon_shard_lua or class({})
item_moon_shard_lua7 = item_moon_shard_lua or class({})

LinkLuaModifier("modifier_item_moon_shard_lua_passive", 'items/item_moon_shard.lua', LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_moon_shard_lua_passive_aura_positive", 'items/item_moon_shard.lua', LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_moon_shard_lua_passive_aura_positive_effect", 'items/item_moon_shard.lua', LUA_MODIFIER_MOTION_NONE)

function item_moon_shard_lua:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua2:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua3:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua4:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua5:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua6:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end

function item_moon_shard_lua7:GetIntrinsicModifierName()
	return "modifier_item_moon_shard_lua_passive"
end


modifier_item_moon_shard_lua_passive = class({})
---if IsServer() then
function modifier_item_moon_shard_lua_passive:IsHidden()		return false end
function modifier_item_moon_shard_lua_passive:IsPurgable()		return false end
function modifier_item_moon_shard_lua_passive:GetAttributes()	return MODIFIER_ATTRIBUTE_MULTIPLE end

function modifier_item_moon_shard_lua_passive:OnCreated()

	local parent = self:GetParent()
	local caster = self:GetCaster()
	local ability = self:GetAbility()
	self.bonus_as = self:GetAbility():GetSpecialValueFor("bonus_as")
	if not self:GetCaster():HasModifier("modifier_item_moon_shard_lua_passive_aura_positive") then
		self:GetCaster():AddNewModifier(self:GetCaster(), self:GetAbility(), "modifier_item_moon_shard_lua_passive_aura_positive", {})
	end
	
end


function modifier_item_moon_shard_lua_passive:OnDestroy()
		if not self:GetCaster():HasModifier("modifier_item_moon_shard_lua_passive") then
			self:GetCaster():RemoveModifierByName("modifier_item_moon_shard_lua_passive_aura_positive")
			self:GetCaster():RemoveModifierByName("modifier_item_moon_shard_lua_passive_aura_positive_effect")
		end
end


function modifier_item_moon_shard_lua_passive:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT,
	}
end

function modifier_item_moon_shard_lua_passive:GetModifierAttackSpeedBonus_Constant()

		return self.bonus_as

end
--end

modifier_item_moon_shard_lua_passive_aura_positive = class({})
function modifier_item_moon_shard_lua_passive_aura_positive:IsHidden()		return false end
function modifier_item_moon_shard_lua_passive_aura_positive:IsPurgable() return false end

function modifier_item_moon_shard_lua_passive_aura_positive:GetAuraRadius()
	if self:GetAbility() then
		return self:GetAbility():GetSpecialValueFor("radius")
	end
end


function modifier_item_moon_shard_lua_passive_aura_positive:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_NONE
end

function modifier_item_moon_shard_lua_passive_aura_positive:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_FRIENDLY
end

function modifier_item_moon_shard_lua_passive_aura_positive:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_moon_shard_lua_passive_aura_positive:GetModifierAura()
	return "modifier_item_moon_shard_lua_passive_aura_positive_effect"
end

function modifier_item_moon_shard_lua_passive_aura_positive:IsAura()
	return true
end

modifier_item_moon_shard_lua_passive_aura_positive_effect = class({})

function modifier_item_moon_shard_lua_passive_aura_positive_effect:OnCreated()
	self.aura_as_ally = self:GetAbility():GetSpecialValueFor("aura_as_ally")
end

function modifier_item_moon_shard_lua_passive_aura_positive_effect:IsHidden() return false end
function modifier_item_moon_shard_lua_passive_aura_positive_effect:IsPurgable() return false end

function modifier_item_moon_shard_lua_passive_aura_positive_effect:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT,
	}
end

function modifier_item_moon_shard_lua_passive_aura_positive_effect:GetModifierAttackSpeedBonus_Constant()
	return self.aura_as_ally
end