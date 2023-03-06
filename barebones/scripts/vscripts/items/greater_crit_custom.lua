item_greater_crit_1 = item_greater_crit_1 or class({})
item_greater_crit_2 = item_greater_crit_1 or class({})
item_greater_crit_3 = item_greater_crit_1 or class({})
item_greater_crit_4 = item_greater_crit_1 or class({})
item_greater_crit_5 = item_greater_crit_1 or class({})
item_greater_crit_6 = item_greater_crit_1 or class({})
item_greater_crit_7 = item_greater_crit_1 or class({})
item_greater_crit_8 = item_greater_crit_1 or class({})

LinkLuaModifier( "modifier_item_imba_greater_crit", 'items/greater_crit_custom', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_item_imba_greater_crit_buff", 'items/greater_crit_custom', LUA_MODIFIER_MOTION_NONE )


function item_greater_crit_1:GetIntrinsicModifierName() return "modifier_item_imba_greater_crit" end

modifier_item_imba_greater_crit = class({})
function modifier_item_imba_greater_crit:IsHidden() return true end
function modifier_item_imba_greater_crit:IsDebuff() return false end
function modifier_item_imba_greater_crit:IsPurgable() return false end
function modifier_item_imba_greater_crit:IsPermanent() return true end

function modifier_item_imba_greater_crit:OnCreated(keys)
	self.ability = self:GetAbility()
	self.bonus_damage = self.ability:GetSpecialValueFor("bonus_damage")

	if IsServer() then
		local parent = self:GetParent()
		if not parent:HasModifier("modifier_item_imba_greater_crit_buff") then
			parent:AddNewModifier(parent, self:GetAbility(), "modifier_item_imba_greater_crit_buff", {})
		end
	end
end

function modifier_item_imba_greater_crit:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE}

	return decFuncs
end

function modifier_item_imba_greater_crit:GetModifierPreAttack_BonusDamage()
	return self.bonus_damage
end


-- Removes the damage increase counter if this is the last Daedalus in the inventory
function modifier_item_imba_greater_crit:OnDestroy()
	if IsServer() then
		local parent = self:GetParent()
		if not parent:HasModifier("modifier_item_imba_greater_crit") then
			parent:RemoveModifierByName("modifier_item_imba_greater_crit_buff")
		end
	end
end

modifier_item_imba_greater_crit_buff = class({})
function modifier_item_imba_greater_crit_buff:IsHidden() return true end
function modifier_item_imba_greater_crit_buff:IsDebuff() return false end
function modifier_item_imba_greater_crit_buff:IsPurgable() return false end
function modifier_item_imba_greater_crit_buff:IsPermanent() return true end

function modifier_item_imba_greater_crit_buff:OnCreated()
	-- Ability
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Special values
	self.base_crit = self.ability:GetSpecialValueFor("base_crit")
	self.crit_increase = self.ability:GetSpecialValueFor("crit_increase")
	self.crit_chance = self.ability:GetSpecialValueFor("crit_chance")
end

function modifier_item_imba_greater_crit_buff:DeclareFunctions()
	local decFuncs = {
		MODIFIER_PROPERTY_PREATTACK_CRITICALSTRIKE,
		MODIFIER_EVENT_ON_ATTACK_LANDED
	}

	return decFuncs
end

function modifier_item_imba_greater_crit_buff:GetModifierPreAttack_CriticalStrike( params )
	if IsServer() then

		-- Find how many Daedaluses we have for calculating crits
		local crit_modifiers = self.caster:FindAllModifiersByName("modifier_item_imba_greater_crit")

		-- Get current power
		local stacks = self:GetStackCount()
		local crit_power = self.base_crit + self.crit_increase/self.crit_increase * stacks

		self.crit_succeeded = false
		local multiplicative_chance = (1 - (1 - self.crit_chance * 0.01) ^ #crit_modifiers) * 100

		if RollPercentage(multiplicative_chance) then
			self:SetStackCount(0)
			self.crit_succeeded = true
		end

		if self.crit_succeeded then
			return crit_power
		else
			return nil
		end
	end
end

function modifier_item_imba_greater_crit_buff:OnAttackLanded( params )
	if IsServer() then
		if params.attacker == self:GetParent() then

			-- If the target is a building, do nothing
			if params.target:IsBuilding() then
				return nil
			end

			if not self.crit_succeeded then
				local stacks = self:GetStackCount()
				local crit_modifiers = self.caster:FindAllModifiersByName("modifier_item_imba_greater_crit")
				self:SetStackCount(stacks + self.crit_increase * #crit_modifiers)
			end
		end
	end
end

