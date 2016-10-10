/obj/structure/closet/secure_closet/personal
	name = "personal closet"
	desc = "It's a secure locker for personnel. The first card swiped gains control."
	req_access = list(access_all_personal_lockers)
	var/registered_name = null

/obj/structure/closet/secure_closet/personal/New()
	..()
	spawn(2)
		if(prob(50))
			new /obj/item/weapon/storage/backpack(src)
		else
			new /obj/item/weapon/storage/backpack/satchel/norm(src)
		new /obj/item/device/radio/headset( src )
	return


/obj/structure/closet/secure_closet/personal/patient
	name = "patient's closet"

/obj/structure/closet/secure_closet/personal/patient/New()
	..()
	spawn(4)
		// Not really the best way to do this, but it's better than "contents = list()"!
		for(var/atom/movable/AM in contents)
			qdel(AM)
		new /obj/item/clothing/under/color/white( src )
		new /obj/item/clothing/shoes/white( src )
	return



/obj/structure/closet/secure_closet/personal/cabinet
	icon_state = "cabinetdetective_locked"
	icon_closed = "cabinetdetective"
	icon_locked = "cabinetdetective_locked"
	icon_opened = "cabinetdetective_open"
	icon_broken = "cabinetdetective_broken"
	icon_off = "cabinetdetective_broken"

/obj/structure/closet/secure_closet/personal/cabinet/update_icon()
	if(broken)
		icon_state = icon_broken
	else
		if(!opened)
			if(locked)
				icon_state = icon_locked
			else
				icon_state = icon_closed
		else
			icon_state = icon_opened

/obj/structure/closet/secure_closet/personal/cabinet/New()
	..()
	spawn(4)
		// Not really the best way to do this, but it's better than "contents = list()"!
		for(var/atom/movable/AM in contents)
			qdel(AM)
		new /obj/item/weapon/storage/backpack/satchel/withwallet( src )
		new /obj/item/device/radio/headset( src )
	return

