item_monkey_king_bar1 = item_monkey_king_bar1 or class({})
item_monkey_king_bar2 = item_monkey_king_bar1 or class({})
item_monkey_king_bar3 = item_monkey_king_bar1 or class({})
item_monkey_king_bar4 = item_monkey_king_bar1 or class({})
item_monkey_king_bar5 = item_monkey_king_bar1 or class({})
item_monkey_king_bar6 = item_monkey_king_bar1 or class({})
item_monkey_king_bar7 = item_monkey_king_bar1 or class({})
item_monkey_king_bar8 = item_monkey_king_bar1 or class({})

LinkLuaModifier("modifier_monkey_king_bar", "items/item_monkey_king_bar_lua.lua", LUA_MODIFIER_MOTION_NONE)

modifier_monkey_king_bar = class({})

function item_monkey_king_bar1:GetIntrinsicModifierName()
	return "modifier_monkey_king_bar"
end

function modifier_monkey_king_bar:IsHidden() return true end
function modifier_monkey_king_bar:IsPurgable() return false end
function modifier_monkey_king_bar:IsDebuff() return false end

function modifier_monkey_king_bar:OnCreated(keys)
	self:OnRefresh(keys)
end

function modifier_monkey_king_bar:OnRefresh(keys)

	local parent = self:GetParent()
	local ability = self:GetAbility()

	if (not parent) or (not ability) or parent:IsNull() or ability:IsNull() then return end

	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage") or 0
	self.bonus_attack_speed = ability:GetSpecialValueFor("bonus_attack_speed") or 0
	self.bonus_chance_damage = ability:GetSpecialValueFor("bonus_chance_damage") or 0
	self.chance = ability:GetSpecialValueFor("chance") or 0
	
	self.pierce_proc 			= false
	self.pierce_records			= {}
			
end

function modifier_monkey_king_bar:DeclareFunctions()
	if IsServer() then
		return {
			MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
			MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT,
			MODIFIER_EVENT_ON_ATTACK_LANDED,
			MODIFIER_EVENT_ON_ATTACK
		}
	else
		return {
			MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,

		}
	end
end

function modifier_monkey_king_bar:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_monkey_king_bar:GetModifierAttackSpeedBonus_Constant() return self.bonus_attack_speed end


function modifier_monkey_king_bar:OnAttackLanded(keys)
	if RandomInt(1,100) <= self.chance and not keys.target:IsBuilding() and not keys.target:IsMagicImmune() then 
		if IsServer() then
			local owner = self:GetParent()
			if owner ~= keys.attacker then
				return end
			local target = keys.target
			if owner:IsIllusion() then
				return end
	
    
				ApplyDamage({
					victim 			= keys.target,
					damage 			= self.bonus_chance_damage,
					damage_type		= DAMAGE_TYPE_MAGICAL,
					damage_flags 	= DOTA_DAMAGE_FLAG_NONE,
					attacker 		= self:GetCaster(),
					ability 		= self:GetAbility()
				})
				self:GetParent():EmitSound("DOTA_Item.MKB.proc")
				SendOverheadEventMessage(nil, OVERHEAD_ALERT_BONUS_SPELL_DAMAGE, keys.target, ((self.bonus_chance_damage * self:GetCaster():GetSpellAmplification(false)) + self.bonus_chance_damage) - (((self.bonus_chance_damage * self:GetCaster():GetSpellAmplification(false)) + self.bonus_chance_damage) * keys.target:GetMagicalArmorValue()), nil)
		end
	end
end
