//Machine Frame Circuit Boards
/*Common Parts: Parts List: Ignitor, Timer, Infra-red laser, Infra-red sensor, t_scanner, Capacitor, Valve, sensor unit,
micro-manipulator, console screen, beaker, Microlaser, matter bin, power cells.
Note: Once everything is added to the public areas, will add materials to circuit boards since autolathe won't be able
to destroy them and players will be able to make replacements.
*/

/obj/item/circuitboard/machine
	var/list/req_components = null
	var/frame_desc = null

/obj/item/circuitboard/machine/destructive_analyzer
	name = "Circuit board (Destructive Analyzer)"
	build_path = /obj/structure/machinery/r_n_d/destructive_analyzer

	frame_desc = "Requires 1 Scanning Module, 1 Micro Manipulator, and 1 Micro-Laser."
	req_components = list(
							/obj/item/stock_parts/scanning_module = 1,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/micro_laser = 1)

/obj/item/circuitboard/machine/autolathe
	name = "Circuit board (Autolathe)"
	build_path = /obj/structure/machinery/autolathe

	frame_desc = "Requires 2 Matter Bins, 1 Micro Manipulator, and 1 Console Screen."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 2,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/circuitboard/machine/autolathe/armylathe
	name = "Circuit board (Armylathe)"
	build_path = /obj/structure/machinery/autolathe/armylathe

	frame_desc = "Requires 4 Matter Bins, 1 Micro Manipulator, and 1 Console Screen."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 4,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/circuitboard/machine/protolathe
	name = "Circuit board (Protolathe)"
	build_path = /obj/structure/machinery/r_n_d/protolathe

	frame_desc = "Requires 2 Matter Bins, 2 Micro Manipulators, and 2 Beakers."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 2,
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/reagent_container/glass/beaker = 2)


/obj/item/circuitboard/machine/circuit_imprinter
	name = "Circuit board (Circuit Imprinter)"
	build_path = /obj/structure/machinery/r_n_d/circuit_imprinter

	frame_desc = "Requires 1 Matter Bin, 1 Micro Manipulator, and 2 Beakers."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 1,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/reagent_container/glass/beaker = 2)

/obj/item/circuitboard/machine/pacman
	name = "Circuit Board (PACMAN-type Generator)"
	build_path = /obj/structure/machinery/power/port_gen/pacman

	frame_desc = "Requires 1 Matter Bin, 1 Micro-Laser, 2 Pieces of Cable, and 1 Capacitor."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 1,
							/obj/item/stock_parts/micro_laser = 1,
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/capacitor = 1)

/obj/item/circuitboard/machine/pacman/super
	name = "Circuit Board (SUPERPACMAN-type Generator)"
	build_path = /obj/structure/machinery/power/port_gen/pacman/super


/obj/item/circuitboard/machine/pacman/mrs
	name = "Circuit Board (MRSPACMAN-type Generator)"
	build_path = /obj/structure/machinery/power/port_gen/pacman/mrs


/obj/item/circuitboard/machine/rdserver
	name = "Circuit Board (R&D Server)"
	build_path = /obj/structure/machinery/r_n_d/server

	frame_desc = "Requires 2 pieces of cable, and 1 Scanning Module."
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/scanning_module = 1)

/obj/item/circuitboard/machine/mechfab
	name = "Circuit board (Exosuit Fabricator)"
	build_path = /obj/structure/machinery/mecha_part_fabricator

	frame_desc = "Requires 2 Matter Bins, 1 Micro Manipulator, 1 Micro-Laser and 1 Console Screen."
	req_components = list(
							/obj/item/stock_parts/matter_bin = 2,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/micro_laser = 1,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/circuitboard/machine/clonepod
	name = "Circuit board (Clone Pod)"

	frame_desc = "Requires 2 Manipulator, 2 Scanning Module, 2 pieces of cable and 1 Console Screen."
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/scanning_module = 2,
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/circuitboard/machine/clonescanner
	name = "Circuit board (Cloning Scanner)"

	frame_desc = "Requires 1 Scanning module, 1 Micro Manipulator, 1 Micro-Laser, 2 pieces of cable and 1 Console Screen."
	req_components = list(
							/obj/item/stock_parts/scanning_module = 1,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/micro_laser = 1,
							/obj/item/stock_parts/console_screen = 1,
							/obj/item/stack/cable_coil = 2,)

/obj/item/circuitboard/machine/unary_atmos

	var/machine_dir = SOUTH
	var/init_dirs = SOUTH

/obj/item/circuitboard/machine/unary_atmos/attackby(obj/item/I as obj, mob/user as mob)
	if(HAS_TRAIT(I, TRAIT_TOOL_SCREWDRIVER))
		machine_dir = turn(machine_dir, 90)
		init_dirs = machine_dir
		user.visible_message(SPAN_NOTICE("\The [user] adjusts the jumper on the [src]'s port configuration pins."), SPAN_NOTICE("You adjust the jumper on the port configuration pins. Now set to [dir2text(machine_dir)]."))
	return

/obj/item/circuitboard/machine/unary_atmos/get_examine_text(mob/user)
	. = ..()
	. += "The jumper is connecting the [dir2text(machine_dir)] pins."

/obj/item/circuitboard/machine/unary_atmos/construct(var/obj/structure/pipes/unary/U)
	//TODO: Move this stuff into the relevant constructor when pipe/construction.dm is cleaned up.
	U.setDir(src.machine_dir)
	U.valid_directions = list(init_dirs)

/obj/item/circuitboard/machine/unary_atmos/heater
	name = "Circuit Board (Gas Heating System)"
	build_path = /obj/structure/pipes/unary/heater

	frame_desc = "Requires 5 Pieces of Cable, 1 Matter Bin, and 2 Capacitors."
	req_components = list(
							/obj/item/stack/cable_coil = 5,
							/obj/item/stock_parts/matter_bin = 1,
							/obj/item/stock_parts/capacitor = 2)

/obj/item/circuitboard/machine/unary_atmos/cooler
	name = "Circuit Board (Gas Cooling System)"
	build_path = /obj/structure/pipes/unary/freezer

	frame_desc = "Requires 2 Pieces of Cable, 1 Matter Bin, 1 Micro Manipulator, and 2 Capacitors."
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/matter_bin = 1,
							/obj/item/stock_parts/capacitor = 2,
							/obj/item/stock_parts/manipulator = 1)

