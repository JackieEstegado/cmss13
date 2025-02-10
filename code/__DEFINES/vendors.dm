#define MARINE_CAN_BUY_UNIFORM "uniform"
#define MARINE_CAN_BUY_SHOES "shoes"
#define MARINE_CAN_BUY_HELMET "helmet"
#define MARINE_CAN_BUY_ARMOR "armor"
#define MARINE_CAN_BUY_GLOVES "gloves"
#define MARINE_CAN_BUY_EAR "ear"
#define MARINE_CAN_BUY_BACKPACK "backpack"
#define MARINE_CAN_BUY_POUCH "pouch"
#define MARINE_CAN_BUY_BELT "belt"
#define MARINE_CAN_BUY_GLASSES "glasses"
#define MARINE_CAN_BUY_MASK "mask"
#define MARINE_CAN_BUY_ESSENTIALS "essentials"
#define MARINE_CAN_BUY_SECONDARY "secondary"
#define MARINE_CAN_BUY_ATTACHMENT "attachment"
#define MARINE_CAN_BUY_MRE "mre"
#define MARINE_CAN_BUY_ACCESSORY "accessory"
#define MARINE_CAN_BUY_COMBAT_SHOES "combat_shoes"
#define MARINE_CAN_BUY_COMBAT_HELMET "combat_helmet"
#define MARINE_CAN_BUY_COMBAT_ARMOR "combat_armor"
#define MARINE_CAN_BUY_KIT "kit"
#define MARINE_CAN_BUY_DRESS "dress"
#define CIVILIAN_CAN_BUY_BACKPACK "civilian_backpack"
#define CIVILIAN_CAN_BUY_UTILITY "civilian_utility"
#define CIVILIAN_CAN_BUY_UNIFORM "civilian_uniform"
#define CIVILIAN_CAN_BUY_SUIT "civilian_suit"
#define CIVILIAN_CAN_BUY_HAT "civilian_hat"
#define CIVILIAN_CAN_BUY_GLASSES "civilian_glasses"
#define CIVILIAN_CAN_BUY_SHOES "civilian_shoes"
#define CIVILIAN_CAN_BUY_GLOVES "civilian_gloves"
#define CIVILIAN_CAN_BUY_ACCESSORY "civilian_accessory"

#define MARINE_CAN_BUY_ALL list(MARINE_CAN_BUY_UNIFORM = 1, MARINE_CAN_BUY_SHOES = 1, MARINE_CAN_BUY_HELMET = 1, MARINE_CAN_BUY_ARMOR = 1, MARINE_CAN_BUY_GLOVES = 1, MARINE_CAN_BUY_EAR = 1, MARINE_CAN_BUY_BACKPACK = 1, MARINE_CAN_BUY_POUCH = 2, MARINE_CAN_BUY_BELT = 1, MARINE_CAN_BUY_GLASSES = 1, MARINE_CAN_BUY_MASK = 1, MARINE_CAN_BUY_ESSENTIALS = 1, MARINE_CAN_BUY_SECONDARY = 1, MARINE_CAN_BUY_ATTACHMENT = 1, MARINE_CAN_BUY_MRE = 1, MARINE_CAN_BUY_ACCESSORY = 1, MARINE_CAN_BUY_COMBAT_SHOES = 1, MARINE_CAN_BUY_COMBAT_HELMET = 1, MARINE_CAN_BUY_COMBAT_ARMOR = 1, MARINE_CAN_BUY_KIT = 1, MARINE_CAN_BUY_DRESS = 99, CIVILIAN_CAN_BUY_UNIFORM = 5, CIVILIAN_CAN_BUY_SUIT = 5, CIVILIAN_CAN_BUY_HAT = 5, CIVILIAN_CAN_BUY_GLASSES = 2, CIVILIAN_CAN_BUY_SHOES = 2, CIVILIAN_CAN_BUY_GLOVES = 2, CIVILIAN_CAN_BUY_ACCESSORY = 5)

