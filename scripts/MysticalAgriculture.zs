# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.thermalexpansion.Transposer;
import mods.botania.RuneAltar;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;

print("STARTING MysticalAgriculture.zs");

# Base Crafting Seed
recipes.remove(<mysticalagriculture:crafting:16>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:16>, [[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<minecraft:wheat_seeds>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>]]);

# Tier 1 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:17>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:17>, [[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting:16>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);

# Inferium Seeds: Tier 1
recipes.remove(<mysticalagriculture:tier1_inferium_seeds>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:tier1_inferium_seeds>, [[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>],[<mysticalagriculture:crafting>,<minecraft:wheat_seeds>,<mysticalagriculture:crafting>],[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);

function addTier1MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	mods.extendedcrafting.EnderCrafting.addShaped(output, [[input_material,<mysticalagriculture:crafting>,input_material], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting>], [input_material,<mysticalagriculture:crafting>,input_material]]);
}

# Stone Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:stone_seeds>,<extrautils2:compressedcobblestone>);

# Dirt Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:dirt_seeds>,<extrautils2:compresseddirt>);

# Grains of Infinity Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:grains_of_infinity_seeds>,<enderio:block_infinity>);

# Ice Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:ice_seeds>,<minecraft:packed_ice>);

# Wood Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:wood_seeds>,<ore:logWood>);

# Marble Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:marble_seeds>,<ore:blockMarble>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:marble_seeds>,<ore:stoneMarble>);

# Limestone Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:limestone_seeds>,<ore:stoneLimestone>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:limestone_seeds>,<ore:stoneLimestonePolished>);

# Basalt Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:basalt_seeds>,<ore:stoneBasalt>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:basalt_seeds>,<ore:stoneBasaltPolished>);

# Nature Cluster
recipes.remove(<mysticalagriculture:crafting:6>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:6>, [<minecraft:cactus>,<minecraft:pumpkin>,<minecraft:reeds>,<minecraft:wheat>], 64, 16);

# Nature Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:nature_seeds>,<mysticalagriculture:crafting:6>);

# Water Seeds
recipes.remove(<mysticalagriculture:water_seeds>);
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:water_seeds>, <mysticalagriculture:ice_seeds>, <liquid:water> * 10000, 8000);

# Tier 2 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:18>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);

# Inferium Seeds: Tier 2
recipes.remove(<mysticalagriculture:tier2_inferium_seeds>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:tier2_inferium_seeds>, [<mysticalagriculture:tier1_inferium_seeds>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);

function addTier2MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient) {
	addTier2MysticalAgricultureSeedWithInput(output,input_material,<mysticalagriculture:crafting:18>);
}

