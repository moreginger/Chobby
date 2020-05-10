--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/ocean01.png"
	
	local planetData = {
		name = "Gemmia",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.355,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.68,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Oceanic",
			radius = "7710 km",
			primary = "Ghas",
			primaryType = "G6V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24489",
			text = "I expected to find imperial or rebel forces here, those appear to be neither. Was this a pirate haven? Opportunistic warlords? There seem to be several factions down there. If I land on just the right spot, I may trick them into fighting each-other."
			,
			extendedText = "The enemy of my enemy... is at least useful. If I build up my economy with Fusion Generators while those two fight, then I can eradicate them both. Advanced Radars will keep me informed on the overall battle state."
		},
		tips = {
			{
				image = "unitpics/energyfusion.png",
				text = [[The Fusion Reactor isn't all that much better for cost than Solar Generators or Wind Turbines but it takes up much less space. Fusions are a bit volatile when destroyed, but if you don't build right next to them you should be fine.]]
			},
			{
				image = "unitpics/module_energy_cell.png",
				text = [[Once you've built one or more Fusion Reactors, connect them to your Metal Extractors to get more metal income from overdrive using your excess energy.]]
			},
			{
				image = "unitpics/staticheavyradar.png",
				text = [[In a battle with more than two sides it pays to be aware of what's happening all over the map, not just on your front. The Advanced Radar has exceptional range and will keep you informed.]]
			},
		},
		gameConfig = {
			mapName = "La Isla Bonita v1.1",
			playerConfig = {
				startX = 1016,
				startZ = 3400,
				allyTeam = 0,
				commanderParameters = {
					facplop = true,
					defeatIfDestroyedObjectiveID = 3,
				},
				extraUnlocks = {
					"staticheavyradar",
					"energyfusion",
				},
				startUnits = {
					{
						name = "staticmex",
						x = 1224,
						z = 4328,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1176,
						z = 4584,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1416,
						z = 4488,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1432,
						z = 2936,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1304,
						z = 2824,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1176,
						z = 2712,
						facing = 0,
					},
					{
						name = "staticheavyradar",
						x = 1872,
						z = 2736,
						facing = 0,
					},
					{
						name = "staticheavyradar",
						x = 2080,
						z = 4576,
						facing = 0,
					},
					{
						name = "energyfusion",
						x = 1000,
						z = 4448,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1192,
						z = 4440,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1352,
						z = 4408,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1192,
						z = 2808,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1320,
						z = 2952,
						facing = 0,
					},
					{
						name = "staticcon",
						x = 1016,
						z = 3208,
						facing = 1,
					},
					{
						name = "staticcon",
						x = 1016,
						z = 3304,
						facing = 1,
					},
					{
						name = "tankriot",
						x = 1586,
						z = 3250,
						facing = 1,
					},
					{
						name = "tankcon",
						x = 1550,
						z = 3150,
						facing = 1,
					},
					{
						name = "tankcon",
						x = 1550,
						z = 3350,
						facing = 1,
					},
					{
						name = "spiderscout",
						x = 3550,
						z = 1987,
						facing = 1,
						commands = {{cmdID = planetUtilities.COMMAND.MOVE, pos = {3550, 2100}}},
					},
					{
						name = "spiderscout",
						x = 3427,
						z = 3219,
						facing = 0,
						commands = {{cmdID = planetUtilities.COMMAND.MOVE, pos = {3427, 3330}}},
					},
					{
						name = "spiderscout",
						x = 3490,
						z = 4901,
						facing = 0,
						commands = {{cmdID = planetUtilities.COMMAND.MOVE, pos = {3490, 5010}}},
					},
					{
						name = "spiderscout",
						x = 2652,
						z = 5494,
						facing = 0,
						commands = {{cmdID = planetUtilities.COMMAND.MOVE, pos = {2652, 5600}}},
					},
					{
						name = "jumparty",
						x = 1450,
						z = 3250,
						facing = 1,
					},
					{
						name = "jumpskirm",
						x = 1450,
						z = 3150,
						facing = 1,
					},
					{
						name = "jumpskirm",
						x = 1450,
						z = 3350,
						facing = 1,
					},
					{
						name = "turretriot",
						x = 1768,
						z = 3256,
						facing = 1,
					},
					{
						name = "turretmissile",
						x = 1744,
						z = 5120,
						facing = 0,
					},
					{
						name = "turretmissile",
						x = 1856,
						z = 5056,
						facing = 0,
					},
					{
						name = "turretmissile",
						x = 1744,
						z = 3792,
						facing = 1,
					},
					{
						name = "turretmissile",
						x = 1872,
						z = 4112,
						facing = 1,
					},
					{
						name = "turretmissile",
						x = 2032,
						z = 4464,
						facing = 1,
					},
				}
			},
			aiConfig = {
				{
					startX = 6032,
					startZ = 1919,
					humanName = "Angels",
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticcon",
						--"turretlaser",
						--"turretmissile",
						"staticmex",
						"energysolar",
						"staticradar",
						"shieldcon",
						"shieldraid",
						"shieldriot",
						"shieldskirm",
						"shieldassault",
						"shieldarty",
						"planecon",
						"planefighter",
						"bomberriot",
						"staticantinuke",
					},
					difficultyDependantUnlocks = {
						[4] = {"bomberdisarm"},
					},
					commanderLevel = 4,
					commander = {
						name = "Metatron",
						chassis = "recon",
						decorations = {
						  "skin_recon_leopard",
						},
						modules = {
							"commweapon_heavymachinegun",
							"commweapon_concussion",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_high_power_servos",
							"module_autorepair",
							"module_companion_drone",
							"module_companion_drone",
							"module_companion_drone",
						}
					},
					startUnits = {
						{
							name = "staticmex",
							x = 5064,
							z = 1512,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5128,
							z = 1272,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5320,
							z = 1480,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6776,
							z = 2248,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6664,
							z = 2376,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6504,
							z = 2424,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7528,
							z = 2392,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5128,
							z = 2408,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4744,
							z = 2216,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7272,
							z = 2840,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7432,
							z = 3448,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7192,
							z = 3640,
							facing = 0,
						},
						-- {
							-- name = "energyfusion",
							-- x = 5448,
							-- z = 1184,
							-- facing = 0,
							-- difficultyAtLeast = 2,
						-- },
						{
							name = "energyfusion",
							x = 5688,
							z = 1312,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "energysolar",
							x = 5224,
							z = 1256,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5368,
							z = 1400,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6696,
							z = 2280,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6568,
							z = 2392,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4984,
							z = 2408,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4808,
							z = 2328,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7288,
							z = 3528,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7336,
							z = 3384,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7336,
							z = 3240,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7336,
							z = 3080,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7304,
							z = 2920,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5096,
							z = 1400,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 6216,
							z = 1864,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 6296,
							z = 1864,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 6376,
							z = 1864,
							facing = 0,
						},
						{
							name = "factoryshield",
							x = 6192,
							z = 2024,
							facing = 0,
						},
						{
							name = "factoryplane",
							x = 6368,
							z = 2016,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretmissile",
							x = 4688,
							z = 1984,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 4800,
							z = 2032,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 5536,
							z = 2176,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 5696,
							z = 2176,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 6400,
							z = 2704,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 6832,
							z = 3792,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 6928,
							z = 3888,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 4304,
							z = 1264,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 4432,
							z = 1344,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5088,
							z = 1632,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5584,
							z = 1568,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5104,
							z = 1088,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 5328,
							z = 1744,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 4888,
							z = 1272,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 5592,
							z = 1896,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 6840,
							z = 2632,
							facing = 0,
						},
						-- {
							-- name = "turretheavylaser",
							-- x = 6120,
							-- z = 2360,
							-- facing = 0,
						-- },
						-- {
							-- name = "turretheavylaser",
							-- x = 6840,
							-- z = 3240,
							-- facing = 0,
						-- },
						{
							name = "turretriot",
							x = 5832,
							z = 2760,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 6152,
							z = 3160,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 4712,
							z = 2568,
							facing = 3,
						},
						{
							name = "turretriot",
							x = 6440,
							z = 3736,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 6200,
							z = 3704,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 6600,
							z = 3912,
							facing = 0,
						},
						-- {
							-- name = "turretheavylaser",
							-- x = 6504,
							-- z = 3608,
							-- facing = 0,
						-- },
						{
							name = "turretlaser",
							x = 4688,
							z = 2816,
							facing = 3,
						},
						{
							name = "staticradar",
							x = 5056,
							z = 2208,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 7008,
							z = 3984,
							facing = 0,
						},
						{
							name = "shieldcon",
							x = 5315,
							z = 1932,
							facing = 0,
						},
						{
							name = "shieldcon",
							x = 5497,
							z = 2002,
							facing = 0,
						},
						{
							name = "shieldcon",
							x = 5912,
							z = 2209,
							facing = 0,
						},
						{
							name = "shieldcon",
							x = 6015,
							z = 2258,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 5774,
							z = 1919,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 5883,
							z = 1971,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 5899,
							z = 1853,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 5797,
							z = 1801,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 5994,
							z = 2054,
							facing = 0,
						},
						{
							name = "shieldriot",
							x = 5832,
							z = 1890,
							facing = 0,
						},
						{
							name = "shieldriot",
							x = 5965,
							z = 1977,
							facing = 0,
						},
						{
							name = "shieldarty",
							x = 6315,
							z = 2230,
							facing = 0,
						},
						{
							name = "shieldarty",
							x = 6401,
							z = 2261,
							facing = 0,
						},
					}
				},
				{
					startX = 4874,
					startZ = 6903,
					humanName = "Demons",
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 2,
					unlocks = {
						"staticcon",
						--"turretlaser",
						--"turretmissile",
						"staticmex",
						"energysolar",
						"staticradar",
						"vehcon",
						"vehscout",
						"vehraid",
						"vehriot",
						"vehassault",
						"vehcapture",
						"jumpcon",
						"jumpraid",
						"jumpskirm",
						"staticantinuke",
					},
					difficultyDependantUnlocks = {
						[4] = {"jumpblackhole"},
					},
					commanderLevel = 4,
					commander = {
						name = "Beelzebul",
						chassis = "engineer",
						decorations = {
						  "skin_support_green",
						},
						modules = {
							"commweapon_lparticlebeam",
							"commweapon_disruptorbomb",
							"conversion_disruptor",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_autorepair",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_adv_targeting",
						}
					},
					startUnits = {
						{
							name = "staticmex",
							x = 5992,
							z = 6360,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5832,
							z = 6168,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5736,
							z = 6408,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4344,
							z = 7320,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4296,
							z = 7160,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4408,
							z = 7032,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5112,
							z = 5832,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5384,
							z = 5480,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3640,
							z = 7432,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3064,
							z = 7368,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2888,
							z = 7112,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3896,
							z = 7752,
							facing = 0,
						},
						-- {
							-- name = "energyfusion",
							-- x = 5928,
							-- z = 6592,
							-- facing = 0,
							-- difficultyAtLeast = 2,
						-- },
						{
							name = "energyfusion",
							x = 6120,
							z = 6432,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "energysolar",
							x = 5128,
							z = 5736,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5208,
							z = 5624,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5288,
							z = 5528,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5848,
							z = 6392,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5864,
							z = 6264,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4376,
							z = 7160,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4408,
							z = 7288,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3000,
							z = 7160,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3096,
							z = 7272,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3288,
							z = 7320,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3432,
							z = 7352,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3576,
							z = 7336,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 4680,
							z = 7176,
							facing = 2,
						},
						{
							name = "staticcon",
							x = 4760,
							z = 7176,
							facing = 2,
						},
						{
							name = "staticcon",
							x = 4840,
							z = 7176,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 2848,
							z = 6640,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 2944,
							z = 6624,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 3984,
							z = 6784,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 4096,
							z = 6752,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 4896,
							z = 6336,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 4992,
							z = 6224,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 5520,
							z = 5616,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 5632,
							z = 5552,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 6224,
							z = 5680,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 6320,
							z = 5712,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 3024,
							z = 7552,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 3168,
							z = 7632,
							facing = 2,
						},
						{
							name = "factoryjump",
							x = 4632,
							z = 7048,
							facing = 2,
							difficultyAtLeast = 3,
						},
						{
							name = "staticradar",
							x = 2656,
							z = 6704,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5728,
							z = 6656,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 5632,
							z = 6160,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 6224,
							z = 6272,
							facing = 2,
						},
						{
							name = "turretaafar",
							x = 5504,
							z = 6464,
							facing = 2,
						},
						{
							name = "turretaalaser",
							x = 6056,
							z = 6136,
							facing = 2,
						},
						{
							name = "turretaalaser",
							x = 5640,
							z = 6920,
							facing = 2,
						},
						{
							name = "turretaalaser",
							x = 3944,
							z = 7112,
							facing = 2,
						},
						-- {
							-- name = "turretheavylaser",
							-- x = 3432,
							-- z = 6776,
							-- facing = 2,
						-- },
						-- {
							-- name = "turretheavylaser",
							-- x = 4616,
							-- z = 6712,
							-- facing = 2,
						-- },
						{
							name = "turretriot",
							x = 4040,
							z = 6312,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 3176,
							z = 6280,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 5240,
							z = 5208,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 4360,
							z = 5832,
							facing = 2,
						},
						{
							name = "turretgauss",
							x = 5064,
							z = 5080,
							facing = 2,
						},
						{
							name = "turretgauss",
							x = 5432,
							z = 5320,
							facing = 2,
						},
						-- {
							-- name = "turretheavylaser",
							-- x = 5048,
							-- z = 5368,
							-- facing = 2,
						-- },
						{
							name = "turretlaser",
							x = 3392,
							z = 6256,
							facing = 2,
						},
						{
							name = "staticradar",
							x = 6016,
							z = 5664,
							facing = 0,
						},
						{
							name = "factoryveh",
							x = 4808,
							z = 7048,
							facing = 2,
						},
						{
							name = "vehassault",
							x = 4594,
							z = 6865,
							facing = 0,
						},
						{
							name = "vehassault",
							x = 4687,
							z = 6839,
							facing = 0,
						},
						{
							name = "vehassault",
							x = 4815,
							z = 6790,
							facing = 0,
						},
						{
							name = "vehassault",
							x = 4749,
							z = 6898,
							facing = 0,
						},
						{
							name = "vehsupport",
							x = 4475,
							z = 6944,
							facing = 0,
						},
						{
							name = "vehsupport",
							x = 4585,
							z = 6936,
							facing = 0,
						},
						{
							name = "jumpraid",
							x = 4469,
							z = 6829,
							facing = 0,
						},
						{
							name = "jumpraid",
							x = 5551,
							z = 5876,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 5201,
							z = 6290,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 5373,
							z = 6241,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 3203,
							z = 6926,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 3426,
							z = 6926,
							facing = 0,
						},
						{
							name = "vehcapture",
							x = 4793,
							z = 6726,
							facing = 0,
						},
						{
							name = "vehcapture",
							x = 4856,
							z = 6733,
							facing = 0,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = true,
					vitalUnitTypes = {
						"factoryshield",
						"factoryplane",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
					doNotExplodeOnLoss = true,
				},
				[2] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = true,
					vitalUnitTypes = {
						"factoryjump",
						"factoryveh",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 2,
					doNotExplodeOnLoss = true,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy the Commander and Factories of the north-eastern enemy",
				},
				[2] = {
					description = "Destroy the Commander and Factories of the southern enemy",
				},
				[3] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Have 6 Fusions by 10:00
					satisfyByTime = 600,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 6,
					unitTypes = {
						"energyfusion",
					},
					image = planetUtilities.ICON_DIR .. "energyfusion.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Have 6 Fusion Reactors by 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Have 11 mex at all times after 10 minutes
					satisfyAfterTime = 600,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 11,
					unitTypes = {
						"staticmex",
					},
					image = planetUtilities.ICON_DIR .. "staticmex.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.GUARD,
					description = "Always have 11 Metal Extractors after 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { -- Win by 30:00
					victoryByTime = 1800,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 30:00",
					experience = planetUtilities.BONUS_EXP,
				},
				
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"staticheavyradar",
				"energyfusion",
			},
			modules = {
				"module_radarnet"
			},
			abilities = {
			},
			codexEntries = {
				"faction_lawless"
			}
		},
	}
	
	return planetData
end

return GetPlanet
