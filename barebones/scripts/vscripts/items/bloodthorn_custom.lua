item_bloodthorn_custom_1 = class({})
item_bloodthorn_custom_2 = class({})
item_bloodthorn_custom_3 = class({})
item_bloodthorn_custom_4 = class({})
item_bloodthorn_custom_5 = class({})
item_bloodthorn_custom_6 = class({})
item_bloodthorn_custom_7 = class({})
item_bloodthorn_custom_8 = class({})

LinkLuaModifier( "bloodthorn_custom", 'items/bloodthorn_custom', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_bloodthorn_custom_item_1", 'items/bloodthorn_custom', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_bloodthorn_custom_item_2", 'items/bloodthorn_custom', LUA_MODIFIER_MOTION_NONE )

function item_bloodthorn_custom_1:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_1_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_1_off"
	end
    return "all/bloodthorn_custom_1"
end
function item_bloodthorn_custom_2:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_2_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_2_off"
	end
    return "all/bloodthorn_custom_2"
end
function item_bloodthorn_custom_3:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_3_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_3_off"
	end
    return "all/bloodthorn_custom_3"
end
function item_bloodthorn_custom_4:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_4_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_4_off"
	end
    return "all/bloodthorn_custom_4"
end
function item_bloodthorn_custom_5:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_5_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_5_off"
	end
    return "all/bloodthorn_custom_5"
end
function item_bloodthorn_custom_6:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_6_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_6_off"
	end
    return "all/bloodthorn_custom_6"
end
function item_bloodthorn_custom_7:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_7_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_7_off"
	end
    return "all/bloodthorn_custom_7"
end
function item_bloodthorn_custom_8:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_bloodthorn_custom_item_1") then    
        return "all/bloodthorn_custom_2_on"
    elseif caster:HasModifier("modifier_bloodthorn_custom_item_2") then
        return "all/bloodthorn_custom_2_off"
	end
    return "all/bloodthorn_custom_2"
end

function item_bloodthorn_custom_1:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_2:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_3:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_4:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_5:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_6:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_7:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_8:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num_x == nil then
		caster.curr_modifier_num_x=1
	end	

	if  caster.modifier_table_x  == nil then
		caster.modifier_table_x={}
		caster.modifier_table_x[1] = "modifier_bloodthorn_custom_item_1"
		caster.modifier_table_x[2] = "modifier_bloodthorn_custom_item_2"

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

function item_bloodthorn_custom_1:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_2:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_3:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_4:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_5:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_6:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_7:GetIntrinsicModifierName() return "bloodthorn_custom" end
function item_bloodthorn_custom_8:GetIntrinsicModifierName() return "bloodthorn_custom" end

bloodthorn_custom=class({})
function bloodthorn_custom:IsHidden() return true end
function bloodthorn_custom:IsPurgable() return false end
function bloodthorn_custom:IsPurgeException() return false end
function bloodthorn_custom:RemoveOnDeath() return self:GetParent():IsIllusion() and true or false end
function bloodthorn_custom:AllowIllusionDuplicate() return false end

function bloodthorn_custom:OnCreated(keys) 
    if self:GetAbility() == nil then
		return
	end
	local ability = self:GetAbility()
    self.spell_crit_chance = ability:GetSpecialValueFor("spell_crit_chance")
	self.spell_crit_multiplier = ability:GetSpecialValueFor("spell_crit_multiplier")
	self.up_intellect = ability:GetSpecialValueFor("up_intellect")
	self.mp_regen = ability:GetSpecialValueFor("mp_regen")
	self.cast_time = ability:GetSpecialValueFor("cast_time")
    if not IsServer() or self:GetParent():IsIllusion() then
        return 
    end
    self:GetParent():AddNewModifier( self:GetParent(), self:GetAbility(),"modifier_bloodthorn_custom_item_1", {})
	self:OnRefresh(keys)
end

function bloodthorn_custom:OnRefresh(keys) end

function bloodthorn_custom:OnDestroy() 
    if self:GetParent():IsIllusion() then
        return 
    end
    if IsServer() then 
        if self:GetParent():HasModifier(  "modifier_bloodthorn_custom_item_1" ) then 
            self:GetParent():RemoveModifierByName( "modifier_bloodthorn_custom_item_1")
        elseif self:GetCaster().modifier_table_x~=nil then
                if self:GetParent():HasModifier( self:GetCaster().modifier_table_x[self:GetCaster().curr_modifier_num_x] ) then
                    self:GetParent():RemoveModifierByName( self:GetCaster().modifier_table_x[self:GetCaster().curr_modifier_num_x] )
                end 
        end     
    end 
    self:GetCaster().curr_modifier_num_x=nil
    self:GetCaster().modifier_table_x=nil
end

function bloodthorn_custom:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
		MODIFIER_PROPERTY_CASTTIME_PERCENTAGE
	}
	return funcs
end
function bloodthorn_custom:GetModifierPercentageCasttime( params ) return self.cast_time end
 
function bloodthorn_custom:GetModifierBonusStats_Intellect( params ) return self.up_intellect end

function bloodthorn_custom:GetModifierConstantManaRegen( params ) return self.mp_regen end

