item_all_passive = class({});
all_item_abilities = {"item_all_1_vampir","item_all_2_crit","item_all_3_bfury","item_all_4_sabre","item_all_5_agi","item_all_6_str","item_all_7_int","item_all_8_all_stats","item_all_9_bsa","item_all_10_heal","item_all_11_all_damage","item_all_12_gold","item_all_13_armor_self","item_all_14_armor_aura_minus","item_all_15_desolator","item_all_16_kaya","item_all_17_hp_str","item_all_18_evasion","item_all_19_shiva","item_all_20_cooldown","item_all_21_radius_damage","item_all_22_stats_in_str","item_all_23_stats_in_int","item_all_24_stats_in_agi","item_all_25_healer","item_all_26_armor_agi","item_all_27_essence_attack","item_all_28_aeon_disk","item_all_29_killer","item_all_30_ignore_armor"}
Random_Skill = {Random_Skill1, Random_Skill2, Random_Skill3, Random_Skill4, Random_Skill5}
item_all_reroll = class({});	


summ_skills = {0, 0, 0, 0, 0 }
function item_all_passive:OnSpellStart()
	local player = self:GetCaster():GetPlayerOwnerID() + 1
    local item_name = self:GetName();
    local ability_name = string.gsub(item_name, 'item_', '');
    if IsServer() and summ_skills[player] < 5 and not self:GetCaster():HasAbility(ability_name) then
        self:GetCaster():AddAbility(ability_name):SetLevel(1)
        summ_skills[player] = summ_skills[player] + 1
        self:GetCaster():RemoveItem(self)
    else
        GameRules:SendCustomMessage("<font color='#ff0000'>YOU ALREADY HAVE THIS SKILL OR HAVE MORE THAN 5 SKILLS !!!</font>",0,0)
    end
end

function item_all_reroll:OnSpellStart()
	local player = self:GetCaster():GetPlayerOwnerID() + 1
	local item_name_l = self:GetName();
	local ability_name_l = string.gsub(item_name_l, 'item_all_random_skills_', '');
	local ability_num = tonumber(ability_name_l)
	repeat
		Random_Skill[player] = RandomInt(1, 30)
	until(Random_Skill[player] ~= ability_num)
	self:GetCaster():AddItem(CreateItem(all_item_abilities[Random_Skill[player]], nil, nil))
	self:GetCaster():RemoveItem(self)
	
end

item_all_1_vampir = item_all_passive;
item_all_2_crit = item_all_passive;
item_all_3_bfury = item_all_passive;
item_all_4_sabre = item_all_passive;
item_all_5_agi = item_all_passive;
item_all_6_str = item_all_passive;
item_all_7_int = item_all_passive;
item_all_8_all_stats = item_all_passive;
item_all_9_bsa = item_all_passive;
item_all_10_heal = item_all_passive;
item_all_11_all_damage = item_all_passive;
item_all_12_gold = item_all_passive;
item_all_13_armor_self = item_all_passive;
item_all_14_armor_aura_minus = item_all_passive;
item_all_15_desolator = item_all_passive;
item_all_16_kaya = item_all_passive;
item_all_17_hp_str = item_all_passive;
item_all_18_evasion = item_all_passive;
item_all_19_shiva = item_all_passive;
item_all_20_cooldown = item_all_passive;
item_all_21_radius_damage = item_all_passive;
item_all_22_stats_in_str = item_all_passive;
item_all_23_stats_in_int = item_all_passive;
item_all_24_stats_in_agi = item_all_passive;
item_all_25_healer = item_all_passive;
item_all_26_armor_agi = item_all_passive;
item_all_27_essence_attack = item_all_passive;
item_all_28_aeon_disk = item_all_passive;
item_all_29_killer = item_all_passive;
item_all_30_ignore_armor  = item_all_passive;

item_all_random_skills_1 = item_all_reroll;
item_all_random_skills_2 = item_all_reroll;
item_all_random_skills_3 = item_all_reroll;
item_all_random_skills_4 = item_all_reroll;
item_all_random_skills_5 = item_all_reroll;
item_all_random_skills_6 = item_all_reroll;
item_all_random_skills_7 = item_all_reroll;
item_all_random_skills_8 = item_all_reroll;
item_all_random_skills_9 = item_all_reroll;
item_all_random_skills_10 = item_all_reroll;
item_all_random_skills_11 = item_all_reroll;
item_all_random_skills_12 = item_all_reroll;
item_all_random_skills_13 = item_all_reroll;
item_all_random_skills_14 = item_all_reroll;
item_all_random_skills_15 = item_all_reroll;
item_all_random_skills_16 = item_all_reroll;
item_all_random_skills_17 = item_all_reroll;
item_all_random_skills_18 = item_all_reroll;
item_all_random_skills_19 = item_all_reroll;
item_all_random_skills_20 = item_all_reroll;
item_all_random_skills_21 = item_all_reroll;
item_all_random_skills_22 = item_all_reroll;
item_all_random_skills_23 = item_all_reroll;
item_all_random_skills_24 = item_all_reroll;
item_all_random_skills_25 = item_all_reroll;
item_all_random_skills_26 = item_all_reroll;
item_all_random_skills_27 = item_all_reroll;
item_all_random_skills_28 = item_all_reroll;
item_all_random_skills_29 = item_all_reroll;
item_all_random_skills_30 = item_all_reroll;
