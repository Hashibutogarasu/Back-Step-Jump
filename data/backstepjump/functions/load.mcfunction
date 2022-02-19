scoreboard objectives add world_datapack_installed dummy
tellraw @a[scores={world_datapack_installed=0}] [{"text":"【Back Step Jump】","color":"aqua"},{"text":"データパックの導入に成功しました。","color":"white"}]
tellraw @a[scores={world_datapack_installed=1}] [{"text":"【Back Step Jump】","color":"aqua"},{"text":"データパックのリロードに成功しました。","color":"white"}]
scoreboard players set @a world_datapack_installed 1
scoreboard objectives add DroppedPotion minecraft.used:minecraft.lingering_potion
scoreboard objectives add HasPotion dummy
scoreboard objectives add HasPotionTime dummy
scoreboard objectives add nowtick dummy
scoreboard objectives add count dummy
scoreboard players set @a count 0
scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time