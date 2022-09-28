/obj/item/grenade/chem_grenade/cyanidegas
	name = "cyanide grenade"
	desc = "Содержит ядовитый газ. Использовать против революционеров."
	stage = GRENADE_READY

/obj/item/grenade/chem_grenade/cyanide/Initialize(mapload)
	. = ..()
	var/obj/item/reagent_containers/glass/beaker/large/B1 = new(src)
	var/obj/item/reagent_containers/glass/beaker/large/B2 = new(src)

	B1.reagents.add_reagent(/datum/reagent/toxin/cyanide, 60)
	B1.reagents.add_reagent(/datum/reagent/potassium, 40)
	B2.reagents.add_reagent(/datum/reagent/phosphorus, 40)
	B2.reagents.add_reagent(/datum/reagent/consumable/sugar, 40)

	beakers += B1
	beakers += B2
