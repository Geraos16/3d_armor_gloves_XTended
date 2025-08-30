if not armor then
    minetest.log("error", "[:3d_armor_gloves_xt] Armor API not available!")
    return
end

if minetest.get_modpath("moreores") then
    armor:register_armor(":3d_armor_gloves_xt:gauntlets_mithril", {
        description = "Mithril Gauntlets",
        inventory_image = "3d_armor_gloves_xt_inv_mithril.png",
        groups = {armor_hands=1, armor_heal=12, armor_use=200, armor_fire=1,
            physics_speed=0.10, physics_gravity=-0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
        wear = 0,
    })
    
    minetest.register_craft({
        output = "3d_armor_gloves_xt:gauntlets_mithril",
        recipe = {
            {"moreores:mithril_ingot", "farming:string", "moreores:mithril_ingot"},
            {"moreores:mithril_ingot", "farming:string", "moreores:mithril_ingot"},
        },
    })
    
    minetest.log("action", "[:3d_armor_gloves_xt] Mithril gauntlets registered")
end