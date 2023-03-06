item_mjollnir_custom_1 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_2 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_3 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_4 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_5 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_6 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_7 = item_mjollnir_custom_1 or class({})
item_mjollnir_custom_8 = item_mjollnir_custom_1 or class({})

LinkLuaModifier("mjollnir_custom", "items/item_mjollnir.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("mjollnir_strike_custom", "items/item_mjollnir.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("mjollnir_active_custom", "items/item_mjollnir.lua", LUA_MODIFIER_MOTION_NONE)

function item_mjollnir_custom_1:GetIntrinsicModifierName()
	return "mjollnir_custom"
end

function item_mjollnir_custom_1:OnSpellStart()
	local target = self:GetCursorTarget()
		if self:GetCaster():GetTeamNumber() == self:GetCursorTarget():GetTeam() and not target:IsBuilding() == true then 
			target:AddNewModifier(self:GetCaster(), self, "mjollnir_active_custom", {duration = self:GetSpecialValueFor("static_duration")})
			self:GetParent():EmitSound("DOTA_Item.Mjollnir.Activate")
		end
end

-------------------------------------------------------------------------------------
mjollnir_active_custom = class({})



function mjollnir_active_custom:OnCreated()
	self.shield_particle = ParticleManager:CreateParticle("particles/items2_fx/mjollnir_shield.vpcf", PATTACH_ABSORIGIN_FOLLOW, self:GetParent())
	self:AddParticle(self.shield_particle, false, false, -1, false, false)

	self.static_chance	 	= self:GetAbility():GetSpecialValueFor("static_chance")
	self.static_strikes	 	= self:GetAbility():GetSpecialValueFor("static_strikes")
	self.static_damage	 	= self:GetAbility():GetSpecialValueFor("static_damage")
	self.static_radius		= self:GetAbility():GetSpecialValueFor("static_radius")
	self.static_cooldown	= self:GetAbility():GetSpecialValueFor("static_cooldown")
	self:StartIntervalThink(self.static_cooldown)

end

function mjollnir_active_custom:DeclareFunctions()
	return{
		MODIFIER_EVENT_ON_TAKEDAMAGE
	}
end

function mjollnir_active_custom:OnIntervalThink()
	self.prockk = 1
end

function mjollnir_active_custom:OnTakeDamage(keys)
	if keys.unit == self:GetParent() and keys.attacker ~= self:GetParent() and self.prockk == 1 and RandomInt(1,100) <= self.static_chance and not keys.attacker:IsMagicImmune() then
		
		
		local unit_count = 0
		
		for _, enemy in pairs(FindUnitsInRadius(self:GetCaster():GetTeamNumber(), self:GetParent():GetAbsOrigin(), nil, self.static_radius, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC, DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)) do
			if enemy ~= keys.attacker then
				ApplyDamage({
					victim 			= enemy,
					damage 			= self.static_damage,
					damage_type		= DAMAGE_TYPE_MAGICAL,
					damage_flags 	= DOTA_DAMAGE_FLAG_NONE,
					attacker 		= self:GetCaster(),
					ability 		= self:GetAbility()
				})
				if (self:GetCaster():GetItemInSlot(0) == nil ) then
					slot0 = nil
					else
					if slot0 == 'item_mjollnir_custom_1' then
					useitem = 1
					end
					if slot0 == 'item_mjollnir_custom_2' then
					useitem = 1
					end
					if slot0 == 'item_mjollnir_custom_3' then
					useitem = 1
					end		
					if slot0 == 'item_mjollnir_custom_4' then
					useitem = 1
					end	
					if slot0 == 'item_mjollnir_custom_5' then
					useitem = 1
					end	
					if slot0 == 'item_mjollnir_custom_6' then
					useitem = 1
					end	
					if slot0 == 'item_mjollnir_custom_7' then
					useitem = 1
					end	
					if slot0 == 'item_mjollnir_custom_8' then
					useitem = 1
					end
				end
					if useitem == 1 then 
					SendOverheadEventMessage(nil, OVERHEAD_ALERT_DAMAGE, enemy, 
					((self.static_damage * self:GetCaster():GetSpellAmplification(false)) + self.static_damage) - (((self.static_damage * self:GetCaster():GetSpellAmplification(false)) + self.static_damage) * enemy:GetMagicalArmorValue()), nil)
				end
				unit_count = unit_count + 1
				if (unit_count >= self.static_strikes and self.static_strikes > 0) then
					break
				end
			end
		end
		self.prockk = 0
		
	end
end

--------------------------------------------------------------------------------

mjollnir_custom = class({})

function mjollnir_custom:IsHidden()
	return true
end

function mjollnir_custom:IsPurgable()
	return false
end

function mjollnir_custom:RemoveOnDeath()	
	return false 
end

function mjollnir_custom:OnCreated()
	self.bonus_damage	= self:GetAbility():GetSpecialValueFor("bonus_damage")
	self.bonus_attack_speed = self:GetAbility():GetSpecialValueFor("bonus_attack_speed")
	self.chain_chance = self:GetAbility():GetSpecialValueFor("chain_chance")
	self.chain_delay = self:GetAbility():GetSpecialValueFor("chain_delay")
	self:StartIntervalThink(self.chain_delay)
end

function mjollnir_custom:DeclareFunctions()
	return{
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
		MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT,
		MODIFIER_EVENT_ON_ATTACK_LANDED
	}
end

function mjollnir_custom:GetModifierPreAttack_BonusDamage()
	return self.bonus_damage
end

function mjollnir_custom:GetModifierAttackSpeedBonus_Constant()
	return self.bonus_attack_speed
end
function mjollnir_custom:OnIntervalThink()
	self.prock = 1
end
function mjollnir_custom:OnAttackLanded(keys)
	
	if keys.attacker == self:GetParent() and self:GetParent():IsAlive() and self.prock == 1 and not self:GetParent():IsIllusion() and not keys.target:IsMagicImmune() and not keys.target:IsBuilding() and not keys.target:IsOther() and self:GetParent():GetTeamNumber() ~= keys.target:GetTeamNumber() and RandomInt(1,100) <= self.chain_chance then
	

		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "mjollnir_strike_custom", {starting_unit_entindex	= keys.target:entindex()})
		self.prock = 0
		
	end
	
	
