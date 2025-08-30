if not armor then
    minetest.log("error", "[:3d_armor_gloves_xt] Armor API not available!")
    return
end

if minetest.get_modpath("nether") then
    armor:register_armor(":3d_armor_gloves_xt:gauntlets_nether", {
        description = "Nether Gauntlets",
        inventory_image = "3d_armor_gloves_xt_inv_nether.png",
        groups = {armor_hands=1, armor_heal=12, armor_use=200, armor_fire=8,
        physics_speed=0.05, physics_gravity=-0.01},
        armor_groups = {fleshy=12},
        damage_groups = {cracky=2, snappy=1, choppy=1, crumbly=0.5, level=3},
    })
    
    minetest.register_craft({
        output = "3d_armor_gloves_xt:gauntlets_nether",
        recipe = {
            {"nether:nether_ingot", "farming:string", "nether:nether_ingot"},
            {"nether:nether_ingot", "farming:string", "nether:nether_ingot"},
        },
    })
    
    minetest.log("action", "[:3d_armor_gloves_xt] Nether gauntlets registered")
end