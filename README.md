[#](#) Solo RPG for Neovim

A Neovim plugin to play Tabletop RPGs in solo mode. This plugin is meant to be used with markdown documents. When one of the commands (the ones ending in "MD") is used, it inserts its result inside markdown block comments.

The Mythic solo rpg system is written by Tana Pidgeon, from [WordMillGames](https://wordmillgames.com/). If you are interested in knowing how to play amazing roleplaying games without the need of a game master, go there and buy her Mythic GM Simulator. This plugin will help you automate the dices and tables but won't teach you how to play. It's not the purpose of the plugin :)

## Commands


#### :FateDie or :FD

Makes a fate dice check

**Params**\
modifier - modifier of the roll (difficulty of the task, skill of the PC, etc...)
reason - reason of the check (make an attack, climb the wall, etc...)

**Example**\
:FD 2, "Striking the orc in the face with the chair"

```
Striking the orc in the face with the chair
1 ( --+▢ +2)
```

#### :DiceMD

It throws one or more dices of a specific sides.

**Params**\
number - number of dices to throw\
sides - sides of the dices (4, 6, 8...)

**Example**

:DiceMD 4,6

    4D6: 14 ( 4 3 1 6 )

#### :MythicGetChaosFactor

Shows the current chaos factor.

#### :MythicSetChaosFactor

Sets the chaos factor to the one specified. If it's bigger than 6, it becomes 6. If it's lower than 3, it becomes 3.

**Params**\
chaos\_factor - the new chaos factor

#### :MythicIncreaseChaosFactor

Increase the chaos factor by 1 (6 max)

#### :MythicDecreaseChaosFactor

Decrease the chaos factor by 1 (3 min)

#### :MythicFateCheck

Makes a question "yes or no" type.

**Params**\
likeliness - a number ranging from -8 (almost impossible) to +8 (almost certain).\
reason - the question you wanna ask the oracle.

**Example**\
:MythicFateCheck 4,"Is the orc going to attack me?"

    Is the orc going to attack me?
    Exceptional yes and random event - Close a thread: Dispute, Softly

#### :MythicDetailsCheck

Ask for details of a specific situation.

**Example**\
:MythicDetailsCheck

    Favors PC: Inform, Frantically

#### :MythicEventCheck

Makes a random event check.

**Example**\
:MythicEventCheck

    Introduce a new NPC: Investment, Lavish

#### :MythicGetAction

Gets a random action

**Example**\
:MythicGetAction

    Delay

#### :MythicGetDescriptor

Gets a random descriptor

**Example**\
:MythicGetDescriptor

    Scary

## Notes

I'll improve the docs, I promise :D
