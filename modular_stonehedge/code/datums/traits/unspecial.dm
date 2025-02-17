//BE SPECIAL converted most to regular quirk traits for consistency in characters -- vide noir.
//Will need rebalancing costs and stuff.

/datum/quirk/greaternightvision
	name = "Darkvision"
	desc = "I can easily see in the dark."
	value = 2

/datum/quirk/greaternightvision/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/organ/eyes/eyes = H.getorganslot(ORGAN_SLOT_EYES)
	if(!eyes)
		return
	eyes.see_in_dark = 7
	eyes.lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	eyes.Insert(H)

/datum/quirk/thickskin
	name = "Tough"
	desc = "I feel it. Thick Skin. Dense Flesh. Durable Bones. I'm a punch-taking machine."
	value = 3

/datum/quirk/thickskin/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BREADY, QUIRK_TRAIT)
	H.change_stat("constitution", 2)

/datum/quirk/curseofcain
	name = "Flawed Immortality"
	desc = "I don't need to eat or breathe anymore... Is this normal?"
	value = 3

/datum/quirk/curseofcain/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOHUNGER, QUIRK_TRAIT)
	ADD_TRAIT(H, TRAIT_NOBREATH, QUIRK_TRAIT)
	H.change_stat("endurance", 2)

/datum/quirk/deadened
	name = "Deadened"
	desc = "Ever since <b>it</b> happened, I've never been able to feel anything. Inside or out."
	value = 2

/datum/quirk/deadened/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOMOOD, QUIRK_TRAIT)

/datum/quirk/value
	name = "Skilled Appraiser"
	desc = "I know how to estimate an item's value, more or less."
	value = 1

/datum/quirk/value/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SEEPRICES, QUIRK_TRAIT)

/datum/quirk/night_owl
	name = "Night Owl"
	desc = "I've always preferred Noc over her sister"
	value = 1

/datum/quirk/night_owl/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NIGHT_OWL, QUIRK_TRAIT)

/datum/quirk/beautiful
	name = "Beautiful"
	desc = "My face is a work of art"
	value = 1

/datum/quirk/beautiful/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BEAUTIFUL, QUIRK_TRAIT)

//positive
/datum/quirk/duelist
	name = "Swordmaster"
	desc = "I was the student of a sword master, I am agile and with practice! I've also hidden a rapier."
	value = 4

/datum/quirk/duelist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", 2)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)
	H.mind.special_items["Rapier"] = /obj/item/rogueweapon/sword/rapier

/datum/quirk/greenthumb
	name = "Green Thumb"
	desc = "I've always been rather good at tending to plants, and I have some powerful fertilizer stashed away."
	value = 1

/datum/quirk/greenthumb/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/labor/farming, 3, TRUE)
	H.mind.special_items["Fertilizer 1"] = /obj/item/fertilizer
	H.mind.special_items["Fertilizer 2"] = /obj/item/fertilizer
	H.mind.special_items["Fertilizer 3"] = /obj/item/fertilizer


/datum/quirk/eagle_eyed
	name = "Eagle Eyed"
	desc = "With my sharp aim I could always hit distant targets, I've also hidden a crossbow and some bolts."
	value = 4

/datum/quirk/eagle_eyed/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("perception", 2)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/crossbows, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/bows, 3, TRUE)
	H.mind.special_items["Crossbow"] = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	H.mind.special_items["Bolts"] = /obj/item/quiver/bolts

/datum/quirk/mule
	name = "Mule"
	desc = "I've been dealing drugs and I have a stash hidden away"
	value = 2

/datum/quirk/mule/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Stash One"] = /obj/item/storage/backpack/rogue/satchel/mule
	H.mind.special_items["Stash Two"] = /obj/item/storage/backpack/rogue/satchel/mule
	H.mind.special_items["Dagger"] = /obj/item/rogueweapon/huntingknife/idagger
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 2, TRUE)

