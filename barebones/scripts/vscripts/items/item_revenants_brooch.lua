
item_revenants_brooch_1 = class({})
item_revenants_brooch_2 = class({})
item_revenants_brooch_3 = class({})
item_revenants_brooch_4 = class({})
item_revenants_brooch_5 = class({})
item_revenants_brooch_6 = class({})
item_revenants_brooch_7 = class({})
item_revenants_brooch_8 = class({})

LinkLuaModifier( "revenants_brooch", 'items/item_revenants_brooch', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_item_revenants_brooch_1", 'items/item_revenants_brooch', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_item_revenants_brooch_2", 'items/item_revenants_brooch', LUA_MODIFIER_MOTION_NONE )

function item_revenants_brooch_1:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_1_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_1_off"
	end
    return "all/revenants_brooch_1"
end
function item_revenants_brooch_2:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_2_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_2_off"
	end
    return "all/revenants_brooch_2"
end
function item_revenants_brooch_3:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_3_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_3_off"
	end
    return "all/revenants_brooch_3"
end
function item_revenants_brooch_4:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_4_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_4_off"
	end
    return "all/revenants_brooch_4"
end
function item_revenants_brooch_5:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_5_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_5_off"
	end
    return "all/revenants_brooch_5"
end
function item_revenants_brooch_6:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_6_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_6_off"
	end
    return "all/revenants_brooch_6"
end
function item_revenants_brooch_7:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_7_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_7_off"
	end
    return "all/revenants_brooch_7"
end
function item_revenants_brooch_8:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_revenants_brooch_1") then    
        return "all/revenants_brooch_2_on"
    elseif caster:HasModifier("modifier_item_revenants_brooch_2") then
        return "all/revenants_brooch_2_off"
	end
    return "all/revenants_brooch_2"
end

function item_revenants_brooch_1:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_2:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_3:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_4:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_5:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_6:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_7:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_8:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_item_revenants_brooch_1"
		caster.modifier_table_x[2] = "modifier_item_revenants_brooch_2"

    end

    if caster:HasModifier( caster.modifier_table_x[caster.curr_modifier_num_x] ) then
        caster:RemoveModifierByName( caster.modifier_table_x[caster.curr_modifier_num_x] )
    end
    caster.curr_modifier_num_x=caster.curr_modifier_num_x+1
    if caster.curr_modifier_num_x>2 then
        caster.curr_modifier_num_x=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table_x[caster.curr_modifier_num_x], {})
    self:GetAbilityTextureName()
end

function item_revenants_brooch_1:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_2:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_3:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_4:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_5:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_6:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_7:GetIntrinsicModifierName() return "revenants_brooch" end
function item_revenants_brooch_8:GetIntrinsicModifierName() return "revenants_brooch" end

revenants_brooch=class({})
function revenants_brooch:IsHidden() return true end
function revenants_brooch:IsPurgable() return false end
function revenants_brooch:IsPurgeException() return false end
function revenants_brooch:RemoveOnDeath() return self:GetParent():IsIllusion() and true or false end
function revenants_brooch:AllowIllusionDuplicate() return false end

function revenants_brooch:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE,
		MODIFIER_PROPERTY_EXTRA_HEALTH_PERCENTAGE,
		MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL,
		MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL_VALUE
	}
	return funcs
end
function revenants_brooch:OnCreated(keys) 
    
	self:OnRefresh(keys)

	self.ability_exceptions = {
		phantom_assassin_blur = true,
	}

	self.aoe_keywords = {
		"crit_chance",
		"chance",
		"bonus_chance_damage",
		"bonus_chance",
	}

	self.other_keywords = {
		echo_slam_damage_range = true
	}
	
	
	if self:GetAbility() == nil then
		return
	end
	local ability = self:GetAbility()
    self.all_stats = ability:GetSpecialValueFor("all_stats")
	self.all_damage = ability:GetSpecialValueFor("all_damage")
	self.all_health = ability:GetSpecialValueFor("all_health")
    if not IsServer() or self:GetParent():IsIllusion() then
        return 
    end
    self:GetParent():AddNewModifier( self:GetParent(), self:GetAbility(),"modifier_item_revenants_brooch_1", {})
	self:StartIntervalThink(self:GetAbility():GetSpecialValueFor("procent_brooch_damage_interval"))
end

function revenants_brooch:OnRefresh(keys) 
	local ability = self:GetAbility()
	local parent = self:GetParent()

	if (not ability) or (not parent) or (parent:IsNull() or ability:IsNull()) then return end

	self.aoe_multiplier = 1 + 0.01 * (ability:GetSpecialValueFor("up_chaos") or 0)

	if IsClient() then return end
end

function revenants_brooch:OnDestroy() 
    if self:GetParent():IsIllusion() then
        return 
    end
    if IsServer() then 
        if self:GetParent():HasModifier(  "modifier_item_revenants_brooch_1" ) then 
            self:GetParent():RemoveModifierByName( "modifier_item_revenants_brooch_1")
        elseif self:GetCaster().modifier_table_x~=nil then
                if self:GetParent():HasModifier( self:GetCaster().modifier_table_x[self:GetCaster().curr_modifier_num_x] ) then
                    self:GetParent():RemoveModifierByName( self:GetCaster().modifier_table_x[self:GetCaster().curr_modifier_num_x] )
                end 
        end     
    end 
    self:GetCaster().curr_modifier_num_x=nil
    self:GetCaster().modifier_table_x=nil
