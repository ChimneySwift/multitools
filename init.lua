minetest.register_tool("multitools:multitool_diamond", {
    description = "Diamond Multitool",
    inventory_image = "multitool_diamond.png",
    range = 6.0,
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 3,
        groupcaps = {
            cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
            crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
            choppy = {times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=2},
            snappy = {times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
        },
        damage_groups = {fleshy=8},
    },
    sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
    output = "multitools:multitool_diamond",
    recipe = {
        {"", "default:shovel_diamond", ""},
        {"default:axe_diamond", "default:pick_diamond", "default:sword_diamond"},
    }
})

-- Add [toolranks] mod support if found
if minetest.get_modpath("toolranks") then

minetest.override_item("multitools:multitool_diamond", {
    original_description = "Diamond Multitool",
    description = toolranks.create_description("Diamond Multitool", 0, 1),
    after_use = toolranks.new_afteruse})
end

minetest.register_tool("multitools:multitool_mese", {
    description = "Mese Multitool",
    inventory_image = "multitool_mese.png",
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 3,
        groupcaps = {
            cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
            crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=20, maxlevel=3},
            choppy = {times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
            snappy = {times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
        },
        damage_groups = {fleshy=7},
    },
    sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
    output = "multitools:multitool_mese",
    recipe = {
        {"", "default:shovel_mese", ""},
        {"default:axe_mese", "default:pick_mese", "default:sword_mese"},
    }
})

-- Add [toolranks] mod support if found
if minetest.get_modpath("toolranks") then

minetest.override_item("multitools:multitool_mese", {
    original_description = "Mese Multitool",
    description = toolranks.create_description("Mese Multitool", 0, 1),
    after_use = toolranks.new_afteruse})
end


if minetest.get_modpath("moreores") then
    minetest.register_tool("multitools:multitool_mithril", {
        description = "Mithril Multitool",
        inventory_image = "multitool_mithril.png",
        range = 8.0,
        tool_capabilities = {
            full_punch_interval = 0.9,
            max_drop_level = 3,
            groupcaps = {
                cracky = {times={[1]=2.25, [2]=0.55, [3]=0.35}, uses=200, maxlevel=2},
                crumbly = {times={[1]=0.70, [2]=0.35, [3]=0.20}, uses=200, maxlevel=2},
                choppy = {times={[1]=1.75, [2]=0.45, [3]=0.45}, uses=200, maxlevel=2},
                snappy = {times={[2]=0.70, [3]=0.30}, uses=100, maxlevel=1},
            },
            damage_groups = {fleshy=9},
        },
        sound = {breaks = "default_tool_breaks"},
    })

    minetest.register_craft({
        output = "multitools:multitool_mithril",
        recipe = {
            {"", "moreores:shovel_mithril", ""},
            {"moreores:axe_mithril", "moreores:pick_mithril", "moreores:sword_mithril"},
        }
    })

    -- Add [toolranks] mod support if found
    if minetest.get_modpath("toolranks") then

    minetest.override_item("multitools:multitool_mithril", {
        original_description = "Mithril Multitool",
        description = toolranks.create_description("Mithril Multitool", 0, 1),
        after_use = toolranks.new_afteruse})
    end
end

