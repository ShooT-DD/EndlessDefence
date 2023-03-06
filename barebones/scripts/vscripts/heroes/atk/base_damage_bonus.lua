base_damage_bonus = class({})

LinkLuaModifier( "modifier_base_damage_bonus", "heroes/atk/base_damage_bonus", LUA_MODIFIER_MOTION_NONE )

function base_damage_bonus:GetIntrinsicModifierName()
    return "modifier_base_damage_bonus"
end

function base_damage_bonus:OnUpgrade()
	local fromload = self:GetCaster():FindModifierByName( "modifier_base_damage_bonus" ):GetStackCount()
    local modifier = self:GetCaster():FindModifierByName('modifier_base_damage_bonus')
    if (modifier) then
        modifier:SetStackCount((fromload or modifier.attacks or 0))
    end
	
end

modifier_base_damage_bonus = class({})

function modifier_base_damage_bonus:DeclareFunctions()
    local funcs = {
        MODIFIER_EVENT_ON_ATTACK_LANDED,
        MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE
    }
    return funcs
end
function modifier_base_damage_bonus:OnAttackLanded(data)
    if (data.attacker ~= self:GetParent()) then return end
	fromload = self:GetCaster():FindModifierByName( "modifier_base_damage_bonus" ):GetStackCount()
    self.attacks = (fromload or self.attacks or 0) + 1
    self:SetStackCount(self.attacks)
	
end 

function modifier_base_damage_bonus:GetModifierPreAttack_BonusDamage()
	_G.modifier_essence_stacs = self:GetStackCount() * self:GetAbility():GetSpecialValueFor('damage_per_attack')
    return modifier_essence_stacs
end 
