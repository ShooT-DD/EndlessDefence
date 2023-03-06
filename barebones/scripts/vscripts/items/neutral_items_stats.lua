item_trident_custom = class({})

LinkLuaModifier("trident_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)
function item_trident_custom:GetIntrinsicModifierName()
	return "trident_all_stats"
end
trident_all_stats = class({})
function trident_all_stats:IsHidden() return true end
function trident_all_stats:IsPurgable() return false end
function trident_all_stats:RemoveOnDeath() return false end
function trident_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_CAST_RANGE_BONUS,
		MODIFIER_PROPERTY_BASEDAMAGEOUTGOING_PERCENTAGE,
		MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS,
		MODIFIER_PROPERTY_STATUS_RESISTANCE 
		
	}
end

function trident_all_stats:OnCreated()
	self.stats_all = self:GetAbility():GetSpecialValueFor('trident_primary_stat')
	self.trident_cast_range_bonus = self:GetAbility():GetSpecialValueFor("trident_cast_range_bonus")
	self.trident_base_damage = self:GetAbility():GetSpecialValueFor("trident_base_damage")
	self.trident_magic_resistance = self:GetAbility():GetSpecialValueFor("trident_magic_resistance")
	self.trident_all_stat = self:GetAbility():GetSpecialValueFor("trident_all_stat")
	self.trident_status_resistance = self:GetAbility():GetSpecialValueFor("trident_status_resistance")
	
	str_all = 0
	agi_all = 0
	int_all = 0
		self:StartIntervalThink(0.2)
end

function trident_all_stats:OnIntervalThink()
	str_all = self:GetParent():GetStrength() * self:GetAbility():GetSpecialValueFor('str_trident_all') * 0.01
	agi_all = self:GetParent():GetAgility() * self:GetAbility():GetSpecialValueFor('agi_trident_all') * 0.01
	int_all = self:GetParent():GetIntellect() * self:GetAbility():GetSpecialValueFor('int_trident_all') * 0.01	
	self:GetParent():CalculateStatBonus(false)
end
function trident_all_stats:OnRefresh() end
function trident_all_stats:GetModifierBonusStats_Strength() 
	attribute0 = self:GetParent():GetPrimaryAttribute()
	self.primary0 = 0
	if attribute0 == 0 then
	self.primary0 = self.stats_all + str_all
	end
return self.primary0 + self.trident_all_stat or 0 
end
function trident_all_stats:GetModifierBonusStats_Agility()
	attribute1 = self:GetParent():GetPrimaryAttribute()
	self.primary1 = 0
	if attribute1 == 1 then
	self.primary1 = self.stats_all + agi_all
	end 
return self.primary1 + self.trident_all_stat or 0  
end
function trident_all_stats:GetModifierBonusStats_Intellect() 
	attribute2 = self:GetParent():GetPrimaryAttribute()
	self.primary2 = 0
	if attribute2 == 2 then
	self.primary2 = self.stats_all + int_all
	end
return self.primary2 + self.trident_all_stat or 0  
end
function trident_all_stats:GetModifierCastRangeBonus()
	return self.trident_cast_range_bonus
end
function trident_all_stats:GetModifierBaseDamageOutgoing_Percentage()
	return self.trident_base_damage
end
function trident_all_stats:GetModifierMagicalResistanceBonus()
	return self.trident_magic_resistance
end
function trident_all_stats:GetModifierStatusResistance()
	return self.trident_status_resistance
end




item_cprinces_knife_custom = class({})

function item_cprinces_knife_custom:OnSpellStart()

self:GetCaster():AddNewModifier(self:GetCaster(), self, "modifier_smoke_of_deceit", 
{duration = 300 })

end

LinkLuaModifier("princes_knife_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)
function item_cprinces_knife_custom:GetIntrinsicModifierName()
	return "princes_knife_all_stats"
end
princes_knife_all_stats = class({})
function princes_knife_all_stats:IsHidden() return true end
function princes_knife_all_stats:IsPurgable() return false end
function princes_knife_all_stats:RemoveOnDeath() return false end
function princes_knife_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE,
		MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT,
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_HEALTH_REGEN_PERCENTAGE,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_CASTTIME_PERCENTAGE,
	}
end

function princes_knife_all_stats:OnCreated()
	self.princes_knife_all_stat = self:GetAbility():GetSpecialValueFor("princes_knife_all_stat")
		self:StartIntervalThink(0.2)
end

