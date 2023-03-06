item_desolator = class({})
item_desolator_lua1 = class(item_desolator)
item_desolator_lua2 = class(item_desolator)
item_desolator_lua3 = class(item_desolator)
item_desolator_lua4 = class(item_desolator)
item_desolator_lua5 = class(item_desolator)
item_desolator_lua6 = class(item_desolator)
item_desolator_lua7 = class(item_desolator)
item_desolator_lua8 = class(item_desolator)

modifier_item_custom_desolator = class({})
modifier_item_custom_desolator_1 = class({})
modifier_item_custom_desolator_2 = class({})
modifier_item_custom_desolator_3 = class({})
modifier_item_custom_desolator_4 = class({})
modifier_item_custom_desolator_5 = class({})
modifier_item_custom_desolator_6 = class({})
modifier_item_custom_desolator_7 = class({})
modifier_item_custom_desolator_8 = class({})


LinkLuaModifier( "modifier_item_custom_desolator", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_1", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_2", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_3", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_4", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_5", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_6", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_7", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier( "modifier_item_custom_desolator_8", "items/item_desolator.lua", LUA_MODIFIER_MOTION_NONE)

function modifier_item_custom_desolator:IsDebuff() return true end
function modifier_item_custom_desolator:IsPurgable() return true end
function modifier_item_custom_desolator_1:IsHidden() return true end
function modifier_item_custom_desolator_1:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_2:IsHidden() return true end
function modifier_item_custom_desolator_2:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_3:IsHidden() return true end
function modifier_item_custom_desolator_3:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_4:IsHidden() return true end
function modifier_item_custom_desolator_4:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_5:IsHidden() return true end
function modifier_item_custom_desolator_5:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_6:IsHidden() return true end
function modifier_item_custom_desolator_6:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_7:IsHidden() return true end
function modifier_item_custom_desolator_7:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end
function modifier_item_custom_desolator_8:IsHidden() return true end
function modifier_item_custom_desolator_8:GetAttributes() return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_MULTIPLE + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE end





function modifier_item_custom_desolator:DeclareFunctions() return {MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS} end
function modifier_item_custom_desolator_1:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_2:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_3:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_4:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_5:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_6:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_7:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end
function modifier_item_custom_desolator_8:DeclareFunctions() return {MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE, MODIFIER_PROPERTY_PROCATTACK_FEEDBACK} end


function item_desolator_lua1:GetIntrinsicModifierName() return "modifier_item_custom_desolator_1" end
function item_desolator_lua2:GetIntrinsicModifierName() return "modifier_item_custom_desolator_2" end
function item_desolator_lua3:GetIntrinsicModifierName() return "modifier_item_custom_desolator_3" end
function item_desolator_lua4:GetIntrinsicModifierName() return "modifier_item_custom_desolator_4" end
function item_desolator_lua5:GetIntrinsicModifierName() return "modifier_item_custom_desolator_5" end
function item_desolator_lua6:GetIntrinsicModifierName() return "modifier_item_custom_desolator_6" end
function item_desolator_lua7:GetIntrinsicModifierName() return "modifier_item_custom_desolator_7" end
function item_desolator_lua8:GetIntrinsicModifierName() return "modifier_item_custom_desolator_8" end

function modifier_item_custom_desolator_1:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_2:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_3:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_4:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_5:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_6:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_7:OnCreated() self:OnRefresh() end
function modifier_item_custom_desolator_8:OnCreated() self:OnRefresh() end

function modifier_item_custom_desolator_1:OnDestroy() corruption_armor_1 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_2:OnDestroy() corruption_armor_2 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_3:OnDestroy() corruption_armor_3 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_4:OnDestroy() corruption_armor_4 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_5:OnDestroy() corruption_armor_5 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_6:OnDestroy() corruption_armor_6 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_7:OnDestroy() corruption_armor_7 = nil modifier_item_custom_desolator:OnRefresh() end
function modifier_item_custom_desolator_8:OnDestroy() corruption_armor_8 = nil modifier_item_custom_desolator:OnRefresh() end

function modifier_item_custom_desolator_1:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_1 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_2:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_2 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_3:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_3 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_4:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_4 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_5:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_5 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_6:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_6 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_7:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_7 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end
function modifier_item_custom_desolator_8:OnRefresh()
	local ability = self:GetAbility()
	self.bonus_damage = ability:GetSpecialValueFor("bonus_damage")
	corruption_armor_8 = ability:GetSpecialValueFor("corruption_armor")
	self.corruption_duration = ability:GetSpecialValueFor("corruption_duration")
	modifier_item_custom_desolator:OnRefresh()
end



function modifier_item_custom_desolator:OnRefresh()
	if corruption_armor_8 ~= nil then
		self.corruption_armor = corruption_armor_8
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_2" end
	elseif corruption_armor_7 ~= nil then
		self.corruption_armor = corruption_armor_7
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_7" end
	elseif corruption_armor_6 ~= nil then
		self.corruption_armor = corruption_armor_6
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_6" end
	elseif corruption_armor_5 ~= nil then
		self.corruption_armor = corruption_armor_5
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_5" end
	elseif corruption_armor_4 ~= nil then
		self.corruption_armor = corruption_armor_4
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_4" end
	elseif corruption_armor_3 ~= nil then
		self.corruption_armor = corruption_armor_3
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_3" end
	elseif corruption_armor_2 ~= nil then
		self.corruption_armor = corruption_armor_2
		function modifier_item_custom_desolator:GetTexture() return "all/desolator_2" end
	elseif corruption_armor_1 ~= nil then
		self.corruption_armor = corruption_armor_1
		function modifier_item_custom_desolator:GetTexture() return "item_desolator" end
	else self.corruption_armor = nil end
end

function modifier_item_custom_desolator:GetModifierPhysicalArmorBonus() 
	if self.corruption_armor then 
		local c = (-1) * self.corruption_armor
			return c
	end
 end
function modifier_item_custom_desolator_1:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_2:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_3:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_4:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_5:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_6:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_7:GetModifierPreAttack_BonusDamage() return self.bonus_damage end
function modifier_item_custom_desolator_8:GetModifierPreAttack_BonusDamage() return self.bonus_damage end

function modifier_item_custom_desolator_1:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_2:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_3:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_4:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_5:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_6:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_7:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end
function modifier_item_custom_desolator_8:GetModifierProcAttack_Feedback(keys)
	if keys.attacker and keys.target and not (keys.attacker:IsNull() or keys.target:IsNull() or keys.attacker:GetTeam() == keys.target:GetTeam()) then
		keys.target:AddNewModifier(keys.attacker, self:GetAbility(), "modifier_item_custom_desolator", {duration = self.corruption_duration})
	end
end