local exception_list = {
	["item_bfury_lua1"] = 1,
	["item_bfury_lua2"] = 1,
	["item_bfury_lua3"] = 1,
	["item_bfury_lua4"] = 1,
	["item_bfury_lua5"] = 1,
	["item_bfury_lua6"] = 1,
	["item_bfury_lua7"] = 1,
	["item_bfury_lua8"] = 1,
	["all_3_bfury"] = 1,
	["kunkka_tidebringer"] = 1,
	["terror_bfury"] = 1,
	["sven_great_cleave"] = 1,
	["magnataur_empower"] = 1,
	["special_bonus_cleave_15"] = 1,
	["special_bonus_cleave_20"] = 1,
	["special_bonus_cleave_25"] = 1,
	["special_bonus_cleave_30"] = 1,
	["special_bonus_cleave_35"] = 1,
	["special_bonus_cleave_40"] = 1,
	["special_bonus_cleave_60"] = 1,
	["special_bonus_cleave_100"] = 1,
	["special_bonus_cleave_130"] = 1,
	["special_bonus_cleave_140"] = 1,
	["special_bonus_cleave_150"] = 1,
	["special_bonus_cleave_175"] = 1,
	["luna_moon_glaive"] = 1,
	["tiny_tree_grab"] = 1,
	["tiny_toss_tree"] = 1,
	["tiny_tree_channel"] = 1,
	["imba_bristleback_quill_spray"] = 1,
	["imba_bristleback_bristleback"] = 1,
	["phantom_assassin_stifling_dagger"] = 1,
	["templar_assassin_psi_blades"] = 1,
	["item_revenants_brooch_1"] = 1,
	["item_revenants_brooch_2"] = 1,
	["item_revenants_brooch_3"] = 1,
	["item_revenants_brooch_4"] = 1,
	["item_revenants_brooch_5"] = 1,
	["item_revenants_brooch_6"] = 1,
	["item_revenants_brooch_7"] = 1,
	["item_revenants_brooch_8"] = 1,
}

modifier_bloodthorn_custom_item_1 = class({})
function modifier_bloodthorn_custom_item_1:IsHidden() return true end
function modifier_bloodthorn_custom_item_1:IsPurgable() return false end
function modifier_bloodthorn_custom_item_1:DestroyOnExpire() return false end
function modifier_bloodthorn_custom_item_1:OnCreated( kv ) end
function modifier_bloodthorn_custom_item_1:DeclareFunctions()
	local funcs = {
		MODIFIER_EVENT_ON_TAKEDAMAGE
	}
	return funcs
end

function modifier_bloodthorn_custom_item_1:OnTakeDamage( params )
	  if IsServer() then
        if params.attacker ~= self:GetParent() then
        	return
        end
		
		if self:GetParent():GetTeamNumber() == params.unit:GetTeamNumber() then return end

        if params.damage_type ~= DAMAGE_TYPE_MAGICAL and params.inflictor == nil then return end

        if params.damage_flags == DOTA_DAMAGE_FLAG_REFLECTION then
			return 
		end

		if params.inflictor then
			if exception_list[params.inflictor:GetName()] then 
				return
			end
		end

        if not RollPercentage(self:GetAbility():GetSpecialValueFor("spell_crit_chance")) then return end

   		ApplyDamage({
   			victim = params.unit,
   			attacker = params.attacker,
   			damage = ((((self:GetAbility():GetSpecialValueFor("spell_crit_multiplier") or 0) - 100) / 100) * params.damage),
   			damage_type = params.damage_type,
			damage_flags = DOTA_DAMAGE_FLAG_NO_SPELL_AMPLIFICATION,
   			ability = self:GetAbility(),
   		})

   		SendOverheadEventMessage( params.unit, OVERHEAD_ALERT_MANA_ADD , params.unit, (((self:GetAbility():GetSpecialValueFor("spell_crit_multiplier") or 0)) / 100) * params.damage, nil )
	end
	return 0
end


modifier_bloodthorn_custom_item_2 = class({})
function modifier_bloodthorn_custom_item_2:IsHidden() return true end
function modifier_bloodthorn_custom_item_2:IsPurgable() return false end
function modifier_bloodthorn_custom_item_2:DestroyOnExpire() return false end
function modifier_bloodthorn_custom_item_2:OnCreated( kv ) end
function modifier_bloodthorn_custom_item_2:DeclareFunctions()
	local funcs = {
		MODIFIER_EVENT_ON_TAKEDAMAGE
	}
	return funcs
end

function modifier_bloodthorn_custom_item_2:OnTakeDamage( params )
	  if IsServer() then
        if params.attacker ~= self:GetParent() then
        	return
        end
		
		if self:GetParent():GetTeamNumber() == params.unit:GetTeamNumber() then return end

        if params.damage_type ~= DAMAGE_TYPE_MAGICAL and params.inflictor == nil then return end

        if params.damage_flags == DOTA_DAMAGE_FLAG_REFLECTION then
			return 
		end

		if params.inflictor then
			if exception_list[params.inflictor:GetName()] then 
				return
			end
		end

        if not RollPercentage(self:GetAbility():GetSpecialValueFor("spell_crit_chance")) then return end

   		ApplyDamage({
   			victim = params.unit,
   			attacker = params.attacker,
   			damage = ((((self:GetAbility():GetSpecialValueFor("spell_crit_multiplier") or 0) - 100) / 100) * params.damage),
   			damage_type = params.damage_type,
			damage_flags = DOTA_DAMAGE_FLAG_NO_SPELL_AMPLIFICATION,
   			ability = self:GetAbility(),
   		})
	end
	return 0
end
