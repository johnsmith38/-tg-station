/*
Captain
*/
/datum/job/captain
	title = "Captain"
	flag = CAPTAIN
	department_head = list("Centcom")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Nanotrasen officials and Space law"
	selection_color = "#ccccff"
	req_admin_notify = 1
	minimal_player_age = 14

	default_id = /obj/item/weapon/card/id/gold
	default_pda = /obj/item/device/pda/captain
	default_headset = /obj/item/device/radio/headset/heads/captain
	default_backpack = /obj/item/weapon/storage/backpack/captain
	default_satchel = /obj/item/weapon/storage/backpack/satchel_cap

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()

/datum/job/captain/equip_items(var/mob/living/carbon/human/H)
	var/obj/item/clothing/under/U = new /obj/item/clothing/under/rank/captain(H)
	U.attachTie(new /obj/item/clothing/tie/medal/gold/captain())
	H.equip_to_slot_or_del(U, slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/vest/capcarapace(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sneakers/brown(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/caphat(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)

	//Equip ID box & telebaton
	if(H.backbag == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/silver_ids(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/silver_ids(H.back), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/melee/classic_baton/telescopic(H), slot_in_backpack)

	//Implant him
	var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
	L.imp_in = H
	L.implanted = 1
	H.sec_hud_set_implants()

	minor_announce("Captain [H.real_name] on deck!")

/datum/job/captain/get_access()
	return get_all_accesses()

/*
Head of Personnel
*/
/datum/job/hop
	title = "Head of Personnel"
	flag = HOP
	department_head = list("Captain")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#ddddff"
	req_admin_notify = 1
	minimal_player_age = 10

	default_id = /obj/item/weapon/card/id/silver
	default_pda = /obj/item/device/pda/heads/hop
	default_headset = /obj/item/device/radio/headset/heads/hop

	access = list(access_security, access_sec_doors, access_court, access_weapons,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_theatre, access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_mineral_storeroom)
	minimal_access = list(access_security, access_sec_doors, access_court, access_weapons,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_theatre, access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_mineral_storeroom)


/datum/job/hop/equip_items(var/mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/head_of_personnel(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sneakers/brown(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/hopcap(H), slot_head)

	//Equip ID box & telebaton
	if(H.backbag == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H.back), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/melee/classic_baton/telescopic(H), slot_in_backpack)


/*
Bridge Commander
*/
/datum/job/bcomm
	title = "Bridge Commander"
	flag = BCOMM
	department_head = list("Captain")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#ddddff"
	req_admin_notify = 1
	minimal_player_age = 10

	default_id = /obj/item/weapon/card/id/silver
	default_pda = /obj/item/device/pda/heads/bcomm
	default_headset = /obj/item/device/radio/headset/heads/bcomm

	access = list(access_security, access_sec_doors, access_court, access_weapons,
			            access_medical, access_engine, access_eva, access_heads,
			            access_maint_tunnels, access_construction, access_morgue,
			            access_cargo, access_cargo_bot, access_mailsorting, access_qm,
			            access_research, access_mining, access_heads_vault, access_mining_station,
			            access_RC_announce, access_keycard_auth, access_gateway, access_mineral_storeroom,
			            access_ai_upload, access_teleporter, access_tcomsat)
	minimal_access = list(access_security, access_sec_doors, access_court, access_weapons,
			            access_medical, access_engine, access_eva, access_heads,
			            access_maint_tunnels, access_construction, access_morgue,
			            access_cargo, access_cargo_bot, access_mailsorting, access_qm,
			            access_research, access_mining, access_heads_vault, access_mining_station,
			            access_RC_announce, access_keycard_auth, access_gateway, access_mineral_storeroom,
			            access_ai_upload, access_teleporter, access_tcomsat)


/datum/job/bcomm/equip_items(var/mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bridgecommander(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sneakers/brown(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/color/black(H), slot_gloves)

	//Equip ID box & telebaton
	if(H.backbag == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/melee/classic_baton/telescopic(H), slot_in_backpack)

/*
Bridge Crewman
*/
/datum/job/bcrew
        title = "Bridge Crew"
        flag = BCREW
        department_head = list("Bridge Commander")
        department_flag = CIVILIAN
        faction = "Station"
        total_positions = 4 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
        spawn_positions = 4 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
        supervisors = "the Bridge Commander, and the head of your assigned department (if applicable)"
        selection_color = "#ddddff"
        minimal_player_age = 7
        var/list/dep_access = null

        default_pda = /obj/item/device/pda/bcrew
        default_headset = /obj/item/device/radio/headset/heads/bcrew

        access = list(access_heads, access_RC_announce, access_keycard_auth)
        minimal_access = list(access_heads, access_RC_announce, access_keycard_auth) //But see /datum/job/warden/get_access()

/datum/job/bcrew/equip_items(var/mob/living/carbon/human/H)
	assign_bridge_to_department(H)

	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
	//H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bridgecrew(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/color/black(H), slot_gloves)

var/list/bridge_departments = list("engineering", "supply", "medical", "security")

/datum/job/bcrew/proc/assign_bridge_to_department(var/mob/living/carbon/human/H)
        if(!bridge_departments.len)
                H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bridgecrew(H), slot_w_uniform)
        else
                var/department = pick(bridge_departments)
                bridge_departments -= department
                var/obj/item/clothing/under/U = new /obj/item/clothing/under/rank/bridgecrew(H)
                switch(department)
                        if("supply")
                                dep_access = list(access_mailsorting, access_mining)
                                U.attachTie(new /obj/item/clothing/tie/armband/bridge/cargo())
                                default_headset = /obj/item/device/radio/headset/heads/bcrew/alt/department/supply
                        if("engineering")
                                dep_access = list(access_construction, access_engine)
                                U.attachTie(new /obj/item/clothing/tie/armband/bridge/engine())
                                default_headset = /obj/item/device/radio/headset/heads/bcrew/alt/department/engi
                        if("medical")
                                dep_access = list(access_medical)
                                U.attachTie(new /obj/item/clothing/tie/armband/bridge/med())
                                default_headset = /obj/item/device/radio/headset/heads/bcrew/alt/department/med
                        if("security")
                                dep_access = list(access_sec_doors, access_security)
                                U.attachTie(new /obj/item/clothing/tie/armband/bridge/sec())
                                default_headset = /obj/item/device/radio/headset/heads/bcrew/alt/department/sec
                H.equip_to_slot_or_del(U, slot_w_uniform)

                spawn(10)
                H << "<b>You have been assigned to [department]!</b>"

/obj/item/device/radio/headset/heads/bcrew/department/New()
        wires = new(src)
        secure_radio_connections = new

        initialize()
        recalculateChannels()

/obj/item/device/radio/headset/heads/bcrew/alt/department/engi
        keyslot = new /obj/item/device/encryptionkey/headset_eng

/obj/item/device/radio/headset/heads/bcrew/alt/department/supply
        keyslot = new /obj/item/device/encryptionkey/headset_cargo

/obj/item/device/radio/headset/heads/bcrew/alt/department/med
        keyslot = new /obj/item/device/encryptionkey/headset_med

/obj/item/device/radio/headset/heads/bcrew/alt/department/sec
        keyslot = new /obj/item/device/encryptionkey/headset_sec