function addTier2MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, input_seed as IIngredient) {
	recipes.remove(output);
	mods.botania.RuneAltar.addRecipe(output, [input_seed,input_material,input_material,input_material,input_material,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);
}

# Fire Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:fire_seeds>,<contenttweaker:incendium>);

# Nether Cluster
recipes.remove(<mysticalagriculture:crafting:8>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:8>, [<simplyjetpacks:metaitemmods:12>,<extrautils2:compressednetherrack:1>,<extrautils2:compressednetherrack:1>,<simplyjetpacks:metaitemmods:12>], 128, 32);

# Nether Seeds
addTier2MysticalAgricultureSeedWithInput(<mysticalagriculture:nether_seeds>,<mysticalagriculture:crafting:8>,<mysticalagriculture:fire_seeds>);

# Coal Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:coal_seeds>,<minecraft:coal_block>);

# Obsidian Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:obsidian_seeds>,<contenttweaker:compressed_obsidian2>);

# Tier 1 Mob Chunk
# in OreProcessingAdditions.zs

# Tier 2 Mob Chunk
recipes.remove(<mysticalagriculture:chunk:1>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:chunk:1>, [<mysticalagriculture:chunk>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 10000);

# Pig Chunk
recipes.remove(<mysticalagriculture:chunk:7>);
recipes.addShaped(<mysticalagriculture:chunk:7>, [[<minecraft:porkchop>,<minecraft:porkchop>,<minecraft:porkchop>],[<minecraft:porkchop>,<mysticalagriculture:chunk:1>,<minecraft:porkchop>],[<minecraft:porkchop>,<minecraft:porkchop>,<minecraft:porkchop>]]);

# Pig Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:pig_seeds>,<mysticalagriculture:chunk:7>);

# Chicken Chunk
recipes.remove(<mysticalagriculture:chunk:8>);
recipes.addShaped(<mysticalagriculture:chunk:8>, [[<minecraft:feather>,<minecraft:egg>,<minecraft:feather>],[<minecraft:egg>,<mysticalagriculture:chunk:1>,<minecraft:egg>],[<minecraft:feather>,<minecraft:egg>,<minecraft:feather>]]);

# Chicken Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:chicken_seeds>,<mysticalagriculture:chunk:8>);

# Cow Chunk
recipes.remove(<mysticalagriculture:chunk:9>);
recipes.addShaped(<mysticalagriculture:chunk:9>, [[<minecraft:leather>,<minecraft:beef>,<minecraft:leather>],[<minecraft:beef>,<mysticalagriculture:chunk:1>,<minecraft:beef>],[<minecraft:leather>,<minecraft:beef>,<minecraft:leather>]]);

# Cow Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:cow_seeds>,<mysticalagriculture:chunk:9>);

# Sheep Chunk
recipes.remove(<mysticalagriculture:chunk:10>);
recipes.addShaped(<mysticalagriculture:chunk:10>, [[<minecraft:wool:*>,<minecraft:mutton>,<minecraft:wool:*>],[<minecraft:mutton>,<mysticalagriculture:chunk:1>,<minecraft:mutton>],[<minecraft:wool:*>,<minecraft:mutton>,<minecraft:wool:*>]]);

# Sheep Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sheep_seeds>,<mysticalagriculture:chunk:10>);

# Rabbit Chunk
recipes.remove(<mysticalagriculture:chunk:15>);
recipes.addShaped(<mysticalagriculture:chunk:15>, [[<minecraft:rabbit_hide>,<minecraft:rabbit>,<minecraft:rabbit_hide>],[<minecraft:rabbit>,<mysticalagriculture:chunk:1>,<minecraft:rabbit>],[<minecraft:rabbit_hide>,<minecraft:rabbit>,<minecraft:rabbit_hide>]]);

# Rabbit Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:rabbit_seeds>,<mysticalagriculture:chunk:15>);

# Rubber Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:rubber_seeds>,<industrialforegoing:plastic>);

# Plastic from Rubber Seeds -> Tiny Dry Rubber from Rubber Seeds
recipes.remove(<industrialforegoing:plastic>);
recipes.addShaped(<industrialforegoing:tinydryrubber> * 3, [[<mysticalagriculture:rubber_essence>,<mysticalagriculture:rubber_essence>,<mysticalagriculture:rubber_essence>]]);

# Silicon Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:silicon_seeds>,<galacticraftcore:basic_block_core:13>);

# Sulfur Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sulfur_seeds>,<abyssalcraft:crystalcluster:2>);

# Saltpeter Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:saltpeter_seeds>,<abyssalcraft:crystalcluster:8>);

# Graphite Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:graphite_seeds>,<bigreactors:ingotgraphite>);

# HOP Graphite Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:hop_graphite_seeds>,<immersiveengineering:material:19>);

# Mystical Flower Cluster
recipes.remove(<mysticalagriculture:crafting:10>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:10>, [<botania:doubleflower1:4>,<botania:doubleflower1:5>,<botania:doubleflower2:6>,<botania:doubleflower2:3>], 128, 32);

# Mystical Flower Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:mystical_flower_seeds>,<mysticalagriculture:crafting:10>);

# Sky Stone Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sky_stone_seeds>,<appliedenergistics2:sky_stone_block>);

# Tier 3 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:19>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_crafting_seed", "", <mysticalagriculture:crafting:19>, 3, [<aspect:herba> * 100,<aspect:praecantatio> * 50], <mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

# Inferium Seeds: Tier 3
recipes.remove(<mysticalagriculture:tier3_inferium_seeds>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_inferium_seeds", "", <mysticalagriculture:tier3_inferium_seeds>, 3, [<aspect:herba> * 100,<aspect:praecantatio> * 50], <mysticalagriculture:tier2_inferium_seeds>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

function addTier3MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, input_vis_crystal as IItemStack, input_aspect as CTAspectStack, input_seed as IItemStack) {
	recipes.remove(output);
	mods.thaumcraft.Infusion.registerRecipe(output.name, "", output, 4, [<aspect:herba> * 100,input_aspect * 100], input_seed, [input_material,input_material,input_material,input_material,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,input_vis_crystal]);
}

function addTier3MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient, input_vis_crystal as IItemStack, input_aspect as CTAspectStack) {
	addTier3MysticalAgricultureSeedWithInput(output, input_material, input_vis_crystal, input_aspect, <mysticalagriculture:crafting:19>);
}

# Dye Cluster
recipes.remove(<mysticalagriculture:crafting:7>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:7>, [<minecraft:dye>,<minecraft:dye:14>,<minecraft:dye:6>,<minecraft:dye:13>], 256, 64);

# Dye Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:dye_seeds>, <mysticalagriculture:crafting:7>, <contenttweaker:condensed_vis_crystal_sensus>, <aspect:sensus>, <mysticalagriculture:mystical_flower_seeds>);

# Iron Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:iron_seeds>, <minecraft:iron_block>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Nether Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:nether_quartz_seeds>, <minecraft:quartz_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Glowstone Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:glowstone_seeds>, <minecraft:glowstone>, <contenttweaker:condensed_vis_crystal_lux>, <aspect:lux>);

# Redstone Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:redstone_seeds>, <minecraft:redstone_block>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>);

# Gold Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:gold_seeds>, <minecraft:gold_block>, <contenttweaker:condensed_vis_crystal_desiderium>, <aspect:desiderium>);

# Lapis Lazuli Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:lapis_lazuli_seeds>, <minecraft:lapis_block>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>);

# End Cluster
recipes.remove(<mysticalagriculture:crafting:9>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:9>, [<enderio:item_alloy_ingot:8>,<enderio:item_alloy_endergy_ingot:2>,<enderio:item_alloy_endergy_ingot:2>,<enderio:item_alloy_ingot:8>], 256, 64);

# End Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:end_seeds>, <mysticalagriculture:crafting:9>, <contenttweaker:condensed_vis_crystal_alienis>, <aspect:alienis>);

# Tier 3 Mob Chunk
recipes.remove(<mysticalagriculture:chunk:2>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_mob_chunk", "", <mysticalagriculture:chunk:2>, 4, [<aspect:bestia> * 100,<aspect:victus> * 50,<aspect:aversio> * 50], <mysticalagriculture:chunk:1>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

# Experience Chunk
recipes.addShaped(<mysticalagriculture:chunk:5>, [[<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],[<actuallyadditions:item_solidified_experience>,<mysticalagriculture:chunk:2>,<actuallyadditions:item_solidified_experience>],[<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>]]);

# Experience Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:experience_seeds>, <mysticalagriculture:chunk:5>, <contenttweaker:condensed_vis_crystal_cognitio>, <aspect:cognitio>);

# Zombie Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:zombie_seeds>, <mysticalagriculture:chunk:6>, <contenttweaker:condensed_vis_crystal_exanimis>, <aspect:exanimis>);

# Slime Chunk
recipes.remove(<mysticalagriculture:chunk:11>);
recipes.addShaped(<mysticalagriculture:chunk:11>, [[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>],[<minecraft:slime>,<mysticalagriculture:chunk:2>,<minecraft:slime>],[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>]]);

# Slime Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:slime_seeds>, <mysticalagriculture:chunk:11>, <contenttweaker:condensed_vis_crystal_alkimia>, <aspect:alkimia>);

# Skeleton Chunk
recipes.remove(<mysticalagriculture:chunk:12>);
recipes.addShaped(<mysticalagriculture:chunk:12>, [[<minecraft:bone_block>,<minecraft:bone_block>,<minecraft:bone_block>],[<minecraft:bone_block>,<mysticalagriculture:chunk:2>,<minecraft:bone_block>],[<minecraft:bone_block>,<minecraft:bone_block>,<minecraft:bone_block>]]);

# Skeleton Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:skeleton_seeds>, <mysticalagriculture:chunk:12>, <contenttweaker:condensed_vis_crystal_mortuus>, <aspect:mortuus>);

# Creeper Chunk
recipes.remove(<mysticalagriculture:chunk:13>);
recipes.addShaped(<mysticalagriculture:chunk:13>, [[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>],[<minecraft:gunpowder>,<mysticalagriculture:chunk:2>,<minecraft:gunpowder>],[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>]]);

# Creeper Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:creeper_seeds>, <mysticalagriculture:chunk:13>, <contenttweaker:condensed_vis_crystal_perditio>, <aspect:perditio>);

# Spider Chunk
recipes.remove(<mysticalagriculture:chunk:14>);
recipes.addShaped(<mysticalagriculture:chunk:14>, [[<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>],[<minecraft:spider_eye>,<mysticalagriculture:chunk:2>,<minecraft:spider_eye>],[<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>]]);

# Spider Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:spider_seeds>, <mysticalagriculture:chunk:14>, <contenttweaker:condensed_vis_crystal_motus>, <aspect:motus>);

# Guardian Seeds
recipes.remove(<mysticalagriculture:chunk:16>);
recipes.addShaped(<mysticalagriculture:chunk:16>, [[<minecraft:prismarine_shard>,<minecraft:fish>,<minecraft:prismarine_shard>],[<minecraft:fish>,<mysticalagriculture:chunk:2>,<minecraft:fish>],[<minecraft:prismarine_shard>,<minecraft:fish>,<minecraft:prismarine_shard>]]);

# Guardian Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:guardian_seeds>, <mysticalagriculture:chunk:16>, <contenttweaker:condensed_vis_crystal_aqua>, <aspect:aqua>);

# Blaze Chunk
recipes.remove(<mysticalagriculture:chunk:17>);
recipes.addShaped(<mysticalagriculture:chunk:17>, [[<botania:blazeblock>,<botania:blazeblock>,<botania:blazeblock>],[<botania:blazeblock>,<mysticalagriculture:chunk:2>,<botania:blazeblock>],[<botania:blazeblock>,<botania:blazeblock>,<botania:blazeblock>]]);

# Blaze Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blaze_seeds>, <mysticalagriculture:chunk:17>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>);

# Aluminum Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:aluminum_seeds>, <thermalfoundation:storage:4>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Copper Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:copper_seeds>, <thermalfoundation:storage>, <contenttweaker:condensed_vis_crystal_permutatio>, <aspect:permutatio>);

# Tin Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:tin_seeds>, <thermalfoundation:storage:1>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Bronze Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:bronze_seeds>, <thermalfoundation:storage_alloy:3>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:copper_seeds>);

# Silver Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:silver_seeds>, <thermalfoundation:storage:2>, <contenttweaker:condensed_vis_crystal_desiderium>, <aspect:desiderium>);

# Lead Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:lead_seeds>, <thermalfoundation:storage:3>, <contenttweaker:condensed_vis_crystal_ordo>, <aspect:ordo>);

# Steel Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:steel_seeds>, <thermalfoundation:storage_alloy>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>, <mysticalagriculture:iron_seeds>);

# Nickel Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:nickel_seeds>, <thermalfoundation:storage:5>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Constantan Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:constantan_seeds>, <thermalfoundation:storage_alloy:4>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:nickel_seeds>);

# Electrum Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:electrum_seeds>, <thermalfoundation:storage_alloy:1>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:gold_seeds>);

# Invar Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:invar_seeds>, <thermalfoundation:storage_alloy:2>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:iron_seeds>);

# Platinum Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:platinum_seeds>, <thermalfoundation:storage:6>, <contenttweaker:condensed_vis_crystal_praemunio>, <aspect:praemunio>, <mysticalagriculture:nickel_seeds>);

# Amber Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:amber_seeds>, <thaumcraft:amber_block>, <contenttweaker:condensed_vis_crystal_vinculum>, <aspect:vinculum>);

# Blizz Chunk
recipes.remove(<mysticalagriculture:chunk:21>);
recipes.addShaped(<mysticalagriculture:chunk:21>, [[<thermalfoundation:material:2048>,<thermalfoundation:material:2048>,<thermalfoundation:material:2048>],[<thermalfoundation:material:2048>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2048>],[<thermalfoundation:material:2048>,<thermalfoundation:material:2048>,<thermalfoundation:material:2048>]]);

# Blizz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blizz_seeds>, <mysticalagriculture:chunk:21>, <contenttweaker:condensed_vis_crystal_gelum>, <aspect:gelum>);

# Blitz Chunk
recipes.remove(<mysticalagriculture:chunk:22>);
recipes.addShaped(<mysticalagriculture:chunk:22>, [[<thermalfoundation:material:2050>,<thermalfoundation:material:2050>,<thermalfoundation:material:2050>],[<thermalfoundation:material:2050>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2050>],[<thermalfoundation:material:2050>,<thermalfoundation:material:2050>,<thermalfoundation:material:2050>]]);

# Blitz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blitz_seeds>, <mysticalagriculture:chunk:22>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>);

# Basalz Chunk
recipes.remove(<mysticalagriculture:chunk:23>);
recipes.addShaped(<mysticalagriculture:chunk:23>, [[<thermalfoundation:material:2052>,<thermalfoundation:material:2052>,<thermalfoundation:material:2052>],[<thermalfoundation:material:2052>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2052>],[<thermalfoundation:material:2052>,<thermalfoundation:material:2052>,<thermalfoundation:material:2052>]]);

# Basalz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:basalz_seeds>, <mysticalagriculture:chunk:23>, <contenttweaker:condensed_vis_crystal_perditio>, <aspect:perditio>);

# Lumium Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:lumium_seeds>, <thermalfoundation:storage_alloy:6>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:glowstone_seeds>);

# Aluminum Brass Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:aluminum_brass_seeds>, <tconstruct:metal:5>, <contenttweaker:condensed_vis_crystal_permutatio>, <aspect:permutatio>, <mysticalagriculture:aluminum_seeds>);

# Redstone Alloy Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:redstone_alloy_seeds>, <enderio:block_alloy:3>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>, <mysticalagriculture:redstone_seeds>);

# Soularium Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:soularium_seeds>, <enderio:block_alloy:7>, <contenttweaker:condensed_vis_crystal_spiritus>, <aspect:spiritus>, <mysticalagriculture:gold_seeds>);

# Quicksilver Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:quicksilver_seeds>, <thaumcraft:quicksilver>, <contenttweaker:condensed_vis_crystal_mortuus>, <aspect:mortuus>);

# Osmium Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:osmium_seeds>, <mekanism:basicblock>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Glowstone Ingot Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:glowstone_ingot_seeds>, <mekanism:basicblock:4>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:glowstone_seeds>);

# Refined Obsidian Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:refined_obsidian_seeds>, <mekanism:basicblock:2>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:obsidian_seeds>);

# Black Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:black_quartz_seeds>, <actuallyadditions:block_misc:2>, <contenttweaker:condensed_vis_crystal_tenebrae>, <aspect:tenebrae>);

# Menril Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:menril_seeds>, <integrateddynamics:crystalized_menril_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Crystallized Menril Chunk from Menril Essence
recipes.addShaped(<integrateddynamics:crystalized_menril_chunk> * 3, [[<mysticalagriculture:menril_essence>],[<mysticalagriculture:menril_essence>],[<mysticalagriculture:menril_essence>]]);

# Jade Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:jade_seeds>, <erebus:jade_block>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>);

# Dark Gem Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:dark_gem_seeds>, <evilcraft:dark_power_gem_block>, <contenttweaker:condensed_vis_crystal_tenebrae>, <aspect:tenebrae>);

# Certus Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:certus_quartz_seeds>, <appliedenergistics2:quartz_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Fluix Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:fluix_seeds>, <appliedenergistics2:fluix_block>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:certus_quartz_seeds>);

# Tier 4 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:20>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4craftingseed", <mysticalagriculture:crafting:20>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:crafting:19>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

# Inferium Seeds: Tier 4
recipes.remove(<mysticalagriculture:tier4_inferium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4_inferium_seeds", <mysticalagriculture:tier4_inferium_seeds>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:tier3_inferium_seeds>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

function addTier4MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, constellation as string, input_seed as IItemStack) {
	recipes.remove(output);
	mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/" + output.name, output, 3000, 100,
	[null,null,null,
	null,input_seed,null,
	null,null,null,
	<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
	null,null,null,null,null,null,null,null,
	input_material,input_material,input_material,input_material], "astralsorcery.constellation." + constellation);
}

function addTier4MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient, constellation as string) {
	addTier4MysticalAgricultureSeedWithInput(output, input_material, constellation, <mysticalagriculture:crafting:20>);
}

