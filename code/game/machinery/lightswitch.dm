// the light switch
// can have multiple per area
// can also operate on non-loc area through "otherarea" var
/obj/structure/machinery/light_switch
	name = "light switch"
	desc = "It turns lights on and off. What are you, simple?"
	icon = 'icons/obj/structures/machinery/power.dmi'
	icon_state = "light1"
	anchored = 1.0
	var/on = 1
	var/area/area = null
	var/otherarea = null
	// luminosity = 1

/obj/structure/machinery/light_switch/Initialize()
	. = ..()
	src.area = src.loc.loc

	if(otherarea)
		src.area = locate(text2path("/area/[otherarea]"))

	if(!name)
		name = "light switch ([area.name])"

	src.on = src.area.lightswitch
	updateicon()



/obj/structure/machinery/light_switch/proc/updateicon()
	if(stat & NOPOWER)
		icon_state = "light-p"
	else
		if(on)
			icon_state = "light1"
		else
			icon_state = "light0"

/obj/structure/machinery/light_switch/get_examine_text(mob/user)
	. = ..()
	. += "It is [on? "on" : "off"]."

/obj/structure/machinery/light_switch/attack_hand(mob/user)
	on = !on

	for(var/area/A in area.master.related)
		A.lightswitch = on
		A.updateicon()

		for(var/obj/structure/machinery/light_switch/L in A)
			L.on = on
			L.updateicon()

	area.master.power_change()

/obj/structure/machinery/light_switch/power_change()

	if(!otherarea)
		if(powered(POWER_CHANNEL_LIGHT) || !src.needs_power)
			stat &= ~NOPOWER
		else
			stat |= NOPOWER

		updateicon()

/obj/structure/machinery/light_switch/emp_act(severity)
	if(inoperable())
		..(severity)
		return
	power_change()
	..(severity)