function princes_knife_all_stats:OnIntervalThink()
	self.princes_knife_all_stat = self:GetAbility():GetSpecialValueFor("princes_knife_all_stat")
	self:GetParent():CalculateStatBonus(false)
end
function princes_knife_all_stats:OnRefresh() end

function princes_knife_all_stats:GetModifierBonusStats_Strength() 
return self.princes_knife_all_stat
end
function princes_knife_all_stats:GetModifierBonusStats_Agility()
return self.princes_knife_all_stat 
end
function princes_knife_all_stats:GetModifierBonusStats_Intellect() 
return self.princes_knife_all_stat  
end

function princes_knife_all_stats:GetModifierPhysicalArmorBonus() 
return self:GetAbility():GetSpecialValueFor("princes_knife_armor") 
end
function princes_knife_all_stats:GetModifierMoveSpeedBonus_Constant() 
    return self:GetAbility():GetSpecialValueFor("princes_knife_moved_speed") 
end
function princes_knife_all_stats:GetModifierPercentageCasttime( params ) 
	return 40 
end
function princes_knife_all_stats:GetModifierPercentageCooldown()
	return self:GetAbility():GetSpecialValueFor("princes_knife_cooldown")
end
function princes_knife_all_stats:GetModifierHealthRegenPercentage()
	return self:GetAbility():GetSpecialValueFor("princes_knife_health_regen_pct")
end
function princes_knife_all_stats:GetModifierConstantManaRegen() 
return self:GetAbility():GetSpecialValueFor("princes_knife_mp_regen")
end





item_cvampire_fangs_custom = class({})
LinkLuaModifier("cvampire_fangs_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)
function item_cvampire_fangs_custom:GetIntrinsicModifierName()
	return "cvampire_fangs_all_stats"
end
cvampire_fangs_all_stats = class({})
function cvampire_fangs_all_stats:IsHidden() return true end
function cvampire_fangs_all_stats:IsPurgable() return false end
function cvampire_fangs_all_stats:RemoveOnDeath() return false end
function cvampire_fangs_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS,
		MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE,
		MODIFIER_PROPERTY_EVASION_CONSTANT,
		MODIFIER_PROPERTY_PROCATTACK_FEEDBACK,
		MODIFIER_EVENT_ON_TAKEDAMAGE,
	}
end

function cvampire_fangs_all_stats:OnCreated()
	self.cvampire_fangs_all_stat = self:GetAbility():GetSpecialValueFor("cvampire_fangs_all_stat")
		self:StartIntervalThink(0.2)
end

function cvampire_fangs_all_stats:OnIntervalThink()
	self.cvampire_fangs_all_stat = self:GetAbility():GetSpecialValueFor("cvampire_fangs_all_stat")
	self:GetParent():CalculateStatBonus(false)
end
function cvampire_fangs_all_stats:OnRefresh() end

function cvampire_fangs_all_stats:GetModifierBonusStats_Strength() 
return self.cvampire_fangs_all_stat
end
function cvampire_fangs_all_stats:GetModifierBonusStats_Agility()
return self.cvampire_fangs_all_stat 
end
function cvampire_fangs_all_stats:GetModifierBonusStats_Intellect() 
return self.cvampire_fangs_all_stat  
end
function cvampire_fangs_all_stats:GetModifierPhysicalArmorBonus() 
return self:GetParent():GetPhysicalArmorBaseValue() * self:GetAbility():GetSpecialValueFor("cvampire_fangs_armor") * 0.01
end
function cvampire_fangs_all_stats:GetModifierMagicalResistanceBonus()
	return self:GetAbility():GetSpecialValueFor("cvampire_fangs_magic_resistance")
end
function cvampire_fangs_all_stats:GetModifierDamageOutgoing_Percentage()
	return self:GetAbility():GetSpecialValueFor("cvampire_fangs_all_damage")
end
function cvampire_fangs_all_stats:GetModifierEvasion_Constant()
	return self:GetAbility():GetSpecialValueFor("cvampire_fangs_evasion")
end

function cvampire_fangs_all_stats:GetModifierProcAttack_Feedback( params )
	if IsServer() then
		local pass = false
		if params.target:GetTeamNumber()~=self:GetParent():GetTeamNumber() then
			if (not params.target:IsBuilding()) and (not params.target:IsOther()) then
				pass = true
			end
		end
		if pass then
			self.attack_record = params.record
		end
	end
end

