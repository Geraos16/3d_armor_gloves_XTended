local modpath = minetest.get_modpath("3d_armor_gloves_xt")

minetest.after(0, function()
    if not minetest.global_exists("armor") then
        minetest.log("error", "[3d_armor_gloves_xt] 3d_armor mod not found or not initialized!")
        return
    end

    if minetest.get_modpath("moreores") then
        dofile(modpath .. "/mithril_gauntlets.lua")
    end
    
    if minetest.get_modpath("ethereal") then
        dofile(modpath .. "/crystal_gauntlets.lua")
    end

    if minetest.get_modpath("nether") then
        dofile(modpath .. "/nether_gauntlets.lua")
        
    end
    
    if minetest.get_modpath("obsidianstuff") then
        dofile(modpath .. "/obsidian_gauntlets.lua")
    end

end)