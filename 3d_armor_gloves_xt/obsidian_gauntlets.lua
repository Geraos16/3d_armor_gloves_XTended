if not armor then
    minetest.log("error", "[:3d_armor_gloves_xt] Armor API not available!")
    return
end

if minetest.get_modpath("obsidianstuff") then
    armor:register_armor(":3d_armor_gloves_xt:gauntlets_obsidian", {
        description = "Obsidian Gauntlets",
        inventory_image = "3d_armor_gloves_xt_inv_obsidian.png",
        groups = {armor_hands=1, armor_heal=14, armor_use=250, armor_fire=5,
        physics_speed=-0.02, physics_gravity=0.02},
        armor_groups = {fleshy=14},
        damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=3},
    })
    
    minetest.register_craft({
        output = "3d_armor_gloves_xt:gauntlets_obsidian",
        recipe = {
            {"default:obsidian", "farming:string", "default:obsidian"},
            {"default:obsidian", "farming:string", "default:obsidian"},
        },
    })
    
    minetest.log("action", "[:3d_armor_gloves_xt] Obsidian gauntlets registered")
end