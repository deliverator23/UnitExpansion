--Types (KIND_UNIT)
INSERT INTO Types (Type, Kind) SELECT 'UNIT_DLV_CUIRASSIER', 'KIND_UNIT' WHERE NOT EXISTS (SELECT 1 FROM Types WHERE Type = 'UNIT_CUIRASSIER');
INSERT INTO Types (Type, Kind) SELECT 'UNIT_DLV_MEDIEVAL_HORSEMAN', 'KIND_UNIT' WHERE NOT EXISTS (SELECT 1 FROM Types WHERE Type = 'UNIT_COURSER');
INSERT INTO Types (Type, Kind) SELECT 'UNIT_DLV_EXPLORER', 'KIND_UNIT' WHERE NOT EXISTS (SELECT 1 FROM Types WHERE Type = 'UNIT_SKIRMISHER');

INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_RIFLEMAN', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_GATLING_GUN', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_TREBUCHET', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_MORTAR', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_SELF_PROPELLED_ARTILLERY', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_COG', 'KIND_UNIT');
INSERT INTO Types (Type, Kind) VALUES ('UNIT_DLV_GALLEASS', 'KIND_UNIT');

--Types (KIND_ABILITY)
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_EXPLORER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PRE_GUNPOWDER_MELEE_ATTACK', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CITY_CENTER_NERF', 'KIND_ABILITY');


--Units
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech) 
SELECT 'UNIT_DLV_CUIRASSIER', '4', '330', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_DLV_CUIRASSIER_NAME', 'LOC_UNIT_DLV_CUIRASSIER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '5', '64', 'RESOURCE_NITER', 'TECH_BALLISTICS', 'TECH_COMPOSITES'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech)
SELECT 'UNIT_DLV_MEDIEVAL_HORSEMAN', '5', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MEDIEVAL_HORSEMAN_NAME', 'LOC_UNIT_MEDIEVAL_HORSEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '3', '44', 'RESOURCE_HORSES', 'TECH_STIRRUPS', 'TECH_COMPOSITES'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COURSER');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, PseudoYieldType, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech)
SELECT 'UNIT_DLV_EXPLORER', '3', '120', 'ADVISOR_GENERIC', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_EXPLORER_NAME', 'LOC_UNIT_EXPLORER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', 'PSEUDOYIELD_UNIT_EXPLORER', '3', '35', 'TECH_CARTOGRAPHY', 'TECH_RIFLING'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SKIRMISHER');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_RIFLEMAN', '2', '310', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RIFLEMAN_NAME', 'LOC_UNIT_RIFLEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'RESOURCE_NITER', 'TECH_RIFLING', 'TECH_SATELLITES');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, Bombard, PrereqTech, MandatoryObsoleteTech) 
VALUES ('UNIT_DLV_TREBUCHET', '2', '200', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_TREBUCHET_NAME', 'LOC_UNIT_TREBUCHET_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '3', '33', '2', '45', 'TECH_MILITARY_ENGINEERING', 'TECH_BALLISTICS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech) 
VALUES ('UNIT_DLV_LONGSWORDSMAN', '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_LONGSWORDSMAN_NAME', 'LOC_UNIT_LONGSWORDSMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '46', 'RESOURCE_IRON', 'TECH_CASTLES', 'TECH_REPLACEABLE_PARTS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech) 
VALUES ('UNIT_DLV_GATLING_GUN', '2', '400', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GATLING_GUN_NAME', 'LOC_UNIT_GATLING_GUN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '4', '52', '62', '1', 'TECH_INDUSTRIALIZATION', 'TECH_GUIDANCE_SYSTEMS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech) 
VALUES ('UNIT_DLV_MORTAR', '2', '540', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MORTAR_NAME', 'LOC_UNIT_MORTAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '6', '65', '75', '2', 'TECH_ROCKETRY');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, StrategicResource, PrereqTech, Bombard)
VALUES ('UNIT_DLV_SELF_PROPELLED_ARTILLERY', '3', '680', 'ADVISOR_CONQUEST', '3', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SELF_PROPELLED_ARTILLERY_NAME', 'LOC_UNIT_SELF_PROPELLED_ARTILLERY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '8', '70', '3', 'RESOURCE_OIL', 'TECH_SATELLITES', '95');

INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_DLV_COG', '150', '2', '3', '3', 1, 'DOMAIN_SEA', '38', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_COG_NAME', 'LOC_UNIT_COG_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEAM_POWER', 'TECH_APPRENTICESHIP');

INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, StrategicResource, MandatoryObsoleteTech, PrereqTech)
VALUES ('UNIT_DLV_GALLEASS', '200', '3', '3', '2', 1, 'DOMAIN_SEA', '32', '32', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_GALLEASS_NAME', 'LOC_UNIT_GALLEASS_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'RESOURCE_NITER', 'TECH_STEEL', 'TECH_MILITARY_ENGINEERING');