end

function revenants_brooch:OnIntervalThink(keys)
	self:GetParent():CalculateStatBonus(false)
	self.str_all = self:GetParent():GetStrength() * self:GetAbility():GetSpecialValueFor('all_stats') * 0.01
	self.agi_all = self:GetParent():GetAgility() * self:GetAbility():GetSpecialValueFor('all_stats') * 0.01
	self.int_all = self:GetParent():GetIntellect() * self:GetAbility():GetSpecialValueFor('all_stats') * 0.01
	
	local radius = self:GetAbility():GetSpecialValueFor('radius')
    local caster = self:GetCaster()

    if IsServer() and caster:IsAlive() and not caster:IsIllusion() then
        local enemies = FindUnitsInRadius(caster:GetTeamNumber(), caster:GetAbsOrigin(), nil, radius, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_BASIC + DOTA_TEAM_NEUTRALS, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES, FIND_ANY_ORDER, false)

		
        for _, enemy in pairs(enemies) do
			local MaxHP = enemy:GetMaxHealth()
			local HalhHP = MaxHP / 2
			local HP = enemy:GetHealth()
			local damageHP = MaxHP / 100 * self:GetAbility():GetSpecialValueFor('procent_brooch_damage')
			
            local damageTable = {
                victim = enemy,
                attacker = caster,
				damage = damageHP,
                damage_type = DAMAGE_TYPE_PURE ,
                damage_flags = DOTA_DAMAGE_FLAG_NO_SPELL_AMPLIFICATION, --Optional.
                ability = self:GetAbility(), --Optional.
            }

            if enemy:IsAlive() and HP > HalhHP and IsServer() and ( enemy:GetUnitName() == "creep_3" ) then
                ApplyDamage(damageTable)
            end
        end
    end	
end
	
function revenants_brooch:GetModifierBonusStats_Strength() 
	return self.str_all
end
 
function revenants_brooch:GetModifierBonusStats_Agility() 
	return self.agi_all
end

function revenants_brooch:GetModifierBonusStats_Intellect() 
	return self.int_all
end

function revenants_brooch:GetModifierDamageOutgoing_Percentage()
	return self:GetAbility():GetSpecialValueFor("all_damage")
end

function revenants_brooch:GetModifierExtraHealthPercentage() 
	return self:GetAbility():GetSpecialValueFor("all_health") 
end

function revenants_brooch:GetModifierOverrideAbilitySpecial(keys)
	if (not keys.ability) or (not keys.ability_special_value) or (not self.aoe_keywords) then return 0 end

	if self.ability_exceptions and self.ability_exceptions[keys.ability:GetAbilityName()] then
		return 0
	end

	for _, keyword in pairs(self.aoe_keywords) do
		if string.find(keys.ability_special_value, keyword) then
			return 1
		end
	end

	if (self.other_keywords and self.other_keywords[keys.ability_special_value]) then
		return 1
	end 

	return 0
end

function revenants_brooch:GetModifierOverrideAbilitySpecialValue(keys)
	local value = keys.ability:GetLevelSpecialValueNoOverride(keys.ability_special_value, keys.ability_special_level)

	for _, keyword in pairs(self.aoe_keywords) do
		if string.find(keys.ability_special_value, keyword) then
			return value * (self.aoe_multiplier or 1)
		end
	end

	if (self.other_keywords and self.other_keywords[keys.ability_special_value]) then
		return value * (self.aoe_multiplier or 1)
	end 

	return value
end


modifier_item_revenants_brooch_1 = class({})
function modifier_item_revenants_brooch_1:IsHidden() return true end
function modifier_item_revenants_brooch_1:IsPurgable() return false end
function modifier_item_revenants_brooch_1:DestroyOnExpire() return false end
function modifier_item_revenants_brooch_1:OnCreated( kv ) end
function modifier_item_revenants_brooch_1:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_ATTACK_RANGE_BONUS
	}
	return funcs
end
function modifier_item_revenants_brooch_1:GetModifierAttackRangeBonus()
		if self:GetCaster():IsRangedAttacker() then 
		self.attackrange = self:GetAbility():GetSpecialValueFor("AttackRangeDalnik")
			elseif not self:GetCaster():IsRangedAttacker() then 
			self.attackrange = self:GetAbility():GetSpecialValueFor("AttackRangeMelee")
		end
	return self.attackrange
end

modifier_item_revenants_brooch_2 = class({})
function modifier_item_revenants_brooch_2:IsHidden() return true end
function modifier_item_revenants_brooch_2:IsPurgable() return false end
function modifier_item_revenants_brooch_2:DestroyOnExpire() return false end
function modifier_item_revenants_brooch_2:OnCreated( kv ) end
function modifier_item_revenants_brooch_2:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_ATTACK_RANGE_BONUS
	}
	return funcs
end

function modifier_item_revenants_brooch_2:GetModifierAttackRangeBonus()
	return 0
end
