/datum/sex_action/force_milk_tits
	name = "Forcibly milk tits"
	check_same_tile = FALSE

/datum/sex_action/force_milk_tits/shows_on_menu(mob/living/user, mob/living/target)
	if(!target.erpable && issimple(target))
		return FALSE
	if(user.client.prefs.defiant && issimple(target))
		return FALSE
	if(user == target)
		return FALSE
	if(!target.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/force_milk_tits/can_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/holding = user.get_active_held_item()
	if(istype(holding, /obj/item/reagent_containers/glass) != TRUE)
		return FALSE
	if(user == target)
		return FALSE
	if(ishuman(target))
		var/mob/living/carbon/human/targethuman = target
		if(targethuman.wear_shirt)
			var/obj/item/clothing/suit/roguetown/shirtsies = targethuman.wear_shirt
			if(shirtsies.flags_inv & HIDEBOOB)
				if(shirtsies.genitalaccess == FALSE)
					return FALSE
	if(!target.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/force_milk_tits/on_start(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] starts milking [target]'s breasts into [user.get_active_held_item()]..."))

/datum/sex_action/force_milk_tits/on_perform(mob/living/user, mob/living/target)
	if(user.sexcon.do_message_signature("[type]"))
		user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] tugs [target]'s nipples against the [user.get_active_held_item()]..."))
	playsound(user, 'sound/misc/mat/fingering.ogg', 30, TRUE, -2, ignore_walls = FALSE)

	user.sexcon.perform_sex_action(target, 2, 4, TRUE)

	target.sexcon.handle_breast_milking(user)

/datum/sex_action/force_milk_tits/on_finish(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] stops milking [target] into the container."))

/datum/sex_action/force_milk_tits/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(target.sexcon.finished_check())
		return TRUE
	return FALSE