--Units_XP2
CREATE TABLE IF NOT EXISTS Units_XP2 (UnitType VARCHAR, ResourceMaintenanceAmount INTEGER, ResourceCost INTEGER, ResourceMaintenanceType VARCHAR, TourismBomb INTEGER, CanEarnExperience BOOLEAN, TourismBombPossible BOOLEAN, CanFormMilitaryFormation BOOLEAN, MajorCivOnly BOOLEAN);

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT UnitType, 0, 20, NULL, 0, 1, 0, 1, 0 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT UnitType, 0, 20, NULL, 0, 1, 0, 1, 0 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
VALUES ('UNIT_DLV_RIFLEMAN', 0, 20, NULL, 0, 1, 0, 1, 0);

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
VALUES ('UNIT_DLV_LONGSWORDSMAN', 0, 20, NULL, 0, 1, 0, 1, 0);

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
VALUES ('UNIT_DLV_SELF_PROPELLED_ARTILLERY', 1, 1, 'RESOURCE_OIL', 0, 1, 0, 1, 0);

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
VALUES ('UNIT_DLV_GALLEASS', 0, 20, NULL, 0, 1, 0, 1, 0);

--UnitReplaces
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SUMERIAN_WAR_CART', 'UNIT_HEAVY_CHARIOT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_JAPANESE_SAMURAI', 'UNIT_DLV_LONGSWORDSMAN');

--UnitUpgrades
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_TREBUCHET', 'UNIT_BOMBARD');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'UNIT_MUSKETMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_RIFLEMAN', 'UNIT_INFANTRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_GATLING_GUN', 'UNIT_MACHINE_GUN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_MORTAR', 'UNIT_ROCKET_ARTILLERY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_COG', 'UNIT_CARAVEL');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DLV_GALLEASS', 'UNIT_FRIGATE');

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) SELECT UnitType, 'UNIT_RANGER' FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) SELECT UnitType, 'UNIT_TANK' FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) SELECT UnitType, 'UNIT_CAVALRY' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';

--UnitAIInfos
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITAI_COMBAT' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITAI_EXPLORE' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_MELEE' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_CAVALRY' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_LAND_COMBAT' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITAI_COMBAT' FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITAI_EXPLORE'  FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_MELEE'  FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_CAVALRY' FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_LAND_COMBAT' FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITAI_EXPLORE' FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_MELEE' FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT UnitType, 'UNITTYPE_LAND_COMBAT' FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';

INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_COG', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_COG', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_COG', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_COG', 'UNITTYPE_NAVAL');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GALLEASS', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GALLEASS', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GALLEASS', 'UNITTYPE_NAVAL');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_LONGSWORDSMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_RIFLEMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_RIFLEMAN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_RIFLEMAN', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_RIFLEMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GATLING_GUN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GATLING_GUN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GATLING_GUN', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_DLV_GATLING_GUN', 'UNITTYPE_LAND_COMBAT');

INSERT INTO UnitAIInfos (UnitType, AiType) SELECT 'UNIT_DLV_TREBUCHET', AiType FROM UnitAiInfos WHERE UnitType = 'UNIT_CATAPULT';
INSERT INTO UnitAIInfos (UnitType, AiType) SELECT 'UNIT_DLV_SELF_PROPELLED_ARTILLERY', AiType FROM UnitAiInfos WHERE UnitType = 'UNIT_ARTILLERY';

--Tags
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_EXPLORER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_AUTOMATIC_GUN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_GUNPOWDER_MELEE', 'ABILITY_CLASS');

--TypeTags UNIT <-> CLASS
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_COG', Tag FROM TypeTags WHERE Type = 'UNIT_GALLEY' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_GALLEASS', Tag FROM TypeTags WHERE Type = 'UNIT_QUADRIREME' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_LONGSWORDSMAN', Tag FROM TypeTags WHERE Type = 'UNIT_SWORDSMAN' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_RIFLEMAN', Tag FROM TypeTags WHERE Type = 'UNIT_MUSKETMAN' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_MORTAR', Tag FROM TypeTags WHERE Type = 'UNIT_FIELD_CANNON' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_TREBUCHET', Tag FROM TypeTags WHERE Type = 'UNIT_CATAPULT' AND Tag LIKE 'CLASS_%';
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DLV_SELF_PROPELLED_ARTILLERY', Tag FROM TypeTags WHERE Type = 'UNIT_ARTILLERY' AND Tag LIKE 'CLASS_%';

INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_DLV_GATLING_GUN', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_DLV_GATLING_GUN', 'CLASS_AUTOMATIC_GUN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MACHINE_GUN', 'CLASS_AUTOMATIC_GUN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_DLV_GALLEASS', 'CLASS_GALLEASS');

