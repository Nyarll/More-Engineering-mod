-- recipes
data:extend(
{
	{
		type = "recipe",
		name = "short-iron-stick",
		enabled = true,
		ingredients = 
		{
			{"iron-stick", 1},
		},
		result_count = 4,
		result = "short-iron-stick"
	},
	{
		type = "recipe",
		name = "thin-iron-stick",
		enabled = true,
		ingredients = 
		{
			{"iron-stick", 1},
		},
		result_count = 4,
		result = "thin-iron-stick"
	},
	{
		type = "recipe",
		name = "screw",
		enabled = true,
		ingredients = 
		{
			{"short-iron-stick", 1},
		},
		result = "screw"
	},
	{
		type = "recipe",
		name = "spring",
		enabled = true,
		ingredients = 
		{
			{"thin-iron-stick", 1},
		},
		result = "spring"
	},
	{
		type = "recipe",
		name = "base-machine-frame",
		enabled = false,
		ingredients = 
		{
			{"iron-stick", 12},
			{"screw", 24}
		},
		result = "base-machine-frame"
	},
	{
		type = "recipe",
		name = "coil",
		enabled = true,
		ingredients = 
		{
			{"short-iron-stick", 1},
			{"copper-cable", 5}
		},
		result = "coil"
	},
}
)

-- recipe unlock register
table.insert( data.raw["technology"]["automation"].effects, { type = "unlock-recipe", recipe = "base-machine-frame" })

-- override recipes
data.raw.recipe["electronic-circuit"].ingredients =
{
	{"iron-plate", 1},
	{"copper-cable", 3},
	{"coil", 1}
}
data.raw.recipe["assembling-machine-1"].ingredients =
{
	{"base-machine-frame", 1},
	{"electronic-circuit", 3},
	{"iron-gear-wheel", 5},
	{"iron-plate", 10}
}
data.raw.recipe["assembling-machine-2"].ingredients =
{
	{"base-machine-frame", 1},
	{"electronic-circuit", 3},
	{"iron-gear-wheel", 5},
	{"assembling-machine-1", 1}
}
data.raw.recipe["boiler"].ingredients =
{
	{"base-machine-frame", 1},
	{"stone-furnace", 1},
	{"pipe", 5},
}
data.raw.recipe["steam-engine"].ingredients =
{
	{"base-machine-frame", 1},
	{"iron-gear-wheel", 8},
	{"pipe", 5},
	{"iron-plate", 10}
}