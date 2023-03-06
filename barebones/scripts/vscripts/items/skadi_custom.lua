item_skadi1 = item_skadi1 or class({})
item_skadi2 = item_skadi1 or class({})
item_skadi3 = item_skadi1 or class({})
item_skadi4 = item_skadi1 or class({})
item_skadi5 = item_skadi1 or class({})
item_skadi6 = item_skadi1 or class({})
item_skadi7 = item_skadi1 or class({})
item_skadi8 = item_skadi1 or class({})

LinkLuaModifier( "modifier_item_skadi_v2_pa", 'items/skadi_custom', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_item_skadi_v2_slow", 'items/skadi_custom', LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_item_skadi_v2_stun", 'items/skadi_custom', LUA_MODIFIER_MOTION_NONE )

function item_skadi1:GetIntrinsicModifierName()
    return "modifier_item_skadi_v2_pa"
end


function item_skadi1:OnSpellStart()
	if IsServer() then
		local caster = self:GetCaster()
		local caster_loc = caster:GetAbsOrigin()
		local radius = self:GetSpecialValueFor("radius")
		local dur = self:GetSpecialValueFor("rdt")

		local fx = ParticleManager:CreateParticle("particles/econ/items/ancient_apparition/aa_blast_ti_5/ancient_apparition_ice_blast_explode_ti5.vpcf", PATTACH_CUSTOMORIGIN, caster)
		ParticleManager:SetParticleControl(fx, 0, caster_loc)
		ParticleManager:SetParticleControl(fx, 3, caster_loc+caster:GetUpVector()*200)
		ParticleManager:ReleaseParticleIndex(fx)
		local nearby_enemies = FindUnitsInRadius(caster:GetTeamNumber(), caster_loc, nil, radius, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_BASIC, DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)
		for _,enemy in pairs(nearby_enemies) do
            caster:EmitSound("DOTA_Item.MeteorHammer.Cast")			
			enemy:AddNewModifier(caster, self, "modifier_item_skadi_v2_stun", {duration = dur})
		end
	end
end



modifier_item_skadi_v2_stun =class({})

function modifier_item_skadi_v2_stun:IsDebuff() return true end
function modifier_item_skadi_v2_stun:IsHidden() return false end
function modifier_item_skadi_v2_stun:IsPurgable() return true end
function modifier_item_skadi_v2_stun:IsPurgeException() return true end
function modifier_item_skadi_v2_stun:GetEffectName() return "particles/units/heroes/hero_crystalmaiden/maiden_frostbite_buff.vpcf" end
function modifier_item_skadi_v2_stun:GetEffectAttachType() return PATTACH_ABSORIGIN_FOLLOW end

function modifier_item_skadi_v2_stun:OnCreated()
    if IsServer() then
    ApplyDamage({
            victim =  self:GetParent(),
            attacker = self:GetCaster(),
            ability = self:GetAbility(),
            damage = ((self:GetCaster():GetAgility() + self:GetCaster():GetStrength() + self:GetCaster():GetIntellect()) * self:GetAbility():GetSpecialValueFor("mnozit_urona")),
			damage_flags = DOTA_DAMAGE_FLAG_NO_SPELL_AMPLIFICATION,
            damage_type = DAMAGE_TYPE_PURE
        })
    end
end

function modifier_item_skadi_v2_stun:CheckState()
    return
    {
        [MODIFIER_STATE_FROZEN] = true,
        [MODIFIER_STATE_ROOTED] = true,
        [MODIFIER_STATE_TETHERED] = true,
    }
end

modifier_item_skadi_v2_pa = class({})
function modifier_item_skadi_v2_pa:IsHidden() return true end
function modifier_item_skadi_v2_pa:IsPurgable() return false end
function modifier_item_skadi_v2_pa:IsPurgeException() return false end
function modifier_item_skadi_v2_pa:RemoveOnDeath() return end

function modifier_item_skadi_v2_pa:OnCreated()
    if self:GetAbility() == nil then
		return
	end
    self.duration=self:GetAbility():GetSpecialValueFor("spt")
    self.stats=self:GetAbility():GetSpecialValueFor("stats")
	self.wave_stats=self:GetAbility():GetSpecialValueFor("wave_stats")
	
end

function modifier_item_skadi_v2_pa:OnTakeDamage(tg)
	if not IsServer() then
		return
	end
    if tg.attacker == self:GetParent() or tg.attacker:GetOwner() == self:GetParent()  then
        if self:GetParent():IsIllusion() or tg.unit:IsBuilding() or tg.unit:IsOther() or tg.damage<50 then
            return
        end
            tg.unit:AddNewModifier(tg.unit,self:GetAbility(),"modifier_item_skadi_v2_slow",{duration=self.duration})
	end
	self:GetParent():CalculateStatBonus(false)
end

function modifier_item_skadi_v2_pa:DeclareFunctions()
    return {
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
        MODIFIER_EVENT_ON_TAKEDAMAGE,
        MODIFIER_PROPERTY_PROJECTILE_NAME,
        MODIFIER_EVENT_ON_ATTACK_START,
    }
end

function modifier_item_skadi_v2_pa:GetModifierBonusStats_Intellect() return  self.stats end
function modifier_item_skadi_v2_pa:GetModifierBonusStats_Agility() return  self.stats end
function modifier_item_skadi_v2_pa:GetModifierBonusStats_Strength() return  self.stats end


modifier_item_skadi_v2_slow=class({})

function modifier_item_skadi_v2_slow:IsDebuff() return true end
function modifier_item_skadi_v2_slow:IsHidden() return false end
function modifier_item_skadi_v2_slow:IsPurgable() return true end
function modifier_item_skadi_v2_slow:IsPurgeException() return true end
function modifier_item_skadi_v2_slow:StatusEffectPriority() return 10 end
function modifier_item_skadi_v2_slow:RemoveOnDeath() return true end

function modifier_item_skadi_v2_slow:OnCreated()
    if self:GetAbility()==nil then
        return
    end
    self.MoveSpeed=self:GetAbility():GetSpecialValueFor("MoveSpeed") or 0
    self.AttackSpeed=self:GetAbility():GetSpecialValueFor("AttackSpeed") or 0
    self.TurnRate=self:GetAbility():GetSpecialValueFor("TurnRate") or 0
end

function modifier_item_skadi_v2_slow:DeclareFunctions()
    return
    {
        MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE,
        MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT,
        MODIFIER_PROPERTY_TURN_RATE_PERCENTAGE,
        MODIFIER_PROPERTY_CASTTIME_PERCENTAGE,
    }
end

function modifier_item_skadi_v2_slow:GetModifierMoveSpeedBonus_Percentage() return self.MoveSpeed * (-1) end
function modifier_item_skadi_v2_slow:GetModifierAttackSpeedBonus_Constant() return self.AttackSpeed * (-1) end
function modifier_item_skadi_v2_slow:GetModifierTurnRate_Percentage() return self.TurnRate * (-1) end