//begin explorator closets
/obj/structure/closet/secure_closet/personal/captain
	name = "captain's locker"
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_broken = "capsecurebroken"
	icon_off = "capsecureoff"

	New()
		..()
		new /obj/item/weapon/storage/backpack/dufflebag/captain(src)
		new /obj/item/clothing/head/helmet(src)
		new /obj/item/clothing/suit/storage/vest(src)
		new /obj/item/clothing/suit/captunic/capjacket(src)
		new /obj/item/clothing/under/captainformal(src)
		new /obj/item/clothing/under/rank/captain(src)
		new /obj/item/clothing/accessory/holster/hip(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/clothing/gloves/captain(src)
		new /obj/item/clothing/gloves/combat(src)
		new /obj/item/clothing/head/caphat/formal(src)
		new /obj/item/clothing/head/caphat/cap(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/clothing/shoes/brown(src)
		new /obj/item/clothing/shoes/jackboots(src)
		new /obj/item/weapon/cartridge/captain(src)
		new /obj/item/weapon/storage/lockbox/medal(src)
		new /obj/item/weapon/gun/projectile/revolver/deckard(src)
		new /obj/item/ammo_magazine/c38(src)
		new /obj/item/weapon/melee/telebaton(src)
		new /obj/item/device/flash(src)
		return


/obj/structure/closet/secure_closet/personal/xo
	name = "executive officer's locker"
	icon_state = "hopsecure1"
	icon_closed = "hopsecure"
	icon_locked = "hopsecure1"
	icon_opened = "hopsecureopen"
	icon_broken = "hopsecurebroken"
	icon_off = "hopsecureoff"


	New()
		..()
		new /obj/item/clothing/suit/storage/vest(src)
		new /obj/item/clothing/head/helmet(src)
		new /obj/item/weapon/cartridge/hop(src)
		new /obj/item/weapon/storage/box/ids(src)
		new /obj/item/weapon/storage/box/ids( src )
		new /obj/item/weapon/gun/energy/gun(src)
		new /obj/item/device/flash(src)
		new /obj/item/clothing/under/rank/head_of_personnel(src)
		new /obj/item/clothing/under/dress/dress_hop(src)
		new /obj/item/clothing/under/dress/dress_hr(src)
		new /obj/item/clothing/under/lawyer/female(src)
		new /obj/item/clothing/under/lawyer/black(src)
		new /obj/item/clothing/under/lawyer/red(src)
		new /obj/item/clothing/under/lawyer/oldman(src)
		new /obj/item/clothing/shoes/brown(src)
		new /obj/item/clothing/shoes/black(src)
		new /obj/item/clothing/shoes/leather(src)
		new /obj/item/clothing/shoes/white(src)
		new /obj/item/clothing/under/rank/head_of_personnel_whimsy(src)
		new /obj/item/clothing/head/caphat/hop(src)
		new /obj/item/clothing/under/gimmick/rank/head_of_personnel/suit(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		return

/obj/structure/closet/secure_closet/personal/ce
	name = "chief engineer's locker"
	icon_state = "securece1"
	icon_closed = "securece"
	icon_locked = "securece1"
	icon_opened = "secureceopen"
	icon_broken = "securecebroken"
	icon_off = "secureceoff"


	New()
		..()
		new /obj/item/weapon/storage/backpack/industrial(src)
		new /obj/item/weapon/storage/backpack/satchel/eng(src)
		new /obj/item/weapon/storage/backpack/dufflebag/eng(src)
		new /obj/item/clothing/accessory/storage/brown_vest(src)
		new /obj/item/blueprints(src)
		new /obj/item/clothing/under/rank/chief_engineer(src)
		new /obj/item/clothing/under/rank/chief_engineer/skirt(src)
		new /obj/item/clothing/head/hardhat/white(src)
		new /obj/item/clothing/head/welding(src)
		new /obj/item/clothing/gloves/yellow(src)
		new /obj/item/clothing/shoes/brown(src)
		new /obj/item/weapon/cartridge/ce(src)
		new /obj/item/weapon/storage/toolbox/mechanical(src)
		new /obj/item/clothing/suit/storage/hazardvest(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/device/multitool(src)
		new /obj/item/device/flash(src)
		new /obj/item/taperoll/engineering(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/engineering(src)
		new /obj/item/weapon/tank/emergency_oxygen/engi(src)
		return

/obj/structure/closet/secure_closet/personal/cmo
	name = "chief medical officer's locker"
	icon_state = "cmosecure1"
	icon_closed = "cmosecure"
	icon_locked = "cmosecure1"
	icon_opened = "cmosecureopen"
	icon_broken = "cmosecurebroken"
	icon_off = "cmosecureoff"

	New()
		..()
		new /obj/item/weapon/storage/backpack/medic(src)
		new /obj/item/weapon/storage/backpack/satchel/med(src)
		new /obj/item/weapon/storage/backpack/dufflebag/med(src)
		new /obj/item/clothing/suit/bio_suit/cmo(src)
		new /obj/item/clothing/head/bio_hood/cmo(src)
		new /obj/item/clothing/shoes/white(src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		new /obj/item/clothing/under/rank/chief_medical_officer(src)
		new /obj/item/clothing/under/rank/chief_medical_officer/skirt(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat/cmo(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat/cmoalt(src)
		new /obj/item/weapon/cartridge/cmo(src)
		new /obj/item/clothing/gloves/latex(src)
		new /obj/item/clothing/shoes/brown	(src)
		new /obj/item/device/flash(src)
		new /obj/item/weapon/reagent_containers/hypospray(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/medical(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/clothing/mask/gas(src)
		return

/obj/structure/closet/secure_closet/personal/cs
	name = "chief scientist's locker"
	icon_state = "rdsecure1"
	icon_closed = "rdsecure"
	icon_locked = "rdsecure1"
	icon_opened = "rdsecureopen"
	icon_broken = "rdsecurebroken"
	icon_off = "rdsecureoff"

	New()
		..()
		new /obj/item/clothing/suit/bio_suit/scientist(src)
		new /obj/item/clothing/head/bio_hood/scientist(src)
		new /obj/item/clothing/under/rank/research_director(src)
		new /obj/item/clothing/under/rank/research_director/rdalt(src)
		new /obj/item/clothing/under/rank/research_director/dress_rd(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat(src)
		new /obj/item/weapon/cartridge/rd(src)
		new /obj/item/clothing/shoes/white(src)
		new /obj/item/clothing/shoes/leather(src)
		new /obj/item/clothing/gloves/latex(src)
		new /obj/item/weapon/tank/air(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/device/flash(src)
		return

/obj/structure/closet/secure_closet/personal/pilot
	name = "pilot's locker"
	icon_state = "secureqm1"
	icon_closed = "secureqm"
	icon_locked = "secureqm1"
	icon_opened = "secureqmopen"
	icon_broken = "secureqmbroken"
	icon_off = "secureqmoff"

	New()
		..()
		new /obj/item/weapon/storage/backpack(src)
		new /obj/item/weapon/storage/backpack/messenger/black(src)
		new /obj/item/weapon/storage/backpack/satchel(src)
		new /obj/item/clothing/suit/storage/bomber/alt(src)
		new /obj/item/clothing/suit/storage/toggle/bomber(src)
		new /obj/item/clothing/accessory/armband(src)
		new /obj/item/clothing/accessory/storage/webbing(src)
		new /obj/item/clothing/gloves/black(src)
		new /obj/item/clothing/shoes/black(src)
		new /obj/item/clothing/under/pilot(src)
		new /obj/item/clothing/under/color/lightbrown(src)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/specialwhiskey(src)
		new /obj/item/weapon/reagent_containers/food/drinks/glass2/rocks(src)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/cola(src)


/obj/structure/closet/secure_closet/personal/medic
	name = "medic's locker"
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		..()
		new /obj/item/weapon/storage/backpack/medic(src)
		new /obj/item/weapon/storage/backpack/satchel/med(src)
		new /obj/item/weapon/storage/backpack/dufflebag/med(src)
		new /obj/item/clothing/under/rank/nursesuit (src)
		new /obj/item/clothing/head/nursehat (src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		new /obj/item/clothing/under/rank/medical(src)
		new /obj/item/clothing/under/rank/nurse(src)
		new /obj/item/clothing/under/rank/orderly(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat(src)
		new /obj/item/clothing/suit/storage/toggle/fr_jacket(src)
		new /obj/item/clothing/shoes/white(src)
		new /obj/item/weapon/cartridge/medical(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/medical(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/weapon/storage/box/freezer(src)
		return

/obj/structure/closet/secure_closet/personal/engi
	name = "engineer's locker"
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_broken = "secureengbroken"
	icon_off = "secureengoff"


	New()
		..()
		new /obj/item/weapon/storage/backpack/industrial(src)
		new /obj/item/weapon/storage/backpack/satchel/eng(src)
		new /obj/item/weapon/storage/backpack/dufflebag/eng(src)
		new /obj/item/clothing/accessory/storage/brown_vest(src)
		new /obj/item/weapon/storage/toolbox/mechanical(src)
		new /obj/item/clothing/suit/storage/hazardvest(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/clothing/glasses/meson(src)
		new /obj/item/weapon/cartridge/engineering(src)
		new /obj/item/taperoll/engineering(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/engineering(src)
		new /obj/item/weapon/tank/emergency_oxygen/engi(src)
		new /obj/item/weapon/cartridge/atmos(src)
		new /obj/item/taperoll/atmos(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/engineering/atmos(src)
		new /obj/item/weapon/extinguisher(src)
		return

/obj/structure/closet/secure_closet/personal/sci
	name = "scientist's locker"
	icon_state = "secureres1"
	icon_closed = "secureres"
	icon_locked = "secureres1"
	icon_opened = "secureresopen"
	icon_broken = "secureresbroken"
	icon_off = "secureresoff"

	New()
		..()
		new /obj/item/clothing/under/rank/scientist(src)
		//new /obj/item/clothing/suit/labcoat/science(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat(src)
		new /obj/item/clothing/shoes/white(src)
//		new /obj/item/weapon/cartridge/signal/science(src)
		new /obj/item/weapon/tank/air(src)
		new /obj/item/clothing/mask/gas(src)
		return


/obj/structure/closet/secure_closet/personal/crew
	name = "crew locker"
//this might get neat stuff later, but probably not

//end explorator closets

/obj/structure/closet/secure_closet/personal/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if (src.opened)
		if (istype(W, /obj/item/weapon/grab))
			src.MouseDrop_T(W:affecting, user)      //act like they were dragged onto the closet
		user.drop_item()
		if (W) W.forceMove(src.loc)
	else if(W.GetID())
		var/obj/item/weapon/card/id/I = W.GetID()

		if(src.broken)
			user << "<span class='warning'>It appears to be broken.</span>"
			return
		if(!I || !I.registered_name)	return
		if(src.allowed(user) || !src.registered_name || (istype(I) && (src.registered_name == I.registered_name)))
			//they can open all lockers, or nobody owns this, or they own this locker
			src.locked = !( src.locked )
			if(src.locked)	src.icon_state = src.icon_locked
			else	src.icon_state = src.icon_closed

			if(!src.registered_name)
				src.registered_name = I.registered_name
				src.desc = "Owned by [I.registered_name]."
		else
			user << "<span class='warning'>Access Denied</span>"
	else if(istype(W, /obj/item/weapon/melee/energy/blade))
		if(emag_act(INFINITY, user, "The locker has been sliced open by [user] with \an [W]!", "You hear metal being sliced and sparks flying."))
			var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
			spark_system.set_up(5, 0, src.loc)
			spark_system.start()
			playsound(src.loc, 'sound/weapons/blade1.ogg', 50, 1)
			playsound(src.loc, "sparks", 50, 1)
	else
		user << "<span class='warning'>Access Denied</span>"
	return

/obj/structure/closet/secure_closet/personal/emag_act(var/remaining_charges, var/mob/user, var/visual_feedback, var/audible_feedback)
	if(!broken)
		broken = 1
		locked = 0
		desc = "It appears to be broken."
		icon_state = src.icon_broken
		if(visual_feedback)
			visible_message("<span class='warning'>[visual_feedback]</span>", "<span class='warning'>[audible_feedback]</span>")
		return 1

/obj/structure/closet/secure_closet/personal/verb/reset()
	set src in oview(1) // One square distance
	set category = "Object"
	set name = "Reset Lock"
	if(!usr.canmove || usr.stat || usr.restrained()) // Don't use it if you're not able to! Checks for stuns, ghost and restrain
		return
	if(ishuman(usr))
		src.add_fingerprint(usr)
		if (src.locked || !src.registered_name)
			usr << "<span class='warning'>You need to unlock it first.</span>"
		else if (src.broken)
			usr << "<span class='warning'>It appears to be broken.</span>"
		else
			if (src.opened)
				if(!src.close())
					return
			src.locked = 1
			src.icon_state = src.icon_locked
			src.registered_name = null
			src.desc = "It's a secure locker for personnel. The first card swiped gains control."
	return