// Telecomms circuit boards:

/obj/item/circuitboard/machine/telecomms/receiver
	name = "Circuit Board (Subspace Receiver)"
	build_path = /obj/structure/machinery/telecomms/receiver

	frame_desc = "Requires 1 Subspace Ansible, 1 Hyperwave Filter, 2 Micro Manipulators, and 1 Micro-Laser."
	req_components = list(
							/obj/item/stock_parts/subspace/ansible = 1,
							/obj/item/stock_parts/subspace/filter = 1,
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stock_parts/micro_laser = 1)

/obj/item/circuitboard/machine/telecomms/hub
	name = "Circuit Board (Hub Mainframe)"
	build_path = /obj/structure/machinery/telecomms/hub

	frame_desc = "Requires 2 Micro Manipulators, 2 Cable Coil and 2 Hyperwave Filter."
	req_components = list(
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/subspace/filter = 2)

/obj/item/circuitboard/machine/telecomms/relay
	name = "Circuit Board (Relay Mainframe)"
	build_path = /obj/structure/machinery/telecomms/relay

	frame_desc = "Requires 2 Micro Manipulators, 2 Cable Coil and 2 Hyperwave Filters."
	req_components = list(
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/subspace/filter = 2)

/obj/item/circuitboard/machine/telecomms/relay/tower
	name = "\improper TC-4T Telecommunications Circuit Board"
	build_path = /obj/structure/machinery/telecomms/relay/preset/tower

	frame_desc = "A TC-4T telecommunications circuit board. Requires 2 Power Cells, 2 Cable Coils and a Subspace Communications Dish."
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/cell = 2,
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stock_parts/subspace/filter = 2)

/obj/item/circuitboard/machine/telecomms/bus
	name = "Circuit Board (Bus Mainframe)"
	build_path = /obj/structure/machinery/telecomms/bus

	frame_desc = "Requires 2 Micro Manipulators, 1 Cable Coil and 1 Hyperwave Filter."
	req_components = list(
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stack/cable_coil = 1,
							/obj/item/stock_parts/subspace/filter = 1)

/obj/item/circuitboard/machine/telecomms/processor
	name = "Circuit Board (Processor Unit)"
	build_path = /obj/structure/machinery/telecomms/processor

	frame_desc = "Requires 3 Micro Manipulators, 1 Hyperwave Filter, 2 Treatment Disks, 1 Wavelength Analyzer, 2 Cable Coils and 1 Subspace Amplifier."
	req_components = list(
							/obj/item/stock_parts/manipulator = 3,
							/obj/item/stock_parts/subspace/filter = 1,
							/obj/item/stock_parts/subspace/treatment = 2,
							/obj/item/stock_parts/subspace/analyzer = 1,
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/subspace/amplifier = 1)

/obj/item/circuitboard/machine/telecomms/server
	name = "Circuit Board (Telecommunication Server)"
	build_path = /obj/structure/machinery/telecomms/server

	frame_desc = "Requires 2 Micro Manipulators, 1 Cable Coil and 1 Hyperwave Filter."
	req_components = list(
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stack/cable_coil = 1,
							/obj/item/stock_parts/subspace/filter = 1)

/obj/item/circuitboard/machine/telecomms/broadcaster
	name = "Circuit Board (Subspace Broadcaster)"
	build_path = /obj/structure/machinery/telecomms/broadcaster

	frame_desc = "Requires 2 Micro Manipulators, 1 Cable Coil, 1 Hyperwave Filter, 1 Ansible Crystal and 2 High-Powered Micro-Lasers. "
	req_components = list(
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stack/cable_coil = 1,
							/obj/item/stock_parts/subspace/filter = 1,
							/obj/item/stock_parts/subspace/crystal = 1,
							/obj/item/stock_parts/micro_laser/high = 2)




/obj/item/circuitboard/machine/batteryrack
	name = "Circuit board (Battery rack PSU)"
	build_path = /obj/structure/machinery/power/smes/batteryrack

	frame_desc = "Requires 3 power cells."
	req_components = list(/obj/item/cell = 3)


/obj/item/circuitboard/machine/ghettosmes
	name = "Circuit board (makeshift PSU)"
	desc = "An APC circuit repurposed into some power storage device controller"
	build_path = /obj/structure/machinery/power/smes/batteryrack/makeshift
	frame_desc = "Requires 3 power cells."
	req_components = list(/obj/item/cell = 3)



	//Board
/obj/item/circuitboard/machine/smes
	name = "Circuit board (SMES Cell)"
	build_path = /obj/structure/machinery/power/smes/buildable
	// Board itself is high tech. Coils have to be ordered from cargo or salvaged from existing SMESs.
	frame_desc = "Requires 1 superconducting magnetic coil and 30 wires."
	req_components = list(/obj/item/stock_parts/smes_coil = 1, /obj/item/stack/cable_coil = 30)


