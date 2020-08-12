# multitool
Adds a series of multi-purpose tools to Minetest

# Multitools

Multitools adds the ability to craft several tools into 1 multi-use tool.

A few days ago I found a mod on the Banana Land server which allows you to craft a mese or diamond shovel, axe and pick into one tool that performs better at all of those tool's main tasks. Unfortunately, I don't think this mod is available, so I decided to "borrow" the idea and make my own similar version.

**Contributors:** Many thanks to LadyK for improving the multitool textures!

**Code license:** [CC0](http://creativecommons.org/publicdomain/zero/1.0/)

**Textures license:** [CC0](http://creativecommons.org/publicdomain/zero/1.0/)

**Dependencies:** default

**Optional Dependencies:** [mobs_monster](https://github.com/tenplus1/mobs_monster)(note: depends on [mobs](https://forum.minetest.net/viewtopic.php?t=9917)), [lavastuff](https://forum.minetest.net/viewtopic.php?f=9&t=18608), [toolranks](https://forum.minetest.net/viewtopic.php?t=18056), [toolranks_extras](https://github.com/louisroyer/minetest-toolranks-extras)

**Notes on Optional Dependencies:** Adding one of or both of the optional dependencies will add a Lava Multitool which is better than diamond and auto-smelts like the lava pick in mobs_monster. Adding toolranks enables all of the functionality of the toolranks mod. Adding toolranks extras improves the display of the tool description.

## Screenshots and Crafting

**Note:** craft in crafting grid the same as the tools are shown in the 3×3 Item Frame grid.

**default:**
When only the "default" dependency is satisfied, this mod will add diamond and mese multitools:

![alt text](https://github.com/ChimneySwift/multitools/blob/master/default_items.png?raw=true "Image")

**mobs_monster:**
When this mod and mobs_monster is loaded, this mod will also add the Lava Multitool:

![alt text](https://github.com/ChimneySwift/multitools/blob/master/mobs_redo_items.png?raw=true "Image")

**lavastuff:**
When this mod is loaded with lavastuff, the texture and recipe of the Lava Multitool will change to fit the rest of the lavastuff mod:

![alt text](https://github.com/ChimneySwift/multitools/blob/master/lavastuff_items.png?raw=true "Image")

It is good to note that if both the lavastuff mod and the mobs_monster mod are loaded, one can be removed at any time and the mod will automatically convert the textures and resume as normal only leaving unknown items behind if both lavastuff and mobs_monster are removed.

## Tool capabilities
The best characteristics of each tool were combined to make each multitool. For example, the diamond multitool cuts wood at the same rate as the diamond axe, but it also breaks stone at the same rate as a diamond pick. The only increase in ability of the multitool is the range, the diamond multitool has a range of 6 and the lava multitool has a range of 8 (the default is 4), however if you don't like this behaviour, simply adjust the "range" setting for each tool or remove it in init.lua.

Note that the performance of the Lava Multitool as a sword, shovel or axe is determined from the performance of these tools in the lavastuff mod, regardless of whether you have it installed or not.
