if not armor then
    minetest.log("error", "[:3d_armor_gloves_xt] Armor API not available!")
    return
end

if minetest.get_modpath("ethereal") then
    armor:register_armor(":3d_armor_gloves_xt:gauntlets_crystal", {
        description = "Crystal Gauntlets",
        inventory_image = "3d_armor_gloves_xt_inv_crystal.png",
        groups = {armor_hands=1, armor_heal=16, armor_use=300, armor_fire=0,
            physics_speed=0.15, physics_gravity=-0.02},
        armor_groups = {fleshy=8},
        damage_groups = {cracky=1, snappy=2, choppy=1, crumbly=0.5, level=2},
        wear = 0,
    })
    
    minetest.register_craft({
        output = "3d_armor_gloves_xt:gauntlets_crystal",
        recipe = {
            {"ethereal:crystal_ingot", "farming:string", "ethereal:crystal_ingot"},
            {"ethereal:crystal_ingot", "farming:string", "ethereal:crystal_ingot"},
        },
    })
    
    minetest.log("action", "[:3d_armor_gloves_xt] Crystal gauntlets registered")
end