INSERT INTO TypeTags (Type, Tag) SELECT UnitType, 'CLASS_LIGHT_CAVALRY' FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN';
INSERT INTO TypeTags (Type, Tag) SELECT UnitType, 'CLASS_HEAVY_CAVALRY'  FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER';
INSERT INTO TypeTags (Type, Tag) SELECT UnitType, 'CLASS_RECON'  FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';
INSERT INTO TypeTags (Type, Tag) SELECT UnitType, 'CLASS_EXPLORER'  FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER';

DELETE FROM TypeTags WHERE Type = 'UNIT_ROCKET_ARTILLERY' AND Tag LIKE 'CLASS_%';

INSERT INTO TypeTags SELECT 'UNIT_ROCKET_ARTILLERY', Tag FROM TypeTags WHERE Type = 'UNIT_FIELD_CANNON' AND Tag LIKE 'CLASS_%';

-- Gunpowder Melee
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MUSKETMAN', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_INFANTRY', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MECHANIZED_INFANTRY', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SPANISH_CONQUISTADOR', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_FRENCH_GARDE_IMPERIALE', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ENGLISH_REDCOAT', 'CLASS_GUNPOWDER_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_DLV_RIFLEMAN', 'CLASS_GUNPOWDER_MELEE');

-- Gunpowder Melee - DLC
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_DIGGER', 'CLASS_GUNPOWDER_MELEE' WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DIGGER');

-- TypeTags ABILITY <-> CLASS
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_EXPLORER', 'CLASS_EXPLORER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'CLASS_AUTOMATIC_GUN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PRE_GUNPOWDER_MELEE_ATTACK', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CITY_CENTER_NERF', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CITY_CENTER_NERF', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_WHEN_DEFENDING', 'CLASS_GALLEASS');

--Requirements
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('OPPONENT_REQUIREMENT_MELEE','REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('OPPONENT_REQUIREMENT_NOT_GUNPOWDER_MELEE','REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES', 1);
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('DEFENDER_IS_NOT_OCCUPYING_DISTRICT_REQUIREMENT','REQUIREMENT_PLOT_HAS_ANY_DISTRICT', 1);
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT','REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES');

--RequirementArguments
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_REQUIREMENT_MELEE','Tag','CLASS_MELEE');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_REQUIREMENT_NOT_GUNPOWDER_MELEE','Tag','CLASS_GUNPOWDER_MELEE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT','UnitPromotionClass','PROMOTION_CLASS_LIGHT_CAVALRY');

--RequirementSets
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ATTACKING_CITY_CENTER_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

--RequirementSetRequirements
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_HC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'OPPONENT_ANTI_CAVALRY_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'OPPONENT_IS_PROMOTION_CLASS_MELEE');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS', 'OPPONENT_REQUIREMENT_MELEE');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS', 'OPPONENT_REQUIREMENT_NOT_GUNPOWDER_MELEE');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS', 'DEFENDER_IS_NOT_OCCUPYING_DISTRICT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_CITY_CENTER_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_CITY_CENTER_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_DISTRICT_REQUIREMENT');

--Modifiers
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_20_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_HEAVY_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_LIGHT_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('MINUS_X_VS_CITY_CENTERS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ATTACKING_CITY_CENTER_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VS_PRE_GUNPOWDER_MELEE', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ATTACKING_PRE_GUNPOWDER_MELEE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_WHEN_DEFENDING', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'UNIT_WEAK_WHEN_DEFENDING_REQUIREMENTS');

--ModifierStrings
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_20_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_20_VS_HEAVY_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_15_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_15_VS_LIGHT_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'Preview', 'PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('MINUS_X_VS_CITY_CENTERS', 'Preview', 'MINUS_X_VS_CITY_CENTERS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VS_PRE_GUNPOWDER_MELEE', 'Preview', 'PLUS_X_VS_PRE_GUNPOWDER_MELEE_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_WHEN_DEFENDING', 'Preview', 'PLUS_X_WHEN_DEFENDING_DESC');

--ModifierArguments
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_20_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Amount', '20');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'Amount', '8');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MINUS_X_VS_CITY_CENTERS', 'Amount', '-6');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VS_PRE_GUNPOWDER_MELEE', 'Amount', '6');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_WHEN_DEFENDING', 'Amount', '8');

--UnitAbilities
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_EXPLORER', 'LOC_ABILITY_EXPLORER', 'LOC_ABILITY_EXPLORER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'LOC_ABILITY_AUTOMATIC_GUNFIRE', 'LOC_ABILITY_AUTOMATIC_GUNFIRE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PRE_GUNPOWDER_MELEE_ATTACK', 'LOC_ABILITY_PRE_GUNPOWDER_MELEE_ATTACK', 'LOC_ABILITY_PRE_GUNPOWDER_MELEE_ATTACK_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CITY_CENTER_NERF', 'LOC_ABILITY_CITY_CENTER_NERF', 'LOC_ABILITY_CITY_CENTER_NERF_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_WHEN_DEFENDING', 'LOC_ABILITY_PLUS_X_WHEN_DEFENDING_NERF', 'LOC_ABILITY_PLUS_X_WHEN_DEFENDING_DESCRIPTION');

