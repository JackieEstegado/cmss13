/obj/item/ore
	name = "rock"
	icon = 'icons/obj/structures/props/mining.dmi'
	icon_state = "ore2"
	var/oretag

/obj/item/ore/uranium
	name = "pitchblende"
	icon_state = "Uranium ore"

	oretag = "uranium"

/obj/item/ore/iron
	name = "hematite"
	icon_state = "Iron ore"

	oretag = "hematite"

/obj/item/ore/coal
	name = "carbonaceous rock"
	icon_state = "Coal ore"

	oretag = "coal"

/obj/item/ore/glass
	name = "impure silicates"
	icon_state = "Glass ore"
	gender = PLURAL
	oretag = "sand"

/obj/item/ore/phoron
	name = "phoron crystals"
	icon_state = "Phoron ore"
	gender = PLURAL
	oretag = "phoron"

/obj/item/ore/silver
	name = "native silver ore"
	icon_state = "Silver ore"

	oretag = "silver"

/obj/item/ore/gold
	name = "native gold ore"
	icon_state = "Gold ore"

	oretag = "gold"

/obj/item/ore/diamond
	name = "diamonds"
	icon_state = "Diamond ore"
	gender = PLURAL
	oretag = "diamond"

/obj/item/ore/osmium
	name = "raw platinum"
	icon_state = "Platinum ore"
	oretag = "platinum"

/obj/item/ore/hydrogen
	name = "raw hydrogen"
	icon_state = "Phazon"
	oretag = "hydrogen"

/obj/item/ore/slag
	name = "Slag"
	desc = "Completely useless"
	icon_state = "slag"
	oretag = "slag"

/obj/item/ore/Initialize()
	. = ..()
	pixel_x = rand(0,16)-8
	pixel_y = rand(0,8)-8
