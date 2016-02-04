--Development branch
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_large",
	wherein        = "default:dirt",
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -1000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_small",
	wherein        = "default:dirt",
	clust_scarcity = 20*20*20,
	clust_num_ores = 10,
	clust_size     = 7,
	height_min     = -31000,
	height_max     = -100,
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_medium",
	wherein        = "default:sand",
	clust_scarcity = 20*20*20,
	clust_num_ores = 10,
	clust_size     = 7,
	height_min     = -31000,
	height_max     = -500,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_medium",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 10,
	clust_size     = 8,
	height_min     = -31000,
	height_max     = -500,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_large",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 10,
	clust_size     = 10,
	height_min     = -31000,
	height_max     = -1000,
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gommaronte:gommaronte_ore_small",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -100,
})
--Nodes
minetest.register_node("gommaronte:gommaronte_ore_medium", {
	description = "Gommaronte",
	tiles = {"default_stone.png^gommaronte_ore_medium.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'gommaronte:gommaronte_chunk',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("gommaronte:gommaronte_ore_small", {
	description = "Gommaronte",
	tiles = {"default_stone.png^gommaronte_ore_small.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'gommaronte:gommaronte_shard',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("gommaronte:gommaronte_ore_large", {
	description = "Gommaronte",
	tiles = {"default_stone.png^gommaronte_ore_large.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'gommaronte:gommaronte_gem',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("gommaronte:gommaronte_block", {
	description = "Blocco di Gommaronte",
	tiles = {"gommaronte_block.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
--Items
minetest.register_craftitem("gommaronte:gommaronte_chunk", {
	description = "Pezzo di Gommaronte",
	inventory_image = "gommaronte_chunk.png",
})
minetest.register_craftitem("gommaronte:gommaronte_shard", {
	description = "Scaglia di Gommaronte",
	inventory_image = "gommaronte_shard.png",
})
minetest.register_craftitem("gommaronte:gommaronte_gem", {
	description = "Gommarongemma",
	inventory_image = "gommaronte_gem.png",
})

--Tools
minetest.register_tool("gommaronte:gommaronte_pick", {
	description = "Piccone di Gommaronte",
	inventory_image = "gommaronte_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=0.30, [2]=0.25, [3]=0.50}, uses=100, maxlevel=20},
		},
		damage_groups = {fleshy=60},
	},
})
minetest.register_tool("gommaronte:steel_gommaronte_pick", {
	description = "Piccon d'acciaio e Gommaronte",
	inventory_image = "steel_gommaronte_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=10.10, [2]=4.70, [3]=5.90}, uses=180, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("gommaronte:fuffo_pick", {
	description = "Picconfuffo",
	inventory_image = "fuffo_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.0,
		max_drop_level=10,
		groupcaps={
			cracky = {times={[1]=0.10, [2]=0.10, [3]=0.10}, uses=500, maxlevel=3},
			crumbly={times={[1]=0.10, [2]=0.10, [3]=0.10}, uses=600, maxlevel=3},
			snappy={times={[1]=0.10, [2]=0.10, [3]=0.10}, uses=550, maxlevel=3},
			choppy={times={[1]=0.10, [2]=0.10, [3]=0.10}, uses=500, maxlevel=3},
			fleshy={times={[1]=4.0, [2]=0.10, [3]=0.10}, uses=600, maxlevel=3}
		},
		damage_groups = {fleshy=200},
	},
})
minetest.register_tool("gommaronte:gommaronte_shovel", {
	description = "Vanga di Gommaronte",
	inventory_image = "gommaronte_shovel.png",
	wield_image = "gommaronte_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 3.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=5.50, [2]=10.90, [3]=12.40}, uses=120, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("gommaronte:steel_gommaronte_shovel", {
	description = "Vanga d'acciaio e Gommaronte",
	inventory_image = "steel_gommaronte_shovel.png",
	wield_image = "steel_gommaronte_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.60, [2]=2.00, [3]=1.50}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("gommaronte:gommaronte_axe", {
	description = "Gommarontascia",
	inventory_image = "gommaronte_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=9.50, [2]=9.00, [3]=9.50}, uses=320, maxlevel=2},
		},
		damage_groups = {fleshy=60},
	},
})

minetest.register_tool("gommaronte:steel_gommaronte_axe", {
	description = "Ascia d'acciaio e Gommaronte",
	inventory_image = "steel_gommaronte_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.60, [2]=2.50, [3]=2.10}, uses=70, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("gommaronte:gommaronte_sword", {
	description = "Fendente del Rinoceronte",
	inventory_image = "gommaronte_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.30,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=3.5, [2]=3.20, [3]=1.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	}
})

minetest.register_tool("gommaronte:steel_gommaronte_sword", {
	description = "Spada d'acciao e Gommaronte",
	inventory_image = "steel_gommaronte_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=3.6, [2]=2.30, [3]=1.45}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})

--Crafting--

minetest.register_craft({
	output = 'gommaronte:gommaronte_shovel',
	recipe = {
		{'gommaronte:gommaronte_gem'},
		{'default:stick'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'gommaronte:steel_gommaronte_shovel',
	recipe = {
		{'gommaronte:gommaronte_gem'},
		{'default:steel_ingot'},
		{'default:stick'},
	}
})
--
minetest.register_craft({
	output = 'gommaronte:fuffo_pick',
	recipe = {
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
		{'gommaronte:gommaronte_gem', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})
--
minetest.register_craft({
	output = 'gommaronte:gommaronte_axe',
	recipe = {
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
		{'gommaronte:gommaronte_gem', 'default:stick'},
		{'', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'gommaronte:steel_gommaronte_axe',
	recipe = {
		{'gommaronte:gommaronte_gem', 'default:steel_ingot'},
		{'gommaronte:gommaronte_gem', 'default:stick'},
		{'', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'gommaronte:gommaronte_sword',
	recipe = {
		{'gommaronte:gommaronte_gem'},
		{'gommaronte:gommaronte_gem'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'gommaronte:steel_gommaronte_sword',
	recipe = {
		{'gommaronte:gommaronte_gem'},
		{'default:steel_ingot'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'gommaronte:gommaronte_pick',
	recipe = {
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'gommaronte:steel_gommaronte_pick',
	recipe = {
		{'gommaronte:gommaronte_gem', 'default:steel_ingot', 'gommaronte:gommaronte_gem'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'gommaronte:gommaronte_chunk',
	recipe = {
		{'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard'},
		{'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard'},
		{'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard', 'gommaronte:gommaronte_shard'},
	}
})

minetest.register_craft({
	output = 'gommaronte:gommaronte_gem',
	recipe = {
		{'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk'},
		{'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk'},
		{'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk', 'gommaronte:gommaronte_chunk'},
	}
})

minetest.register_craft({
	output = 'gommaronte:gommaronte_block',
	recipe = {
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
		{'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem', 'gommaronte:gommaronte_gem'},
	}
})