function cvampire_fangs_all_stats:OnTakeDamage( params )

		local pass = false
		if self.attack_record and params.record == self.attack_record then
			pass = true
			self.attack_record = nil
		end
		if pass then
			local heal = params.damage * self:GetAbility():GetSpecialValueFor( "cvampire_fangs_fiz_vampir" ) / 100
			local maxph = params.attacker:GetHealth()
			if maxph > heal then
			self:GetParent():Heal(heal, self:GetAbility())
			else
			self:GetParent():Heal(maxph * 0.9, self:GetAbility())
			end
		end

	

		if params.attacker == self:GetParent() and params.unit ~= self.parent then
			if params.damage_flags ~= 16 and params.damage_type ~= 1 then
                    local max_ph = params.attacker:GetHealth()
					local spel_l_vampir = params.original_damage * self:GetAbility():GetSpecialValueFor( "cvampire_fangs_mag_vampir" ) / 1000
                    if max_ph > spel_l_vampir and params.inflictor and bit.band(params.damage_flags, DOTA_DAMAGE_FLAG_REFLECTION) == DOTA_DAMAGE_FLAG_REFLECTION then
					params.attacker:Heal(spel_l_vampir, self)
					else
					params.attacker:Heal(max_ph * 0.9, self)
				end
			end
		end
end





item_corb_of_destruction_custom = class({})
LinkLuaModifier("corb_of_destruction_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("corb_modifier_desolator_2_buff", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)

function item_corb_of_destruction_custom:GetIntrinsicModifierName()
	return "corb_of_destruction_all_stats"
end
corb_of_destruction_all_stats = class({})
function corb_of_destruction_all_stats:IsHidden() return true end
function corb_of_destruction_all_stats:IsPurgable() return false end
function corb_of_destruction_all_stats:RemoveOnDeath() return false end
function corb_of_destruction_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE,
		MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE,
		MODIFIER_PROPERTY_PROJECTILE_SPEED_BONUS,
		MODIFIER_PROPERTY_PROCATTACK_FEEDBACK,
	}
end

function corb_of_destruction_all_stats:OnCreated()
	self.corb_of_destruction_all_stat = self:GetAbility():GetSpecialValueFor("corb_all_stat")
		self:StartIntervalThink(0.2)
end

function corb_of_destruction_all_stats:OnIntervalThink()
	self.corb_of_destruction_all_stat = self:GetAbility():GetSpecialValueFor("corb_all_stat")
	self:GetParent():CalculateStatBonus(false)
end
function corb_of_destruction_all_stats:OnRefresh() end

function corb_of_destruction_all_stats:GetModifierBonusStats_Strength() 
return self.corb_of_destruction_all_stat
end
function corb_of_destruction_all_stats:GetModifierBonusStats_Agility()
return self.corb_of_destruction_all_stat 
end
function corb_of_destruction_all_stats:GetModifierBonusStats_Intellect() 
return self.corb_of_destruction_all_stat  
end
function corb_of_destruction_all_stats:GetModifierPhysicalArmorBonus() 
return self:GetAbility():GetSpecialValueFor("corb_armor")
end
function corb_of_destruction_all_stats:GetModifierDamageOutgoing_Percentage()
	return self:GetAbility():GetSpecialValueFor("corb_damage_all")
end
function corb_of_destruction_all_stats:GetModifierMoveSpeedBonus_Percentage()
	return self:GetAbility():GetSpecialValueFor("corb_moved_speed")
end

function corb_of_destruction_all_stats:GetModifierProjectileSpeedBonus()
	return self:GetAbility():GetSpecialValueFor("corb_speed_anim_atk") * 10
end

function corb_of_destruction_all_stats:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not keys.target:IsBuilding() and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "corb_modifier_desolator_2_buff", {duration = 3})
	end
end


corb_modifier_desolator_2_buff = class({})
function corb_modifier_desolator_2_buff:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
	}
end
function corb_modifier_desolator_2_buff:GetModifierPhysicalArmorBonus() 
	return self:GetAbility():GetSpecialValueFor("corb_speed_minus_armor") * (-1)
 end
 
 
 
