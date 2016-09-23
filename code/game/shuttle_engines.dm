/obj/structure/shuttle
	name = "shuttle"
	icon = 'icons/turf/shuttle.dmi'

/obj/structure/shuttle/window
	name = "shuttle window"
	icon = 'icons/obj/podwindows.dmi'
	icon_state = "1"
	density = 1
	opacity = 0
	anchored = 1

	CanPass(atom/movable/mover, turf/target, height, air_group)
		if(!height || air_group) return 0
		else return ..()

/obj/structure/shuttle/engine
	name = "engine"
	density = 1
	anchored = 1.0

/obj/structure/shuttle/engine/heater
	name = "heater"
	icon_state = "heater"

/obj/structure/shuttle/engine/platform
	name = "platform"
	icon_state = "platform"

/obj/structure/shuttle/engine/propulsion
	name = "main engine"
	desc = "The main sublight engines of a spaceship."
	icon_state = "propulsion"
	opacity = 1

/obj/structure/shuttle/engine/propulsion/left
	icon_state = "propulsion_l"

/obj/structure/shuttle/engine/propulsion/right
	icon_state = "propulsion_r"

/obj/structure/shuttle/engine/propulsion/burst
	name = "burst thruster"
	desc = "An engine with a self-contained fuel system, designed to provide a brief, powerful period of acceleration. Common on escape pods."
	icon_state = "burst_s"

/obj/structure/shuttle/engine/propulsion/burst/left
	name = "burst thruster"
	icon_state = "burst_l"

/obj/structure/shuttle/engine/propulsion/burst/right
	name = "burst thruster"
	icon_state = "burst_r"

/obj/structure/shuttle/engine/propulsion/thrust
	name = "maneuvering thruster"
	desc = "A low-powered thruster used for rotation and small-scale maneuvering."
	icon_state = "burst_s"

/obj/structure/shuttle/engine/propulsion/thrust/left
	name = "maneuvering thruster"
	icon_state = "burst_l"

/obj/structure/shuttle/engine/propulsion/thrust/right
	name = "maneuvering thruster"
	icon_state = "burst_r"


/obj/structure/shuttle/engine/router
	name = "router"
	icon_state = "router"
