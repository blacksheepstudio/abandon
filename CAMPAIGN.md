TODOS:


party leader system:
	figure this one out, remember multiple players (if 2 players, but 4 player objects).
	probably each lifeform_o will have a my_leader var, and my_leader will point to the instanceid of the object that is the leader.


gambit finishes:
	refactor sword attack ability to be a gambit, allow use by ai
	finish gambit ai ability use interface (do on player objects to guarantee casting anim etc) / allow for charging?
	add not_in_combat gambit GC, and follow_party_leader GA	
	add party_leader_far_away GC
	add ally_hp_less_pct_90/80/70/60/50 etc GC
	add healing ability
	add cast healing GA
	add charge attack ability (uses iframes) and GA
	

add social aggro (if nearby allies, alert them and cause aggro).

BUG : Projectile damages allies (that's no good)



Music playing
Straight to Title Screen, press (A)

Then New Game, or Load

Laughing
with New game, straight into first mission
Black room, fists, no abilities, monster will cream you (is possible to win)

Go to character select, here choose your weapon type, and first ability.

Re-enter first room, defeat boss.

Level select --

## Levels

* forest path
    wolves, wolf boss
    Wolf boss mechanics:

* cave

* dark wood

Zone

Zone into area, camera is on the orb, it can be on an alter, or buried within a pile of gems, or glowing above a small lake, or surrounded by thorny vines, etc.
There are enemies around it, or wandering.  Camera pans down to where the group is going to spawn in.  Portal appears on ground and players emerge.

Fight your way to the gem and retreive it. Zone changes, mood, lighting, (shaders). A boss can spawn, or zone can be collapsing and you need to run out and
avoid mechanics.  Escape with the orb.

Gambits:

wander (idle) / follow teammate | run gambit conditional (gc)
    if gc[1] ex: enemy nearest
        perform gambit action[1]
            at action termination goto idle
    if gc[2] ex: ally HP < 50
        perform gambit action[2]
            at action termination goto idle

gambits organized as : gambit conditions, and gambit actions
    e.g.
        s_gc_enemy_nearest
        s_gc_enemy_hp_less_20
        s_gc_ally_nearest
        and
        s_ga_use_ability1
        s_ga_escape
        s_ga_attack

Gambit orders are organized into an array like:
self.gambits

each gambit has 2 elements, the GC and the GA.
gambits[0, 0] = s_gc_enemy_nearest
gambits[0, 1] = s_ga_use_ability1

Then in the idle script, you iterate through the GCs, and see if any of them are met.
(GC returns true or false)