if minetest.get_modpath("ethereal") then
    minetest.register_tool("multitools:multitool_crystal", {
        description = "Crystal Multitool",
        inventory_image = "multitool_crystal.png",
        range = 8.0,
        tool_capabilities = {
            full_punch_interval = 0.9,
            max_drop_level = 3,
            groupcaps = {
                cracky = {times={[1]=1.8, [2]=0.8, [3]=0.40}, uses=20, maxlevel=3},
                crumbly = {times={[1]=0.70, [2]=0.35, [3]=0.20}, uses=50, maxlevel=2},
                choppy = {times={[1]=1.75, [2]=0.45, [3]=0.45}, uses=50, maxlevel=2},
                snappy = {times={[1]=1.70, [2]=0.70, [3]=0.25}, uses=50, maxlevel=3},
            },
            damage_groups = {fleshy=10},
        },
        sound = {breaks = "default_tool_breaks"},
    })

    -- From Etheral mod
    local old_handle_node_drops = minetest.handle_node_drops

    function minetest.handle_node_drops(pos, drops, digger)

        -- are we holding Crystal Multitool?
        if digger:get_wielded_item():get_name() ~= "multitools:multitool_crystal" then
            return old_handle_node_drops(pos, drops, digger)
        end

        local nn = minetest.get_node(pos).name

        if minetest.get_item_group(nn, "crumbly") == 0 and minetest.get_item_group(nn, "cracky") == 0 then
            return old_handle_node_drops(pos, drops, digger)
        end

        return old_handle_node_drops(pos, {ItemStack(nn)}, digger)
    end

    minetest.register_craft({
        output = "multitools:multitool_crystal",
        recipe = {
            {"", "ethereal:shovel_crystal", ""},
            {"default:axe_diamond", "ethereal:pick_crystal", "ethereal:sword_crystal"},
        }
    })

    -- Add [toolranks] mod support if found
    if minetest.get_modpath("toolranks") then

    minetest.override_item("multitools:multitool_crystal", {
        original_description = "Crystal Multitool",
        description = toolranks.create_description("Crystal Multitool", 0, 1),
        after_use = toolranks.new_afteruse})
    end
end

if minetest.get_modpath("mobs_monster") or minetest.get_modpath("lavastuff") then
    local img = "multitool_lava.png"
    if minetest.get_modpath("lavastuff") then
        img = "multitool_lavastuff.png"
    end
    minetest.register_tool("multitools:multitool_lava", {
        description = "Lava Multitool",
        inventory_image = img,
        range = 8.0,
        tool_capabilities = {
            full_punch_interval = 0.4,
            max_drop_level = 3,
            groupcaps = {
                cracky = {times={[1]=1.80, [2]=0.80, [3]=0.40}, uses=40, maxlevel=3},
                crumbly = {times={[1]=1.0, [2]=0.40, [3]=0.20}, uses=50, maxlevel=3},
                choppy = {times={[1]=2.0, [2]=0.80, [3]=0.40}, uses=50, maxlevel=3},
                snappy = {times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=50, maxlevel=3},
            },
            damage_groups = {fleshy=8},
        },
        sound = {breaks = "default_tool_breaks"},
    })
    if not minetest.get_modpath("lavastuff") then
        minetest.register_craft({
            output = "multitools:multitool_lava",
            recipe = {
                {"mobs:lava_orb", "mobs:lava_orb", "mobs:lava_orb"},
                {"default:obsidian_shard", "default:obsidian_shard", "mobs:lava_orb"},
                {"default:obsidian_shard", "default:obsidian_shard", "mobs:pick_lava"},
            }
        })
    else
        minetest.register_craft({
            output = "multitools:multitool_lava",
            recipe = {
                {"", "lavastuff:shovel", ""},
                {"lavastuff:axe", "lavastuff:pick", "lavastuff:sword"},
            }
        })
    end

    -- Add [toolranks] mod support if found
    if minetest.get_modpath("toolranks") then

    minetest.override_item("multitools:multitool_lava", {
        original_description = "Lava Multitool",
        description = toolranks.create_description("Lava Multitool", 0, 1),
        after_use = toolranks.new_afteruse})
    end

    -- Add auto-smelt functionality from original

    local old_handle_node_drops = minetest.handle_node_drops

    function minetest.handle_node_drops(pos, drops, digger)

        -- are we holding Lava Multitool?
        if digger:get_wielded_item():get_name() ~= ("multitools:multitool_lava") then
            return old_handle_node_drops(pos, drops, digger)
        end

        -- reset new smelted drops
        local hot_drops = {}

        -- loop through current node drops
        for _, drop in pairs(drops) do

            -- get cooked output of current drops
            local stack = ItemStack(drop)
            local output = minetest.get_craft_result({
                method = "cooking",
                width = 1,
                items = {drop}
            })

            -- if we have cooked result then add to new list
            if output
            and output.item
            and not output.item:is_empty() then

                table.insert(hot_drops,
                    ItemStack({
                        name = output.item:get_name(),
                        count = output.item:to_table().count,
                    })
                )
            else -- if not then return normal drops
                table.insert(hot_drops, stack)
            end
        end

        return old_handle_node_drops(pos, hot_drops, digger)
    end
end