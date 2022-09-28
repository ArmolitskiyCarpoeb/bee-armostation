/obj/item/storage/box/cyanidegas
	name = "box of cyanide gas grenades (WARNING)"
	desc = "<B>ВНИМАНИЕ: Содержит ядовитый газ, использовать только в защитной маске.</B>"
	icon_state = "secbox"
	illustration = "grenade"

/obj/item/storage/box/cyanidegas/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/grenade/chem_grenade/cyanidegas(src)
