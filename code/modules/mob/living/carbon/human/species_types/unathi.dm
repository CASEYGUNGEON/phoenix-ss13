/datum/species/unathi
	name = "Unathi"
	id = "unathi"
	flavor_text = "A reptilian species."
	default_color = "444"
	species_traits = list(
		MUTCOLORS,
		EYECOLOR,
		LIPS,
		HAS_FLESH,
		HAS_BONE,
		HAIR,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	default_mutant_bodyparts = list(
		"tail" = ACC_RANDOM,
		"snout" = ACC_RANDOM,
		"spines" = ACC_NONE,
		"frills" = ACC_NONE,
		"horns" = ACC_RANDOM,
		"body_markings" = ACC_RANDOM,
		"legs" = "Normal Legs",
	)
	cultures = list(CULTURES_GENERIC, CULTURES_HUMAN, CULTURES_LIZARD)
	locations = list(LOCATIONS_GENERIC, LOCATIONS_HUMAN, LOCATIONS_LIZARD)
	factions = list(FACTIONS_GENERIC, FACTIONS_HUMAN, FACTIONS_LIZARD)
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = GROSS | MEAT | FRIED
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	limbs_id = "lizard"

/datum/species/unathi/get_random_features()
	var/list/returned = MANDATORY_FEATURE_LIST
	var/main_color
	var/second_color
	var/random = rand(1,5)
	//Choose from a variety of green or brown colors, with a darker secondary and tertiary
	switch(random)
		if(1)
			main_color = "11CC00"
			second_color = "118800"
		if(2)
			main_color = "55CC11"
			second_color = "55AA11"
		if(3)
			main_color = "77AA11"
			second_color = "668711"
		if(4)
			main_color = "886622"
			second_color = "774411"
		if(5)
			main_color = "33BB11"
			second_color = "339911"
	returned["mcolor"] = main_color
	returned["mcolor2"] = second_color
	returned["mcolor3"] = second_color
	return returned