item_cphoenix_custom = class({})
LinkLuaModifier("cphoenix_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)

function item_cphoenix_custom:GetIntrinsicModifierName()
	return "cphoenix_all_stats"
end
function item_cphoenix_custom:OnSpellStart()
	local caster = self:GetCaster()

	local no_refresh_skill = {["all_29_killer"] = true,["all_30_ignore_armor"] = true,["all_28_aeon_disk"] = true,["all_21_radius_damage"] = true,["all_4_sabre"] = true}
	for i = 0, caster:GetAbilityCount() - 1 do
        local ability = caster:GetAbilityByIndex( i )
        if ability and not no_refresh_skill[ ability:GetAbilityName() ] and ability:GetAbilityType() == 1 then
			ability:EndCooldown()
        end
    end
	local refresher_shared = {
		["item_refresher"] = true, 
		["item_octarine_core8"] = true, 
		["item_ex_machina"] = true, 
		["item_bloodstone_1"] = true,
		["item_bloodstone_2"] = true,
		["item_bloodstone_3"] = true,
		["item_bloodstone_4"] = true,
		["item_bloodstone_5"] = true,
		["item_bloodstone_6"] = true,
		["item_bloodstone_7"] = true,
		["item_bloodstone_8"] = true,
	}
	for i = 0, 5 do
		local item = caster:GetItemInSlot( i )
		if item and not refresher_shared[item:GetName()] then
			item:EndCooldown()
		end
	end
end

cphoenix_all_stats = class({})
function cphoenix_all_stats:IsHidden() return true end
function cphoenix_all_stats:IsPurgable() return false end
function cphoenix_all_stats:RemoveOnDeath() return false end
function cphoenix_all_stats:GetAttributes() 
return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE 
end
function cphoenix_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
		MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL,
		MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL_VALUE
	}
end
function cphoenix_all_stats:GetModifierBonusStats_Intellect() 
return self:GetAbility():GetSpecialValueFor("cphoenix_intellect")
end
function cphoenix_all_stats:GetModifierPhysicalArmorBonus() 
return self:GetAbility():GetSpecialValueFor("cphoenix_armor")
end
function cphoenix_all_stats:GetModifierConstantManaRegen() 
return self:GetAbility():GetSpecialValueFor("cphoenix_mp_regen")
end

function cphoenix_all_stats:OnCreated(keys)
	self:OnRefresh(keys)

	self.ability_exceptions = {
		phantom_assassin_blur = true,
	}

	self.aoe_keywords = {
		"aoe",
		"area_of_effect",
		"aura_radius",
		"radius",
        "aura_radius"
	}

self.other_keywords = {
		echo_slam_damage_range = true
	}
self:StartIntervalThink(1)
end

function cphoenix_all_stats:OnRefresh(keys)
	local ability = self:GetAbility()
	local parent = self:GetParent()

	if (not ability) or (not parent) or (parent:IsNull() or ability:IsNull()) then return end

	self.aoe_multiplier = 1 + 0.01 * (ability:GetSpecialValueFor("cphoenix_aoe") or 0)

	if IsClient() then return end
end


function cphoenix_all_stats:GetModifierOverrideAbilitySpecial(keys)
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

function cphoenix_all_stats:GetModifierOverrideAbilitySpecialValue(keys)
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

function cphoenix_all_stats:OnIntervalThink()
    local ability=self:GetAbility()
    local caster=self:GetCaster()
    if not ability then return end
      if IsServer() then	
            local gold = ability:GetSpecialValueFor("cphoenix_gold")/60
            PlayerResource:ModifyGold(caster:GetPlayerOwnerID(), gold, false, 0)
      end
end




item_chelm_custom = class({})

