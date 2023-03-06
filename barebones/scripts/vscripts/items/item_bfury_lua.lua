item_bfury_lua1 = item_bfury_lua1 or class({})
item_bfury_lua2 = item_bfury_lua1 or class({})
item_bfury_lua3 = item_bfury_lua1 or class({})
item_bfury_lua4 = item_bfury_lua1 or class({})
item_bfury_lua5 = item_bfury_lua1 or class({})
item_bfury_lua6 = item_bfury_lua1 or class({})
item_bfury_lua7 = item_bfury_lua1 or class({})
item_bfury_lua8 = item_bfury_lua1 or class({})

modifier_item_custom_battlefury_1 = class({})

function item_bfury_lua1:OnSpellStart()
	local caster = self:GetCaster()
	local target_point = self:GetCursorPosition()
	GridNav:DestroyTreesAroundPoint(target_point, 1, false)
end

LinkLuaModifier( "modifier_item_custom_desolator", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_battlefury_1", "items/item_bfury_lua.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_base_damage_bonus", "heroes/atk/base_damage_bonus", LUA_MODIFIER_MOTION_NONE )

function modifier_item_custom_battlefury_1:IsHidden() return true end

function modifier_item_custom_battlefury_1:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT, MODIFIER_PROPERTY_MANA_REGEN_CONSTANT, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK, MODIFIER_PROPERTY_TOTALDAMAGEOUTGOING_PERCENTAGE} end

function item_bfury_lua1:GetIntrinsicModifierName() return "modifier_item_custom_battlefury_1" end


function modifier_item_custom_battlefury_1:OnCreated() self:OnRefresh() end


function modifier_item_custom_battlefury_1:OnDestroy() end

function modifier_item_custom_battlefury_1:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	self.bonus_health_regen = ability:GetSpecialValueFor("bonus_health_regen")
	self.bonus_mana_regen = ability:GetSpecialValueFor("bonus_mana_regen")
	self.cleave_pct = 0.01 * ability:GetSpecialValueFor("cleave")
	self.start_radius = ability:GetSpecialValueFor("start_damage")
	self.end_radius = ability:GetSpecialValueFor("end_damage")
	self.distance = ability:GetSpecialValueFor("cleave_dalnost")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
end


function modifier_item_custom_battlefury_1:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_battlefury_1:GetModifierConstantHealthRegen() return self.bonus_health_regen end
function modifier_item_custom_battlefury_1:GetModifierConstantManaRegen() return self.bonus_mana_regen end

function modifier_item_custom_battlefury_1:GetModifierProcAttack_Feedback(keys)
    if not(keys.attacker:IsRangedAttacker()) and keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		
		local fury_swipes_damage = 0
	
		if keys.attacker:HasAbility("ursa_fury_swipes") and keys.target:HasModifier("modifier_ursa_fury_swipes_damage_increase") then
			local ursa_swipes = keys.attacker:FindAbilityByName("ursa_fury_swipes")
			if ursa_swipes and not ursa_swipes:IsNull() then
				local stacks = keys.target:GetModifierStackCount("modifier_ursa_fury_swipes_damage_increase", keys.attacker)
				fury_swipes_damage = stacks * ursa_swipes:GetSpecialValueFor("damage_per_stack")
			end
		end
		
        local cleave_damage = (keys.damage + fury_swipes_damage) * self.cleave_pct
		
        stackcount = 0
		
        DoCleaveAttack(keys.attacker, keys.target, self:GetAbility(), cleave_damage, self.start_radius, self.end_radius, self.distance, nil)
	end
   end


function modifier_item_custom_battlefury_1:GetModifierTotalDamageOutgoing_Percentage(keys)
    if keys.attacker and keys.target and keys.inflictor and keys.inflictor == self:GetAbility() and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.inflictor:IsNull()) then
        keys.target:AddNewModifier(keys.attacker, keys.inflictor, "modifier_item_custom_desolator", {duration = self.corruption_duration})

        stackcount = stackcount + 1

    end
end
