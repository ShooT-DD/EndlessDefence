item_dagger_of_spirits_1 = class({})
item_dagger_of_spirits_2 = class({})
item_dagger_of_spirits_3 = class({})
item_dagger_of_spirits_4 = class({})
item_dagger_of_spirits_5 = class({})
item_dagger_of_spirits_6 = class({})
item_dagger_of_spirits_7 = class({})
item_dagger_of_spirits_8 = class({})


function item_dagger_of_spirits_1:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_1_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_1_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_1_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_1_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_1_5"
    end  
    return "all/dagger_of_spirits_1_1"
end


function item_dagger_of_spirits_2:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_2_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_2_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_2_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_2_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_2_5"
    end  
    return "all/dagger_of_spirits_2_1"
end


function item_dagger_of_spirits_3:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_3_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_3_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_3_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_3_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_3_5"
    end  
    return "all/dagger_of_spirits_3_1"
end


function item_dagger_of_spirits_4:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_4_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_4_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_4_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_4_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_4_5"
    end  
    return "all/dagger_of_spirits_4_1"
end


function item_dagger_of_spirits_5:GetAbilityTextureName()
	local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_5_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_5_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_5_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_5_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_5_5"
    end  
    return "all/dagger_of_spirits_5_1"
end


function item_dagger_of_spirits_6:GetAbilityTextureName()
    local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_6_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_6_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_6_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_6_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_6_5"
    end  
    return "all/dagger_of_spirits_6_1"
end


function item_dagger_of_spirits_7:GetAbilityTextureName()
    local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_7_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_7_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_7_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_7_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_7_5"
    end  
    return "all/dagger_of_spirits_7_1"
end


function item_dagger_of_spirits_8:GetAbilityTextureName()
    local caster = self:GetCaster()
    if caster:HasModifier("modifier_item_dagger_of_spirits_item_1") then    
        return "all/dagger_of_spirits_2_1"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_2") then
        return "all/dagger_of_spirits_2_2"
    elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_3") then
        return "all/dagger_of_spirits_2_3"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_4") then
        return "all/dagger_of_spirits_2_4"
	elseif caster:HasModifier("modifier_item_dagger_of_spirits_item_5") then
        return "all/dagger_of_spirits_2_5"
    end  
    return "all/dagger_of_spirits_2_1"
end