--UnitAbilityModifiers
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EXPLORER', 'MOD_IGNORE_CROSSING_RIVERS_COST');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EXPLORER', 'REDCOAT_DISEMBARK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ANTI_CAVALRY', 'PLUS_20_VS_HEAVY_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ANTI_CAVALRY', 'PLUS_15_VS_LIGHT_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PRE_GUNPOWDER_MELEE_ATTACK', 'PLUS_X_VS_PRE_GUNPOWDER_MELEE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CITY_CENTER_NERF', 'MINUS_X_VS_CITY_CENTERS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_WHEN_DEFENDING', 'PLUS_X_WHEN_DEFENDING');


/* Unit Upgrade Changes */
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_TREBUCHET' WHERE Unit = 'UNIT_CATAPULT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_MUSKETMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_SPANISH_CONQUISTADOR';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_SWORDSMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_ROMAN_LEGION';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_KONGO_SHIELD_BEARER';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_KNIGHT' WHERE Unit = 'UNIT_SUMERIAN_WAR_CART';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MORTAR' WHERE Unit = 'UNIT_FIELD_CANNON';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_SELF_PROPELLED_ARTILLERY' WHERE Unit = 'UNIT_ARTILLERY';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_COG' WHERE Unit = 'UNIT_GALLEY';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_COG' WHERE Unit = 'UNIT_NORWEGIAN_LONGSHIP';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_GALLEASS' WHERE Unit = 'UNIT_QUADRIREME';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_SCOUT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MEDIEVAL_HORSEMAN' WHERE  Unit = 'UNIT_HORSEMAN' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_KNIGHT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_ARABIAN_MAMLUK' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');

/* Unit Changes */
UPDATE Units SET Combat = 41 WHERE UnitType = 'UNIT_ROMAN_LEGION';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_KNIGHT';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_ARABIAN_MAMLUK';

UPDATE Units SET Combat = 45, Cost = 160 WHERE UnitType = 'UNIT_PIKEMAN';

UPDATE Units SET BaseSightRange = 2 WHERE UnitType='UNIT_NATURALIST';

UPDATE Units SET Bombard = 0, RangedCombat = 85, BaseMoves = 3, Range = 2, PromotionClass = 'PROMOTION_CLASS_RANGED' WHERE UnitType = 'UNIT_ROCKET_ARTILLERY';

UPDATE Units SET Range = 1, ZoneOfControl = 1, Cost = 360, Maintenance = 4 WHERE UnitType = 'UNIT_MACHINE_GUN';

UPDATE ModifierArguments SET Value = 9 WHERE ModifierId = 'CONQUISTADOR_SPECIFIC_UNIT_COMBAT' AND Name = 'Amount';

/* Anti Cavalry boost */
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_ANTI_CAVALRY' AND ModifierId = 'ANTI_CAVALRY_COMBAT_BONUS';

/* DLC Changes */

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_PERSIAN_IMMORTAL' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PERSIAN_IMMORTAL');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_MACEDONIAN_HYPASPIST' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_MACEDONIAN_HYPASPIST');

/* Rise & Fall Changes */

UPDATE Units SET Combat = 45 WHERE UnitType = 'UNIT_ZULU_IMPI';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MORTAR' WHERE Unit = 'UNIT_KOREAN_HWACHA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_KOREAN_HWACHA');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_CREE_OKIHTCITAW' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CREE_OKIHTCITAW') AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SKIRMISHER');

UPDATE Units SET Combat = 46 WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT UnitType,'UNIT_DLV_TREBUCHET' FROM Units WHERE UnitType = 'UNIT_KHMER_DOMREY';

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT UnitType,'UNIT_DLV_LONGSWORDSMAN' FROM Units WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI';

/* Gathering Storm Changes */

UPDATE Units SET PrereqTech = 'TECH_BUTTRESS' WHERE UnitType = 'UNIT_DLV_COG' AND EXISTS (SELECT 1 FROM Technologies WHERE TechnologyType = 'TECH_BUTTRESS');

UPDATE Units SET PrereqTech = 'TECH_BUTTRESS' WHERE UnitType = 'UNIT_DLV_GALLEASS' AND EXISTS (SELECT 1 FROM Technologies WHERE TechnologyType = 'TECH_BUTTRESS');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_MAORI_TOA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_MAORI_TOA');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_COG' WHERE Unit = 'UNIT_PHOENICIA_BIREME' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PHOENICIA_BIREME');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_SULEIMAN_JANISSARY' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SULEIMAN_JANISSARY');