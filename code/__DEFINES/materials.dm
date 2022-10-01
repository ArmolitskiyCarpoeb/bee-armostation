/// Is the material from an ore? currently unused but exists atm for categorizations sake
#define MAT_CATEGORY_ORE "ore capable"

/// Hard materials, such as iron or metal
#define MAT_CATEGORY_RIGID "rigid material"


/// Gets the reference for the material type that was given
#define getmaterialref(A) (SSmaterials.materials[A])

//Material Container Flags.
///If the container shows the amount of contained materials on examine.
#define MATCONTAINER_EXAMINE (1<<0)
///If the container cannot have materials inserted through attackby().
#define MATCONTAINER_NO_INSERT (1<<1)
///if the user can insert mats into the container despite the intent.
#define MATCONTAINER_ANY_INTENT (1<<2)
///if the user won't receive a warning when attacking the container with an unallowed item.
#define MATCONTAINER_SILENT (1<<3)

/// Flag for atoms, this flag ensures it isn't re-colored by materials. Useful for snowflake icons such as default toolboxes.
#define MATERIAL_NO_COLOR (1<<0)
/// Applies the material greyscale color to the atom's greyscale color.
#define MATERIAL_GREYSCALE (1<<1)