/datum/quirk/bookworm
	name = "Bookworm"
	desc = "I love books and I became quite skillfull at reading and writing."
	value = 1

/datum/quirk/bookworm/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 4, TRUE)

/datum/quirk/arsonist
	name = "Arsonist"
	desc = "I like seeing things combust and burn. I have hidden around two firebobms"
	value = 2

/datum/quirk/arsonist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Firebomb One"] = /obj/item/bomb
	H.mind.special_items["Firebomb Two"] = /obj/item/bomb
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/alchemy, 2, TRUE)

/datum/quirk/pineapple
	name = "No safeword."
	desc = "I enjoy whipping people until they squirm and whine, I am skilled at using whips, and have a hidden one somewhere."
	value = 4

/datum/quirk/pineapple/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Whip"] = /obj/item/rogueweapon/whip
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 3, TRUE)

/datum/quirk/packed_lunch
	name = "Packed Lunch"
	desc = "I don't like going around hungry so I packed my lunch!"
	value = 1

/datum/quirk/packed_lunch/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/bag = new /obj/item/storage/roguebag/lunch(get_turf(H))
	H.put_in_hands(bag, forced = TRUE)

/datum/quirk/spring_in_my_step
	name = "Spring in my Step"
	desc = "My legs are quite strong and where most have to climb, I can just jump"
	value = 2

/datum/quirk/spring_in_my_step/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_ZJUMP, QUIRK_TRAIT)

/datum/quirk/thief
	name = "Thief"
	desc = "Life's not easy around here, but I've made mine a little easier by taking things of others. I am a great at picking pockets."
	value = 3

/datum/quirk/thief/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/stealing, 5, TRUE)

/datum/quirk/languagesavant
	name = "Polyglot"
	desc = "I have always picked up on languages easily, even those that are forbidden to mortals."
	value = 3

/datum/quirk/languagesavant/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/dwarvish)
	H.grant_language(/datum/language/elvish)
	H.grant_language(/datum/language/hellspeak)
	H.grant_language(/datum/language/celestial)
	H.grant_language(/datum/language/orcish)
	H.grant_language(/datum/language/beast)
	H.grant_language(/datum/language/draconic)

/datum/quirk/civilizedbarbarian
	name = "Tavern Brawler"
	desc = "I am a barstool warrior. Improvised weapons are more effective in my hands."
	value = 2

/datum/quirk/civilizedbarbarian/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC) //Need to make trait improve hitting people with chairs, mugs, goblets.

/datum/quirk/mastercraftsmen
	name = "Master Craftsman"
	desc = "In my youth, I've decided I'd get a grasp on every trade, and pursued the 10 arts of the craft. I am passable at each of them."
	value = 3

/datum/quirk/mastercraftsmen/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/crafting, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/weaponsmithing, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/armorsmithing, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/blacksmithing, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/carpentry, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/masonry, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/traps, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/cooking, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/engineering, 2, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/tanning, 2, TRUE)

/datum/quirk/bleublood
	name = "Noble Lineage"
	desc = "I am of noble blood."
	value = 1

/datum/quirk/bleublood/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOBLE, QUIRK_TRAIT)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 2, TRUE)

/datum/quirk/richpouch
	name = "Rich Pouch"
	desc = "I have a pouch full of mammons."
	value = 1

/datum/quirk/richpouch/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/pouch = new /obj/item/storage/belt/rogue/pouch/coins/rich(get_turf(H))
	H.put_in_hands(pouch, forced = TRUE)

/datum/quirk/swift
	name = "Speedster"
	desc = "I am very athletic and fast. I can also dodge anything as long as I am not weighted down by medium or heavier armor."
	value = 5

/datum/quirk/swift/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, QUIRK_TRAIT)
	ADD_TRAIT(H, TRAIT_GOODRUNNER, QUIRK_TRAIT)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 5, TRUE)
	H.change_stat("speed", 3)

