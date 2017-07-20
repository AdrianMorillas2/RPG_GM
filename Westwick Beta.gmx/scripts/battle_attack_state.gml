/// battle_attack_state()
battle_set_sprite(ATTACK, 0);

// HIT
if (animation_hit_frame(1)) {
    var foe = instance_place(x+32 * image_xscale, y, o_battle_unit);
    if (foe) {
        deal_damage(id, foe, chance(stats_object.stats[? "critical"]/100), 1);
        state = battle_return_state;
    }
}

// Return
if (animation_end()) {
    state = battle_return_state;
}