LinkLuaModifier( "modifier_chelm_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_chelm_model", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE )
local model_num
local models = {
    "models/creeps/roshan/roshan.vmdl",
    "models/creeps/lane_creeps/creep_dire_hulk/creep_dire_diretide_ancient_hulk.vmdl",
    "models/creeps/lane_creeps/creep_radiant_hulk/creep_radiant_ancient_hulk.vmdl",
	"models/creeps/lane_creeps/creep_radiant_melee/radiant_melee_mega_crystal.vmdl",
	"models/creeps/lane_creeps/creep_radiant_ranged/radiant_ranged_mega_crystal.vmdl",
	"models/creeps/lane_creeps/nemestice_crystal_creeps/creep_bad_melee/creep_crystal_bad_melee.vmdl",
	"models/creeps/mega_greevil/mega_greevil.vmdl",
	"models/courier/baby_rosh/babyroshan_alt.vmdl",
	"models/courier/baby_rosh/babyroshan_ti10_dire.vmdl",
	"models/courier/baby_rosh/babyroshan_ti9_flying.vmdl",
	"models/courier/baby_rosh/babyroshan_winter18.vmdl",
	"models/creeps/neutral_creeps/n_creep_black_dragon/n_creep_black_dragon.vmdl",
	"models/creeps/neutral_creeps/n_creep_dragonspawn_a/n_creep_dragonspawn_a.vmdl",
	"models/creeps/neutral_creeps/n_creep_gargoyle/n_creep_gargoyle.vmdl",
	"models/creeps/neutral_creeps/n_creep_harpy_a/n_creep_harpy_a.vmdl",
	"models/creeps/neutral_creeps/n_creep_satyr_a/n_creep_satyr_a.vmdl",
	"models/creeps/neutral_creeps/n_creep_satyr_spawn_a/n_creep_satyr_spawn_b.vmdl",
	"models/creeps/neutral_creeps/n_creep_thunder_lizard/n_creep_thunder_lizard_big.vmdl",
	"models/creeps/neutral_creeps/n_creep_thunder_lizard/n_creep_thunder_lizard_small.vmdl",
	"models/creeps/neutral_creeps/n_creep_vulture_a/n_creep_vulture_a.vmdl",
	"models/heroes/death_prophet/rubick_arcana_death_prophet_ghost.vmdl",
	"models/heroes/grimstroke/ink_phantom.vmdl",
	"models/heroes/invoker/forge_spirit.vmdl",
	"models/heroes/invoker_kid/invoker_kid_trainer_dragon.vmdl",
	"models/heroes/lone_druid/spirit_bear_rubick.vmdl",
	"models/heroes/lone_druid/true_form.vmdl",
	"models/heroes/pudge_cute/pudge_cute.vmdl",
	"models/heroes/shadowshaman/shadowshaman_totem_rubick.vmdl",
	"models/heroes/venomancer/venomancer_ward.vmdl",
	"models/heroes/visage/visage_familiar.vmdl",

}

function item_chelm_custom:GetIntrinsicModifierName()
    return "modifier_chelm_stats"
end
function item_chelm_custom:OnSpellStart()
    local caster = self:GetParent()

    caster:RemoveModifierByName("modifier_chelm_model")
    caster:AddNewModifier(nil, nil, "modifier_chelm_model", nil)
end

modifier_chelm_model = class({})
function modifier_chelm_model:DeclareFunctions()
    return {
        MODIFIER_PROPERTY_MODEL_CHANGE
    }
end
function modifier_chelm_model:OnCreated()
    local cap_model = #models;

	if model_num == nil then
	model_num = 1
    else if model_num < cap_model then
        model_num = model_num + 1
    else
        model_num = 1
    end
    end
end
function modifier_chelm_model:GetModifierModelChange() return models[model_num] end

modifier_chelm_stats = class({})
function modifier_chelm_stats:DeclareFunctions()
    local funcs = {
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT,
        MODIFIER_PROPERTY_MODEL_SCALE,
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT,
		MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS,
		MODIFIER_PROPERTY_EXTRA_HEALTH_PERCENTAGE,
    }
    return funcs
end
function modifier_chelm_stats:OnCreated()
	local model_cached = false
    for _,v in pairs(models) do
        if v == self:GetCaster():GetModelName() then
            model_cached = true
            break
        end
    end

    if model_cached ~= true then table.insert(models, 1, self:GetCaster():GetModelName()) end

    self:GetCaster():AddNewModifier(nil, nil, "modifier_chelm_model", nil)
    self:StartIntervalThink(1)
end
function modifier_chelm_stats:OnRemoved()
table.remove (models, 1)
model_num = nil
self:GetParent():RemoveModifierByName("modifier_chelm_model")
end
function modifier_chelm_stats:IsBuff() return true end
function modifier_chelm_stats:IsDebuff() return false end
function modifier_chelm_stats:IsHidden() return true end
function modifier_chelm_stats:OnIntervalThink()
    local radius = self:GetAbility():GetSpecialValueFor('radius')
    local caster = self:GetCaster()

    if IsServer() and caster:IsAlive() then
	local enemies = FindUnitsInRadius(caster:GetTeamNumber(), caster:GetAbsOrigin(), nil, radius, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC + DOTA_TEAM_NEUTRALS, DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)
	    for _, enemy in pairs(enemies) do
            local damageTable = {
                victim = enemy,
                attacker = caster,
                damage_type = DAMAGE_TYPE_MAGICAL ,
                damage_flags = DOTA_DAMAGE_FLAG_NONE, --Optional.
                ability = self:GetAbility(), --Optional.
            }

            if IsServer() then
                damageTable.damage = caster:GetStrength() / 100 * self:GetAbility():GetSpecialValueFor('chelm_str_damage_per_second')
                ApplyDamage(damageTable)
            end
        end
    end