end

--------------------------------------------------------------------------------

mjollnir_strike_custom = class({
    IsHidden                = function(self) return true end,
    IsPurgable              = function(self) return false end,
    IsDebuff                = function(self) return false end,
    IsBuff                  = function(self) return true end,
    RemoveOnDeath           = function(self) return false end,
})


--------------------------------------------------------------------------------

if IsServer() then
function mjollnir_strike_custom:OnCreated(kv)
    self.delay = self:GetAbility():GetSpecialValueFor("chain_delay")
    self.jump_count = self:GetAbility():GetSpecialValueFor("chain_strikes")
    self.radius = self:GetAbility():GetSpecialValueFor("chain_radius")
    self.damage = self:GetAbility():GetSpecialValueFor("chain_damage")

    self.count = 0
    self.actual_unit = EntIndexToHScript(kv.starting_unit_entindex)
    self.affected_units = {}

    self:CreateMjollnirLightning(self.actual_unit)

    self:StartIntervalThink(self.delay)
end

function mjollnir_strike_custom:OnIntervalThink()
    local caster = self:GetCaster()

    local all = FindUnitsInRadius(caster:GetTeam(), 
    self.actual_unit:GetOrigin(), 
    nil, 
    self.radius,
    DOTA_UNIT_TARGET_TEAM_ENEMY, 
    DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC, 
    DOTA_UNIT_TARGET_FLAG_NO_INVIS + DOTA_UNIT_TARGET_FLAG_FOW_VISIBLE,
    FIND_ANY_ORDER, 
    false)

    local old_actual_unit = self.actual_unit

    for _, unit in ipairs(all) do
        if not HasAffected(self.affected_units, unit) then
            self:CreateMjollnirLightning(unit)

            break
        end
    end
    if old_actual_unit == self.actual_unit or self.count >= self.jump_count then
        self:Destroy()
    end
end

function mjollnir_strike_custom:CreateMjollnirLightning(target)
    self.count = self.count + 1
    local caster = self:GetCaster()
    local OldTarget = self.actual_unit
    if self.count == 1 then
        OldTarget = caster
    end
    
	if (self:GetCaster():GetItemInSlot(0) == nil ) then
					slot0 = nil
					else
					if slot0 == 'item_mjollnir_custom_1' then
					useitem1 = 1
					end
					if slot0 == 'item_mjollnir_custom_2' then
					useitem1 = 1
					end
					if slot0 == 'item_mjollnir_custom_3' then
					useitem1 = 1
					end		
					if slot0 == 'item_mjollnir_custom_4' then
					useitem1 = 1
					end	
					if slot0 == 'item_mjollnir_custom_5' then
					useitem1 = 1
					end	
					if slot0 == 'item_mjollnir_custom_6' then
					useitem1 = 1
					end	
					if slot0 == 'item_mjollnir_custom_7' then
					useitem1 = 1
					end	
					if slot0 == 'item_mjollnir_custom_8' then
					useitem1 = 1
					end
	end
					if useitem1 == 1 then 
					SendOverheadEventMessage(nil, OVERHEAD_ALERT_DAMAGE, target, 
					((self.damage * self:GetCaster():GetSpellAmplification(false)) + self.damage) - (((self.damage * self:GetCaster():GetSpellAmplification(false)) + self.damage) * target:GetMagicalArmorValue()), nil)
					end
		
    ApplyDamage({
		victim 			= target,
		damage 			= self.damage,
		damage_type		= DAMAGE_TYPE_MAGICAL,
		damage_flags 	= DOTA_DAMAGE_FLAG_NONE,
		attacker 		= self:GetCaster(),
		ability 		= self:GetAbility()
    })
    self.actual_unit = target
    table.insert(self.affected_units, target)
end

function HasAffected(Table, unit)
    for k,v in pairs(Table) do
        if v == unit then
            return true
        end
    end
    return false
end
end
