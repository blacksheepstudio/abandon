/// @description Insert description here
// You can write your code in this editor
phy_fixed_rotation = true;
//
state_base = s_state_null;
state_substate = s_state_null;
state = state_base;

// Stats template
name = "Lifeform";
stats_hp_max = 10;
stats_hp_current = stats_hp_max;
stats_atk_phys = 1;
stats_atk_mag = 1;
stats_crit_chance = .1;
stats_crit_multi = 2;
stats_damage_variance = .5
stats_def_phys = 1;
stats_def_mag = 1;
stats_knockback = 10;
stats_attack_reach = 20;
stats_cast_speed = .2;

//iFrames (invulnerability frames)
iframes = noone;

// Statuses
statuses = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];

// Sprites / Image
movement_sprites = [s_null, s_null, s_null, s_null];
attack_sprites = [s_null, s_null, s_null, s_null];
cast_sprites = [s_null, s_null, s_null, s_null];
sprite_image_speed = .5; 
sprite_image_index_base = 0;
sprite_shadow = s_player_shadow;
image_blend = sprite_hue;
sprite_image_blend = sprite_hue;
sprite_attack_image_blend = sprite_hue;
sprite_base_height = sprite_height;
sprite_base_width = sprite_width;

// Movement
dir = 0;
spd = 1;
spd_casting = .5;
spd_base = spd;
hspd = 0;
vspd = 0;
spd_wander = .25;
spd_chase = .8;
RIGHT = 0;
UP = 1;
LEFT = 2;
DOWN = 3;
face = 0;
sprint_max = .9;
sprint_current = 0;
sprint_acceleration = .005;
sprint_delay = 60;

// Switches / timers
switch_attacked = false;
timer_idle = 0;
timer_stun = 0;
timer_stagger = 0;
timer_stall = 0;
timer_hit_recent = 300;

hit_recently = false;
timer_sprint = sprint_delay;
stall_delay = 30;
idle_min = 100;
idle_max = 400;

// AI
ai_debug = false;

/// Gambits
timer_gambit_action_max = 100;
timer_gambit_action = timer_gambit_action_max;
timer_wander_max = 200;
timer_wander = timer_wander_max;

gambits[0, 0] = s_gc_enemy_nearest;
gambits[0, 1] = s_ga_attack;

// Attack state
state_attack = s_ai_attack_normal;
sight_attack_range = 25;
state_attack_timer_max = 50;
state_attack_timer = state_attack_timer_max;

// sight / targetting
sight_base = 128;
sight = sight_base;
sight_combat = 800;
target_x = 0;
target_y = 0;
target_o = noone;

// faction settings
// @param faction - will not attack enemies of same faction, even if hostile
// @param hostile - will attack targets not of same faction
faction = 0;
hostile = false;

// Hud
show_health_bar_default = false;
show_health_bar = false;
health_bar_x_offset = sprite_width / 7;
healthbar_o = instance_create_depth(x, y, -10000, o_healthbar);
healthbar_o.owner = id;


// Debug
debug_messages = false;

// Keys 
key_swap = 0;