/datum/quirk/gourmand
	name = "Gourmand"
	desc = "I can eat even the most spoiled, raw, or toxic food and water as if they were delicacies. I'm even immune to the berry poison some folk like to coat their arrows with."
	value = 3

/datum/quirk/gourmand/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NASTY_EATER, QUIRK_TRAIT)

//neutral
/datum/quirk/backproblems
	name = "Giant"
	desc = "I've always been called a giant (atleast among my kin). I am valued for my stature, but, this world made for smaller folk has forced me to move cautiously."
	value = 0

/datum/quirk/backproblems/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", 2)
	H.change_stat("constitution", 1)
	H.change_stat("speed", -2)
	H.transform = H.transform.Scale(1.25, 1.25)
	H.transform = H.transform.Translate(0, (0.25 * 16))
	H.update_transform()

//negative
/datum/quirk/nimrod
	name = "Nimrod"
	desc = "In the past I learned slower than my peers, and I tend to be clumsy."
	value = -6

/datum/quirk/nimrod/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", -2)
	H.change_stat("intelligence", -4)

/datum/quirk/nopouch
	name = "No Pouch"
	desc = "I lost my pouch recently, I'm without a zenny.."
	value = -1

/datum/quirk/nopouch/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/pouch = locate(/obj/item/storage/belt/rogue/pouch) in H
	if(H.wear_neck == pouch)
		H.wear_neck = null
	if(H.beltl == pouch)
		H.beltl = null
	if(H.beltr == pouch)
		H.beltr = null
	qdel(pouch)

/datum/quirk/hussite
	name = "Known Heretic"
	desc = "I've been denounced by the church for either reasons legitimate or not!"
	value = -1

/datum/quirk/hussite/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	GLOB.excommunicated_players += H.real_name
	H.devotion.excommunicate()

/datum/quirk/bounty
	name = "Hunted Man"
	desc = "Someone put a bounty on my head whether for legitimate reasons or not, My life is in danger!"
	value = -3

/datum/quirk/bounty/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/reason = ""
	var/employer = "unknown employer"
	var/employer_gender
	if(prob(65))
		employer_gender = MALE
	else
		employer_gender = FEMALE
	if(employer_gender == MALE)
		employer = pick(list("Baron", "Lord", "Nobleman", "Prince"))
	else
		employer = pick(list("Duchess", "Lady", "Noblelady", "Princess"))
	employer = "[employer] [random_human_name(employer_gender, FALSE, FALSE)]"
	var/amount = rand(150,300)
	switch(rand(1,8))
		if(1)
			reason = "murder"
		if(2)
			reason = "kinslaying"
		if(3)
			reason = "besmirching a noble's name"
		if(4)
			reason = "treason"
		if(5)
			reason = "arson"
		if(6)
			reason = "heresy"
		if(7)
			reason = "robbing a noble"
		if(8)
			reason = "burglary"
	add_bounty(H.real_name, amount, FALSE, reason, employer)
	to_chat(H, span_notice("Whether I done it or not, I have been accused of [reason], and a [employer] put a bounty on my head!"))

/datum/quirk/outlaw
	name = "Known Outlaw"
	desc = "Whether for crimes I did or was accused of, I have been declared an outlaw!"
	value = -1

/datum/quirk/outlaw/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	make_outlaw(H.real_name, TRUE)

/datum/quirk/sillyvoice
	name = "Annoying"
	desc = "People really hate my voice for some reason."
	value = -1

/datum/quirk/sillyvoice/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_COMICSANS, QUIRK_TRAIT)
	H.dna.add_mutation(WACKY)

/datum/quirk/unlucky
	name = "Unlucky"
	desc = "Ever since you knocked over that glass vase, you just feel... off"
	value = -6

/datum/quirk/unlucky/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.STALUC = rand(1, 10)


/datum/quirk/jesterphobia
	name = "Jesterphobic"
	desc = "I have a severe, irrational fear of Jesters"
	value = -1