LinkLuaModifier("modifier_item_dagger_of_spirits", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_dagger_of_spirits_item_1", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_dagger_of_spirits_item_2", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_dagger_of_spirits_item_3", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_dagger_of_spirits_item_4", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_dagger_of_spirits_item_5", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect1", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect2", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect3", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect4", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect5", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_negative_effect_all", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_aura_negative_effect_all", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dagger_of_spirits_chance_passive", "items/dagger_of_spirits.lua", LUA_MODIFIER_MOTION_NONE)



	

function item_dagger_of_spirits_1:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_2:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_3:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_4:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_5:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_6:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_7:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end

function item_dagger_of_spirits_8:OnSpellStart()
    local caster = self:GetCaster()
    if caster.curr_modifier_num == nil then
		caster.curr_modifier_num=1
	end	

	if  caster.modifier_table  == nil then
		caster.modifier_table={}
		caster.modifier_table[1] = "modifier_item_dagger_of_spirits_item_1"
		caster.modifier_table[2] = "modifier_item_dagger_of_spirits_item_2"
		caster.modifier_table[3] = "modifier_item_dagger_of_spirits_item_3"
		caster.modifier_table[4] = "modifier_item_dagger_of_spirits_item_4"
		caster.modifier_table[5] = "modifier_item_dagger_of_spirits_item_5"
    end

    if caster:HasModifier( caster.modifier_table[caster.curr_modifier_num] ) then
        caster:RemoveModifierByName( caster.modifier_table[caster.curr_modifier_num] )
    end
    caster.curr_modifier_num=caster.curr_modifier_num+1
    if caster.curr_modifier_num>5 then
        caster.curr_modifier_num=1
    end
    caster:AddNewModifier(caster, self,caster.modifier_table[caster.curr_modifier_num], {})
    self:GetAbilityTextureName()
end





function item_dagger_of_spirits_1:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_2:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_3:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_4:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_5:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_6:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_7:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end
function item_dagger_of_spirits_8:GetIntrinsicModifierName() 
    return "modifier_item_dagger_of_spirits" 
end

modifier_item_dagger_of_spirits=class({})


function modifier_item_dagger_of_spirits:IsHidden() 			
    return true 
end

function modifier_item_dagger_of_spirits:IsPurgable() 		
    return false
end

function modifier_item_dagger_of_spirits:IsPurgeException() 
    return false 
end

function modifier_item_dagger_of_spirits:RemoveOnDeath() 
    return self:GetParent():IsIllusion() and true or false 
end

function modifier_item_dagger_of_spirits:AllowIllusionDuplicate() 	
    return false 
end

function modifier_item_dagger_of_spirits:OnCreated(keys) 
    if self:GetAbility() == nil then
		return
	end
	local ability = self:GetAbility()
    self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	self.moved_speed = ability:GetSpecialValueFor("moved_speed")
    if not IsServer() or self:GetParent():IsIllusion() then
        return 
    end
    self:GetParent():AddNewModifier( self:GetParent(), self:GetAbility(),"modifier_item_dagger_of_spirits_item_1", {})
	self:GetParent():AddNewModifier( self:GetParent(), self:GetAbility(),"modifier_dagger_of_spirits_negative_effect_all", {})
	self:OnRefresh(keys)
end

function modifier_item_dagger_of_spirits:DeclareFunctions() 
    return 
    {   
        MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT,
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
		MODIFIER_PROPERTY_PROCATTACK_FEEDBACK
    } 
end

function modifier_item_dagger_of_spirits:OnRefresh(keys)
	self.parent = self:GetParent()
	self.ability = self:GetAbility()

	self.debuffDuration = self.ability:GetSpecialValueFor("debuff_duration")
	self.chance = self.ability:GetSpecialValueFor("chance")

end


function modifier_item_dagger_of_spirits:GetModifierProcAttack_Feedback(keys)
	if RandomInt(1,100) <= self.chance then
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_dagger_of_spirits_chance_passive", {duration = self.debuffDuration})
	end
	end
end


function modifier_item_dagger_of_spirits:OnDestroy() 
    if self:GetParent():IsIllusion() then
        return 
    end
    if IsServer() then 
        if self:GetParent():HasModifier(  "modifier_item_dagger_of_spirits_item_1" ) then 
            self:GetParent():RemoveModifierByName( "modifier_item_dagger_of_spirits_item_1")
        elseif self:GetCaster().modifier_table~=nil then
                if self:GetParent():HasModifier( self:GetCaster().modifier_table[self:GetCaster().curr_modifier_num] ) then
                    self:GetParent():RemoveModifierByName( self:GetCaster().modifier_table[self:GetCaster().curr_modifier_num] )
                end 
        end     
    end 
    self:GetCaster().curr_modifier_num=nil
    self:GetCaster().modifier_table=nil
	if self:GetParent():HasModifier(  "modifier_dagger_of_spirits_negative_effect_all" ) then 
            self:GetParent():RemoveModifierByName( "modifier_dagger_of_spirits_negative_effect_all")
	end
end




function modifier_item_dagger_of_spirits:GetModifierMoveSpeedBonus_Constant() 
    return self.moved_speed 
end
function modifier_item_dagger_of_spirits:GetModifierPreAttack_BonusDamage() 
	return self.bonus_damage 
end



-- Assault Cuirass negative aura
modifier_item_dagger_of_spirits_item_1 = class({})

function modifier_item_dagger_of_spirits_item_1:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect1"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_item_dagger_of_spirits_item_1:IsDebuff() return false end
function modifier_item_dagger_of_spirits_item_1:AllowIllusionDuplicate() return true end
function modifier_item_dagger_of_spirits_item_1:IsHidden() return true end
function modifier_item_dagger_of_spirits_item_1:IsPurgable() return false end

function modifier_item_dagger_of_spirits_item_1:GetAuraRadius()
	return self.radius
end

function modifier_item_dagger_of_spirits_item_1:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_item_dagger_of_spirits_item_1:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_item_dagger_of_spirits_item_1:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_dagger_of_spirits_item_1:GetModifierAura()
	return self.modifier_siege
end

function modifier_item_dagger_of_spirits_item_1:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect1 = class({})

function modifier_dagger_of_spirits_aura_negative_effect1:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty")
end

function modifier_dagger_of_spirits_aura_negative_effect1:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect1:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect1:IsDebuff() return true end

function modifier_dagger_of_spirits_aura_negative_effect1:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect1:GetModifierPhysicalArmorBonus()
	return self.aura_armor_reduction_enemy
end



modifier_item_dagger_of_spirits_item_2 = class({})

function modifier_item_dagger_of_spirits_item_2:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect2"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_item_dagger_of_spirits_item_2:IsDebuff() return false end
function modifier_item_dagger_of_spirits_item_2:AllowIllusionDuplicate() return true end
function modifier_item_dagger_of_spirits_item_2:IsHidden() return true end
function modifier_item_dagger_of_spirits_item_2:IsPurgable() return false end

function modifier_item_dagger_of_spirits_item_2:GetAuraRadius()
	return self.radius
end

function modifier_item_dagger_of_spirits_item_2:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_item_dagger_of_spirits_item_2:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_item_dagger_of_spirits_item_2:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_dagger_of_spirits_item_2:GetModifierAura()
	return self.modifier_siege
end

function modifier_item_dagger_of_spirits_item_2:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect2 = class({})

function modifier_dagger_of_spirits_aura_negative_effect2:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty")
end

function modifier_dagger_of_spirits_aura_negative_effect2:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect2:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect2:IsDebuff() return true end

function modifier_dagger_of_spirits_aura_negative_effect2:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect2:GetModifierPhysicalArmorBonus()
	return self.aura_armor_reduction_enemy
end




modifier_item_dagger_of_spirits_item_3 = class({})

function modifier_item_dagger_of_spirits_item_3:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect3"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_item_dagger_of_spirits_item_3:IsDebuff() return false end
function modifier_item_dagger_of_spirits_item_3:AllowIllusionDuplicate() return true end
function modifier_item_dagger_of_spirits_item_3:IsHidden() return true end
function modifier_item_dagger_of_spirits_item_3:IsPurgable() return false end

function modifier_item_dagger_of_spirits_item_3:GetAuraRadius()
	return self.radius
end

function modifier_item_dagger_of_spirits_item_3:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_item_dagger_of_spirits_item_3:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_item_dagger_of_spirits_item_3:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_dagger_of_spirits_item_3:GetModifierAura()
	return self.modifier_siege
end

function modifier_item_dagger_of_spirits_item_3:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect3 = class({})

function modifier_dagger_of_spirits_aura_negative_effect3:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty")
end

function modifier_dagger_of_spirits_aura_negative_effect3:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect3:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect3:IsDebuff() return true end

function modifier_dagger_of_spirits_aura_negative_effect3:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect3:GetModifierPhysicalArmorBonus()
	return self.aura_armor_reduction_enemy
end





modifier_item_dagger_of_spirits_item_4 = class({})

function modifier_item_dagger_of_spirits_item_4:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect4"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_item_dagger_of_spirits_item_4:IsDebuff() return false end
function modifier_item_dagger_of_spirits_item_4:AllowIllusionDuplicate() return true end
function modifier_item_dagger_of_spirits_item_4:IsHidden() return true end
function modifier_item_dagger_of_spirits_item_4:IsPurgable() return false end

function modifier_item_dagger_of_spirits_item_4:GetAuraRadius()
	return self.radius
end

function modifier_item_dagger_of_spirits_item_4:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_item_dagger_of_spirits_item_4:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_item_dagger_of_spirits_item_4:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_dagger_of_spirits_item_4:GetModifierAura()
	return self.modifier_siege
end

function modifier_item_dagger_of_spirits_item_4:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect4 = class({})

function modifier_dagger_of_spirits_aura_negative_effect4:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty")
end

function modifier_dagger_of_spirits_aura_negative_effect4:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect4:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect4:IsDebuff() return true end

function modifier_dagger_of_spirits_aura_negative_effect4:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect4:GetModifierPhysicalArmorBonus()
	return self.aura_armor_reduction_enemy
end





modifier_item_dagger_of_spirits_item_5 = class({})

function modifier_item_dagger_of_spirits_item_5:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect5"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_item_dagger_of_spirits_item_5:IsDebuff() return false end
function modifier_item_dagger_of_spirits_item_5:AllowIllusionDuplicate() return true end
function modifier_item_dagger_of_spirits_item_5:IsHidden() return true end
function modifier_item_dagger_of_spirits_item_5:IsPurgable() return false end

function modifier_item_dagger_of_spirits_item_5:GetAuraRadius()
	return self.radius
end

function modifier_item_dagger_of_spirits_item_5:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_item_dagger_of_spirits_item_5:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_item_dagger_of_spirits_item_5:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_item_dagger_of_spirits_item_5:GetModifierAura()
	return self.modifier_siege
end

function modifier_item_dagger_of_spirits_item_5:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect5 = class({})

function modifier_dagger_of_spirits_aura_negative_effect5:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty")
end

function modifier_dagger_of_spirits_aura_negative_effect5:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect5:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect5:IsDebuff() return true end

function modifier_dagger_of_spirits_aura_negative_effect5:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect5:GetModifierPhysicalArmorBonus()
	return self.aura_armor_reduction_enemy
end




modifier_dagger_of_spirits_negative_effect_all = class({})

function modifier_dagger_of_spirits_negative_effect_all:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()
	self.modifier_siege = "modifier_dagger_of_spirits_aura_negative_effect_all"

	-- Ability specials
	self.radius = self.ability:GetSpecialValueFor("radius")
end

function modifier_dagger_of_spirits_negative_effect_all:IsDebuff() return false end
function modifier_dagger_of_spirits_negative_effect_all:AllowIllusionDuplicate() return true end
function modifier_dagger_of_spirits_negative_effect_all:IsHidden() return true end
function modifier_dagger_of_spirits_negative_effect_all:IsPurgable() return false end

function modifier_dagger_of_spirits_negative_effect_all:GetAuraRadius()
	return self.radius
end

function modifier_dagger_of_spirits_negative_effect_all:GetAuraSearchFlags()
	return DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES
end

function modifier_dagger_of_spirits_negative_effect_all:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

function modifier_dagger_of_spirits_negative_effect_all:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_UNIT_TARGET_BUILDING
end

function modifier_dagger_of_spirits_negative_effect_all:GetModifierAura()
	return self.modifier_siege
end

function modifier_dagger_of_spirits_negative_effect_all:IsAura()
	return true
end



-- Assault Cuirass negative aura effect
modifier_dagger_of_spirits_aura_negative_effect_all = class({})

function modifier_dagger_of_spirits_aura_negative_effect_all:OnCreated()
	-- Ability properties
	self.caster = self:GetCaster()
	self.ability = self:GetAbility()

	-- Ability specials
	self.aura_armor_reduction_enemy = self.ability:GetSpecialValueFor("armor_penalty_all")
end

function modifier_dagger_of_spirits_aura_negative_effect_all:IsHidden() return false end
function modifier_dagger_of_spirits_aura_negative_effect_all:IsPurgable() return false end
function modifier_dagger_of_spirits_aura_negative_effect_all:IsDebuff() return true end


function modifier_dagger_of_spirits_aura_negative_effect_all:DeclareFunctions()
	local decFuncs = {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BASE_PERCENTAGE}

	return decFuncs
end

function modifier_dagger_of_spirits_aura_negative_effect_all:GetModifierPhysicalArmorBase_Percentage()
	return (100 - self.aura_armor_reduction_enemy)
end



modifier_dagger_of_spirits_chance_passive=class({})
function modifier_dagger_of_spirits_chance_passive:IsHidden() return false end
function modifier_dagger_of_spirits_chance_passive:IsPurgable() return true end

function modifier_dagger_of_spirits_chance_passive:DeclareFunctions() return {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS} end


function modifier_dagger_of_spirits_chance_passive:GetModifierPhysicalArmorBonus() return self:GetStackCount()*self.stack_armor end

function modifier_dagger_of_spirits_chance_passive:OnCreated()
	self.ab = self:GetAbility()
	self.caster = self:GetCaster()
	self.stack_armor = self.ab:GetSpecialValueFor("minus_armor")

	if IsServer() then
		self:SetStackCount(0)
	end
end

function modifier_dagger_of_spirits_chance_passive:OnRefresh()
	if IsServer() then
		self:SetStackCount(self:GetStackCount() + 1) 
	end
end
