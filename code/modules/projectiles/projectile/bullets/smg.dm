// .45 (M1911 & C20r)

/obj/item/projectile/bullet/c45
	name = ".45 bullet"
	damage = 34

// 4.6x30mm (Autorifles)

/obj/item/projectile/bullet/c46x30mm
	name = "4.6x30mm bullet"
	damage = 30

/obj/item/projectile/bullet/c46x30mm_ap
	name = "4.6x30mm armor-piercing bullet"
	damage = 25
	armour_penetration = 40

/obj/item/projectile/bullet/incendiary/c46x30mm
	name = "4.6x30mm incendiary bullet"
	damage = 10
	fire_stacks = 1

//Slightly worse disabler, but fully automatic
/obj/item/projectile/bullet/c46x30mm_rubber
	name = "4.6x30mm rubber bullet"
	damage_type = STAMINA
	flag = "stamina"
	damage = 20
