/* Unit Upgrade Changes */
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_TREBUCHET' WHERE Unit = 'UNIT_CATAPULT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_MUSKETMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_SPANISH_CONQUISTADOR';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_KNIGHT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_ARABIAN_MAMLUK';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_SWORDSMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_ROMAN_LEGION';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_KONGO_SHIELD_BEARER';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MEDIEVAL_HORSEMAN' WHERE  Unit = 'UNIT_HORSEMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_KNIGHT' WHERE Unit = 'UNIT_SUMERIAN_WAR_CART';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_GATLING_GUN' WHERE  Unit = 'UNIT_PIKEMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_SCOUT';


/* Unit Changes */
UPDATE Units SET Combat = 46 WHERE UnitType = 'UNIT_JAPANESE_SAMURAI';

UPDATE Units SET Combat = 41 WHERE UnitType = 'UNIT_ROMAN_LEGION';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_KNIGHT';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_ARABIAN_MAMLUK';

UPDATE Units SET Cost = 180 WHERE UnitType = 'UNIT_PIKEMAN';

UPDATE Units SET BaseSightRange = 2 WHERE UnitType='UNIT_NATURALIST';

UPDATE ModifierArguments SET Value = 9 WHERE ModifierId = 'CONQUISTADOR_SPECIFIC_UNIT_COMBAT' AND Name = 'Amount';


/* Anti Cavalry boost */
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_ANTI_CAVALRY' AND ModifierId = 'ANTI_CAVALRY_COMBAT_BONUS';