# Diamond Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:diamond_seeds>, <actuallyadditions:block_crystal_empowered:2>, "vicio");

# Emerald Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:emerald_seeds>, <actuallyadditions:block_crystal_empowered:4>, "aevitas");

# Tier 4 mob chunk
recipes.remove(<mysticalagriculture:chunk:3>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4mobchunk", <mysticalagriculture:chunk:3>, 2500, 100,
[null,null,null,
null,<mysticalagriculture:chunk:2>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

# Ghast Chunk
recipes.remove(<mysticalagriculture:chunk:18>);
recipes.addShaped(<mysticalagriculture:chunk:18>, [[null,<divinerpg:ghast_pumpkin>,null],[<divinerpg:ghast_pumpkin>,<mysticalagriculture:chunk:3>,<divinerpg:ghast_pumpkin>],[null,<divinerpg:ghast_pumpkin>,null]]);

# Ghast Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:ghast_seeds>, <mysticalagriculture:chunk:18>, "gelu");

# Enderman Chunk
recipes.remove(<mysticalagriculture:chunk:19>);
recipes.addShaped(<mysticalagriculture:chunk:19>, [[<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,],[<actuallyadditions:block_misc:6>,<mysticalagriculture:chunk:3>,<actuallyadditions:block_misc:6>],[<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>]]);

# Enderman Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:enderman_seeds>, <mysticalagriculture:chunk:19>, "ulteria");

# Signalum Seeds
recipes.remove(<mysticalagriculture:signalum_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/signalum_seeds", <mysticalagriculture:signalum_seeds>, 3000, 100,
[null,<mysticalagriculture:redstone_seeds>,null,
null,null,null,
<mysticalagriculture:copper_seeds>,null,<mysticalagriculture:silver_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>], "astralsorcery.constellation.fornax");

# Enderium Seeds
recipes.remove(<mysticalagriculture:enderium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/enderium_seeds", <mysticalagriculture:enderium_seeds>, 3000, 100,
[null,<mysticalagriculture:enderman_seeds>,null,
null,null,null,
<mysticalagriculture:lead_seeds>,null,<mysticalagriculture:platinum_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>], "astralsorcery.constellation.aevitas");

# Fluxed Electrum Seeds
recipes.remove(<mysticalagriculture:fluxed_electrum_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/fluxed_electrum_seeds", <mysticalagriculture:fluxed_electrum_seeds>, 3000, 100,
[null,<mysticalagriculture:electrum_seeds>,null,
null,null,null,
<mysticalagriculture:redstone_alloy_seeds>,null,<mysticalagriculture:blaze_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>], "astralsorcery.constellation.vorux");

# Fluxed Electum Essence -> Fluxed Electrum Ingot
recipes.addShaped(<contenttweaker:fluxed_electrum_ingot> * 3, [[<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>],[<mysticalagriculture:fluxed_electrum_essence>,null,<mysticalagriculture:fluxed_electrum_essence>],[<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>]]);

# Knightslime Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:knightslime_seeds>, <tconstruct:metal:3>, "bootes", <mysticalagriculture:slime_seeds>);

# Ardite Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:ardite_seeds>, <tconstruct:metal:1>, "mineralis");

# Cobalt Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:cobalt_seeds>, <tconstruct:metal>, "octans");

# Manyullyn Seeds
recipes.remove(<mysticalagriculture:manyullyn_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/manyullin_seeds", <mysticalagriculture:manyullyn_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:cobalt_seeds>,null,<mysticalagriculture:ardite_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>], "astralsorcery.constellation.horologium");

# Electrical Steel Seeds
recipes.remove(<mysticalagriculture:electrical_steel_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/electrical_steel_seeds", <mysticalagriculture:electrical_steel_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:steel_seeds>,null,<mysticalagriculture:silicon_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>], "astralsorcery.constellation.armara");

# Conductive Iron Seeds
recipes.remove(<mysticalagriculture:conductive_iron_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/conductive_iron_seeds", <mysticalagriculture:conductive_iron_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:redstone_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>], "astralsorcery.constellation.bootes");

# Dark Steel Seeds
recipes.remove(<mysticalagriculture:dark_steel_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/dark_steel_seeds", <mysticalagriculture:dark_steel_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:steel_seeds>,null,<mysticalagriculture:refined_obsidian_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>], "astralsorcery.constellation.vorux");

# Pulsating Iron Seeds
recipes.remove(<mysticalagriculture:pulsating_iron_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/pulsating_iron_seeds", <mysticalagriculture:pulsating_iron_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:enderman_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:5>,<enderio:block_alloy:5>,<enderio:block_alloy:5>,<enderio:block_alloy:5>], "astralsorcery.constellation.aevitas");

# Energetic Alloy Seeds
recipes.remove(<mysticalagriculture:energetic_alloy_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/energetic_alloy_seeds", <mysticalagriculture:energetic_alloy_seeds>, 3000, 100,
[null,<mysticalagriculture:gold_seeds>,null,
null,null,null,
<mysticalagriculture:redstone_seeds>,null,<mysticalagriculture:glowstone_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:1>,<enderio:block_alloy:1>,<enderio:block_alloy:1>,<enderio:block_alloy:1>], "astralsorcery.constellation.fornax");

# Vibrant Alloy Seeds
recipes.remove(<mysticalagriculture:vibrant_alloy_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/vibrant_alloy_seeds", <mysticalagriculture:vibrant_alloy_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:energetic_alloy_seeds>,null,<mysticalagriculture:enderman_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:2>,<enderio:block_alloy:2>,<enderio:block_alloy:2>,<enderio:block_alloy:2>], "astralsorcery.constellation.mineralis");

# Manasteel Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:manasteel_seeds>, <botania:storage>, "octans", <mysticalagriculture:mithril_seeds>);

# Elementium Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:elementium_seeds>, <botania:storage:2>, "alcara", <mysticalagriculture:manasteel_seeds>);

# Electrotine Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:electrotine_seeds>, <projectred-core:resource_item:342>, "vicio");

# Alumite Seeds
recipes.remove(<mysticalagriculture:alumite_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/alumite_seeds", <mysticalagriculture:alumite_seeds>, 3000, 100,
[null,<mysticalagriculture:aluminum_seeds>,null,
null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:obsidian_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<plustic:alumiteblock>,<plustic:alumiteblock>,<plustic:alumiteblock>,<plustic:alumiteblock>], "astralsorcery.constellation.alcara");

# Coralium Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:coralium_seeds>, <abyssalcraft:ingotblock:1>, "ulteria");

# Abyssalnite Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:abyssalnite_seeds>, <abyssalcraft:ingotblock>, "bootes", <mysticalagriculture:coralium_seeds>);

# Dreaduium Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:dreadium_seeds>, <abyssalcraft:ingotblock:2>, "discidia", <mysticalagriculture:abyssalnite_seeds>);

# Mithril Seeds
recipes.remove(<mysticalagriculture:mithril_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/mithril_seeds", <mysticalagriculture:mithril_seeds>, 3000, 100,
[<mysticalagriculture:platinum_seeds>,<mysticalagriculture:blaze_seeds>,<mysticalagriculture:blizz_seeds>,
<mysticalagriculture:gold_seeds>,null,<mysticalagriculture:blitz_seeds>,
<mysticalagriculture:osmium_seeds>,<mysticalagriculture:bronze_seeds>,<mysticalagriculture:basalz_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage:8>,<thermalfoundation:storage:8>,<thermalfoundation:storage:8>,<thermalfoundation:storage:8>], "astralsorcery.constellation.horologium");

# Iridium Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:iridium_seeds>, <thermalfoundation:storage:7>, "armara");

# Lithium Seeds
recipes.remove(<mysticalagriculture:lithium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/lithium_seeds", <mysticalagriculture:lithium_seeds>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:crafting:20>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,
<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>], "astralsorcery.constellation.vicio");

print("ENDING MysticalAgriculture.zs");