/datum/quirk/jesterphobia/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_JESTERPHOBIA, QUIRK_TRAIT)

/datum/quirk/wild_night
	name = "Wild Night"
	desc = "I don't remember what I did last night, and now I'm lost!"
	value = -1

/datum/quirk/wild_night/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/turf/location = get_spawn_turf_for_job("Pilgrim")
	H.forceMove(location)
	grant_lit_torch(H)

/datum/quirk/atrophy
	name = "Atrophy"
	desc = "When growing up I could barely feed myself... this left me weak and fragile"
	value = -6

/datum/quirk/atrophy/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", -2)
	H.change_stat("constitution", -2)
	H.change_stat("endurance", -2)

/datum/quirk/nude_sleeper
	name = "Picky Sleeper"
	desc = "I just can't seem to fall asleep unless I'm <i>truly</i> comfortable..."
	value = -3 //Sleeping people are already rather vulnerable. Having to take off literally everything is more than just bothersome.

/datum/quirk/nude_sleeper/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("endurance", 1) //since sleeping naked will probably get you sick or some shit.
	H.change_stat("constitution", 1)
	ADD_TRAIT(H, TRAIT_NUDE_SLEEPER, QUIRK_TRAIT)

// disgustingly hooking into quirks to provide a convenient way to become a vampire
/datum/quirk/vampire
	name = "Cursed Blood (Vampire)"
	desc = "You are cursed by Levishth, a lone vampire forced to roam the lands and drink blood to survive, albeit 'immortal'. Whether you are Ancient or a new vampire, you are no lord or no spawn and have no reason to antagonize the mortals beyond occasionally finding blood to keep you going. (You area vampire but NOT an ANTAGONIST.)"
//	desc = "You've existed long before the gods existed, you know the truth and have no reason to worship them. You are faithless. After attaining power, Levishth has cursed your people, bringing bad omens where ever you go. For this reason, the people of Stonehedge have shunned you and discriminated against you, there is no possible way an antediluvian will ever hold a position of power in Stonehedge, let alone be welcomed. Levishth has only shown favor to one antediluvian, rewarding them with the title of Vampire Lord, and gifting them powers far beyond that of a regular nitecreacher. Your pale skin, fangs, and eerie eyes are EASILY identifable features, so it is best to stay covered at all times in public areas."
	value = 3

/datum/quirk/vampire/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/antagonist/vampirelord/lesser/secret/new_antag = new ()
	H.mind.add_antag_datum(new_antag)

/datum/antagonist/vampirelord/lesser/secret
	ashes = FALSE
	is_solo = TRUE
	confess_lines = list(
		"THE CRIMSON CALLS!",
		"THE SUN IS ENEMY!",
	)

/datum/antagonist/vampirelord/lesser/secret/on_gain()
	. = ..()
	owner.current.verbs -= /mob/living/carbon/human/proc/vampire_telepathy

/datum/antagonist/vampirelord/lesser/secret/roundend_report()
	return

/datum/antagonist/vampirelord/lesser/secret/move_to_spawnpoint()
	return

/datum/quirk/nymphomaniac
	name = "Nymphomaniac"
	desc = "I'm in a constant state of arousal, and I cannot control my urges."
	value = -3

/datum/quirk/nymphomaniac/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.add_curse(/datum/curse/baotha, TRUE)
	ADD_TRAIT(H, TRAIT_GOODLOVER, "[type]")

/datum/quirk/loveless
	name = "Loveless"
	desc = "I am unable to show any kind of affection or love, whether carnal or platonic."
	value = -3

/datum/quirk/loveless/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.add_curse(/datum/curse/eora, TRUE)

/datum/quirk/pacifist
	name = "Pacifist"
	desc = "Violence disgusts me. I cannot bring myself to wield any kind of weapon."
	value = -6

/datum/quirk/pacifist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.add_curse(/datum/curse/ravox, TRUE)
