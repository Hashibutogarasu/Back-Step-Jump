kill @e[type=potion,sort=nearest,limit=1]

effect give @a[scores={DroppedPotion=1..,sneakTime=0},nbt={SelectedItem:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:'[{"text":"Back Step Jumper","italic":false,"color":"green"}]'},CustomPotionColor:703473}}}] minecraft:levitation 4 50 true
effect give @a[scores={DroppedPotion=1..,sneakTime=1},nbt={SelectedItem:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:'[{"text":"Back Step Jumper","italic":false,"color":"green"}]'},CustomPotionColor:703473}}}] minecraft:levitation 4 100 true
effect clear @a[scores={HasPotion=1..}] minecraft:levitation


playsound minecraft:entity.firework_rocket.blast player @a[scores={HasPotion=0,DroppedPotion=1..},nbt={OnGround:1b}] ~ ~ ~ 100 1
playsound minecraft:block.note_block.cow_bell player @a[scores={HasPotion=1,DroppedPotion=1..},nbt={OnGround:1b}] ~ ~ ~ 100 1

execute at @a[scores={HasPotionTime=..15},nbt={OnGround:0b}] run particle firework ^ ^1 ^1

execute at @a[scores={sneakTime=0}] run function backstepjump:summonslimes
execute at @a[scores={sneakTime=1}] run function backstepjump:summonmanyslimes

execute at @a[scores={HasPotion=0,DroppedPotion=1..},nbt={SelectedItem:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:'[{"text":"Back Step Jumper","italic":false,"color":"green"}]'},CustomPotionColor:703473}}}] run tag @e[type=slime,distance=..2] add knockbacker

effect give @e[nbt={Tags:["knockbacker"]}] invisibility 999999 1 true

execute at @a[scores={count=15..}] run tp @e[nbt={Tags:["knockbacker"]}] ~ -250 ~
execute at @a[scores={count=15..}] run kill @e[nbt={Tags:["knockbacker"]}]

execute at @a[scores={nowtick=29..}] run tp @e[nbt={Tags:["knockbacker"]}] ~ -250 ~
execute at @a[scores={nowtick=29..}] run kill @e[nbt={Tags:["knockbacker"]}]

execute store result score @a count run execute if entity @e[nbt={Tags:["knockbacker"]}]

scoreboard players add @a[scores={DroppedPotion=1..},nbt={SelectedItem:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:'[{"text":"Back Step Jumper","italic":false,"color":"green"}]'},CustomPotionColor:703473}}}] HasPotion 1
scoreboard players add @a[scores={HasPotion=1..}] HasPotionTime 1
scoreboard players set @a[scores={HasPotion=2..}] HasPotion 0
scoreboard players set @a[scores={HasPotion=2..}] HasPotionTime 0
scoreboard players set @a[scores={HasPotion=0}] HasPotionTime 0
scoreboard players set @a[scores={DroppedPotion=1..}] DroppedPotion 0
scoreboard players add @a nowtick 1
scoreboard players set @a[scores={nowtick=30..}] nowtick 0
scoreboard players set @a[scores={sneakTime=1..}] sneakTime 0