end

function modifier_chelm_stats:GetModifierBonusStats_Strength() return self:GetAbility():GetSpecialValueFor('chelm_bonus_strength') end
function modifier_chelm_stats:GetModifierMoveSpeedBonus_Constant() return self:GetAbility():GetSpecialValueFor('chelm_movement_speed') end
function modifier_chelm_stats:GetModifierModelScale() return self:GetAbility():GetSpecialValueFor('chelm_model_scale') end
function modifier_chelm_stats:GetModifierPhysicalArmorBonus() return self:GetAbility():GetSpecialValueFor("chelm_armor") end
function modifier_chelm_stats:GetModifierConstantHealthRegen() return self:GetAbility():GetSpecialValueFor("chelm_hp_regen") end
function modifier_chelm_stats:GetModifierMagicalResistanceBonus() return self:GetAbility():GetSpecialValueFor("chelm_mag_resist") end
function modifier_chelm_stats:GetModifierExtraHealthPercentage() return self:GetAbility():GetSpecialValueFor("chelm_max_hp") end



item_paladin_sword_custom = class({})
LinkLuaModifier("paladin_sword_all_stats", "items/neutral_items_stats", LUA_MODIFIER_MOTION_NONE)
function item_paladin_sword_custom:GetIntrinsicModifierName()
	return "paladin_sword_all_stats"
end
paladin_sword_all_stats = class({})
function paladin_sword_all_stats:IsHidden() return true end
function paladin_sword_all_stats:IsPurgable() return false end
function paladin_sword_all_stats:RemoveOnDeath() return false end
function paladin_sword_all_stats:DeclareFunctions()
	return {
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
		MODIFIER_PROPERTY_PROCATTACK_FEEDBACK,
		MODIFIER_EVENT_ON_TAKEDAMAGE,
		MODIFIER_PROPERTY_HEAL_AMPLIFY_PERCENTAGE_SOURCE,
		MODIFIER_PROPERTY_HP_REGEN_AMPLIFY_PERCENTAGE,
	}
end
function paladin_sword_all_stats:GetModifierPreAttack_BonusDamage()
	return self:GetAbility():GetSpecialValueFor( "bonus_damage" )
end
function paladin_sword_all_stats:GetModifierHealAmplify_PercentageSource()
	return self:GetAbility():GetSpecialValueFor( "bonus_amp" )
end
function paladin_sword_all_stats:GetModifierHPRegenAmplify_Percentage()
	return self:GetAbility():GetSpecialValueFor( "bonus_amp" )
end
function paladin_sword_all_stats:GetModifierProcAttack_Feedback( params )
	if IsServer() then
		local pass = false
		if params.target:GetTeamNumber()~=self:GetParent():GetTeamNumber() then
			if (not params.target:IsBuilding()) and (not params.target:IsOther()) then
				pass = true
			end
		end
		if pass then
			self.attack_record = params.record
		end
	end
end
function paladin_sword_all_stats:OnTakeDamage( params )

		local pass = false
		if self.attack_record and params.record == self.attack_record then
			pass = true
			self.attack_record = nil
		end
		if pass then
			local heal = params.damage * self:GetAbility():GetSpecialValueFor( "bonus_lifesteal" ) / 100
			local maxph = params.attacker:GetHealth()
			if maxph > heal then
			self:GetParent():Heal(heal, self:GetAbility())
			else
			self:GetParent():Heal(maxph * 0.9, self:GetAbility())
			end
		end

	

		if params.attacker == self:GetParent() and params.unit ~= self.parent then
			if params.damage_flags ~= 16 and params.damage_type ~= 1 then
                    local max_ph = params.attacker:GetHealth()
					local spel_l_vampir = params.original_damage * self:GetAbility():GetSpecialValueFor( "bonus_spell_lifesteal" ) / 1000
                    if max_ph > spel_l_vampir and params.inflictor and bit.band(params.damage_flags, DOTA_DAMAGE_FLAG_REFLECTION) == DOTA_DAMAGE_FLAG_REFLECTION then
					params.attacker:Heal(spel_l_vampir, self)
					else
					params.attacker:Heal(max_ph * 0.9, self)
				end
			end
		end
end