#define MARINE_TOTAL_BUY_POINTS 45
#define MARINE_TOTAL_SNOWFLAKE_POINTS 120

#define VEHICLE_INTEGRAL_AVAILABLE 1
#define VEHICLE_PRIMARY_AVAILABLE 2
#define VEHICLE_SECONDARY_AVAILABLE 4
#define VEHICLE_SUPPORT_AVAILABLE 8
#define VEHICLE_ARMOR_AVAILABLE 16
#define VEHICLE_TREADS_AVAILABLE 32

#define VEHICLE_ALL_AVAILABLE (VEHICLE_INTEGRAL_AVAILABLE|VEHICLE_PRIMARY_AVAILABLE|VEHICLE_SECONDARY_AVAILABLE|VEHICLE_SUPPORT_AVAILABLE|VEHICLE_ARMOR_AVAILABLE|VEHICLE_TREADS_AVAILABLE)

#define VENDOR_THEME_COMPANY 0
#define VENDOR_THEME_USCM 1
#define VENDOR_THEME_CLF 2
#define VENDOR_THEME_UPP 3
#define VENDOR_THEME_YAUTJA 4

#define VENDOR_ITEM_REGULAR 1
#define VENDOR_ITEM_MANDATORY 2
#define VENDOR_ITEM_RECOMMENDED 3

#define CL_BRIEFCASE_TIME_LOCK 20 MINUTES

#define VENDOR_PRODUCT_TYPE_UNDEF "Undefined" // Try not to use this if the vendor is priced.
#define VENDOR_PRODUCT_TYPE_FOOD "Food"
#define VENDOR_PRODUCT_TYPE_BEVERAGES "Beverage"
//#define VENDOR_PRODUCT_TYPE_ALCOHOL "Alcohol" No alcohol vendors on the Almayer anyways.
#define VENDOR_PRODUCT_TYPE_SOUTO "Souto"
#define VENDOR_PRODUCT_TYPE_NICOTINE "Nicotine"
#define VENDOR_PRODUCT_TYPE_RECREATIONAL "Recreational"

#define ALL_VENDOR_PRODUCT_TYPES list(VENDOR_PRODUCT_TYPE_FOOD, VENDOR_PRODUCT_TYPE_BEVERAGES, VENDOR_PRODUCT_TYPE_SOUTO, VENDOR_PRODUCT_TYPE_NICOTINE, VENDOR_PRODUCT_TYPE_RECREATIONAL)

#define VEND_TO_HAND (1<<0)
#define VEND_UNIFORM_RANKS (1<<1)
#define VEND_UNIFORM_AUTOEQUIP (1<<2)
#define VEND_LIMITED_INVENTORY (1<<3)
#define VEND_CLUTTER_PROTECTION (1<<4)
#define VEND_CATEGORY_CHECK (1<<5)
#define VEND_INSTANCED_CATEGORY (1<<6)
#define VEND_FACTION_THEMES (1<<7)
#define VEND_USE_VENDOR_FLAGS (1<<8)
//Whether or not to load ammo boxes depending on ammo loaded into the vendor
//Only relevant in big vendors, like Requisitions or Squad Prep
#define VEND_LOAD_AMMO_BOXES (1<<9)
/// Vendors with this flag will fill retroactively based on latejoining players,
/// and expect a scale multiplier instead of amount of items
#define VEND_STOCK_DYNAMIC (1<<10)
/// Vends props looking like the items instead of the actual items. Basically for tutorials.
#define VEND_PROPS (1<<11)

// Redemption Tokens
#define VEND_TOKEN_ENGINEER "Engineer"
#define VEND_TOKEN_SPEC "Specialist"
#define VEND_TOKEN_SYNTH "Synthetic"
/// Token invalid/unrecognised.
#define VEND_TOKEN_VOID "Void"
