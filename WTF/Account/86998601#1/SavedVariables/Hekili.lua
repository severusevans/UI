
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Sevdh - Lothar"] = "Default",
		["Sevmage - Lothar"] = "Default",
		["Angrysev - Lothar"] = "Default",
		["Severusevans - Lothar"] = "Default",
		["Sevmonk - Lothar"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceReloadClassDefaultOptions_20220306_71"] = true,
				["forceReloadClassDefaultOptions_20220306_577"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
				["forceReloadClassDefaultOptions_20220306_269"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_63"] = true,
				["forceReloadClassDefaultOptions_20220306_268"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["forceReloadClassDefaultOptions_20220306_64"] = true,
				["forceReloadClassDefaultOptions_20220306_72"] = true,
				["forceReloadClassDefaultOptions_20220306_73"] = true,
				["forceReloadClassDefaultOptions_20220306_581"] = true,
				["forceReloadClassDefaultOptions_20220306_62"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
					},
				},
				[63] = {
					["settings"] = {
						["pyroblast_pull"] = false,
						["prevent_hardcasts"] = false,
					},
				},
				[104] = {
					["settings"] = {
						["catweave_bear"] = false,
						["ironfur_damage_threshold"] = 5,
						["mangle_more"] = false,
						["owlweave_bear"] = false,
						["maul_rage"] = 20,
					},
				},
				[71] = {
					["settings"] = {
						["shockwave_interrupt"] = true,
						["heroic_charge"] = false,
					},
				},
				[268] = {
					["settings"] = {
						["purify_stagger_maxhp"] = 6,
						["purify_for_celestial"] = true,
						["bof_percent"] = 50,
						["ox_walker"] = true,
						["eh_percent"] = 65,
						["purify_stagger_currhp"] = 12,
					},
				},
				[64] = {
					["settings"] = {
						["manual_water_jet"] = false,
					},
				},
				[72] = {
					["settings"] = {
						["check_ww_range"] = false,
						["shockwave_interrupt"] = true,
						["heroic_charge"] = false,
					},
					["package"] = "Fury",
				},
				[102] = {
					["settings"] = {
						["starlord_cancel"] = false,
						["delay_berserking"] = false,
					},
				},
				[73] = {
					["settings"] = {
						["shield_wall_amount"] = 50,
						["rallying_cry_amount"] = 50,
						["overlap_ignore_pain"] = false,
						["last_stand_condition"] = false,
						["shockwave_interrupt"] = true,
						["shield_wall_health"] = 50,
						["rallying_cry_condition"] = false,
						["last_stand_offensively"] = false,
						["stack_shield_block"] = false,
						["stance_weaving"] = false,
						["shield_wall_condition"] = false,
						["last_stand_amount"] = 50,
						["last_stand_health"] = 50,
						["rallying_cry_health"] = 50,
						["reserve_rage"] = 35,
					},
				},
				[269] = {
					["settings"] = {
						["sef_one_charge"] = false,
						["tok_damage"] = 1,
						["check_wdp_range"] = false,
						["allow_fsk"] = false,
						["check_sck_range"] = false,
						["use_diffuse"] = false,
					},
				},
				[577] = {
					["settings"] = {
						["recommend_movement"] = true,
						["unbound_movement"] = false,
						["demon_blades_acknowledged"] = false,
					},
				},
				[581] = {
					["settings"] = {
						["infernal_charges"] = 1,
						["frailty_stacks"] = 1,
					},
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20221202,
					["spec"] = 269,
					["desc"] = "",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi.max - chi >= 3",
								["action"] = "expel_harm",
								["description"] = "Opener",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi = 2",
								["action"] = "chi_wave",
							}, -- [3]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["cycle_targets"] = 1,
							}, -- [5]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "strike_of_the_windlord",
								["description"] = "Serenity Priority",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action_name"] = "fists_of_fury",
								["action"] = "cancel_action",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & active_enemies = 3 & buff.teachings_of_the_monastery.stack = 2",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies > 3 || active_enemies > 2 & spinning_crane_kick.modifier >= 2.3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "strike_of_the_windlord",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "whirling_dragon_punch",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "active_enemies >= 3 & cooldown.fists_of_fury.remains & talent.shadowboxing_treads.enabled",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies >= 3",
								["action"] = "rushing_jade_wind",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["cycle_targets"] = 1,
							}, -- [16]
						},
						["cd_serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active",
								["action"] = "summon_white_tiger_statue",
								["description"] = "Serenity Cooldowns",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 || fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & ! talent.bonedust_brew.enabled & ( cooldown.rising_sun_kick.remains < 2 ) || fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ( cooldown.serenity.up || cooldown.serenity.remains > 15 || fight_remains < 30 & fight_remains > 10 ) || fight_remains < 10",
								["action"] = "bonedust_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || ! talent.invoke_xuen_the_white_tiger.enabled || fight_remains < 15",
								["action"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "touch_of_death",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || fight_remains < 10",
								["action"] = "touch_of_karma",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || fight_remains < 20",
								["action"] = "berserking",
							}, -- [9]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || fight_remains < 20",
								["action"] = "fireblood",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || fight_remains < 20",
								["action"] = "bag_of_tricks",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled",
								["action"] = "use_items",
							}, -- [14]
						},
						["cd_sef"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active",
								["action"] = "summon_white_tiger_statue",
								["description"] = "Storm, Earth and Fire Cooldowns",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 & ( active_enemies < 3 & chi >= 3 || active_enemies >= 3 & chi >= 2 ) || fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & ! talent.bonedust_brew.enabled & ( cooldown.rising_sun_kick.remains < 2 ) & chi >= 3",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.bonedust_brew.enabled & ( fight_remains < 30 & cooldown.bonedust_brew.remains < 4 & chi >= 4 || buff.bonedust_brew.up || ! spinning_crane_kick.max & active_enemies >= 3 & cooldown.bonedust_brew.remains <= 2 & chi >= 2 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time )",
								["action"] = "storm_earth_and_fire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.bonedust_brew.up & buff.storm_earth_and_fire.up & buff.storm_earth_and_fire.remains < 11 & spinning_crane_kick.max ) || ( ! buff.bonedust_brew.up & fight_remains < 30 & fight_remains > 10 & spinning_crane_kick.max & chi >= 4 ) || fight_remains < 10",
								["action"] = "bonedust_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 2 & ( fight_remains > 60 & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 10 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) || ( ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 13 ) & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 13 || buff.storm_earth_and_fire.up ) ) )",
								["action"] = "call_action_list",
								["list_name"] = "bdb_setup",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains < 20 || ( cooldown.storm_earth_and_fire.charges = 2 & cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12",
								["action"] = "storm_earth_and_fire",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "touch_of_death",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled",
								["action"] = "use_items",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 159 || variable.hold_xuen",
								["action"] = "touch_of_karma",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || fight_remains < 15",
								["action"] = "berserking",
							}, -- [12]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || fight_remains < 10",
								["action"] = "fireblood",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.down",
								["action"] = "bag_of_tricks",
							}, -- [16]
						},
						["st_cleave"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["description"] = "ST Priority (<3 Targets)",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "active_enemies = 1 & buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2 & talent.shadowboxing_treads.enabled",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled & active_enemies > 1 || cooldown.rising_sun_kick.remains > 1 )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 2",
								["action"] = "whirling_dragon_punch",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "( active_enemies = 1 || ! talent.shadowboxing_treads.enabled ) & cooldown.fists_of_fury.remains > 4 & talent.xuens_battlegear.enabled",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & active_enemies = 2 & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies = 2",
								["action"] = "rushing_jade_wind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & ( active_enemies > 1 || spinning_crane_kick.modifier >= 2.7 )",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [18]
						},
						["precombat"] = {
							{
								["action"] = "summon_white_tiger_statue",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi < chi.max",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.faeline_stomp.enabled",
								["action"] = "chi_burst",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & active_enemies > 3",
								["action"] = "spinning_crane_kick",
								["description"] = "AoE Priority (3+ Targets)",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & active_enemies > 3",
								["action"] = "strike_of_the_windlord",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 8",
								["action"] = "whirling_dragon_punch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & active_enemies > 5 & spinning_crane_kick.modifier >= 3.2",
								["action"] = "spinning_crane_kick",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 5",
								["action"] = "whirling_dragon_punch",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.up & ( buff.teachings_of_the_monastery.stack = 2 || active_enemies < 5 ) & talent.shadowboxing_treads.enabled",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "fists_of_fury",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies > 3",
								["action"] = "rushing_jade_wind",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "buff.teachings_of_the_monastery.up & active_enemies >= 5 & talent.shadowboxing_treads.enabled",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies >= 7 || active_enemies = 6 & spinning_crane_kick.modifier >= 2.7 || active_enemies = 5 & spinning_crane_kick.modifier >= 2.9 )",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 5 || active_enemies = 4 & spinning_crane_kick.modifier >= 2.5 || ! talent.shadowboxing_treads.enabled",
								["action"] = "spinning_crane_kick",
							}, -- [18]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "faeline_stomp",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [24]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.rising_sun_kick.remains > execute_time || buff.the_emperors_capacitor.stack > 14 & ( cooldown.serenity.remains < 5 & talent.serenity.enabled || fight_remains < 5 )",
								["action"] = "crackling_jade_lightning",
								["description"] = "Fallthru",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "faeline_stomp",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies > 2",
								["action"] = "expel_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2",
								["action"] = "chi_burst",
							}, -- [5]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.chi_energy.stack > 30 - 5 * active_enemies & buff.storm_earth_and_fire.down & ( cooldown.rising_sun_kick.remains > 2 & cooldown.fists_of_fury.remains > 2 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 3 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 4 || chi.max - chi <= 1 & energy.time_to_max < 2 ) || buff.chi_energy.stack > 10 & fight_remains < 7",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [9]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "tiger_palm",
								["enabled"] = true,
							}, -- [11]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "spear_hand_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.invoke_xuen_the_white_tiger.enabled || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains || fight_remains - cooldown.invoke_xuen_the_white_tiger.remains < 120 & ( ( talent.serenity.enabled & fight_remains > cooldown.serenity.remains & cooldown.serenity.remains > 10 ) || ( cooldown.storm_earth_and_fire.full_recharge_time < fight_remains & cooldown.storm_earth_and_fire.full_recharge_time > 15 ) || ( cooldown.storm_earth_and_fire.charges = 0 & cooldown.storm_earth_and_fire.remains < fight_remains ) )",
								["var_name"] = "hold_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "( buff.serenity.up || buff.storm_earth_and_fire.up ) & fight_remains <= 60",
								["description"] = "Potion",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Build Chi at the start of combat",
								["criteria"] = "time < 4 & chi < 5 & ! talent.serenity.enabled",
								["list_name"] = "opener",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "faeline_stomp",
								["cycle_targets"] = 1,
								["criteria"] = "combo_strike & talent.faeline_harmony.enabled & debuff.fae_exposure_damage.remains < 1",
								["description"] = "Prioritize Faeline Stomp if playing with Faeline Harmony",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
								["criteria"] = "! buff.serenity.up & buff.teachings_of_the_monastery.stack < 3 & combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up ) & ( ! talent.invoke_xuen_the_white_tiger.enabled & ! talent.serenity.enabled || ( ! talent.skyreach.enabled || time > 5 || pet.xuen_the_white_tiger.active ) )",
								["description"] = "TP if not overcapping Chi or TotM",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.faeline_stomp.enabled & cooldown.faeline_stomp.remains & ( chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2 & active_enemies >= 2 )",
								["action"] = "chi_burst",
								["description"] = "Use Chi Burst to reset Faeline Stomp",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Cooldowns",
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.serenity.enabled",
								["action"] = "call_action_list",
								["list_name"] = "cd_serenity",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Serenity / Default Priority",
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st_cleave",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "fallthru",
							}, -- [13]
						},
						["bdb_setup"] = {
							{
								["enabled"] = true,
								["criteria"] = "spinning_crane_kick.max & chi >= 4",
								["action"] = "bonedust_brew",
								["description"] = "Bonedust Brew Setup",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ! talent.whirling_dragon_punch.enabled",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "combo_strike & chi >= 5",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "combo_strike & active_enemies >= 2",
								["cycle_targets"] = 1,
							}, -- [5]
						},
					},
					["version"] = 20221202,
					["warnings"] = "The import for 'serenity' required some automated changes.\nLine 10: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 16: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'cd_serenity' required some automated changes.\nLine 2: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 5: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 14: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 14: Converted operations in 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled' to 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled'.\n\nThe import for 'cd_sef' required some automated changes.\nLine 2: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 6: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 9: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 9: Converted operations in 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled' to 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled'.\n\nThe import for 'default' required some automated changes.\nLine 2: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 4: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 5: Converted 'talent.faeline_harmony' to 'talent.faeline_harmony.enabled' (1x).\nLine 6: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 6: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 6: Converted 'talent.skyreach' to 'talent.skyreach.enabled' (1x).\nLine 7: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\nLine 8: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 9: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 5: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 7: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 9: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 15: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 18: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 1: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'st_cleave' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 3: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 5: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 8: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\n\nThe import for 'bdb_setup' required some automated changes.\nLine 2: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\n\nImported 10 action lists.\n",
					["profile"] = "actions.precombat+=/summon_white_tiger_statue\nactions.precombat+=/expel_harm,if=chi<chi.max\nactions.precombat+=/chi_burst,if=!talent.faeline_stomp\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/variable,name=hold_xuen,op=set,value=!talent.invoke_xuen_the_white_tiger||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains||fight_remains-cooldown.invoke_xuen_the_white_tiger.remains<120&((talent.serenity&fight_remains>cooldown.serenity.remains&cooldown.serenity.remains>10)||(cooldown.storm_earth_and_fire.full_recharge_time<fight_remains&cooldown.storm_earth_and_fire.full_recharge_time>15)||(cooldown.storm_earth_and_fire.charges=0&cooldown.storm_earth_and_fire.remains<fight_remains))\n# Potion\nactions+=/potion,if=(buff.serenity.up||buff.storm_earth_and_fire.up)&fight_remains<=60\n# Build Chi at the start of combat\nactions+=/call_action_list,name=opener,if=time<4&chi<5&!talent.serenity\n# Prioritize Faeline Stomp if playing with Faeline Harmony\nactions+=/faeline_stomp,cycle_targets=1,if=combo_strike&talent.faeline_harmony&debuff.fae_exposure_damage.remains<1\n# TP if not overcapping Chi or TotM\nactions+=/tiger_palm,cycle_targets=1,if=!buff.serenity.up&buff.teachings_of_the_monastery.stack<3&combo_strike&chi.max-chi>=(2+buff.power_strikes.up)&(!talent.invoke_xuen_the_white_tiger&!talent.serenity||(!talent.skyreach||time>5||pet.xuen_the_white_tiger.active))\n# Use Chi Burst to reset Faeline Stomp\nactions+=/chi_burst,if=talent.faeline_stomp&cooldown.faeline_stomp.remains&(chi.max-chi>=1&active_enemies=1||chi.max-chi>=2&active_enemies>=2)\n# Cooldowns\nactions+=/call_action_list,name=cd_sef,if=!talent.serenity\nactions+=/call_action_list,name=cd_serenity,if=talent.serenity\n# Serenity / Default Priority\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\nactions+=/call_action_list,name=st_cleave,if=active_enemies<3\nactions+=/call_action_list,name=fallthru\n\n# AoE Priority (3+ Targets)\nactions.aoe=spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&active_enemies>3\nactions.aoe+=/strike_of_the_windlord,if=talent.thunderfist&active_enemies>3\nactions.aoe+=/whirling_dragon_punch,if=active_enemies>8\nactions.aoe+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&active_enemies>5&spinning_crane_kick.modifier>=3.2\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.aoe+=/strike_of_the_windlord,if=talent.thunderfist\nactions.aoe+=/whirling_dragon_punch,if=active_enemies>5\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(buff.teachings_of_the_monastery.stack=2||active_enemies<5)&talent.shadowboxing_treads\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike\nactions.aoe+=/fists_of_fury,if=active_enemies>3\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies>3\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&active_enemies>=5&talent.shadowboxing_treads\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(active_enemies>=7||active_enemies=6&spinning_crane_kick.modifier>=2.7||active_enemies=5&spinning_crane_kick.modifier>=2.9)\nactions.aoe+=/strike_of_the_windlord\nactions.aoe+=/spinning_crane_kick,if=combo_strike&active_enemies>=5||active_enemies=4&spinning_crane_kick.modifier>=2.5||!talent.shadowboxing_treads\nactions.aoe+=/fists_of_fury\nactions.aoe+=/faeline_stomp,if=combo_strike\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.aoe+=/rising_sun_kick,cycle_targets=1\nactions.aoe+=/whirling_dragon_punch\n\n# Bonedust Brew Setup\nactions.bdb_setup=bonedust_brew,if=spinning_crane_kick.max&chi>=4\nactions.bdb_setup+=/blackout_kick,cycle_targets=1,if=combo_strike&!talent.whirling_dragon_punch\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&chi>=5\nactions.bdb_setup+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&active_enemies>=2\n\n# Storm, Earth and Fire Cooldowns\nactions.cd_sef=summon_white_tiger_statue,if=pet.xuen_the_white_tiger.active\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5&(active_enemies<3&chi>=3||active_enemies>=3&chi>=2)||fight_remains<25\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&!talent.bonedust_brew&(cooldown.rising_sun_kick.remains<2)&chi>=3\nactions.cd_sef+=/storm_earth_and_fire,if=talent.bonedust_brew&(fight_remains<30&cooldown.bonedust_brew.remains<4&chi>=4||buff.bonedust_brew.up||!spinning_crane_kick.max&active_enemies>=3&cooldown.bonedust_brew.remains<=2&chi>=2)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)\nactions.cd_sef+=/bonedust_brew,if=(!buff.bonedust_brew.up&buff.storm_earth_and_fire.up&buff.storm_earth_and_fire.remains<11&spinning_crane_kick.max)||(!buff.bonedust_brew.up&fight_remains<30&fight_remains>10&spinning_crane_kick.max&chi>=4)||fight_remains<10\nactions.cd_sef+=/call_action_list,name=bdb_setup,if=!buff.bonedust_brew.up&talent.bonedust_brew&cooldown.bonedust_brew.remains<=2&(fight_remains>60&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>10)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)||((pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>13)&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>13||buff.storm_earth_and_fire.up)))\nactions.cd_sef+=/storm_earth_and_fire,if=fight_remains<20||(cooldown.storm_earth_and_fire.charges=2&cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12\nactions.cd_sef+=/touch_of_death,cycle_targets=1,if=combo_strike\nactions.cd_sef+=/use_items,if=cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger\nactions.cd_sef+=/touch_of_karma,if=fight_remains>159||variable.hold_xuen\nactions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||fight_remains<20\nactions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||fight_remains<15\nactions.cd_sef+=/lights_judgment\nactions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||fight_remains<10\nactions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||fight_remains<20\nactions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\n\n# Serenity Cooldowns\nactions.cd_serenity=summon_white_tiger_statue,if=pet.xuen_the_white_tiger.active\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5||fight_remains<25\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&!talent.bonedust_brew&(cooldown.rising_sun_kick.remains<2)||fight_remains<25\nactions.cd_serenity+=/bonedust_brew,if=!buff.bonedust_brew.up&(cooldown.serenity.up||cooldown.serenity.remains>15||fight_remains<30&fight_remains>10)||fight_remains<10\nactions.cd_serenity+=/serenity,if=pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||!talent.invoke_xuen_the_white_tiger||fight_remains<15\nactions.cd_serenity+=/touch_of_death,cycle_targets=1,if=combo_strike\nactions.cd_serenity+=/touch_of_karma,if=fight_remains>90||fight_remains<10\nactions.cd_serenity+=/blood_fury,if=buff.serenity.up||fight_remains<20\nactions.cd_serenity+=/berserking,if=buff.serenity.up||fight_remains<20\nactions.cd_serenity+=/lights_judgment\nactions.cd_serenity+=/fireblood,if=buff.serenity.up||fight_remains<20\nactions.cd_serenity+=/ancestral_call,if=buff.serenity.up||fight_remains<20\nactions.cd_serenity+=/bag_of_tricks,if=buff.serenity.up||fight_remains<20\nactions.cd_serenity+=/use_items,if=cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger\n\n# Fallthru\nactions.fallthru=crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time||buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity||fight_remains<5)\nactions.fallthru+=/faeline_stomp,if=combo_strike\nactions.fallthru+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1&active_enemies>2\nactions.fallthru+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2\nactions.fallthru+=/chi_wave\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1\nactions.fallthru+=/spinning_crane_kick,if=combo_strike&buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4||chi.max-chi<=1&energy.time_to_max<2)||buff.chi_energy.stack>10&fight_remains<7\nactions.fallthru+=/arcane_torrent,if=chi.max-chi>=1\nactions.fallthru+=/flying_serpent_kick,interrupt=1\nactions.fallthru+=/tiger_palm\n\n# Opener\nactions.opener=expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\nactions.opener+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.opener+=/chi_wave,if=chi.max-chi=2\nactions.opener+=/expel_harm\nactions.opener+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=(2+buff.power_strikes.up)\n\n# Serenity Priority\nactions.serenity=strike_of_the_windlord,if=active_enemies<3\nactions.serenity+=/fists_of_fury,if=buff.serenity.remains<1\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity+=/cancel_action,name=fists_of_fury\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies=3&buff.teachings_of_the_monastery.stack=2\nactions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>3||active_enemies>2&spinning_crane_kick.modifier>=2.3)\nactions.serenity+=/strike_of_the_windlord,if=active_enemies>=3\nactions.serenity+=/spinning_crane_kick,if=combo_strike&active_enemies>1\nactions.serenity+=/whirling_dragon_punch,if=active_enemies>1\nactions.serenity+=/blackout_kick,cycle_targets=1,if=active_enemies>=3&cooldown.fists_of_fury.remains&talent.shadowboxing_treads\nactions.serenity+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies>=3\nactions.serenity+=/rising_sun_kick,cycle_targets=1\nactions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity+=/whirling_dragon_punch\nactions.serenity+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# ST Priority (<3 Targets)\nactions.st_cleave=blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.st_cleave+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.st_cleave+=/strike_of_the_windlord,if=talent.thunderfist\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=active_enemies=1&buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2&talent.shadowboxing_treads\nactions.st_cleave+=/strike_of_the_windlord\nactions.st_cleave+=/fists_of_fury\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads&active_enemies>1||cooldown.rising_sun_kick.remains>1)\nactions.st_cleave+=/whirling_dragon_punch,if=active_enemies=2\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=(active_enemies=1||!talent.shadowboxing_treads)&cooldown.fists_of_fury.remains>4&talent.xuens_battlegear\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies=2&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies=2\nactions.st_cleave+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&(active_enemies>1||spinning_crane_kick.modifier>=2.7)\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1\nactions.st_cleave+=/whirling_dragon_punch\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike",
					["author"] = "SimC",
				},
				["Vengeance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221219.3,
					["spec"] = 581,
					["desc"] = "",
					["profile"] = "actions+=/disrupt\nactions+=/consume_magic\nactions+=/infernal_strike,if=time_to_max_charges<gcd.max&target.distance>10\nactions+=/demon_spikes,if=tanking&!buff.demon_spikes.up\nactions+=/fiery_brand,if=!talent.fiery_demise.enabled&!dot.fiery_brand.ticking\nactions+=/bulk_extraction\nactions+=/potion\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/call_action_list,name=the_hunt_ramp,strict=1,if=variable.the_hunt_ramp_in_progress\nactions+=/call_action_list,name=elysian_decree_ramp,strict=1,if=variable.elysian_decree_ramp_in_progress\nactions+=/call_action_list,name=soul_carver_without_fiery_demise_ramp,strict=1,if=variable.soul_carver_ramp_in_progress\nactions+=/call_action_list,name=fiery_demise_window_with_soul_carver,strict=1,if=variable.fiery_demise_with_soul_carver_in_progress\nactions+=/call_action_list,name=fiery_demise_window_without_soul_carver,strict=1,if=variable.fiery_demise_without_soul_carver_in_progress\nactions+=/metamorphosis,if=!buff.metamorphosis.up&!dot.fiery_brand.ticking\nactions+=/fel_devastation,if=!talent.down_in_flames.enabled\nactions+=/spirit_bomb,if=((buff.metamorphosis.up&talent.fracture.enabled&soul_fragments>=3)||soul_fragments>=4&active_enemies>1)\nactions+=/soul_cleave,if=(talent.spirit_bomb.enabled&soul_fragments<=1&active_enemies>1)||(active_enemies<2&((talent.fracture.enabled&fury>=55)||(!talent.fracture.enabled&fury>=70)||(buff.metamorphosis.up&((talent.fracture.enabled&fury>=35)||(!talent.fracture.enabled&fury>=50)))))||(!talent.spirit_bomb.enabled)&((talent.fracture.enabled&fury>=55)||(!talent.fracture.enabled&fury>=70)||(buff.metamorphosis.up&((talent.fracture.enabled&fury>=35)||(!talent.fracture.enabled&fury>=50))))\nactions+=/immolation_aura,if=(talent.fiery_demise.enabled&fury.deficit>=10&(cooldown.soul_carver.remains>15))||(!talent.fiery_demise.enabled&fury.deficit>=10)\nactions+=/felblade,if=fury.deficit>=40\nactions+=/fracture,if=(talent.spirit_bomb.enabled&(soul_fragments<=3&active_enemies>1||active_enemies<2&fury.deficit>=30))||(!talent.spirit_bomb.enabled&((buff.metamorphosis.up&fury.deficit>=45)||(buff.metamorphosis.down&fury.deficit>=30)))\nactions+=/sigil_of_flame,if=fury.deficit>=30\nactions+=/shear\nactions+=/throw_glaive\n\nactions.the_hunt_ramp+=/fracture,if=fury.deficit>=30&!frailty_threshold_met\nactions.the_hunt_ramp+=/sigil_of_flame,if=fury.deficit>=30\nactions.the_hunt_ramp+=/shear,if=fury.deficit<=90\nactions.the_hunt_ramp+=/spirit_bomb,if=soul_fragments>=4&active_enemies>1\nactions.the_hunt_ramp+=/soul_cleave,if=(soul_fragments<=1&active_enemies>1)||(active_enemies<2)||frailty_threshold_met\nactions.the_hunt_ramp+=/the_hunt\n\nactions.elysian_decree_ramp+=/fracture,if=fury.deficit>=30\nactions.elysian_decree_ramp+=/sigil_of_flame,if=fury.deficit>=30\nactions.elysian_decree_ramp+=/shear,if=fury.deficit<=90&frailty_threshold_met\nactions.elysian_decree_ramp+=/spirit_bomb,if=soul_fragments>=4&active_enemies>1\nactions.elysian_decree_ramp+=/soul_cleave,if=(soul_fragments<=1&active_enemies>1)||(active_enemies<2)||frailty_threshold_met\nactions.elysian_decree_ramp+=/elysian_decree\n\nactions.soul_carver_without_fiery_demise_ramp+=/fracture,if=fury.deficit>=30\nactions.soul_carver_without_fiery_demise_ramp+=/sigil_of_flame,if=fury.deficit>=30\nactions.soul_carver_without_fiery_demise_ramp+=/shear,if=fury.deficit<=90&frailty_threshold_met\nactions.soul_carver_without_fiery_demise_ramp+=/spirit_bomb,if=soul_fragments>=4&active_enemies>1\nactions.soul_carver_without_fiery_demise_ramp+=/soul_cleave,if=(soul_fragments<=1&active_enemies>1)||(active_enemies<2)||frailty_threshold_met\nactions.soul_carver_without_fiery_demise_ramp+=/soul_carver\n\nactions.fiery_demise_window_with_soul_carver+=/fracture,if=fury.deficit>=30&!dot.fiery_brand.ticking\nactions.fiery_demise_window_with_soul_carver+=/fiery_brand,if=!dot.fiery_brand.ticking&fury>=30\nactions.fiery_demise_window_with_soul_carver+=/fel_devastation,if=dot.fiery_brand.remains<=3\nactions.fiery_demise_window_with_soul_carver+=/immolation_aura,if=dot.fiery_brand.ticking\nactions.fiery_demise_window_with_soul_carver+=/spirit_bomb,if=soul_fragments>=4&dot.fiery_brand.remains>=4\nactions.fiery_demise_window_with_soul_carver+=/soul_carver,if=soul_fragments<=3\nactions.fiery_demise_window_with_soul_carver+=/fracture,if=soul_fragments<=3&dot.fiery_brand.remains>=5||dot.fiery_brand.remains<=5&fury<50\nactions.fiery_demise_window_with_soul_carver+=/sigil_of_flame,if=dot.fiery_brand.remains<=3&fury<50\nactions.fiery_demise_window_with_soul_carver+=/soul_carver,if=fury.deficit<30\nactions.fiery_demise_window_with_soul_carver+=/throw_glaive\n\nactions.fiery_demise_window_without_soul_carver+=/fracture,if=fury.deficit>=30&!dot.fiery_brand.ticking\nactions.fiery_demise_window_without_soul_carver+=/fiery_brand,if=!dot.fiery_brand.ticking&fury>=30\nactions.fiery_demise_window_without_soul_carver+=/immolation_aura,if=dot.fiery_brand.ticking\nactions.fiery_demise_window_without_soul_carver+=/spirit_bomb,if=soul_fragments>=4&dot.fiery_brand.remains>=4\nactions.fiery_demise_window_without_soul_carver+=/fracture,if=soul_fragments<=3&dot.fiery_brand.remains>=5||dot.fiery_brand.remains<=5&fury<50\nactions.fiery_demise_window_without_soul_carver+=/fel_devastation,if=dot.fiery_brand.remains<=3\nactions.fiery_demise_window_without_soul_carver+=/sigil_of_flame,if=dot.fiery_brand.remains<=3&fury<50\nactions.fiery_demise_window_without_soul_carver+=/soul_carver,if=fury.deficit<30",
					["version"] = 20221219.3,
					["warnings"] = "Imported 7 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time_to_max_charges < gcd.max & target.distance > 10",
								["action"] = "infernal_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & ! buff.demon_spikes.up",
								["action"] = "demon_spikes",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled & ! dot.fiery_brand.ticking",
								["action"] = "fiery_brand",
							}, -- [5]
							{
								["action"] = "bulk_extraction",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.the_hunt_ramp_in_progress",
								["list_name"] = "the_hunt_ramp",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.elysian_decree_ramp_in_progress",
								["list_name"] = "elysian_decree_ramp",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.soul_carver_ramp_in_progress",
								["list_name"] = "soul_carver_without_fiery_demise_ramp",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.fiery_demise_with_soul_carver_in_progress",
								["list_name"] = "fiery_demise_window_with_soul_carver",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.fiery_demise_without_soul_carver_in_progress",
								["list_name"] = "fiery_demise_window_without_soul_carver",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! buff.metamorphosis.up & ! dot.fiery_brand.ticking",
								["action"] = "metamorphosis",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.down_in_flames.enabled",
								["action"] = "fel_devastation",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.metamorphosis.up & talent.fracture.enabled & soul_fragments >= 3 ) || soul_fragments >= 4 & active_enemies > 1 )",
								["action"] = "spirit_bomb",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( talent.spirit_bomb.enabled & soul_fragments <= 1 & active_enemies > 1 ) || ( active_enemies < 2 & ( ( talent.fracture.enabled & fury >= 55 ) || ( ! talent.fracture.enabled & fury >= 70 ) || ( buff.metamorphosis.up & ( ( talent.fracture.enabled & fury >= 35 ) || ( ! talent.fracture.enabled & fury >= 50 ) ) ) ) ) || ( ! talent.spirit_bomb.enabled ) & ( ( talent.fracture.enabled & fury >= 55 ) || ( ! talent.fracture.enabled & fury >= 70 ) || ( buff.metamorphosis.up & ( ( talent.fracture.enabled & fury >= 35 ) || ( ! talent.fracture.enabled & fury >= 50 ) ) ) )",
								["action"] = "soul_cleave",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( talent.fiery_demise.enabled & fury.deficit >= 10 & ( cooldown.soul_carver.remains > 15 ) ) || ( ! talent.fiery_demise.enabled & fury.deficit >= 10 )",
								["action"] = "immolation_aura",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( talent.spirit_bomb.enabled & ( soul_fragments <= 3 & active_enemies > 1 || active_enemies < 2 & fury.deficit >= 30 ) ) || ( ! talent.spirit_bomb.enabled & ( ( buff.metamorphosis.up & fury.deficit >= 45 ) || ( buff.metamorphosis.down & fury.deficit >= 30 ) ) )",
								["action"] = "fracture",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [22]
							{
								["action"] = "shear",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [24]
						},
						["elysian_decree_ramp"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "fracture",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit <= 90 & frailty_threshold_met",
								["action"] = "shear",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4 & active_enemies > 1",
								["action"] = "spirit_bomb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( soul_fragments <= 1 & active_enemies > 1 ) || ( active_enemies < 2 ) || frailty_threshold_met",
								["action"] = "soul_cleave",
							}, -- [5]
							{
								["action"] = "elysian_decree",
								["enabled"] = true,
							}, -- [6]
						},
						["fiery_demise_window_with_soul_carver"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30 & ! dot.fiery_brand.ticking",
								["action"] = "fracture",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.fiery_brand.ticking & fury >= 30",
								["action"] = "fiery_brand",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.remains <= 3",
								["action"] = "fel_devastation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "immolation_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4 & dot.fiery_brand.remains >= 4",
								["action"] = "spirit_bomb",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments <= 3",
								["action"] = "soul_carver",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments <= 3 & dot.fiery_brand.remains >= 5 || dot.fiery_brand.remains <= 5 & fury < 50",
								["action"] = "fracture",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.remains <= 3 & fury < 50",
								["action"] = "sigil_of_flame",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit < 30",
								["action"] = "soul_carver",
							}, -- [9]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [10]
						},
						["fiery_demise_window_without_soul_carver"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30 & ! dot.fiery_brand.ticking",
								["action"] = "fracture",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.fiery_brand.ticking & fury >= 30",
								["action"] = "fiery_brand",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "immolation_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4 & dot.fiery_brand.remains >= 4",
								["action"] = "spirit_bomb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments <= 3 & dot.fiery_brand.remains >= 5 || dot.fiery_brand.remains <= 5 & fury < 50",
								["action"] = "fracture",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.remains <= 3",
								["action"] = "fel_devastation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.remains <= 3 & fury < 50",
								["action"] = "sigil_of_flame",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit < 30",
								["action"] = "soul_carver",
							}, -- [8]
						},
						["soul_carver_without_fiery_demise_ramp"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "fracture",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit <= 90 & frailty_threshold_met",
								["action"] = "shear",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4 & active_enemies > 1",
								["action"] = "spirit_bomb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( soul_fragments <= 1 & active_enemies > 1 ) || ( active_enemies < 2 ) || frailty_threshold_met",
								["action"] = "soul_cleave",
							}, -- [5]
							{
								["action"] = "soul_carver",
								["enabled"] = true,
							}, -- [6]
						},
						["the_hunt_ramp"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30 & ! frailty_threshold_met",
								["action"] = "fracture",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit <= 90",
								["action"] = "shear",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4 & active_enemies > 1",
								["action"] = "spirit_bomb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( soul_fragments <= 1 & active_enemies > 1 ) || ( active_enemies < 2 ) || frailty_threshold_met",
								["action"] = "soul_cleave",
							}, -- [5]
							{
								["action"] = "the_hunt",
								["enabled"] = true,
							}, -- [6]
						},
					},
				},
				["Fury"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221218,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 ) & ( talent.dancing_blades.enabled & buff.dancing_blades.remains < 5 || ! talent.dancing_blades.enabled )",
								["action"] = "odyns_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up || buff.enrage.remains < gcd.max || ( rage > 110 & talent.overwhelming_rage.enabled ) || ( rage > 80 & ! talent.overwhelming_rage.enabled )",
								["action"] = "rampage",
							}, -- [7]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.annihilator.enabled & buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1",
								["action"] = "raging_blow",
							}, -- [17]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [19]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "storm_bolt",
								["enabled"] = true,
							}, -- [25]
						},
						["multi_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || active_enemies > 1 || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & talent.titanic_rage.enabled & ( ! buff.meat_cleaver.up || buff.avatar.up || buff.recklessness.up )",
								["action"] = "odyns_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up || buff.enrage.remains < gcd.max || ( rage > 110 & talent.overwhelming_rage.enabled ) || ( rage > 80 & ! talent.overwhelming_rage.enabled )",
								["action"] = "rampage",
							}, -- [10]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.annihilator.enabled & buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "charges >= 1",
								["action"] = "raging_blow",
							}, -- [20]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [22]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [26]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 5",
								["action"] = "charge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.movement.distance > 25 & raid_event.movement.in > 45 )",
								["action"] = "heroic_leap",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains < 3",
								["action"] = "ravager",
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "berserking",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down",
								["action"] = "lights_judgment",
							}, -- [10]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & buff.enrage.up",
								["action"] = "bag_of_tricks",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.titans_torment.enabled & buff.enrage.up & raid_event.adds.in > 15 || ! talent.titans_torment.enabled & ( buff.recklessness.up || boss & fight_remains < 20 )",
								["action"] = "avatar",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ( talent.annihilator.enabled & cooldown.avatar.remains < 1 || cooldown.avatar.remains > 40 || ! talent.avatar.enabled || boss & fight_remains < 12 )",
								["action"] = "recklessness",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ! talent.annihilator.enabled || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( buff.recklessness.up || buff.avatar.up || boss & fight_remains < 20 || active_enemies > 1 ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2",
								["list_name"] = "multi_target",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single_target",
							}, -- [19]
						},
						["precombat"] = {
							{
								["toggle"] = "on",
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["toggle"] = "on",
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [2]
						},
					},
					["version"] = 20221218,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 6: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 7: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 7: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 9: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 9: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 10: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 11: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 11: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 12: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 13: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 14: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 15: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 16: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 19: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'multi_target' required some automated changes.\nLine 2: Converted 'talent.titanic_rage' to 'talent.titanic_rage.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 7: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 10: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 10: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 12: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 12: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 13: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 14: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 14: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 15: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 16: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 17: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 18: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 19: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 22: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 14: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 14: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 15: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 15: Converted 'talent.avatar' to 'talent.avatar.enabled' (1x).\nLine 16: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nImported 4 action lists.\n",
					["profile"] = "actions.precombat+=/berserker_stance,toggle=on\nactions.precombat+=/battle_stance,toggle=on\n+actions.precombat+=/use_item,name=algethar_puzzle_box\n\nactions+=/charge,if=time<=0.5||movement.distance>5\nactions+=/heroic_leap,if=(raid_event.movement.distance>25&raid_event.movement.in>45)\nactions+=/pummel\nactions+=/potion\nactions+=/conquerors_banner\nactions+=/use_items\nactions+=/ravager,if=cooldown.avatar.remains<3\nactions+=/blood_fury\nactions+=/berserking,if=buff.recklessness.up\nactions+=/lights_judgment,if=buff.recklessness.down\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks,if=buff.recklessness.down&buff.enrage.up\nactions+=/avatar,if=talent.titans_torment&buff.enrage.up&raid_event.adds.in>15||!talent.titans_torment&(buff.recklessness.up||boss&fight_remains<20)\nactions+=/recklessness,if=!raid_event.adds.exists&(talent.annihilator&cooldown.avatar.remains<1||cooldown.avatar.remains>40||!talent.avatar||boss&fight_remains<12)\nactions+=/recklessness,if=!raid_event.adds.exists&!talent.annihilator||boss&fight_remains<12\nactions+=/spear_of_bastion,if=buff.enrage.up&(buff.recklessness.up||buff.avatar.up||boss&fight_remains<20||active_enemies>1)&raid_event.adds.in>15\nactions+=/call_action_list,name=multi_target,strict=1,if=active_enemies>2\nactions+=/call_action_list,name=single_target\n\nactions.multi_target+=/recklessness,if=raid_event.adds.in>15||active_enemies>1||boss&fight_remains<12\nactions.multi_target+=/odyns_fury,if=active_enemies>1&talent.titanic_rage&(!buff.meat_cleaver.up||buff.avatar.up||buff.recklessness.up)\nactions.multi_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.multi_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.multi_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.multi_target+=/odyns_fury,if=active_enemies>1&buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.multi_target+=/execute,if=buff.enrage.up\nactions.multi_target+=/odyns_fury,if=buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/rampage,if=buff.recklessness.up||buff.enrage.remains<gcd||(rage>110&talent.overwhelming_rage)||(rage>80&!talent.overwhelming_rage)\nactions.multi_target+=/execute\nactions.multi_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.multi_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.multi_target+=/onslaught,if=!talent.annihilator&buff.enrage.up||talent.tenderize\nactions.multi_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.multi_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.multi_target+=/raging_blow,if=charges>=1\nactions.multi_target+=/rampage\nactions.multi_target+=/slam,if=talent.annihilator\nactions.multi_target+=/bloodbath\nactions.multi_target+=/raging_blow\nactions.multi_target+=/crushing_blow\nactions.multi_target+=/whirlwind\n\nactions.single_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.single_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.single_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.single_target+=/odyns_fury,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)&(talent.dancing_blades&buff.dancing_blades.remains<5||!talent.dancing_blades)\nactions.single_target+=/execute,if=buff.enrage.up\nactions.single_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.single_target+=/rampage,if=buff.recklessness.up||buff.enrage.remains<gcd||(rage>110&talent.overwhelming_rage)||(rage>80&!talent.overwhelming_rage)\nactions.single_target+=/execute\nactions.single_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.single_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.single_target+=/onslaught,if=!talent.annihilator&buff.enrage.up||talent.tenderize\nactions.single_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.single_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.single_target+=/raging_blow,if=charges>1\nactions.single_target+=/rampage\nactions.single_target+=/slam,if=talent.annihilator\nactions.single_target+=/bloodbath\nactions.single_target+=/raging_blow\nactions.single_target+=/crushing_blow\nactions.single_target+=/whirlwind\nactions.single_target+=/wrecking_throw\nactions.single_target+=/storm_bolt",
					["spec"] = 72,
				},
				["Feral"] = {
					["builtIn"] = true,
					["date"] = 20221213,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || 1.4 * persistent_multiplier > dot.rake.pmultiplier ) & buff.bt_rake.down",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_moonfire.down",
								["action"] = "lunar_inspiration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_thrash.down",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 & buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_rake.down & combo_points > 4",
								["action"] = "rake",
							}, -- [9]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath > 2",
								["action"] = "primal_wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & spell_targets.primal_wrath > 1",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die >= settings.rip_duration",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["max_energy"] = 1,
								["criteria"] = "( active_dot.rip > 0 || target.time_to_die < settings.rip_duration ) & ( ! buff.bs_inc.up || buff.bs_inc.up & ! talent.soul_of_the_forest.enabled )",
								["action"] = "ferocious_bite",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( active_dot.rip > 0 || target.time_to_die < settings.rip_duration ) & ( buff.bs_inc.up & talent.soul_of_the_forest.enabled )",
								["action"] = "ferocious_bite",
							}, -- [5]
						},
						["clearcasting"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > 5 & talent.moment_of_clarity.enabled",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [4]
						},
						["builder"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.clearcasting.react",
								["list_name"] = "clearcasting",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & dot.rake.duration > 6 )",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "brutal_slash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [6]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [7]
						},
						["owlweaving"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [1]
						},
						["default"] = {
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.bloodtalons.enabled & buff.bloodtalons.down",
								["var_name"] = "need_bt",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 2 || combo_points = 2 & buff.bs_inc.up",
								["action"] = "feral_frenzy",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.swipe_cat > 1 & talent.primal_wrath.enabled",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up",
								["action"] = "ferocious_bite",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points = 5",
								["list_name"] = "finisher",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.need_bt & ! buff.bs_inc.up",
								["list_name"] = "bloodtalons",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5 & buff.bs_inc.up",
								["list_name"] = "berserk_builders",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5",
								["list_name"] = "builder",
							}, -- [17]
						},
						["berserk_builders"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [5]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "AoE",
								["criteria"] = "combo_points = 5",
								["action"] = "primal_wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up & buff.sabertooth.down",
								["action"] = "ferocious_bite",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "variable.need_bt & active_bt_triggers >= 1",
								["list_name"] = "bloodtalons",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "At this target count BRS also crushes everything except full thrashes",
								["action"] = "brutal_slash",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["description"] = "This means that a full rake (5.5+ ticks) is stronger up to 10ish targets",
								["criteria"] = "refreshable || active_dot.rake < cycle_enemies",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["description"] = "Full Lis beat Swipe up til around 3-ish targets depending on haste",
								["criteria"] = "refreshable & cycle_enemies - active_dot.lunar_inspiration > 2",
							}, -- [7]
							{
								["action"] = "swipe_cat",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "If we have BrS and nothing better to cast, check if Thrash DD beats Shred",
								["criteria"] = "action.shred.damage > action.thrash_cat.damage",
								["action"] = "shred",
							}, -- [9]
							{
								["action"] = "thrash_cat",
								["enabled"] = true,
							}, -- [10]
						},
						["cooldown"] = {
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & combo_points < 3 || boss & fight_remains < 5",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & buff.bs_inc.down & combo_points < 4 & buff.sudden_ambush.down & dot.rake.pmultiplier < 1.6 & energy > 40 & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2 & target.time_to_die > 5",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || boss & fight_remains < cooldown.bs_inc.remains || boss & fight_remains < 35",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit > 40",
								["name"] = "manic_grieftorch",
								["action"] = "manic_grieftorch",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.down",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20221213,
					["warnings"] = "Imported 10 action lists.\n",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/prowl\nactions+=/skull_bash\nactions+=/soothe\nactions+=/prowl\nactions+=/tigers_fury\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/call_action_list,name=cooldown\nactions+=/adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\nactions+=/feral_frenzy,if=combo_points<2||combo_points=2&buff.bs_inc.up\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.swipe_cat>1&talent.primal_wrath.enabled\nactions+=/ferocious_bite,if=buff.apex_predators_craving.up\nactions+=/call_action_list,name=finisher,strict=1,if=combo_points=5\nactions+=/call_action_list,name=bloodtalons,if=variable.need_bt&!buff.bs_inc.up\nactions+=/call_action_list,name=berserk_builders,strict=1,if=combo_points<5&buff.bs_inc.up\nactions+=/call_action_list,name=builder,strict=1,if=combo_points<5\n\n# AoE\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/primal_wrath,if=combo_points=5\nactions.aoe+=/ferocious_bite,if=buff.apex_predators_craving.up&buff.sabertooth.down\nactions.aoe+=/run_action_list,name=bloodtalons,if=variable.need_bt&active_bt_triggers>=1\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/thrash_cat,cycle_targets=1,if=refreshable\n# At this target count BRS also crushes everything except full thrashes\nactions.aoe+=/brutal_slash\n## actions.aoe+=/pool_resource,for_next=1\n## TODO: actions.aoe+=/rake,cycle_targets=1,if=((dot.rake.ticks_gained_on_refresh.pmult*(1+talent.doubleclawed_rake.enabled))>(spell_targets.swipe_cat*0.216+3.32))\n# This means that a full rake (5.5+ ticks) is stronger up to 10ish targets\nactions.aoe+=/rake,cycle_targets=1,if=refreshable||active_dot.rake<cycle_enemies\n## TODO: actions.aoe+=/lunar_inspiration,cycle_targets=1,if=max((ticks_gained_on_refresh+1)-(spell_targets.swipe_cat*2.492))\n# Full Lis beat Swipe up til around 3-ish targets depending on haste\nactions.aoe+=/lunar_inspiration,cycle_targets=1,if=refreshable&cycle_enemies-active_dot.lunar_inspiration>2\nactions.aoe+=/swipe_cat\n# If we have BrS and nothing better to cast, check if Thrash DD beats Shred\nactions.aoe+=/shred,if=action.shred.damage>action.thrash_cat.damage\nactions.aoe+=/thrash_cat\n\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||1.4*persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/lunar_inspiration,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down\nactions.bloodtalons+=/swipe_cat,if=spell_targets.swipe_cat>1&buff.bt_swipe.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\nactions.bloodtalons+=/rake,if=buff.bt_rake.down&combo_points>4\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/shred\n\nactions.builder+=/run_action_list,name=clearcasting,if=buff.clearcasting.react\nactions.builder+=/rake,cycle_targets=1,if=refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.duration>6)\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\n## actions.builder+=/pool_resource,for_next=1\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable\nactions.builder+=/brutal_slash\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.builder+=/shred\n\nactions.clearcasting+=/thrash_cat,if=refreshable\nactions.clearcasting+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.clearcasting+=/brutal_slash,if=spell_targets.brutal_slash>5&talent.moment_of_clarity.enabled\nactions.clearcasting+=/shred\n\nactions.cooldown+=/berserk\nactions.cooldown+=/incarnation\nactions.cooldown+=/convoke_the_spirits,if=buff.tigers_fury.up&combo_points<3||boss&fight_remains<5\nactions.cooldown+=/berserking\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&buff.sudden_ambush.down&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<cooldown.bs_inc.remains||boss&fight_remains<35\nactions.cooldown+=/use_item,name=manic_grieftorch,if=energy.deficit>40\nactions.cooldown+=/use_items\n\nactions.finisher+=/primal_wrath,if=spell_targets.primal_wrath>2\nactions.finisher+=/primal_wrath,cycle_targets=1,if=refreshable&spell_targets.primal_wrath>1\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&target.time_to_die>=settings.rip_duration\n## actions.finisher+=/pool_resource,for_next=1\nactions.finisher+=/ferocious_bite,max_energy=1,if=(active_dot.rip>0||target.time_to_die<settings.rip_duration)&(!buff.bs_inc.up||buff.bs_inc.up&!talent.soul_of_the_forest.enabled)\nactions.finisher+=/ferocious_bite,if=(active_dot.rip>0||target.time_to_die<settings.rip_duration)&(buff.bs_inc.up&talent.soul_of_the_forest.enabled)\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
					["spec"] = 103,
				},
				["Arms"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221218,
					["author"] = "SimulationCraft",
					["desc"] = "",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < duration * 0.85",
								["action"] = "rend",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.warlords_torment.enabled & rage.pct < 33 & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up || buff.test_of_might.up ) || ! talent.warlords_torment.enabled & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up )",
								["action"] = "avatar",
							}, -- [3]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "spear_of_bastion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.hurricane.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) || talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.tide_of_blood.enabled & dot.rend.remains & ( debuff.colossus_smash.up || cooldown.colossus_smash.remains > gcd.max * 4 & buff.test_of_might.up || ! talent.test_of_might.enabled & cooldown.colossus_smash.remains > gcd.max * 4 ) || rage < 30",
								["action"] = "skullsplitter",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "dot.deep_wounds.remains <= gcd.max || debuff.executioners_precision.stack = 2",
								["action"] = "mortal_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "execute",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ( debuff.colossus_smash.down || rage.pct < 25 )",
								["action"] = "overpower",
							}, -- [13]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "remains < duration * 0.3",
								["action"] = "rend",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & rage.pct < 50 || rage.pct < 25",
								["action"] = "overpower",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.merciless_bonegrinder.up",
								["action"] = "whirlwind",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier29_2pc & ! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "rage > 30 & ! talent.fervor_of_battle.enabled",
								["action"] = "slam",
							}, -- [20]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [21]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 5",
								["action"] = "charge",
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.casting.react",
								["action"] = "pummel",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "raid_event.adds.exists || active_enemies > 2",
								["list_name"] = "hac",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["cycle_targets"] = 1,
								["strict"] = 1,
								["criteria"] = "( talent.massacre.enabled & target.health.pct < 35 ) || target.health.pct < 20",
								["list_name"] = "execute",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! raid_event.adds.exists",
								["list_name"] = "single_target",
							}, -- [8]
						},
						["precombat"] = {
							{
								["toggle"] = "on",
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["toggle"] = "on",
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
						},
						["execute"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & ( ! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 4 || talent.warbreaker.enabled & cooldown.warbreaker.remains < 4 ) & target.time_to_die > 12",
								["action"] = "rend",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.ready || debuff.colossus_smash.up || boss & fight_remains < 20",
								["action"] = "avatar",
							}, -- [3]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up || buff.test_of_might.up",
								["action"] = "spear_of_bastion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40",
								["action"] = "skullsplitter",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 2 & dot.deep_wounds.remains < gcd.max",
								["action"] = "cleave",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max",
								["action"] = "mortal_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "remains < duration * 0.3 & debuff.colossus_smash.down",
								["action"] = "rend",
							}, -- [11]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [13]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [15]
						},
						["hac"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.juggernaut.up & buff.juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( cooldown.bladestorm.remains > 15 || ! talent.bladestorm.enabled )",
								["action"] = "sweeping_strikes",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.thunder_clap.enabled & talent.blood_and_thunder.enabled & talent.rend.enabled & dot.rend.remains <= duration * 0.3",
								["action"] = "thunder_clap",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & remains <= gcd.max & ( target.health.pct > 20 || talent.massacre.enabled & target.health.pct > 35 ) || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < duration * 0.85",
								["action"] = "rend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || talent.blademasters_torment.enabled & active_enemies > 1 || boss & fight_remains < 20",
								["action"] = "avatar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 22 || active_enemies > 1",
								["action"] = "warbreaker",
							}, -- [6]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "thunderous_roar",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 30 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "bladestorm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || buff.merciless_bonegrinder.up & cooldown.mortal_strike.remains > gcd.max",
								["action"] = "cleave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || talent.storm_of_swords.enabled & ( buff.merciless_bonegrinder.up || buff.hurricane.up )",
								["action"] = "whirlwind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 || talent.tide_of_blood.enabled & dot.rend.remains & ( buff.sweeping_strikes.up & active_enemies >= 2 || debuff.colossus_smash.up || buff.test_of_might.up )",
								["action"] = "skullsplitter",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max || talent.dreadnaught.enabled & talent.battlelord.enabled & active_enemies <= 2 & rage.pct > 70",
								["action"] = "mortal_strike",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react || active_enemies <= 2 & ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) || buff.sweeping_strikes.up",
								["action"] = "execute",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15",
								["action"] = "thunderous_roar",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled & talent.dreadnaught.enabled & talent.battlelord.enabled & rage.pct > 70",
								["action"] = "whirlwind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & talent.crushing_force.enabled & talent.dreadnaught.enabled & talent.battlelord.enabled & rage.pct > 70",
								["action"] = "slam",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ( ! talent.test_of_might.enabled || talent.test_of_might.enabled & debuff.colossus_smash.down || talent.battlelord.enabled ) || rage < 70",
								["action"] = "overpower",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "thunder_clap",
							}, -- [22]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & dot.rend.remains < duration * 0.3",
								["action"] = "rend",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.crushing_force.enabled & rage > 30 & ! talent.fervor_of_battle.enabled",
								["action"] = "slam",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 30",
								["action"] = "bladestorm",
							}, -- [29]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [30]
						},
					},
					["version"] = 20221218,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 2: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 3: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 3: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 6: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 7: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 8: Converted 'talent.hurricane' to 'talent.hurricane.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 8: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 16: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 16: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 19: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 20: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\n\nThe import for 'execute' required some automated changes.\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 6: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nThe import for 'hac' required some automated changes.\nLine 2: Converted 'talent.bladestorm' to 'talent.bladestorm.enabled' (1x).\nLine 3: Converted 'talent.thunder_clap' to 'talent.thunder_clap.enabled' (1x).\nLine 3: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 3: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\nLine 4: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 4: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 5: Converted 'talent.blademasters_torment' to 'talent.blademasters_torment.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 10: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 10: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 11: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 14: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 15: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 15: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 16: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 18: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\nLine 19: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 19: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 19: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 20: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 20: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 20: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 21: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 21: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 21: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 25: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 25: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 26: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 27: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 27: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 28: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/berserker_stance,toggle=on\nactions.precombat+=/battle_stance,toggle=on\nactions.precombat+=/use_item,name=algethar_puzzle_box\n\nactions+=/charge,if=time<=0.5||movement.distance>5\nactions+=/pummel\nactions+=/potion,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/pummel,if=target.debuff.casting.react\nactions+=/use_items\nactions+=/run_action_list,name=hac,strict=1,if=raid_event.adds.exists||active_enemies>2\nactions+=/call_action_list,name=execute,cycle_targets=1,strict=1,if=(talent.massacre.enabled&target.health.pct<35)||target.health.pct<20\nactions+=/run_action_list,name=single_target,strict=1,if=!raid_event.adds.exists\n\nactions.execute+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.execute+=/rend,if=remains<=gcd&(!talent.warbreaker&cooldown.colossus_smash.remains<4||talent.warbreaker&cooldown.warbreaker.remains<4)&target.time_to_die>12\nactions.execute+=/avatar,if=cooldown.colossus_smash.ready||debuff.colossus_smash.up||boss&fight_remains<20\nactions.execute+=/warbreaker\nactions.execute+=/colossus_smash\nactions.execute+=/thunderous_roar,if=buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up\nactions.execute+=/spear_of_bastion,if=debuff.colossus_smash.up||buff.test_of_might.up\nactions.execute+=/skullsplitter,if=rage<40\nactions.execute+=/cleave,if=spell_targets.whirlwind>2&dot.deep_wounds.remains<gcd\nactions.execute+=/mortal_strike,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd\nactions.execute+=/rend,if=remains<duration*0.3&debuff.colossus_smash.down\nactions.execute+=/execute\nactions.execute+=/shockwave,if=talent.sonic_boom\nactions.execute+=/overpower\nactions.execute+=/bladestorm\n\nactions.hac+=/execute,if=buff.juggernaut.up&buff.juggernaut.remains<gcd\nactions.hac+=/sweeping_strikes,if=active_enemies>=2&(cooldown.bladestorm.remains>15||!talent.bladestorm)\nactions.hac+=/thunder_clap,if=active_enemies>2&talent.thunder_clap&talent.blood_and_thunder&talent.rend&dot.rend.remains<=duration*0.3\nactions.hac+=/rend,if=active_enemies=1&remains<=gcd&(target.health.pct>20||talent.massacre&target.health.pct>35)||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<duration*0.85\nactions.hac+=/avatar,if=raid_event.adds.in>15||talent.blademasters_torment&active_enemies>1||boss&fight_remains<20\nactions.hac+=/warbreaker,if=raid_event.adds.in>22||active_enemies>1\nactions.hac+=/colossus_smash\nactions.hac+=/thunderous_roar,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/spear_of_bastion,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15\nactions.hac+=/bladestorm,if=talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.hac+=/bladestorm,if=active_enemies>1&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>30||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/cleave,if=active_enemies>2||buff.merciless_bonegrinder.up&cooldown.mortal_strike.remains>gcd\nactions.hac+=/whirlwind,if=active_enemies>2||talent.storm_of_swords&(buff.merciless_bonegrinder.up||buff.hurricane.up)\nactions.hac+=/skullsplitter,if=rage<40||talent.tide_of_blood&dot.rend.remains&(buff.sweeping_strikes.up&active_enemies>=2||debuff.colossus_smash.up||buff.test_of_might.up)\nactions.hac+=/mortal_strike,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd||talent.dreadnaught&talent.battlelord&active_enemies<=2&rage.pct>70\nactions.hac+=/execute,if=buff.sudden_death.react||active_enemies<=2&(target.health.pct<20||talent.massacre&target.health.pct<35)||buff.sweeping_strikes.up\nactions.hac+=/thunderous_roar,if=raid_event.adds.in>15\nactions.hac+=/shockwave,if=active_enemies>2&talent.sonic_boom\nactions.hac+=/whirlwind,if=talent.storm_of_swords&talent.dreadnaught&talent.battlelord&rage.pct>70\nactions.hac+=/slam,if=active_enemies=1&talent.crushing_force&talent.dreadnaught&talent.battlelord&rage.pct>70\nactions.hac+=/overpower,if=charges=2&(!talent.test_of_might||talent.test_of_might&debuff.colossus_smash.down||talent.battlelord)||rage<70\nactions.hac+=/thunder_clap,if=active_enemies>2\nactions.hac+=/mortal_strike\nactions.hac+=/rend,if=active_enemies=1&dot.rend.remains<duration*0.3\nactions.hac+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.hac+=/cleave,if=!talent.crushing_force\nactions.hac+=/slam,if=talent.crushing_force&rage>30&!talent.fervor_of_battle\nactions.hac+=/shockwave,if=talent.sonic_boom\nactions.hac+=/bladestorm,if=raid_event.adds.in>30\nactions.hac+=/wrecking_throw\n\nactions.single_target+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.single_target+=/rend,if=remains<=gcd||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<duration*0.85\nactions.single_target+=/avatar,if=talent.warlords_torment&rage.pct<33&(cooldown.colossus_smash.ready||debuff.colossus_smash.up||buff.test_of_might.up)||!talent.warlords_torment&(cooldown.colossus_smash.ready||debuff.colossus_smash.up)\nactions.single_target+=/warbreaker\nactions.single_target+=/colossus_smash\nactions.single_target+=/thunderous_roar,if=buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/spear_of_bastion,if=buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/bladestorm,if=talent.hurricane&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)||talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.single_target+=/skullsplitter,if=talent.tide_of_blood&dot.rend.remains&(debuff.colossus_smash.up||cooldown.colossus_smash.remains>gcd*4&buff.test_of_might.up||!talent.test_of_might&cooldown.colossus_smash.remains>gcd*4)||rage<30\nactions.single_target+=/mortal_strike,if=dot.deep_wounds.remains<=gcd||debuff.executioners_precision.stack=2\nactions.single_target+=/execute,if=buff.sudden_death.react\nactions.single_target+=/shockwave,if=talent.sonic_boom.enabled\nactions.single_target+=/overpower,if=charges=2&(debuff.colossus_smash.down||rage.pct<25)\nactions.single_target+=/mortal_strike\nactions.single_target+=/rend,if=remains<duration*0.3\nactions.single_target+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.single_target+=/overpower,if=debuff.colossus_smash.down&rage.pct<50||rage.pct<25\nactions.single_target+=/whirlwind,if=buff.merciless_bonegrinder.up\nactions.single_target+=/cleave,if=set_bonus.tier29_2pc&!talent.crushing_force\nactions.single_target+=/slam,if=rage>30&!talent.fervor_of_battle\nactions.single_target+=/wrecking_throw",
					["spec"] = 71,
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221113,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["combustion_cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.up",
								["action"] = "berserking",
							}, -- [3]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( talent.temporal_warp.enabled || runeforge.temporal_warp.enabled ) & buff.exhaustion.up",
								["action"] = "time_warp",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.scars_of_fraternal_strife_4.up",
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["effect_name"] = "gladiators_badge",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "flame_of_battle",
								["action"] = "flame_of_battle",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "wakeners_frond",
								["action"] = "wakeners_frond",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "instructors_divine_bell",
								["action"] = "instructors_divine_bell",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "sunblood_amethyst",
								["action"] = "sunblood_amethyst",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "the_first_sigil",
								["action"] = "the_first_sigil",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "fleshrenders_meathook",
								["action"] = "fleshrenders_meathook",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "enforcers_stun_grenade",
								["action"] = "enforcers_stun_grenade",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "neural_synapse_enhancer",
								["action"] = "neural_synapse_enhancer",
							}, -- [17]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! runeforge.disciplinary_command.enabled",
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & action.fire_blast.charges <= 1 & ! ( buff.feel_the_burn.up & buff.hot_streak.react ) & variable.shifting_power_before_combustion",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Save Radiant Spark for Combustion, but otherwise use it on cooldown.",
								["criteria"] = "buff.combustion.down & ( variable.time_to_combustion > action_cooldown - 5 )",
								["action"] = "radiant_spark",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Deathborne should always be used with Combustion. With Death's Fathom, it should be used early so that Deathborne will have more stacks during Combustion.",
								["criteria"] = "buff.combustion.down & buff.rune_of_power.down & variable.time_to_combustion < variable.combustion_precast_time + execute_time + ( buff.deathborne.duration - buff.combustion.duration ) * runeforge.deaths_fathom.enabled",
								["action"] = "deathborne",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Use Mirrors of Torment with Combustion.",
								["criteria"] = "variable.time_to_combustion < variable.combustion_precast_time + execute_time & buff.combustion.down",
								["action"] = "mirrors_of_torment",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Also use Mirrors of Torment in between Combustions as long as Combustion will not have to be delayed much for it.",
								["criteria"] = "variable.time_to_combustion > action_cooldown - 30 * runeforge.sinful_delight.enabled",
								["action"] = "mirrors_of_torment",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "fire_blast",
								["description"] = "For Venthyr, use a Fire Blast charge during Mirrors of Torment cast to avoid capping charges.",
								["criteria"] = "action.mirrors_of_torment.executing & full_recharge_time - action.mirrors_of_torment.execute_remains < 4 & ! hot_streak_spells_in_flight & ! buff.hot_streak.react",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["criteria"] = "variable.time_to_combustion > action_cooldown - 5",
								["effect_name"] = "gladiators_badge",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= variable.empyreal_ordnance_delay & variable.time_to_combustion > variable.empyreal_ordnance_delay - 5",
								["name"] = "empyreal_ordnance",
								["action"] = "empyreal_ordnance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( variable.time_to_combustion <= variable.combustion_precast_time + 2 || fight_remains < variable.time_to_combustion ) & buff.combustion.down & ( ! equipped.the_first_sigil || cooldown.the_first_sigil_367241.remains > 40 )",
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 8 || fight_remains < variable.time_to_combustion",
								["name"] = "grim_eclipse",
								["action"] = "grim_eclipse",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 5 || fight_remains < variable.time_to_combustion",
								["name"] = "moonlit_prism",
								["action"] = "moonlit_prism",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! variable.item_cutoff_active",
								["name"] = "glyph_of_assimilation",
								["action"] = "glyph_of_assimilation",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 5",
								["name"] = "macabre_sheet_music",
								["action"] = "macabre_sheet_music",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["description"] = "If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.",
								["criteria"] = "! variable.item_cutoff_active & ( buff.infernal_cascade.stack = buff.infernal_cascade.max_stack || ! conduit.infernal_cascade.enabled || variable.combustion_on_use & ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || variable.time_to_combustion > interpolated_fight_remains %  ( action_cooldown + 10 ) )",
								["action"] = "dreadfire_vessel",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "soul_igniter",
								["description"] = "Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.",
								["criteria"] = "( cooldown.hyperthread_wristwraps.remains || ! variable.item_cutoff_active ) & ( ! conduit.infernal_cascade.enabled || buff.infernal_cascade.up || buff.combustion.up ) & ( ! equipped.dreadfire_vessel || cooldown.dreadfire_vessel_349857.remains > 5 )",
								["action"] = "soul_igniter",
							}, -- [16]
							{
								["buff_name"] = "soul_ignition",
								["criteria"] = "! conduit.infernal_cascade.enabled & time < 5 || buff.infernal_cascade.stack = buff.infernal_cascade.max_stack",
								["action"] = "cancel_buff",
								["enabled"] = true,
								["description"] = "Trigger Soul Igniter early with Infernal Cascade or when it was precast.",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["description"] = "Items that do not benefit Combustion should just be used outside of Combustion at some point.",
								["criteria"] = "equipped.gladiators_badge & ( buff.combustion.down & variable.time_to_combustion >= variable.on_use_cutoff || variable.on_use_cutoff = 0 )",
								["action"] = "inscrutable_quantum_device",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "flame_of_battle",
								["action"] = "flame_of_battle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "wakeners_frond",
								["action"] = "wakeners_frond",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "instructors_divine_bell",
								["action"] = "instructors_divine_bell",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "sunblood_amethyst",
								["action"] = "sunblood_amethyst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.scars_of_fraternal_strife_4.down",
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! variable.item_cutoff_active",
								["action"] = "use_items",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use Frost Nova to trigger Grisly Icicle.",
								["criteria"] = "runeforge.grisly_icicle.enabled & buff.combustion.down & ( variable.time_to_combustion > action_cooldown || variable.time_to_combustion < variable.combustion_precast_time + execute_time )",
								["action"] = "frost_nova",
							}, -- [25]
							{
								["enabled"] = true,
								["description"] = "Get the Disciplinary Command buff up, unless combustion is soon.",
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "counterspell",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + execute_time + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 & ! talent.rune_of_power.enabled )",
								["action"] = "arcane_explosion",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.remains < cast_time & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frostbolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frost_nova",
							}, -- [29]
							{
								["enabled"] = true,
								["op"] = "set",
								["description"] = "Pool as many Fire Blasts as possible for Combustion. Subtract out of the fractional component of the number of Fire Blasts that will naturally recharge during the Combustion phase because pooling anything past that will not grant an extra Fire Blast during Combustion.",
								["action"] = "variable",
								["value"] = "variable.extended_combustion_remains < variable.time_to_combustion & action.fire_blast.charges_fractional + ( variable.time_to_combustion + action.shifting_power.full_reduction * variable.shifting_power_before_combustion + ( debuff.mirrors_of_torment.max_stack - 1 ) * variable.mot_recharge_amount * covenant.venthyr * ( cooldown.mirrors_of_torment.remains <= variable.time_to_combustion ) ) / cooldown.fire_blast.duration - 1 < cooldown.fire_blast.max_charges + variable.overpool_fire_blasts / cooldown.fire_blast.duration - ( buff.combustion.duration / cooldown.fire_blast.duration )  % 1 & variable.time_to_combustion < fight_remains",
								["use_off_gcd"] = 1,
								["var_name"] = "fire_blast_pooling",
								["use_while_casting"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.up || variable.time_to_combustion < variable.combustion_precast_time & cooldown.combustion.remains < variable.combustion_precast_time",
								["action"] = "call_action_list",
								["list_name"] = "combustion_phase",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.rune_of_power.down & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ( variable.time_to_combustion >= buff.rune_of_power.duration & variable.time_to_combustion > action.fire_blast.full_recharge_time || variable.time_to_combustion > fight_remains ) & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || active_enemies >= variable.hard_cast_flamestrike || buff.sun_kings_blessing_ready.up || buff.sun_kings_blessing.react >= buff.sun_kings_blessing.max_stack - 1 || fight_remains < buff.rune_of_power.duration || firestarter.active )",
								["action"] = "rune_of_power",
							}, -- [32]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled )",
								["value"] = "searing_touch.active & action.fire_blast.full_recharge_time > 3 * gcd.max",
								["use_off_gcd"] = 1,
								["action"] = "variable",
								["var_name"] = "fire_blast_pooling",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.up & buff.combustion.down & variable.time_to_combustion > 0",
								["action"] = "call_action_list",
								["list_name"] = "rop_phase",
							}, -- [34]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & talent.rune_of_power.enabled & buff.rune_of_power.down",
								["value"] = "( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.sun_kings_blessing.stack > buff.sun_kings_blessing.max_stack - 1 ) & cooldown.rune_of_power.remains < action.fire_blast.full_recharge_time - action.shifting_power.full_reduction * ( variable.shifting_power_before_combustion & cooldown.shifting_power.remains < cooldown.rune_of_power.remains ) & cooldown.rune_of_power.remains < fight_remains",
								["use_off_gcd"] = 1,
								["action"] = "variable",
								["var_name"] = "fire_blast_pooling",
							}, -- [35]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & variable.time_to_combustion > 0 & active_enemies >= variable.hard_cast_flamestrike & ! firestarter.active & ! buff.hot_streak.react & ( buff.heating_up.react & action.flamestrike.execute_remains < 0.5 || charges_fractional >= 2 )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.",
							}, -- [36]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "firestarter.active & variable.time_to_combustion > 0 & ! variable.fire_blast_pooling & ( ! action.fireball.executing & ! action.pyroblast.in_flight & buff.heating_up.react || action.fireball.executing & ! buff.hot_streak.react || action.pyroblast.in_flight & buff.heating_up.react & ! buff.hot_streak.react )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.",
							}, -- [37]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "fire_blast",
								["description"] = "Avoid capping Fire Blast charges while channeling Shifting Power",
								["criteria"] = "action.shifting_power.executing & full_recharge_time < action.shifting_power.tick_reduction",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > 0 & buff.rune_of_power.down & buff.combustion.down",
								["action"] = "call_action_list",
								["list_name"] = "standard_rotation",
							}, -- [39]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [40]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.combustion_on_use & ! equipped.dreadfire_vessel & ( ! talent.firestarter.enabled || variable.firestarter_combustion )",
								["name"] = "soul_igniter",
								["action"] = "soul_igniter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.the_first_sigil",
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [3]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [6]
						},
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "bag_of_tricks",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down",
								["action"] = "living_bomb",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.",
								["criteria"] = "buff.combustion.remains > variable.skb_duration || fight_remains < 20",
								["list_name"] = "combustion_cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev.1.fire_blast + prev.2.fire_blast + prev.3.fire_blast >= 2 & action.fire_blast.charges = 0",
								["name"] = "hyperthread_wristwraps",
								["action"] = "hyperthread_wristwraps",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > 60",
								["name"] = "neural_synapse_enhancer",
								["action"] = "neural_synapse_enhancer",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [7]
							{
								["buff_name"] = "sun_kings_blessing",
								["criteria"] = "! set_bonus.tier28_4pc & buff.combustion.down & buff.sun_kings_blessing.stack > 2 & talent.rune_of_power.enabled & cooldown.rune_of_power.remains < 20",
								["action"] = "cancel_buff",
								["enabled"] = true,
								["description"] = "If Sun King's Blessing stacks are high, cancel them before Combustion so that the Sun King's Blessing proc can be safely delayed until after Combustion without risk of expiration.",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "If Combustion is down, precast something before activating it.",
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "flamestrike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.pyroclasm.react & buff.pyroclasm.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & ! conduit.flame_accretion.enabled",
								["action"] = "fireball",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time",
								["action"] = "scorch",
							}, -- [13]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "hot_streak_spells_in_flight = 0 & buff.combustion.down & variable.time_to_combustion <= 0 & ( ! runeforge.disciplinary_command.enabled || buff.disciplinary_command.up || buff.disciplinary_command_frost.up & talent.rune_of_power.enabled & cooldown.buff_disciplinary_command.ready ) & ( ! runeforge.grisly_icicle.enabled || debuff.grisly_icicle.up ) & ( ! covenant.necrolord || cooldown.deathborne.remains || buff.deathborne.up ) & ( ! covenant.venthyr || cooldown.mirrors_of_torment.remains ) & ( action.scorch.executing & action.scorch.execute_remains < variable.combustion_cast_remains || action.fireball.executing & action.fireball.execute_remains < variable.combustion_cast_remains || action.pyroblast.executing & action.pyroblast.execute_remains < variable.combustion_cast_remains || action.flamestrike.executing & action.flamestrike.execute_remains < variable.combustion_cast_remains )",
								["use_off_gcd"] = 1,
								["action"] = "combustion",
								["description"] = "Combustion should be used when the precast is almost finished.",
							}, -- [14]
							{
								["enabled"] = true,
								["description"] = "Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.",
								["criteria"] = "buff.rune_of_power.down & variable.extended_combustion_remains > variable.skb_duration",
								["action"] = "rune_of_power",
							}, -- [15]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! talent.feel_the_burn.enabled & ! conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & buff.combustion.up & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.",
							}, -- [16]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.infernal_cascade.duration || buff.infernal_cascade.stack < 2 || buff.infernal_cascade.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.infernal_cascade.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "talent.feel_the_burn.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.feel_the_burn.duration || buff.feel_the_burn.stack < 2 || buff.feel_the_burn.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.feel_the_burn.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [18]
							{
								["enabled"] = true,
								["description"] = "Spend Hot Streaks during Combustion at high priority.",
								["criteria"] = "( buff.hot_streak.react & active_enemies >= variable.combustion_flamestrike ) || ( ( buff.firestorm.react || buff.hyperthermia.react ) & active_enemies >= variable.combustion_flamestrike - ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) )",
								["action"] = "flamestrike",
							}, -- [19]
							{
								["enabled"] = true,
								["description"] = "Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.",
								["criteria"] = "buff.combustion.up & 2 * buff.hot_streak.react + buff.heating_up.react + hot_streak_spells_in_flight = 2",
								["action"] = "radiant_spark",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & active_enemies < variable.combustion_flamestrike & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.",
								["criteria"] = "variable.use_shifting_power & buff.combustion.up & ! action.fire_blast.charges & ( action.phoenix_flames.charges < action.phoenix_flames.max_charges || talent.alexstraszas_fury.enabled )",
								["action"] = "shifting_power",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.",
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.flamestrike.cast_time & buff.rune_of_power.remains < action.flamestrike.cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "rune_of_power",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & active_enemies >= variable.combustion_flamestrike & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.pyroblast.cast_time & buff.rune_of_power.remains < action.pyroblast.cast_time",
								["action"] = "rune_of_power",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [28]
							{
								["enabled"] = true,
								["description"] = "Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.",
								["criteria"] = "buff.pyroclasm.react & buff.pyroclasm.remains > cast_time & buff.combustion.remains > cast_time & active_enemies < variable.combustion_flamestrike & ( ! talent.feel_the_burn.enabled || buff.feel_the_burn.remains > execute_time || buff.heating_up.react + hot_streak_spells_in_flight < 2 )",
								["action"] = "pyroblast",
							}, -- [29]
							{
								["enabled"] = true,
								["description"] = "Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.",
								["criteria"] = "! talent.alexstraszas_fury.enabled & buff.combustion.up & travel_time < buff.combustion.remains & buff.heating_up.react + hot_streak_spells_in_flight < 2 & ( ! talent.from_the_ashes.enabled || variable.extended_combustion_remains < 10 )",
								["action"] = "phoenix_flames",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time",
								["action"] = "scorch",
							}, -- [31]
							{
								["enabled"] = true,
								["description"] = "If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.",
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max",
								["action"] = "ice_nova",
							}, -- [33]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( variable.time_to_combustion > cooldown.living_bomb.duration || variable.time_to_combustion <= 0 )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.remains > travel_time || ( cooldown.meteor.duration < variable.time_to_combustion & ! talent.rune_of_power.enabled ) || talent.rune_of_power.enabled & buff.rune_of_power.up & variable.time_to_combustion > action.meteor.cooldown || fight_remains < variable.time_to_combustion",
								["action"] = "meteor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( buff.combustion.down & ! buff.hot_streak.react )",
								["action"] = "dragons_breath",
							}, -- [3]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.deathborne.up & runeforge.deaths_fathom.enabled & variable.time_to_combustion < buff.deathborne.remains & active_enemies >= 2",
								["action"] = "fireball",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.hot_streak.remains < action.fireball.execute_time",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || firestarter.active || action.pyroblast.in_flight )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Try to get SKB procs inside RoP phases or Combustion phases when possible.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & searing_touch.active",
								["action"] = "pyroblast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
							}, -- [9]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! firestarter.active & ! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.phoenix_pooling & ( ! hot_streak_spells_in_flight & ( buff.heating_up.react ) )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [16]
							{
								["enabled"] = true,
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled",
								["action"] = "pyroblast",
							}, -- [18]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [20]
						},
						["rop_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.deathborne.up & runeforge.deaths_fathom.enabled & variable.time_to_combustion < buff.deathborne.remains & active_enemies >= 2",
								["action"] = "fireball",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & active_enemies < variable.hard_cast_flamestrike & ! firestarter.active & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || searing_touch.active ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.",
							}, -- [7]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & ! firestarter.active & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max",
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & cast_time < buff.rune_of_power.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.phoenix_pooling & ( ! hot_streak_spells_in_flight & ( buff.heating_up.react || charges > 1 ) )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled",
								["action"] = "pyroblast",
							}, -- [17]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [18]
						},
					},
					["version"] = 20221113,
					["warnings"] = "The import for 'rop_phase' required some automated changes.\nLine 2: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 7: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 10: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 10: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 17: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 1: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 4: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 6: Converted 'runeforge.sinful_delight' to 'runeforge.sinful_delight.enabled' (1x).\nLine 15: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 15: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 15: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 15: Converted operations in '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%%(action_cooldown+10))' to '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%(action_cooldown+10))'.\nLine 16: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 17: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 25: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 26: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 27: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 27: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 28: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 29: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 30: Converted operations in 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains' to 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))/cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts/cooldown.fire_blast.duration-(buff.combustion.duration/cooldown.fire_blast.duration)%1&variable.time_to_combustion<fight_remains'.\nLine 32: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 32: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 33: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 33: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 2: Converted 'talent.firestarter' to 'talent.firestarter.enabled' (1x).\n\nThe import for 'combustion_cooldowns' required some automated changes.\nLine 6: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 6: Converted 'runeforge.temporal_warp' to 'runeforge.temporal_warp.enabled' (1x).\n\nThe import for 'active_talents' required some automated changes.\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 3: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\n\nThe import for 'standard_rotation' required some automated changes.\nLine 2: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 6: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 7: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 9: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 9: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 10: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 10: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 10: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 10: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 18: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'combustion_phase' required some automated changes.\nLine 8: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 12: Converted 'conduit.flame_accretion' to 'conduit.flame_accretion.enabled' (1x).\nLine 14: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 14: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 14: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 16: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 16: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 17: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 18: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 19: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 19: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 24: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 29: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 30: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 30: Converted 'talent.from_the_ashes' to 'talent.from_the_ashes.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/use_item,name=soul_igniter,if=!variable.combustion_on_use&!equipped.dreadfire_vessel&(!talent.firestarter||variable.firestarter_combustion)\nactions.precombat+=/use_item,name=shadowed_orb_of_torment,if=!equipped.the_first_sigil\nactions.precombat+=/mirror_image\nactions.precombat+=/fleshcraft\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell,if=!runeforge.disciplinary_command\nactions+=/shifting_power,if=buff.combustion.down&action.fire_blast.charges<=1&!(buff.feel_the_burn.up&buff.hot_streak.react)&variable.shifting_power_before_combustion\n# Save Radiant Spark for Combustion, but otherwise use it on cooldown.\nactions+=/radiant_spark,if=buff.combustion.down&(variable.time_to_combustion>cooldown-5)\n# Deathborne should always be used with Combustion. With Death's Fathom, it should be used early so that Deathborne will have more stacks during Combustion.\nactions+=/deathborne,if=buff.combustion.down&buff.rune_of_power.down&variable.time_to_combustion<variable.combustion_precast_time+execute_time+(buff.deathborne.duration-buff.combustion.duration)*runeforge.deaths_fathom\n# Use Mirrors of Torment with Combustion.\nactions+=/mirrors_of_torment,if=variable.time_to_combustion<variable.combustion_precast_time+execute_time&buff.combustion.down\n# Also use Mirrors of Torment in between Combustions as long as Combustion will not have to be delayed much for it.\nactions+=/mirrors_of_torment,if=variable.time_to_combustion>cooldown-30*runeforge.sinful_delight\n# For Venthyr, use a Fire Blast charge during Mirrors of Torment cast to avoid capping charges.\nactions+=/fire_blast,use_while_casting=1,if=action.mirrors_of_torment.executing&full_recharge_time-action.mirrors_of_torment.execute_remains<4&!hot_streak_spells_in_flight&!buff.hot_streak.react\nactions+=/use_item,effect_name=gladiators_badge,if=variable.time_to_combustion>cooldown-5\nactions+=/use_item,name=empyreal_ordnance,if=variable.time_to_combustion<=variable.empyreal_ordnance_delay&variable.time_to_combustion>variable.empyreal_ordnance_delay-5\nactions+=/use_item,name=shadowed_orb_of_torment,if=(variable.time_to_combustion<=variable.combustion_precast_time+2||fight_remains<variable.time_to_combustion)&buff.combustion.down&(!equipped.the_first_sigil||cooldown.the_first_sigil_367241.remains>40)\nactions+=/use_item,name=grim_eclipse,if=variable.time_to_combustion<=8||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=moonlit_prism,if=variable.time_to_combustion<=5||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=glyph_of_assimilation,if=!variable.item_cutoff_active\nactions+=/use_item,name=macabre_sheet_music,if=variable.time_to_combustion<=5\n# If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.\nactions+=/use_item,name=dreadfire_vessel,if=!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade||variable.combustion_on_use&!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||variable.time_to_combustion>interpolated_fight_remains%%(cooldown+10))\n# Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.\nactions+=/use_item,name=soul_igniter,if=(cooldown.hyperthread_wristwraps.remains||!variable.item_cutoff_active)&(!conduit.infernal_cascade||buff.infernal_cascade.up||buff.combustion.up)&(!equipped.dreadfire_vessel||cooldown.dreadfire_vessel_349857.remains>5)\n# Trigger Soul Igniter early with Infernal Cascade or when it was precast.\nactions+=/cancel_buff,name=soul_ignition,if=!conduit.infernal_cascade&time<5||buff.infernal_cascade.stack=buff.infernal_cascade.max_stack\n# Items that do not benefit Combustion should just be used outside of Combustion at some point.\nactions+=/use_item,name=inscrutable_quantum_device,if=equipped.gladiators_badge&(buff.combustion.down&variable.time_to_combustion>=variable.on_use_cutoff||variable.on_use_cutoff=0)\nactions+=/use_item,name=flame_of_battle,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=wakeners_frond,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=instructors_divine_bell,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=sunblood_amethyst,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=scars_of_fraternal_strife,if=buff.scars_of_fraternal_strife_4.down\nactions+=/use_items,if=!variable.item_cutoff_active\n# Use Frost Nova to trigger Grisly Icicle.\nactions+=/frost_nova,if=runeforge.grisly_icicle&buff.combustion.down&(variable.time_to_combustion>cooldown||variable.time_to_combustion<variable.combustion_precast_time+execute_time)\n# Get the Disciplinary Command buff up, unless combustion is soon.\nactions+=/counterspell,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/arcane_explosion,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+execute_time+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5&!talent.rune_of_power)\nactions+=/frostbolt,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.remains<cast_time&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion+cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/frost_nova,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\n# Pool as many Fire Blasts as possible for Combustion. Subtract out of the fractional component of the number of Fire Blasts that will naturally recharge during the Combustion phase because pooling anything past that will not grant an extra Fire Blast during Combustion.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains\nactions+=/call_action_list,name=combustion_phase,if=variable.time_to_combustion<=0||buff.combustion.up||variable.time_to_combustion<variable.combustion_precast_time&cooldown.combustion.remains<variable.combustion_precast_time\nactions+=/rune_of_power,if=buff.combustion.down&buff.rune_of_power.down&!(buff.firestorm.react||buff.hyperthermia.react)&(variable.time_to_combustion>=buff.rune_of_power.duration&variable.time_to_combustion>action.fire_blast.full_recharge_time||variable.time_to_combustion>fight_remains)&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||active_enemies>=variable.hard_cast_flamestrike||buff.sun_kings_blessing_ready.up||buff.sun_kings_blessing.react>=buff.sun_kings_blessing.max_stack-1||fight_remains<buff.rune_of_power.duration||firestarter.active)\n# Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=searing_touch.active&action.fire_blast.full_recharge_time>3*gcd.max,if=!variable.fire_blast_pooling&(runeforge.sun_kings_blessing||talent.sun_kings_blessing)\nactions+=/call_action_list,name=rop_phase,if=buff.rune_of_power.up&buff.combustion.down&variable.time_to_combustion>0\n# Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.sun_kings_blessing.stack>buff.sun_kings_blessing.max_stack-1)&cooldown.rune_of_power.remains<action.fire_blast.full_recharge_time-action.shifting_power.full_reduction*(variable.shifting_power_before_combustion&cooldown.shifting_power.remains<cooldown.rune_of_power.remains)&cooldown.rune_of_power.remains<fight_remains,if=!variable.fire_blast_pooling&talent.rune_of_power&buff.rune_of_power.down\n# When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&variable.time_to_combustion>0&active_enemies>=variable.hard_cast_flamestrike&!firestarter.active&!buff.hot_streak.react&(buff.heating_up.react&action.flamestrike.execute_remains<0.5||charges_fractional>=2)\n# During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=firestarter.active&variable.time_to_combustion>0&!variable.fire_blast_pooling&(!action.fireball.executing&!action.pyroblast.in_flight&buff.heating_up.react||action.fireball.executing&!buff.hot_streak.react||action.pyroblast.in_flight&buff.heating_up.react&!buff.hot_streak.react)\n# Avoid capping Fire Blast charges while channeling Shifting Power\nactions+=/fire_blast,use_while_casting=1,if=action.shifting_power.executing&full_recharge_time<action.shifting_power.tick_reduction\nactions+=/call_action_list,name=standard_rotation,if=variable.time_to_combustion>0&buff.rune_of_power.down&buff.combustion.down\nactions+=/scorch\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(variable.time_to_combustion>cooldown.living_bomb.duration||variable.time_to_combustion<=0)\nactions.active_talents+=/meteor,if=variable.time_to_combustion<=0||buff.combustion.remains>travel_time||(cooldown.meteor.duration<variable.time_to_combustion&!talent.rune_of_power)||talent.rune_of_power&buff.rune_of_power.up&variable.time_to_combustion>action.meteor.cooldown||fight_remains<variable.time_to_combustion\nactions.active_talents+=/dragons_breath,if=talent.alexstraszas_fury&(buff.combustion.down&!buff.hot_streak.react)\n\nactions.combustion_cooldowns=potion\nactions.combustion_cooldowns+=/blood_fury\nactions.combustion_cooldowns+=/berserking,if=buff.combustion.up\nactions.combustion_cooldowns+=/fireblood\nactions.combustion_cooldowns+=/ancestral_call\nactions.combustion_cooldowns+=/time_warp,if=(talent.temporal_warp||runeforge.temporal_warp)&buff.exhaustion.up\nactions.combustion_cooldowns+=/use_item,name=scars_of_fraternal_strife,if=buff.scars_of_fraternal_strife_4.up\nactions.combustion_cooldowns+=/use_item,effect_name=gladiators_badge\nactions.combustion_cooldowns+=/use_item,name=inscrutable_quantum_device\nactions.combustion_cooldowns+=/use_item,name=flame_of_battle\nactions.combustion_cooldowns+=/use_item,name=wakeners_frond\nactions.combustion_cooldowns+=/use_item,name=instructors_divine_bell\nactions.combustion_cooldowns+=/use_item,name=sunblood_amethyst\nactions.combustion_cooldowns+=/use_item,name=the_first_sigil\nactions.combustion_cooldowns+=/use_item,name=fleshrenders_meathook\nactions.combustion_cooldowns+=/use_item,name=enforcers_stun_grenade\nactions.combustion_cooldowns+=/use_item,name=neural_synapse_enhancer\n\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/bag_of_tricks,if=buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=active_enemies>1&buff.combustion.down\n# Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.\nactions.combustion_phase+=/call_action_list,name=combustion_cooldowns,if=buff.combustion.remains>variable.skb_duration||fight_remains<20\nactions.combustion_phase+=/use_item,name=hyperthread_wristwraps,if=prev.1.fire_blast+prev.2.fire_blast+prev.3.fire_blast>=2&action.fire_blast.charges=0\nactions.combustion_phase+=/use_item,name=neural_synapse_enhancer,if=variable.time_to_combustion>60\nactions.combustion_phase+=/call_action_list,name=active_talents\n# If Sun King's Blessing stacks are high, cancel them before Combustion so that the Sun King's Blessing proc can be safely delayed until after Combustion without risk of expiration.\nactions.combustion_phase+=/cancel_buff,name=sun_kings_blessing,if=!set_bonus.tier28_4pc&buff.combustion.down&buff.sun_kings_blessing.stack>2&talent.rune_of_power&cooldown.rune_of_power.remains<20\n# If Combustion is down, precast something before activating it.\nactions.combustion_phase+=/flamestrike,if=buff.combustion.down&cooldown.combustion.remains<cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.pyroclasm.react&buff.pyroclasm.remains>cast_time\nactions.combustion_phase+=/fireball,if=buff.combustion.down&cooldown.combustion.remains<cast_time&!conduit.flame_accretion\nactions.combustion_phase+=/scorch,if=buff.combustion.down&cooldown.combustion.remains<cast_time\n# Combustion should be used when the precast is almost finished.\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=hot_streak_spells_in_flight=0&buff.combustion.down&variable.time_to_combustion<=0&(!runeforge.disciplinary_command||buff.disciplinary_command.up||buff.disciplinary_command_frost.up&talent.rune_of_power&cooldown.buff_disciplinary_command.ready)&(!runeforge.grisly_icicle||debuff.grisly_icicle.up)&(!covenant.necrolord||cooldown.deathborne.remains||buff.deathborne.up)&(!covenant.venthyr||cooldown.mirrors_of_torment.remains)&(action.scorch.executing&action.scorch.execute_remains<variable.combustion_cast_remains||action.fireball.executing&action.fireball.execute_remains<variable.combustion_cast_remains||action.pyroblast.executing&action.pyroblast.execute_remains<variable.combustion_cast_remains||action.flamestrike.executing&action.flamestrike.execute_remains<variable.combustion_cast_remains)\n# Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.\nactions.combustion_phase+=/rune_of_power,if=buff.rune_of_power.down&variable.extended_combustion_remains>variable.skb_duration\n# Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!talent.feel_the_burn&!conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&buff.combustion.up&!(buff.firestorm.react||buff.hyperthermia.react)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.infernal_cascade.duration||buff.infernal_cascade.stack<2||buff.infernal_cascade.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.infernal_cascade.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=talent.feel_the_burn&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.feel_the_burn.duration||buff.feel_the_burn.stack<2||buff.feel_the_burn.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.feel_the_burn.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\n# Spend Hot Streaks during Combustion at high priority.\nactions.combustion_phase+=/flamestrike,if=(buff.hot_streak.react&active_enemies>=variable.combustion_flamestrike)||((buff.firestorm.react||buff.hyperthermia.react)&active_enemies>=variable.combustion_flamestrike-(runeforge.firestorm||talent.hyperthermia))\n# Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.\nactions.combustion_phase+=/radiant_spark,if=buff.combustion.up&2*buff.hot_streak.react+buff.heating_up.react+hot_streak_spells_in_flight=2\nactions.combustion_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\n## With Sun King's Blessing, there is a brief delay before the Sun King's Blessing ready buff is removed after consuming it. It is beneficial to wait for this delay before spending Hot Streaks to not waste a stack.\n## actions.combustion_phase+=/wait,sec=0.01,if=buff.hot_streak.react&active_enemies<variable.combustion_flamestrike&(buff.sun_kings_blessing_ready.expiration_delay_remains||time-buff.sun_kings_blessing_ready.last_expire<variable.skb_delay-0.03)\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react&buff.combustion.up\nactions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&active_enemies<variable.combustion_flamestrike&buff.combustion.up\n# Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.\nactions.combustion_phase+=/shifting_power,if=variable.use_shifting_power&buff.combustion.up&!action.fire_blast.charges&(action.phoenix_flames.charges<action.phoenix_flames.max_charges||talent.alexstraszas_fury)\n# If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.flamestrike.cast_time&buff.rune_of_power.remains<action.flamestrike.cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/flamestrike,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&active_enemies>=variable.combustion_flamestrike&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.pyroblast.cast_time&buff.rune_of_power.remains<action.pyroblast.cast_time\nactions.combustion_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\n# Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.pyroclasm.remains>cast_time&buff.combustion.remains>cast_time&active_enemies<variable.combustion_flamestrike&(!talent.feel_the_burn||buff.feel_the_burn.remains>execute_time||buff.heating_up.react+hot_streak_spells_in_flight<2)\n# Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.\nactions.combustion_phase+=/phoenix_flames,if=!talent.alexstraszas_fury&buff.combustion.up&travel_time<buff.combustion.remains&buff.heating_up.react+hot_streak_spells_in_flight<2&(!talent.from_the_ashes||variable.extended_combustion_remains<10)\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time\n# If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/ice_nova,if=buff.combustion.remains<gcd.max\n\nactions.rop_phase=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.rop_phase+=/fireball,if=buff.deathborne.up&runeforge.deaths_fathom&variable.time_to_combustion<buff.deathborne.remains&active_enemies>=2\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\n# Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&active_enemies<variable.hard_cast_flamestrike&!firestarter.active&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(talent.alexstraszas_fury&cooldown.dragons_breath.ready)||searing_touch.active))\n# Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&!firestarter.active&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia)))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\nactions.rop_phase+=/call_action_list,name=active_talents\n# actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&cast_time<buff.rune_of_power.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\nactions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.rop_phase+=/phoenix_flames,if=!variable.phoenix_pooling&(!hot_streak_spells_in_flight&(buff.heating_up.react||charges>1))\nactions.rop_phase+=/scorch,if=searing_touch.active\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.rop_phase+=/pyroblast,if=talent.tempered_flames\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.standard_rotation+=/fireball,if=buff.deathborne.up&runeforge.deaths_fathom&variable.time_to_combustion<buff.deathborne.remains&active_enemies>=2\nactions.standard_rotation+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&buff.hot_streak.remains<action.fireball.execute_time\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||firestarter.active||action.pyroblast.in_flight)\n# Try to get SKB procs inside RoP phases or Combustion phases when possible.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&searing_touch.active\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\n# During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!firestarter.active&!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia)))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\nactions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.standard_rotation+=/phoenix_flames,if=!variable.phoenix_pooling&(!hot_streak_spells_in_flight&(buff.heating_up.react))\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/scorch,if=searing_touch.active\nactions.standard_rotation+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.standard_rotation+=/pyroblast,if=talent.tempered_flames\nactions.standard_rotation+=/ice_nova\nactions.standard_rotation+=/fireball",
					["spec"] = 63,
				},
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20221213,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "solar_beam",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 1 & ( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1",
								["var_name"] = "is_aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 1",
								["var_name"] = "is_cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "6 / spell_haste + talent.natures_balance.enabled + talent.orbit_breaker.enabled * dot.moonfire.ticking * ( buff.orbit_breaker.stack > 25 ) * 40",
								["var_name"] = "passive_asp",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "variable.is_aoe",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [13]
						},
						["precombat"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mark_of_the_wild",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.celestial_alignment.enabled & ! talent.incarnation_chosen_of_elune.enabled",
								["var_name"] = "no_cd_talent",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.aetherial_kindling.rank = 2 & ! talent.power_of_goldrinn.enabled",
								["var_name"] = "fourpc_starfall_st",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "on_use_trinket",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff & trinket.t1.cooldown.duration",
								["var_name"] = "on_use_trinket",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "( trinket.t2.has_use_buff & trinket.t2.cooldown.duration ) * 2",
								["var_name"] = "on_use_trinket",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [8]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 8 & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 8 & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( time_to_die > 10 - 5 * talent.orbital_strike.enabled || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled )",
								["var_name"] = "cd_condition_aoe",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & set_bonus.tier29_4pc & eclipse.any_next",
								["action"] = "wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) )",
								["action"] = "starfall",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "celestial_alignment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [7]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || buff.eclipse_lunar.up & buff.eclipse_lunar.remains < action.wrath.execute_time",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8",
								["action"] = "fury_of_elune",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( ! talent.fungal_growth.enabled || ! talent.waning_twilight.enabled || dot.fungal_growth.remains < 2 & fight_remains > 7 )",
								["action"] = "wild_mushroom",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( buff.gathering_starstuff.stack = 3 || buff.umbral_embrace.up ) & astral_power.deficit > variable.passive_asp + ( 8 * ( 1 + 0.4 * buff.warrior_of_elune.up ) )",
								["action"] = "starfire",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 & astral_power.deficit > variable.passive_asp + 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 4 & ( buff.ca_inc.remains < 12 & buff.ca_inc.up || buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 )",
								["action"] = "starfall",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "astral_power < 50 & spell_targets.starfall < 3 + talent.elunes_guidance.enabled & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["action"] = "convoke_the_spirits",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up",
								["action"] = "starsurge",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [21]
							{
								["action"] = "starfire",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [23]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "starfall",
							}, -- [1]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable & remains < 2",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & remains < 2",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8 & remains < 2",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.ca_inc.remains < 15 & ! buff.ca_inc.up & ( time_to_die > 15 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled )",
								["var_name"] = "cd_condition_st",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st & set_bonus.tier29_4pc & eclipse.any_next",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up",
								["action"] = "starfall",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st & buff.touch_the_cosmos.up",
								["action"] = "starsurge",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "celestial_alignment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.any_next || buff.eclipse_lunar.up & buff.eclipse_lunar.remains < action.wrath.execute_time",
								["var_name"] = "enter_lunar",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_lunar",
								["action"] = "wrath",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 4 || ( cooldown.ca_inc.remains > 30 || variable.no_cd_talent ) & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["var_name"] = "convoke_condition",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "action.convoke_the_spirits.known & cooldown.convoke_the_spirits.ready & variable.convoke_condition",
								["action"] = "starsurge",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.convoke_condition",
								["action"] = "convoke_the_spirits",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8",
								["action"] = "fury_of_elune",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_warp.up",
								["action"] = "starfall",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.starlord.enabled & buff.starlord.stack < 3 || talent.rattle_the_stars.enabled & buff.rattled_stars.up & buff.rattled_stars.remains < gcd.max",
								["action"] = "starsurge",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + ( 8 * ( 1 + 0.5 * talent.soul_of_the_forest.enabled * buff.eclipse_solar.up ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || boss & fight_remains < 5",
								["action"] = "starsurge",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 5 & ( ! talent.fungal_growth.enabled || talent.stellar_flare.enabled || dot.fungal_growth.remains < 2 ) || boss & fight_remains < 10",
								["action"] = "wild_mushroom",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_lunar || buff.warrior_of_elune.up & ( buff.eclipse_lunar.up || buff.umbral_embrace.react )",
								["action"] = "starfire",
							}, -- [29]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [31]
						},
					},
					["version"] = 20221213,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 6: Converted 'talent.natures_balance' to 'talent.natures_balance.enabled' (1x).\nLine 6: Converted 'talent.orbit_breaker' to 'talent.orbit_breaker.enabled' (1x).\nLine 6: Converted operations in '6%spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40' to '6/spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40'.\nLine 9: Converted 'trinket.2.ready_cooldown' to 'trinket.t2.ready_cooldown' (1x).\nLine 10: Converted 'trinket.1.ready_cooldown' to 'trinket.t1.ready_cooldown' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.celestial_alignment' to 'talent.celestial_alignment.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 4: Converted 'talent.power_of_goldrinn' to 'talent.power_of_goldrinn.enabled' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\n\nThe import for 'aoe' required some automated changes.\nLine 3: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 5: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 12: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 12: Converted 'talent.waning_twilight' to 'talent.waning_twilight.enabled' (1x).\nLine 16: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 17: Converted 'talent.elunes_guidance' to 'talent.elunes_guidance.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 3: Converted operations in 'dot.moonfire.remains>remains*22%18' to 'dot.moonfire.remains>remains*22/18'.\n\nThe import for 'st' required some automated changes.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 20: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 20: Converted 'talent.rattle_the_stars' to 'talent.rattle_the_stars.enabled' (1x).\nLine 27: Converted 'talent.soul_of_the_forest' to 'talent.soul_of_the_forest.enabled' (1x).\nLine 27: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\nLine 28: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 28: Converted 'talent.stellar_flare' to 'talent.stellar_flare.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune\nactions.precombat+=/variable,name=fourpc_starfall_st,value=talent.aetherial_kindling.rank=2&!talent.power_of_goldrinn\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=trinket.1.has_use_buff&trinket.1.cooldown.duration\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=(trinket.2.has_use_buff&trinket.2.cooldown.duration)*2\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<1&(eclipse.any_next||eclipse.lunar_next)\nactions=variable,name=is_aoe,value=spell_targets.starfall>1\nactions+=/variable,name=is_cleave,value=spell_targets.starfire>1\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40\nactions+=/berserking,if=buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<25\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/run_action_list,name=aoe,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\nactions.aoe=sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>8&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/moonfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>8&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/variable,name=cd_condition_aoe,value=cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.1.time_to_die>10-5*talent.orbital_strike||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune)\nactions.aoe+=/wrath,if=variable.cd_condition_aoe&set_bonus.tier29_4pc&eclipse.any_next\nactions.aoe+=/starfall,if=variable.cd_condition_aoe&talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/wrath,if=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.aoe+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.fungal_growth||!talent.waning_twilight||dot.fungal_growth.remains<2&fight_remains>7)\nactions.aoe+=/starfire,if=(buff.gathering_starstuff.stack=3||buff.umbral_embrace.up)&astral_power.deficit>variable.passive_asp+(8*(1+0.4*buff.warrior_of_elune.up))\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8&astral_power.deficit>variable.passive_asp+8\nactions.aoe+=/starfall,if=target.time_to_die>4&(buff.ca_inc.remains<12&buff.ca_inc.up||buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/starfire\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru=starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st=sunfire,cycle_targets=1,if=refreshable&remains<2\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8&remains<2\nactions.st+=/variable,name=cd_condition_st,value=cooldown.ca_inc.remains<15&!buff.ca_inc.up&(target.1.time_to_die>15||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune)\nactions.st+=/wrath,if=variable.cd_condition_st&set_bonus.tier29_4pc&eclipse.any_next\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up\nactions.st+=/starsurge,if=variable.cd_condition_st&buff.touch_the_cosmos.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/warrior_of_elune\nactions.st+=/variable,name=enter_lunar,value=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.st+=/wrath,if=variable.enter_lunar\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.st+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8\nactions.st+=/starfall,if=buff.starweavers_warp.up\nactions.st+=/starsurge,if=talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/starsurge,if=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+(8*(1+0.5*talent.soul_of_the_forest*buff.eclipse_solar.up))||talent.astral_communion&cooldown.astral_communion.remains<3||boss&fight_remains<5\nactions.st+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+5&(!talent.fungal_growth||talent.stellar_flare||dot.fungal_growth.remains<2)||boss&fight_remains<10\nactions.st+=/starfire,if=eclipse.in_lunar||buff.warrior_of_elune.up&(buff.eclipse_lunar.up||buff.umbral_embrace.react)\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
					["spec"] = 102,
				},
				["Havoc"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20221214,
					["spec"] = 577,
					["desc"] = "",
					["profile"] = "actions.precombat+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.precombat+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\nactions.precombat+=/arcane_torrent\n\nactions=disrupt\nactions+=/consume_magic\n# Precombat Immolation Aura\nactions+=/immolation_aura,if=time<2\n# Blade Dance with First Blood, Trail of Ruin, or at 2+ targets\nactions+=/variable,name=blade_dance,value=talent.first_blood||talent.trail_of_ruin||talent.chaos_theory&buff.chaos_theory.down||spell_targets.blade_dance1>1\nactions+=/variable,name=pooling_for_blade_dance,value=variable.blade_dance&fury<(75-talent.demon_blades*20)&cooldown.blade_dance.remains<gcd.max\nactions+=/variable,name=pooling_for_eye_beam,value=talent.demonic&!talent.blind_fury&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20\nactions+=/variable,name=waiting_for_momentum,value=talent.momentum&(!buff.momentum.up&settings.recommend_movement)\nactions+=/call_action_list,name=cooldown,if=gcd.remains=0\n## actions+=/pick_up_fragment,type=demon,if=demon_soul_fragments>0\n## actions+=/pick_up_fragment,mode=nearest,if=talent.demonic_appetite&fury.deficit>=35&(!cooldown.eye_beam.ready||fury<30)\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&talent.essence_break&time>1&(cooldown.essence_break.remains>15||cooldown.essence_break.remains<gcd.max&(!talent.demonic||buff.metamorphosis.up||cooldown.eye_beam.remains>15+(10*talent.cycle_of_hatred)))\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&!talent.essence_break&time>1&!buff.momentum.up&settings.recommend_movement\nactions+=/fel_rush,if=(buff.unbound_chaos.up||variable.waiting_for_momentum&(!talent.unbound_chaos||!cooldown.immolation_aura.ready))&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/essence_break,if=(active_enemies>desired_targets||raid_event.adds.in>40)&!variable.waiting_for_momentum&fury>40&(cooldown.eye_beam.remains>8||buff.metamorphosis.up)&(!talent.tactical_retreat||!settings.recommend_movement||buff.tactical_retreat.up)\nactions+=/death_sweep,if=variable.blade_dance&(!talent.essence_break||cooldown.essence_break.remains>(cooldown.death_sweep.duration-4))\nactions+=/fel_barrage,if=active_enemies>desired_targets||raid_event.adds.in>30\nactions+=/glaive_tempest,if=active_enemies>desired_targets||raid_event.adds.in>10\nactions+=/eye_beam,if=active_enemies>desired_targets||raid_event.adds.in>(40-talent.cycle_of_hatred*15)&!debuff.essence_break.up\nactions+=/blade_dance,if=variable.blade_dance&!cooldown.metamorphosis.ready&(cooldown.eye_beam.remains>5||!talent.demonic||(raid_event.adds.in>cooldown&raid_event.adds.in<25))\nactions+=/throw_glaive,if=talent.soulrend&(active_enemies>desired_targets||raid_event.adds.in>full_recharge_time+9)&spell_targets>=(2-talent.furious_throws)&!debuff.essence_break.up\nactions+=/annihilation,if=!variable.pooling_for_blade_dance\nactions+=/throw_glaive,if=talent.serrated_glaive&cooldown.eye_beam.remains<4&!debuff.serrated_glaive.up&!debuff.essence_break.up\nactions+=/immolation_aura,if=!buff.immolation_aura.up&(!talent.ragefire||active_enemies>desired_targets||raid_event.adds.in>15)\nactions+=/felblade,if=fury.deficit>=40\nactions+=/sigil_of_flame,if=active_enemies>desired_targets\nactions+=/chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam\nactions+=/fel_rush,if=settings.recommend_movement&!talent.momentum&talent.demon_blades&!cooldown.eye_beam.ready&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/demons_bite,cycle_targets=1,if=talent.burning_wound&debuff.burning_wound.remains<4&active_dot.burning_wound<(spell_targets>?3)\nactions+=/fel_rush,if=settings.recommend_movement&!talent.momentum&!talent.demon_blades&spell_targets>1&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/sigil_of_flame,if=raid_event.adds.in>15&fury.deficit>=30\nactions+=/demons_bite\nactions+=/fel_rush,if=settings.recommend_movement&(movement.distance>15||(buff.out_of_range.up&!talent.momentum))\nactions+=/vengeful_retreat,if=settings.recommend_movement&!talent.initiative&movement.distance>15\nactions+=/throw_glaive,if=(talent.demon_blades||buff.out_of_range.up)&!debuff.essence_break.up\n\n# Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over\nactions.cooldown+=/metamorphosis,if=!talent.demonic&((!talent.chaotic_transformation||cooldown.eye_beam.remains>20)&active_enemies>desired_targets||raid_event.adds.in>60||fight_remains<25)\nactions.cooldown+=/metamorphosis,if=talent.demonic&(!talent.chaotic_transformation||cooldown.eye_beam.remains>20&(!variable.blade_dance||cooldown.blade_dance.remains>gcd.max)||fight_remains<25)\nactions.cooldown+=/potion,if=buff.metamorphosis.remains>25||buff.metamorphosis.up&cooldown.metamorphosis.ready||boss&fight_remains<60\n# Default use item logic\nactions.cooldown+=/use_items,slots=trinket1,if=variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.1.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.2.cooldown.ready)||!variable.trinket_sync_slot\nactions.cooldown+=/use_items,slots=trinket2,if=variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.2.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.1.cooldown.ready)||!variable.trinket_sync_slot\nactions.cooldown+=/the_hunt,if=(!talent.momentum||!buff.momentum.up)\nactions.cooldown+=/elysian_decree,if=(active_enemies>desired_targets||raid_event.adds.in>30)",
					["version"] = 20221214,
					["warnings"] = "The import for 'cooldown' required some automated changes.\nLine 1: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 1: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 2: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 2: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 4: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 4: Converted operations in 'variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot' to 'variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration/2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 5: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 5: Converted operations in 'variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot' to 'variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration/2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot'.\nLine 6: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 4: Converted 'talent.first_blood' to 'talent.first_blood.enabled' (1x).\nLine 4: Converted 'talent.trail_of_ruin' to 'talent.trail_of_ruin.enabled' (1x).\nLine 4: Converted 'talent.chaos_theory' to 'talent.chaos_theory.enabled' (1x).\nLine 5: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 6: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 6: Converted 'talent.blind_fury' to 'talent.blind_fury.enabled' (1x).\nLine 7: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 9: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 9: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 9: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 9: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 10: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 10: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 11: Converted 'talent.unbound_chaos' to 'talent.unbound_chaos.enabled' (1x).\nLine 12: Converted 'talent.tactical_retreat' to 'talent.tactical_retreat.enabled' (1x).\nLine 13: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 16: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 17: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 18: Converted 'talent.soulrend' to 'talent.soulrend.enabled' (1x).\nLine 18: Converted 'talent.furious_throws' to 'talent.furious_throws.enabled' (1x).\nLine 20: Converted 'talent.serrated_glaive' to 'talent.serrated_glaive.enabled' (1x).\nLine 21: Converted 'talent.ragefire' to 'talent.ragefire.enabled' (1x).\nLine 25: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 25: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 26: Converted 'talent.burning_wound' to 'talent.burning_wound.enabled' (1x).\nLine 27: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 27: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 30: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 31: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 32: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\n\nImported 3 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["cooldown"] = {
							{
								["enabled"] = true,
								["description"] = "Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over",
								["criteria"] = "! talent.demonic.enabled & ( ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 ) & active_enemies > desired_targets || raid_event.adds.in > 60 || fight_remains < 25 )",
								["action"] = "metamorphosis",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.demonic.enabled & ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 & ( ! variable.blade_dance || cooldown.blade_dance.remains > gcd.max ) || fight_remains < 25 )",
								["action"] = "metamorphosis",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.remains > 25 || buff.metamorphosis.up & cooldown.metamorphosis.ready || boss & fight_remains < 60",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.trinket_sync_slot = 1 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t1.cooldown.duration / 2 ) ) || fight_remains <= 20 ) || ( variable.trinket_sync_slot = 2 & ! trinket.t2.cooldown.ready ) || ! variable.trinket_sync_slot",
								["description"] = "Default use item logic",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.trinket_sync_slot = 2 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t2.cooldown.duration / 2 ) ) || fight_remains <= 20 ) || ( variable.trinket_sync_slot = 1 & ! trinket.t1.cooldown.ready ) || ! variable.trinket_sync_slot",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.momentum.enabled || ! buff.momentum.up )",
								["action"] = "the_hunt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "elysian_decree",
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Precombat Immolation Aura",
								["criteria"] = "time < 2",
								["action"] = "immolation_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.first_blood.enabled || talent.trail_of_ruin.enabled || talent.chaos_theory.enabled & buff.chaos_theory.down || spell_targets.blade_dance1 > 1",
								["description"] = "Blade Dance with First Blood, Trail of Ruin, or at 2+ targets",
								["var_name"] = "blade_dance",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.blade_dance & fury < ( 75 - talent.demon_blades.enabled * 20 ) & cooldown.blade_dance.remains < gcd.max",
								["var_name"] = "pooling_for_blade_dance",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.demonic.enabled & ! talent.blind_fury.enabled & cooldown.eye_beam.remains < ( gcd.max * 2 ) & fury.deficit > 20",
								["var_name"] = "pooling_for_eye_beam",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.momentum.enabled & ( ! buff.momentum.up & settings.recommend_movement )",
								["var_name"] = "waiting_for_momentum",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0",
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "vengeful_retreat",
								["criteria"] = "talent.initiative.enabled & talent.essence_break.enabled & time > 1 & ( cooldown.essence_break.remains > 15 || cooldown.essence_break.remains < gcd.max & ( ! talent.demonic.enabled || buff.metamorphosis.up || cooldown.eye_beam.remains > 15 + ( 10 * talent.cycle_of_hatred.enabled ) ) )",
								["use_off_gcd"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "vengeful_retreat",
								["criteria"] = "talent.initiative.enabled & ! talent.essence_break.enabled & time > 1 & ! buff.momentum.up & settings.recommend_movement",
								["use_off_gcd"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.unbound_chaos.up || variable.waiting_for_momentum & ( ! talent.unbound_chaos.enabled || ! cooldown.immolation_aura.ready ) ) & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 40 ) & ! variable.waiting_for_momentum & fury > 40 & ( cooldown.eye_beam.remains > 8 || buff.metamorphosis.up ) & ( ! talent.tactical_retreat.enabled || ! settings.recommend_movement || buff.tactical_retreat.up )",
								["action"] = "essence_break",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ( ! talent.essence_break.enabled || cooldown.essence_break.remains > ( cooldown.death_sweep.duration - 4 ) )",
								["action"] = "death_sweep",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 30",
								["action"] = "fel_barrage",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 10",
								["action"] = "glaive_tempest",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > ( 40 - talent.cycle_of_hatred.enabled * 15 ) & ! debuff.essence_break.up",
								["action"] = "eye_beam",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ! cooldown.metamorphosis.ready & ( cooldown.eye_beam.remains > 5 || ! talent.demonic.enabled || ( raid_event.adds.in > action_cooldown & raid_event.adds.in < 25 ) )",
								["action"] = "blade_dance",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.soulrend.enabled & ( active_enemies > desired_targets || raid_event.adds.in > full_recharge_time + 9 ) & spell_targets >= ( 2 - talent.furious_throws.enabled ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance",
								["action"] = "annihilation",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.serrated_glaive.enabled & cooldown.eye_beam.remains < 4 & ! debuff.serrated_glaive.up & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! buff.immolation_aura.up & ( ! talent.ragefire.enabled || active_enemies > desired_targets || raid_event.adds.in > 15 )",
								["action"] = "immolation_aura",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets",
								["action"] = "sigil_of_flame",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance & ! variable.pooling_for_eye_beam",
								["action"] = "chaos_strike",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "settings.recommend_movement & ! talent.momentum.enabled & talent.demon_blades.enabled & ! cooldown.eye_beam.ready & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "demons_bite",
								["criteria"] = "talent.burning_wound.enabled & debuff.burning_wound.remains < 4 & active_dot.burning_wound < ( spell_targets >? 3 )",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "settings.recommend_movement & ! talent.momentum.enabled & ! talent.demon_blades.enabled & spell_targets > 1 & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 & fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [28]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "settings.recommend_movement & ( movement.distance > 15 || ( buff.out_of_range.up & ! talent.momentum.enabled ) )",
								["action"] = "fel_rush",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "settings.recommend_movement & ! talent.initiative.enabled & movement.distance > 15",
								["action"] = "vengeful_retreat",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || buff.out_of_range.up ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [32]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [2]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [3]
						},
					},
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221214.1,
					["spec"] = 62,
					["desc"] = "",
					["lists"] = {
						["aoe_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down",
								["action"] = "ice_nova",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.arcane_surge.down",
								["action"] = "nether_tempest",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & talent.arcane_harmony.enabled & talent.rune_of_power.enabled & cooldown.rune_of_power.remains < ( gcd.max * 2 )",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack || mana.pct < 10",
								["action"] = "arcane_barrage",
							}, -- [6]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe_spark_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & cooldown.arcane_surge.remains > 75",
								["action"] = "cancel_buff",
								["buff_name"] = "presence_of_mind",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & cooldown.arcane_surge.remains > 30",
								["action"] = "rune_of_power",
							}, -- [2]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 2 )",
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack >= 3 & prev_gcd.1.radiant_spark",
								["action"] = "arcane_explosion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3",
								["action"] = "arcane_orb",
								["line_cd"] = "15",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_echo.enabled",
								["action"] = "nether_tempest",
								["line_cd"] = "15",
							}, -- [7]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 2 & cooldown.arcane_surge.remains > 75 ) || ( debuff.radiant_spark_vulnerability.stack = 1 & cooldown.arcane_surge.remains < 75 )",
								["action"] = "arcane_barrage",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
								["use_off_gcd"] = 1,
							}, -- [11]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 2 || debuff.radiant_spark_vulnerability.stack = 3",
								["action"] = "arcane_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 4 & buff.arcane_surge.up ) || ( debuff.radiant_spark_vulnerability.stack = 3 & buff.arcane_surge.down )",
								["action"] = "arcane_barrage",
							}, -- [14]
						},
						["aoe_touch_phase"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - variable.conserve_mana",
								["criteria"] = "debuff.touch_of_the_magi.remains > 9",
								["var_name"] = "conserve_mana",
							}, -- [1]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_bombardment.enabled & target.health.pct < 35 & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & active_enemies >= variable.aoe_target_count & cooldown.arcane_orb.remains <= execute_time",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & ( talent.arcane_echo.enabled || talent.arcane_harmony.enabled )",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready",
								["action"] = "arcane_missiles",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [9]
						},
						["touch_phase"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - variable.conserve_mana",
								["criteria"] = "debuff.touch_of_the_magi.remains > 9",
								["var_name"] = "conserve_mana",
							}, -- [1]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.arcane_bombardment.enabled || target.health.pct > 35 ) & buff.arcane_surge.up & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "presence_of_mind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.arcane_harmony.up || ( talent.arcane_bombardment.enabled & target.health.pct < 35 ) ) & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [5]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready",
								["action"] = "arcane_missiles",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & ( debuff.touch_of_the_magi.remains > execute_time || ! talent.presence_of_mind.enabled )",
								["action"] = "arcane_missiles",
							}, -- [8]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [10]
						},
						["rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & target.health.pct < 35 & talent.arcane_bombardment.enabled",
								["action"] = "presence_of_mind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & target.health.pct < 35 & talent.arcane_bombardment.enabled & buff.arcane_charge.stack < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.clearcasting.stack = buff.clearcasting.max_stack",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( buff.temporal_warp.up || mana.pct < 10 || ! talent.shifting_power.enabled ) & buff.arcane_surge.down",
								["action"] = "nether_tempest",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 50 & ! talent.evocation.enabled",
								["action"] = "arcane_barrage",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 70 & variable.conserve_mana & buff.bloodlust.up & cooldown.touch_of_the_magi.remains > 5",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.concentration.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_missiles",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 60 & variable.conserve_mana & ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > 5 ) & cooldown.touch_of_the_magi.remains > 10 & cooldown.evocation.remains > 40",
								["action"] = "arcane_barrage",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.nether_precision.down",
								["action"] = "arcane_missiles",
							}, -- [12]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [14]
						},
						["standard_cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_surge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge & talent.arcane_echo.enabled",
								["action"] = "nether_tempest",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "meteor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "rune_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "meteor",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
								["use_off_gcd"] = 1,
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.ready",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.temporal_warp.enabled & buff.exhaustion.up & ( cooldown.arcane_surge.ready || fight_remains <= 40 || buff.arcane_surge.up & fight_remains <= 80 )",
								["action"] = "time_warp",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "bag_of_tricks",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( prev_gcd.1.arcane_surge & ! ( buff.temporal_warp.up & buff.bloodlust.up ) ) || ( buff.arcane_surge.up & debuff.touch_of_the_magi.up )",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "blood_fury",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "use_items",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 65 & ( ! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20 )",
								["name"] = "conjured_chillglobe",
								["action"] = "conjured_chillglobe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_rime",
								["action"] = "darkmoon_deck_rime",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_dance",
								["action"] = "darkmoon_deck_dance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_inferno",
								["action"] = "darkmoon_deck_inferno",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "desperate_invokers_codex",
								["action"] = "desperate_invokers_codex",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "iceblood_deathsnare",
								["action"] = "iceblood_deathsnare",
							}, -- [16]
							{
								["enabled"] = true,
								["action_name"] = "evocation",
								["action"] = "cancel_action",
								["criteria"] = "action.evocation.channeling & mana.pct >= 95 & ! talent.siphon_storm.enabled",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_surge.down & debuff.touch_of_the_magi.down & ( ( mana.pct < 10 & cooldown.touch_of_the_magi.remains < 25 ) || talent.siphon_storm.enabled & cooldown.touch_of_the_magi.remains < 20 )",
								["action"] = "evocation",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.touch_of_the_magi.down & buff.arcane_surge.down & cooldown.arcane_surge.remains < fight_remains & ! mana_gem_charges",
								["action"] = "conjure_mana_gem",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.cascading_power.enabled & buff.clearcasting.stack < 2 & buff.arcane_surge.up",
								["action"] = "mana_gem",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.cascading_power.enabled & prev_gcd.1.arcane_surge",
								["action"] = "mana_gem",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.aoe_spark_phase",
								["list_name"] = "aoe_spark_phase",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.spark_phase",
								["list_name"] = "spark_phase",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_touch_phase",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies < variable.aoe_target_count",
								["list_name"] = "touch_phase",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.rop_phase",
								["list_name"] = "rop_phase",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.radiant_spark.enabled & ( ! talent.rune_of_power.enabled || active_enemies >= variable.aoe_target_count )",
								["list_name"] = "standard_cooldowns",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_rotation",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation",
							}, -- [29]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "arcane_familiar",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "conjure_mana_gem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.gladiators_badge || equipped.irideus_fragment || equipped.erupting_spear_fragment || equipped.spoils_of_neltharus || equipped.tome_of_unstable_power || equipped.timebreaching_talon || equipped.horn_of_valor",
								["var_name"] = "steroid_trinket_equipped",
							}, -- [4]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.siphon_storm.enabled",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.siphon_storm.enabled",
								["action"] = "evocation",
							}, -- [7]
						},
						["spark_phase"] = {
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "talent.arcane_harmony.enabled & buff.arcane_harmony.stack < 15 & ( buff.bloodlust.up || buff.clearcasting.react & cooldown.radiant_spark.remains < 5 ) & cooldown.arcane_surge.remains < 30 & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["action"] = "arcane_missiles",
							}, -- [1]
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 3 )",
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.4.radiant_spark",
								["action"] = "arcane_surge",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.5.radiant_spark",
								["action"] = "nether_tempest",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark ) || ( ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark )",
								["action"] = "meteor",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_haste > 0.49 & buff.bloodlust.up & ( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark || ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark )",
								["action"] = "arcane_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
								["use_off_gcd"] = 1,
							}, -- [10]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [12]
						},
						["rop_phase"] = {
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.2.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.3.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.4.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_echo.enabled",
								["action"] = "nether_tempest",
								["line_cd"] = "15",
							}, -- [7]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
								["use_off_gcd"] = 1,
							}, -- [10]
						},
					},
					["version"] = 20221214.1,
					["warnings"] = "The import for 'aoe_rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 5: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'aoe_spark_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'aoe_touch_phase' required some automated changes.\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 6: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\n\nThe import for 'touch_phase' required some automated changes.\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 6: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\nLine 8: Converted 'talent.presence_of_mind' to 'talent.presence_of_mind.enabled' (1x).\n\nThe import for 'rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 4: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 6: Converted 'talent.shifting_power' to 'talent.shifting_power.enabled' (1x).\nLine 7: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 11: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'standard_cooldowns' required some automated changes.\nLine 2: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 17: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 18: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 20: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 21: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 22: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 23: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 27: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 27: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'rop_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'spark_phase' required some automated changes.\nLine 1: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 1: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 7: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 7: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 8: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 8: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 6: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 7: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\n\nImported 10 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/arcane_familiar\nactions.precombat+=/conjure_mana_gem\n## actions.precombat+=/variable,name=aoe_target_count,default=-1,op=set,if=variable.aoe_target_count=-1,value=3\n## actions.precombat+=/variable,name=conserve_mana,op=set,value=0\nactions.precombat+=/variable,name=steroid_trinket_equipped,op=set,value=equipped.gladiators_badge||equipped.irideus_fragment||equipped.erupting_spear_fragment||equipped.spoils_of_neltharus||equipped.tome_of_unstable_power||equipped.timebreaching_talon||equipped.horn_of_valor\nactions.precombat+=/mirror_image\nactions.precombat+=/arcane_blast,if=!talent.siphon_storm\nactions.precombat+=/evocation,if=talent.siphon_storm\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/potion,if=cooldown.arcane_surge.ready\nactions+=/time_warp,if=talent.temporal_warp&buff.exhaustion.up&(cooldown.arcane_surge.ready||fight_remains<=40||buff.arcane_surge.up&fight_remains<=80)\nactions+=/lights_judgment,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/bag_of_tricks,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/berserking,if=(prev_gcd.1.arcane_surge&!(buff.temporal_warp.up&buff.bloodlust.up))||(buff.arcane_surge.up&debuff.touch_of_the_magi.up)\nactions+=/blood_fury,if=prev_gcd.1.arcane_surge\nactions+=/fireblood,if=prev_gcd.1.arcane_surge\nactions+=/ancestral_call,if=prev_gcd.1.arcane_surge\nactions+=/use_items,if=prev_gcd.1.arcane_surge\n## TODO: actions+=/use_item,name=tinker_breath_of_neltharion,if=cooldown.arcane_surge.remains&buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down\nactions+=/use_item,name=conjured_chillglobe,if=mana.pct>65&(!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20)\nactions+=/use_item,name=darkmoon_deck_rime,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_dance,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_inferno,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=desperate_invokers_codex,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=iceblood_deathsnare,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\n## actions+=/variable,name=aoe_spark_phase,op=set,value=1,if=active_enemies>=variable.aoe_target_count&(action.arcane_orb.charges>0||buff.arcane_charge.stack>=3)&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*2)\n## actions+=/variable,name=aoe_spark_phase,op=set,value=0,if=variable.aoe_spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<5&cooldown.radiant_spark.remains\n## actions+=/variable,name=spark_phase,op=set,value=1,if=buff.arcane_charge.stack>=3&active_enemies<variable.aoe_target_count&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*7)\n## actions+=/variable,name=spark_phase,op=set,value=0,if=variable.spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<5&cooldown.radiant_spark.remains\n## actions+=/variable,name=rop_phase,op=set,value=1,if=talent.rune_of_power&!talent.radiant_spark&buff.arcane_charge.stack>=3&cooldown.rune_of_power.ready&active_enemies<variable.aoe_target_count\n## actions+=/variable,name=rop_phase,op=set,value=0,if=debuff.touch_of_the_magi.up||!talent.rune_of_power\nactions+=/cancel_action,name=evocation,if=action.evocation.channeling&mana.pct>=95&!talent.siphon_storm\nactions+=/evocation,if=buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down&((mana.pct<10&cooldown.touch_of_the_magi.remains<25)||talent.siphon_storm&cooldown.touch_of_the_magi.remains<20)\nactions+=/conjure_mana_gem,if=buff.rune_of_power.down&debuff.touch_of_the_magi.down&buff.arcane_surge.down&cooldown.arcane_surge.remains<fight_remains&!mana_gem_charges\nactions+=/use_mana_gem,if=talent.cascading_power&buff.clearcasting.stack<2&buff.arcane_surge.up\nactions+=/use_mana_gem,if=!talent.cascading_power&prev_gcd.1.arcane_surge\nactions+=/call_action_list,name=aoe_spark_phase,strict=1,if=talent.radiant_spark&variable.aoe_spark_phase\nactions+=/call_action_list,name=spark_phase,strict=1,if=talent.radiant_spark&variable.spark_phase\nactions+=/call_action_list,name=aoe_touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies<variable.aoe_target_count\nactions+=/call_action_list,name=rop_phase,strict=1,if=variable.rop_phase\nactions+=/call_action_list,name=standard_cooldowns,strict=1,if=!talent.radiant_spark&(!talent.rune_of_power||active_enemies>=variable.aoe_target_count)\nactions+=/call_action_list,name=aoe_rotation,strict=1,if=active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=rotation\n\nactions.aoe_rotation=arcane_orb,if=buff.arcane_charge.stack<2\nactions.aoe_rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down\nactions.aoe_rotation+=/ice_nova,if=buff.arcane_surge.down\nactions.aoe_rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.arcane_surge.down\nactions.aoe_rotation+=/arcane_missiles,if=buff.clearcasting.react&talent.arcane_harmony&talent.rune_of_power&cooldown.rune_of_power.remains<(gcd.max*2)\nactions.aoe_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack||mana.pct<10\nactions.aoe_rotation+=/arcane_explosion\n\nactions.aoe_spark_phase=cancel_buff,name=presence_of_mind,if=prev_gcd.1.arcane_blast&cooldown.arcane_surge.remains>75\nactions.aoe_spark_phase+=/rune_of_power,if=cooldown.arcane_surge.remains<75&cooldown.arcane_surge.remains>30\nactions.aoe_spark_phase+=/radiant_spark\nactions.aoe_spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*2)\nactions.aoe_spark_phase+=/arcane_explosion,if=buff.arcane_charge.stack>=3&prev_gcd.1.radiant_spark\nactions.aoe_spark_phase+=/arcane_orb,if=buff.arcane_charge.stack<3,line_cd=15\nactions.aoe_spark_phase+=/nether_tempest,if=talent.arcane_echo,line_cd=15\nactions.aoe_spark_phase+=/arcane_surge\n## actions.aoe_spark_phase+=/wait,sec=0.04,if=cooldown.arcane_surge.remains>75&prev_gcd.1.arcane_blast&!talent.presence_of_mind,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.04,if=prev_gcd.1.arcane_surge,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.04,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=3&!talent.presence_of_mind,line_cd=15\nactions.aoe_spark_phase+=/arcane_barrage,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=4\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=2&cooldown.arcane_surge.remains>75)||(debuff.radiant_spark_vulnerability.stack=1&cooldown.arcane_surge.remains<75)\nactions.aoe_spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\nactions.aoe_spark_phase+=/presence_of_mind\nactions.aoe_spark_phase+=/arcane_blast,if=debuff.radiant_spark_vulnerability.stack=2||debuff.radiant_spark_vulnerability.stack=3\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=4&buff.arcane_surge.up)||(debuff.radiant_spark_vulnerability.stack=3&buff.arcane_surge.down)\n\nactions.aoe_touch_phase+=/variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.aoe_touch_phase+=/meteor\nactions.aoe_touch_phase+=/arcane_barrage,if=talent.arcane_bombardment&target.health.pct<35&debuff.touch_of_the_magi.remains<=gcd.max\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&active_enemies>=variable.aoe_target_count&cooldown.arcane_orb.remains<=execute_time\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(talent.arcane_echo||talent.arcane_harmony),chain=1\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready,chain=1\nactions.aoe_touch_phase+=/arcane_orb,if=buff.arcane_charge.stack<2\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.aoe_touch_phase+=/arcane_explosion\n\nactions.rop_phase=rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.2.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.3.rune_of_power\nactions.rop_phase+=/arcane_surge\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.4.rune_of_power\nactions.rop_phase+=/nether_tempest,if=talent.arcane_echo,line_cd=15\nactions.rop_phase+=/meteor\nactions.rop_phase+=/arcane_barrage\nactions.rop_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.rotation=arcane_orb,if=buff.arcane_charge.stack<2\nactions.rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down\nactions.rotation+=/presence_of_mind,if=buff.arcane_charge.stack<3&target.health.pct<35&talent.arcane_bombardment\nactions.rotation+=/arcane_blast,if=buff.presence_of_mind.up&target.health.pct<35&talent.arcane_bombardment&buff.arcane_charge.stack<3\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.clearcasting.stack=buff.clearcasting.max_stack\nactions.rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(buff.temporal_warp.up||mana.pct<10||!talent.shifting_power)&buff.arcane_surge.down\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<50&!talent.evocation\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<70&variable.conserve_mana&buff.bloodlust.up&cooldown.touch_of_the_magi.remains>5\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.concentration.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.rotation+=/arcane_blast,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.nether_precision.up\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<60&variable.conserve_mana&(!talent.rune_of_power||cooldown.rune_of_power.remains>5)&cooldown.touch_of_the_magi.remains>10&cooldown.evocation.remains>40\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.nether_precision.down\nactions.rotation+=/arcane_blast\nactions.rotation+=/arcane_barrage\n\nactions.spark_phase+=/arcane_missiles,if=talent.arcane_harmony&buff.arcane_harmony.stack<15&(buff.bloodlust.up||buff.clearcasting.react&cooldown.radiant_spark.remains<5)&cooldown.arcane_surge.remains<30&(buff.rune_of_power.up||!talent.rune_of_power),chain=1\nactions.spark_phase+=/rune_of_power\nactions.spark_phase+=/radiant_spark\nactions.spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*3)\nactions.spark_phase+=/arcane_surge,if=prev_gcd.4.radiant_spark\nactions.spark_phase+=/nether_tempest,if=prev_gcd.5.radiant_spark\nactions.spark_phase+=/meteor,if=(talent.nether_tempest&prev_gcd.6.radiant_spark)||(!talent.nether_tempest&prev_gcd.5.radiant_spark)\nactions.spark_phase+=/arcane_blast,if=spell_haste>0.49&buff.bloodlust.up&(talent.nether_tempest&prev_gcd.6.radiant_spark||!talent.nether_tempest&prev_gcd.5.radiant_spark)\nactions.spark_phase+=/arcane_barrage,if=debuff.radiant_spark_vulnerability.stack=4\nactions.spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\nactions.spark_phase+=/arcane_blast\nactions.spark_phase+=/arcane_barrage\n\nactions.standard_cooldowns=arcane_surge,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/nether_tempest,if=prev_gcd.1.arcane_surge&talent.arcane_echo\nactions.standard_cooldowns+=/meteor,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/arcane_barrage,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/rune_of_power,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/meteor,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.touch_phase=variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.touch_phase+=/meteor\nactions.touch_phase+=/presence_of_mind,if=(!talent.arcane_bombardment||target.health.pct>35)&buff.arcane_surge.up&debuff.touch_of_the_magi.remains<=gcd.max\nactions.touch_phase+=/arcane_blast,if=buff.presence_of_mind.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.touch_phase+=/arcane_barrage,if=(buff.arcane_harmony.up||(talent.arcane_bombardment&target.health.pct<35))&debuff.touch_of_the_magi.remains<=gcd.max\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready,chain=1\nactions.touch_phase+=/arcane_blast,if=buff.nether_precision.up\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(debuff.touch_of_the_magi.remains>execute_time||!talent.presence_of_mind),chain=1\nactions.touch_phase+=/arcane_blast\nactions.touch_phase+=/arcane_barrage",
				},
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221213.1,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "water_jet",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 7 || active_enemies >= 3 & talent.ice_caller.enabled",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 7 & ( active_enemies < 3 || ! talent.ice_caller.enabled )",
								["list_name"] = "st",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "blizzard",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "frostbolt",
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & debuff.frozen.up & ( prev_gcd.1.frost_nova || prev_gcd.1.ice_nova || prev_off_gcd.freeze )",
								["action"] = "cone_of_cold",
							}, -- [1]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( ! talent.snowstorm.enabled & debuff.frozen.down || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack )",
								["action"] = "freeze",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( prev_gcd.1.comet_storm || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1 )",
								["action"] = "ice_nova",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & active_enemies >= 5 & cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1",
								["action"] = "frost_nova",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack",
								["action"] = "cone_of_cold",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0 & debuff.winters_chill.down & ( prev_gcd.1.frostbolt || ( active_enemies >= 7 || charges = max_charges ) & buff.fingers_of_frost.react = 0 )",
								["action"] = "flurry",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react || debuff.frozen.remains > travel_time || remaining_winters_chill",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["action"] = "shifting_power",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 7",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 7",
								["action"] = "arcane_explosion",
							}, -- [15]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [17]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.exhaustion.up & buff.bloodlust.down",
								["action"] = "time_warp",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_off_gcd.icy_veins || boss & fight_remains < 60",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ( buff.icy_veins.down || talent.rune_of_power.enabled )",
								["action"] = "icy_veins",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & cooldown.icy_veins.remains > 10",
								["action"] = "rune_of_power",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [10]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "meteor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "comet_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0 & debuff.winters_chill.down & ( prev_gcd.1.frostbolt || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill = 1 & buff.freezing_winds.down",
								["action"] = "ray_of_frost",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill",
								["action"] = "glacial_spike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & remaining_winters_chill",
								["action"] = "cone_of_cold",
							}, -- [6]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & talent.ice_caller.enabled & talent.freezing_rain.enabled",
								["action"] = "blizzard",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down",
								["action"] = "shifting_power",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react & ! prev_gcd.1.glacial_spike || remaining_winters_chill",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4",
								["action"] = "ice_nova",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "action.flurry.cooldown_react",
								["action"] = "glacial_spike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "ebonbolt",
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [15]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 2",
								["action"] = "arcane_explosion",
							}, -- [4]
							{
								["action"] = "fire_blast",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20221213.1,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 4: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 5: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.snowstorm' to 'talent.snowstorm.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 3: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 8: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 8: Converted 'talent.freezing_rain' to 'talent.freezing_rain.enabled' (1x).\n\nImported 6 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\nactions.precombat+=/blizzard,if=active_enemies>=2\nactions.precombat+=/frostbolt,if=active_enemies=1\n\nactions+=/counterspell\nactions+=/water_jet,if=cooldown.flurry.charges_fractional<1\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=7||active_enemies>=3&talent.ice_caller\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<7&(active_enemies<3||!talent.ice_caller)\nactions+=/call_action_list,name=movement\n\nactions.aoe+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&debuff.frozen.up&(prev_gcd.1.frost_nova||prev_gcd.1.ice_nova||prev_off_gcd.freeze)\nactions.aoe+=/frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/comet_storm\nactions.aoe+=/freeze,if=(target.level<level+3||target.is_add)&(!talent.snowstorm&debuff.frozen.down||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack)\nactions.aoe+=/ice_nova,if=(target.level<level+3||target.is_add)&(prev_gcd.1.comet_storm||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1)\nactions.aoe+=/frost_nova,if=(target.level<level+3||target.is_add)&active_enemies>=5&cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1\nactions.aoe+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack\nactions.aoe+=/flurry,if=cooldown_react&remaining_winters_chill=0&debuff.winters_chill.down&(prev_gcd.1.frostbolt||(active_enemies>=7||charges=max_charges)&buff.fingers_of_frost.react=0)\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react||debuff.frozen.remains>travel_time||remaining_winters_chill\nactions.aoe+=/shifting_power\nactions.aoe+=/ice_nova\nactions.aoe+=/meteor\nactions.aoe+=/dragons_breath,if=active_enemies>=7\nactions.aoe+=/arcane_explosion,if=mana.pct>30&active_enemies>=7\nactions.aoe+=/ebonbolt\nactions.aoe+=/frostbolt\n\nactions.cds+=/time_warp,if=buff.exhaustion.up&buff.bloodlust.down\nactions.cds+=/potion,if=prev_off_gcd.icy_veins||boss&fight_remains<60\nactions.cds+=/icy_veins,if=buff.rune_of_power.down&(buff.icy_veins.down||talent.rune_of_power)\nactions.cds+=/rune_of_power,if=buff.rune_of_power.down&cooldown.icy_veins.remains>10\nactions.cds+=/use_items\nactions.cds+=/blood_fury\nactions.cds+=/berserking\nactions.cds+=/lights_judgment\nactions.cds+=/fireblood\nactions.cds+=/ancestral_call\n\nactions.movement+=/blink_any,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\nactions.movement+=/ice_nova\nactions.movement+=/arcane_explosion,if=mana.pct>30&active_enemies>=2\nactions.movement+=/fire_blast\nactions.movement+=/ice_lance\n\nactions.st+=/meteor,if=prev_gcd.1.flurry\nactions.st+=/comet_storm,if=prev_gcd.1.flurry\nactions.st+=/flurry,if=cooldown_react&remaining_winters_chill=0&debuff.winters_chill.down&(prev_gcd.1.frostbolt||prev_gcd.1.glacial_spike)\nactions.st+=/ray_of_frost,if=remaining_winters_chill=1&buff.freezing_winds.down\nactions.st+=/glacial_spike,if=remaining_winters_chill\nactions.st+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&remaining_winters_chill\nactions.st+=/frozen_orb\nactions.st+=/blizzard,if=active_enemies>=2&talent.ice_caller&talent.freezing_rain\nactions.st+=/shifting_power,if=buff.rune_of_power.down\nactions.st+=/ice_lance,if=buff.fingers_of_frost.react&!prev_gcd.1.glacial_spike||remaining_winters_chill\nactions.st+=/ice_nova,if=active_enemies>=4\nactions.st+=/glacial_spike,if=action.flurry.cooldown_react\nactions.st+=/ebonbolt,if=cooldown.flurry.charges_fractional<1\nactions.st+=/bag_of_tricks\nactions.st+=/frostbolt",
					["spec"] = 64,
				},
				["Protection Warrior"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221218,
					["spec"] = 73,
					["desc"] = "",
					["profile"] = "actions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\n\n# Executed every time the actor is available.\nactions+=/pummel\nactions+=/spell_reflection\nactions+=/shield_charge,if=time=0\nactions+=/charge,if=time=0\nactions+=/use_items\nactions+=/avatar\n# Usage of Shield Wall is governed by specialization settings; see /hekili > Protection.\nactions+=/shield_wall,if=buff.avatar.down||!talent.immovable_object\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion,if=buff.avatar.up||buff.avatar.up&target.health.pct<=20\nactions+=/ignore_pain,if=target.health.pct>=20&(rage.deficit<=15&cooldown.shield_slam.ready||rage.deficit<=40&cooldown.shield_charge.ready&talent.champions_bulwark.enabled||rage.deficit<=20&cooldown.shield_charge.ready||rage.deficit<=30&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled||rage.deficit<=20&cooldown.avatar.ready||rage.deficit<=45&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=30&cooldown.avatar.ready&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=20||rage.deficit<=40&cooldown.shield_slam.ready&buff.violent_outburst.up&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=55&cooldown.shield_slam.ready&buff.violent_outburst.up&buff.last_stand.up&talent.unnerving_focus.enabled&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=17&cooldown.shield_slam.ready&talent.heavy_repercussions.enabled||rage.deficit<=18&cooldown.shield_slam.ready&talent.impenetrable_wall.enabled),use_off_gcd=1\n# Usage of Last Stand is also governed by specialization settings; see /hekili > Protection.\nactions+=/last_stand,if=talent.unnerving_focus&(target.health.pct>=90||target.health.pct<=20)||talent.bolster&buff.shield_block.down||!talent.bolster&!talent.unnerving_focus\n# Usage of Rallying Cry is governed by specialization settings; see /hekili > Protection.\nactions+=/rallying_cry\nactions+=/ravager\nactions+=/demoralizing_shout,if=talent.booming_voice.enabled\nactions+=/spear_of_bastion\nactions+=/thunderous_roar\nactions+=/shockwave,if=talent.sonic_boom.enabled&buff.avatar.up&talent.unstoppable_force.enabled&!talent.rumbling_earth.enabled\nactions+=/shield_charge\nactions+=/shield_block,if=buff.shield_block.duration<=18&talent.enduring_defenses.enabled||buff.shield_block.duration<=12\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.thunder_clap>=3\nactions+=/call_action_list,name=generic\n\nactions.aoe+=/thunder_clap,if=dot.rend.remains<=1&talent.blood_and_thunder&talent.rend\nactions.aoe+=/thunder_clap,if=buff.violent_outburst.up&spell_targets.thunderclap>5&buff.avatar.up&talent.unstoppable_force.enabled\nactions.aoe+=/revenge,if=rage>=70&talent.seismic_reverberation.enabled&spell_targets.revenge>=3\nactions.aoe+=/shield_slam,if=rage<=60||buff.violent_outburst.up&spell_targets.thunderclap<=4\nactions.aoe+=/thunder_clap\nactions.aoe+=/revenge,if=rage>=30||rage>=40&talent.barbaric_training.enabled\n\nactions.generic=shield_slam\nactions.generic+=/thunder_clap,if=dot.rend.remains<=1&buff.violent_outburst.down\nactions.generic+=/execute,if=buff.sudden_death.up&talent.sudden_death.enabled\nactions.generic+=/revenge,if=buff.vanguards_determination.down\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>1||cooldown.shield_slam.remains&!buff.violent_outburst.up)\nactions.generic+=/revenge,if=(rage>=60&target.health.pct>20||buff.revenge.up&target.health.pct<=20&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>20)||(rage>=60&target.health.pct>35||buff.revenge.up&target.health.pct<=35&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>35)&talent.massacre.enabled\nactions.generic+=/execute,if=spell_targets.revenge=1\nactions.generic+=/revenge\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>=1||cooldown.shield_slam.remains&buff.violent_outburst.up)\nactions.generic+=/devastate",
					["version"] = 20221218,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 1: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 1: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 7: Converted 'talent.immovable_object' to 'talent.immovable_object.enabled' (1x).\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & talent.blood_and_thunder.enabled & talent.rend.enabled",
								["action"] = "thunder_clap",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.violent_outburst.up & spell_targets.thunderclap > 5 & buff.avatar.up & talent.unstoppable_force.enabled",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 70 & talent.seismic_reverberation.enabled & spell_targets.revenge >= 3",
								["action"] = "revenge",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage <= 60 || buff.violent_outburst.up & spell_targets.thunderclap <= 4",
								["action"] = "shield_slam",
							}, -- [4]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 30 || rage >= 40 & talent.barbaric_training.enabled",
								["action"] = "revenge",
							}, -- [6]
						},
						["generic"] = {
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & buff.violent_outburst.down",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.up & talent.sudden_death.enabled",
								["action"] = "execute",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.vanguards_determination.down",
								["action"] = "revenge",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap > 1 || cooldown.shield_slam.remains & ! buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( rage >= 60 & target.health.pct > 20 || buff.revenge.up & target.health.pct <= 20 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 20 ) || ( rage >= 60 & target.health.pct > 35 || buff.revenge.up & target.health.pct <= 35 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 35 ) & talent.massacre.enabled",
								["action"] = "revenge",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.revenge = 1",
								["action"] = "execute",
							}, -- [7]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap >= 1 || cooldown.shield_slam.remains & buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [9]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "pummel",
							}, -- [1]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time = 0",
								["action"] = "shield_charge",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time = 0",
								["action"] = "charge",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "shield_wall",
								["description"] = "Usage of Shield Wall is governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "buff.avatar.down || ! talent.immovable_object.enabled",
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up || buff.avatar.up & target.health.pct <= 20",
								["action"] = "potion",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct >= 20 & ( rage.deficit <= 15 & cooldown.shield_slam.ready || rage.deficit <= 40 & cooldown.shield_charge.ready & talent.champions_bulwark.enabled || rage.deficit <= 20 & cooldown.shield_charge.ready || rage.deficit <= 30 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled || rage.deficit <= 20 & cooldown.avatar.ready || rage.deficit <= 45 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 30 & cooldown.avatar.ready & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 20 || rage.deficit <= 40 & cooldown.shield_slam.ready & buff.violent_outburst.up & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 55 & cooldown.shield_slam.ready & buff.violent_outburst.up & buff.last_stand.up & talent.unnerving_focus.enabled & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 17 & cooldown.shield_slam.ready & talent.heavy_repercussions.enabled || rage.deficit <= 18 & cooldown.shield_slam.ready & talent.impenetrable_wall.enabled )",
								["action"] = "ignore_pain",
								["use_off_gcd"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "last_stand",
								["description"] = "Usage of Last Stand is also governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "talent.unnerving_focus.enabled & ( target.health.pct >= 90 || target.health.pct <= 20 ) || talent.bolster.enabled & buff.shield_block.down || ! talent.bolster.enabled & ! talent.unnerving_focus.enabled",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Usage of Rallying Cry is governed by specialization settings, see /hekili > Protection.",
								["action"] = "rallying_cry",
							}, -- [18]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.booming_voice.enabled",
								["action"] = "demoralizing_shout",
							}, -- [20]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "thunderous_roar",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled & buff.avatar.up & talent.unstoppable_force.enabled & ! talent.rumbling_earth.enabled",
								["action"] = "shockwave",
							}, -- [23]
							{
								["action"] = "shield_charge",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.duration <= 18 & talent.enduring_defenses.enabled || buff.shield_block.duration <= 12",
								["action"] = "shield_block",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.thunder_clap >= 3",
								["list_name"] = "aoe",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generic",
							}, -- [27]
						},
						["precombat"] = {
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
						},
					},
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221202,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["catweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
								["description"] = "if you read this know that Kitch is a dummy",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.refreshable || energy < 45",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.refreshable & combo_points >= 1",
								["action"] = "rip",
							}, -- [6]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4 & energy > 50",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points <= 5",
								["action"] = "shred",
							}, -- [9]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "skull_bash",
								["description"] = "Executed every time the actor is available.",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "! tanking & druid.catweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down ) & ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd.max + 0.5 ) || ( buff.cat_form.up & energy > 25 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 ) || ( buff.heart_of_the_wild.up & energy > 90 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 )",
								["list_name"] = "catweave",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "! tanking & druid.owlweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & cooldown.starsurge.up )",
								["list_name"] = "owlweave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [10]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 8",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "barkskin",
							}, -- [3]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & cooldown.incarnation_guardian_of_ursoc.remains > 60 || buff.incarnation_guardian_of_ursoc.up",
								["action"] = "rage_of_the_sleeper",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & active_enemies <= 6",
								["action"] = "maul",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.tooth_and_claw_debuff.up & ! buff.ironfur.up & tanking || rage > 90",
								["action"] = "ironfur",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= gcd.max + 0.5",
								["action"] = "moonfire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.gore.up & active_enemies < 11 || buff.vicious_cycle_mangle.stack = 3",
								["action"] = "mangle",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & active_enemies <= 5 & ( buff.tooth_and_claw.stack >= 2 ) )",
								["action"] = "maul",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || active_enemies >= 5",
								["action"] = "thrash_bear",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 11",
								["action"] = "swipe_bear",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.tooth_and_claw.up & buff.tooth_and_claw.remains < 1.5 ) & active_enemies <= 5 )",
								["action"] = "maul",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 5 & buff.vicious_cycle_maul.stack >= 3 || active_enemies < 4 & ! talent.vicious_cycle_maul.enabled",
								["action"] = "maul",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up & active_enemies <= 4 ) || ( buff.incarnation.up & talent.soul_of_the_forest.enabled & active_enemies <= 5 ) || ( ( rage < 90 ) & active_enemies < 11 ) || ( ( rage < 85 ) & active_enemies < 11 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack > 2",
								["action"] = "pulverize",
							}, -- [21]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [23]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "renewal",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! druid.catweave_bear & ! druid.owlweave_bear ) || active_enemies >= 2",
								["action"] = "empower_bond",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [7]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ( soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled )",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up || buff.moonkin_form.up & talent.balance_affinity.enabled )",
								["action"] = "heart_of_the_wild",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & druid.catweave_bear",
								["action"] = "prowl",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up & ! druid.owlweave_bear & ! druid.catweave_bear & ! action.convoke_the_spirits.known",
								["action"] = "bear_form",
							}, -- [5]
						},
						["cconvoke"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [3]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= gcd.max + 1",
								["action"] = "moonfire",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.sunfire.refreshable",
								["action"] = "sunfire",
							}, -- [3]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20221202,
					["warnings"] = "Imported 7 action lists.\n",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/fleshcraft,if=!buff.prowl.up&(soulbind.pustule_eruption.enabled||soulbind.volatile_solvent.enabled),interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up||!druid.owlweave_bear&!druid.catweave_bear&!action.convoke_the_spirits.known\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=!tanking&druid.catweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down)&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5)||(buff.cat_form.up&energy>25&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)||(buff.heart_of_the_wild.up&energy>90&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)\nactions+=/run_action_list,name=owlweave,if=!tanking&druid.owlweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.starsurge.up)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<8\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/rage_of_the_sleeper,if=buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60||buff.incarnation_guardian_of_ursoc.up\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&active_enemies<=6\nactions.bear+=/ironfur,cycle_targets=1,if=!debuff.tooth_and_claw_debuff.up&!buff.ironfur.up&tanking||rage>90\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+0.5\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=((buff.incarnation.up||buff.berserk_bear.up)&active_enemies<=5&(buff.tooth_and_claw.stack>=2))\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/maul,if=((buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1.5)&active_enemies<=5)\nactions.bear+=/maul,if=active_enemies<=5&buff.vicious_cycle_maul.stack>=3||active_enemies<4&!talent.vicious_cycle_maul.enabled\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=dot.rake.refreshable||energy<45\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=1\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/shred,if=combo_points<=5\n\nactions.cconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.cconvoke+=/cat_form,if=!buff.cat_form.up\nactions.cconvoke+=/convoke_the_spirits\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.owlweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.owlweave+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+1\nactions.owlweave+=/sunfire,if=dot.sunfire.refreshable\nactions.owlweave+=/starsurge",
					["spec"] = 104,
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221218,
					["author"] = "SimC",
					["desc"] = "The SimC Brewmaster priority uses Purifying Brew and Celestial Brew aggressively for DPS.  The addon has pared this back to support survivability.",
					["lists"] = {
						["cooldowns_niuzao_woo"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.weapons_of_order.enabled",
								["action"] = "weapons_of_order",
								["description"] = "Name: Niuzao + Weapons of Order / Niuzao + Call to Arms",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_niuzao_the_black_ox.enabled & buff.weapons_of_order.remains <= 16 & talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_niuzao_the_black_ox.enabled & ! talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & stagger.amounttototalpct >= 0.7 & ! buff.blackout_combo.up",
								["action"] = "purifying_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.purifying_brew.remains_expected < 5 & ! buff.blackout_combo.up",
								["action"] = "purifying_brew",
							}, -- [5]
						},
						["cooldowns_improved_niuzao_cta"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "pb_in_window",
								["criteria"] = "prev.weapons_of_order",
								["description"] = "Name: Improved Niuzao + Call to Arms",
								["value"] = "floor ( cooldown.purifying_brew.charges_fractional + ( 10 + 2 * 0.05 ) / cooldown.purifying_brew.duration / 0.65 )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( cooldown.purifying_brew.charges_fractional + ( 20 + 4 * 0.05 ) / cooldown.purifying_brew.duration / 0.65 )",
								["criteria"] = "prev.invoke_niuzao_the_black_ox",
								["var_name"] = "pb_in_window",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "sub",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "prev.purifying_brew & ( time - action.weapons_of_order.last_used <= 10 + 2 * 0.05 || time - action.invoke_niuzao_the_black_ox.last_used <= 20 + 4 * 0.05 )",
								["var_name"] = "pb_in_window",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & ( time - action.purifying_brew.last_used >= 10 + 2 * 0.05 - time + action.weapons_of_order.last_used / variable.pb_in_window & time - action.weapons_of_order.last_used <= 10 + 2 * 0.05 )",
								["action"] = "purifying_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & ( time - action.purifying_brew.last_used >= 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used / variable.pb_in_window & time - action.invoke_niuzao_the_black_ox.last_used <= 20 + 4 * 0.05 )",
								["action"] = "purifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & ( variable.pb_in_window = 0 & 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used < 1 & 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used > 0 )",
								["action"] = "purifying_brew",
								["use_off_gcd"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.weapons_of_order.remains <= 3.5 & time - action.purifying_brew.last_used >= 3.5 + cooldown.weapons_of_order.remains",
								["action"] = "purifying_brew",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.weapons_of_order.enabled & time - action.purifying_brew.last_used <= 5",
								["action"] = "weapons_of_order",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.invoke_niuzao_the_black_ox.remains <= 3.5 & time - action.purifying_brew.last_used >= 3.5 + cooldown.invoke_niuzao_the_black_ox.remains & buff.weapons_of_order.remains <= 30 - 17",
								["action"] = "purifying_brew",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_niuzao_the_black_ox.enabled & buff.weapons_of_order.remains <= 30 - 17 & action.purifying_brew.last_used > action.weapons_of_order.last_used + 10 + 2 * 0.05",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.purifying_brew.full_recharge_time * 2 <= cooldown.weapons_of_order.remains - 3.5 & cooldown.purifying_brew.full_recharge_time * 2 <= cooldown.invoke_niuzao_the_black_ox.remains - 3.5",
								["action"] = "purifying_brew",
							}, -- [11]
						},
						["rotation_fom_boc"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.blackout_kick.duration_expected * ( 1 - ( boc_count )  % 3 ) + cooldown.blackout_kick.remains + 1",
								["description"] = "Name: Blackout Combo Salsalabim's Strength Chared Passions Fluidity of Motion Not High Haste",
								["var_name"] = "time_to_scheduled_ks",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down",
								["action"] = "blackout_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "boc_count % 3 = 1 & talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up & boc_count % 3 = 1",
								["action"] = "breath_of_fire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up & boc_count % 3 = 2",
								["action"] = "keg_smash",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up & boc_count % 3 = 0 & cooldown.keg_smash.charges_fractional > 1 & cooldown.keg_smash.full_recharge_time <= variable.time_to_scheduled_ks & energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 80",
								["action"] = "keg_smash",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "boc_count % 3 = 0",
								["action"] = "cancel_buff",
								["buff_name"] = "blackout_combo",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.exploding_keg.enabled",
								["action"] = "exploding_keg",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & buff.charred_passions.up & active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & active_enemies = 1 & ! buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [15]
						},
						["rotation_boc"] = {
							{
								["enabled"] = true,
								["description"] = "Name: Blackout Combo Salsalabim's Strength Charred Passions [Shadowboxing Treads or high haste Fluidity of Motion]",
								["action"] = "blackout_kick",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up",
								["action"] = "breath_of_fire",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up",
								["action"] = "keg_smash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.exploding_keg.enabled",
								["action"] = "exploding_keg",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.keg_smash.charges_fractional > 1.5",
								["action"] = "keg_smash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & active_enemies = 1 & ! buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.celestial_brew.enabled & ! buff.blackout_combo.up",
								["action"] = "celestial_brew",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "diffuse_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
								["action"] = "purifying_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.purified_chi.up & buff.blackout_combo.down",
								["action"] = "celestial_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp > 0 & group & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp > 0 & solo & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & group & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & solo & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "stagger.amounttototalpct >= 0.7 & ( cooldown.invoke_niuzao_the_black_ox.remains < 5 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Cast PB during the Niuzao window, but only if recently hit.",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & group & stagger.pct > 20",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & solo & stagger.pct > 10",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
								["description"] = "Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.summon_white_tiger_statue.enabled",
								["action"] = "summon_white_tiger_statue",
								["description"] = "Base DPS Cooldowns",
							}, -- [14]
							{
								["action"] = "touch_of_death",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.bonedust_brew_debuff.up & talent.bonedust_brew.enabled",
								["action"] = "bonedust_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
								["criteria"] = "! buff.scars_of_fraternal_strife_4.up & time > 1",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "cache_of_acquired_treasures",
								["action"] = "cache_of_acquired_treasures",
								["criteria"] = "buff.acquired_axe.up || boss & fight_remains < 25",
							}, -- [19]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Cooldown Action Lists",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled + talent.improved_invoke_niuzao_the_black_ox.enabled ) = 2 & ( talent.weapons_of_order.enabled + talent.call_to_arms.enabled ) <= 1",
								["list_name"] = "cooldowns_improved_niuzao_woo",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled + talent.improved_invoke_niuzao_the_black_ox.enabled ) = 2 & ( talent.weapons_of_order.enabled + talent.call_to_arms.enabled ) = 2",
								["list_name"] = "cooldowns_improved_niuzao_cta",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled + talent.improved_invoke_niuzao_the_black_ox.enabled ) <= 1",
								["list_name"] = "cooldowns_niuzao_woo",
							}, -- [30]
							{
								["enabled"] = true,
								["op"] = "set",
								["description"] = "Rotation Selection",
								["value"] = "0",
								["action"] = "variable",
								["var_name"] = "rotation_selection",
							}, -- [31]
							{
								["enabled"] = true,
								["op"] = "set",
								["criteria"] = "( talent.charred_passions.enabled || talent.dragonfire_brew.enabled ) & talent.salsalabims_strength.enabled",
								["value"] = "1",
								["action"] = "variable",
								["var_name"] = "rotation_selection",
							}, -- [32]
							{
								["enabled"] = true,
								["op"] = "set",
								["criteria"] = "( talent.charred_passions.enabled || talent.dragonfire_brew.enabled ) & talent.salsalabims_strength.enabled & talent.blackout_combo.enabled",
								["value"] = "2",
								["action"] = "variable",
								["var_name"] = "rotation_selection",
							}, -- [33]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "3 - variable.rotation_selection",
								["var_name"] = "rotation_selection",
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Rotation Action Lists",
								["strict"] = 1,
								["criteria"] = "variable.rotation_selection = 1 & ( ( ( 1 / spell_haste - 1 ) * 100 >= 1 / 3 & talent.fluidity_of_motion.enabled ) || ! talent.fluidity_of_motion.enabled )",
								["list_name"] = "rotation_boc",
							}, -- [35]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.rotation_selection = 1 & ( ( 1 / spell_haste - 1 ) * 100 < 1 / 3 & talent.fluidity_of_motion.enabled )",
								["list_name"] = "rotation_fom_boc",
							}, -- [36]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.rotation_selection = 2",
								["list_name"] = "rotation_chp_dfb",
							}, -- [37]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Fallback Rotation",
								["strict"] = 1,
								["criteria"] = "variable.rotation_selection = 3",
								["list_name"] = "rotation_fallback",
							}, -- [38]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [3]
						},
						["rotation_fallback"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.purifying_brew.charges_fractional >= 1.8 & ( cooldown.invoke_niuzao_the_black_ox.remains > 10 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Name: Fallback",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_fire.enabled",
								["action"] = "breath_of_fire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down",
								["action"] = "blackout_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.exploding_keg.enabled",
								["action"] = "exploding_keg",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.remains + execute_time ) >= 65",
								["action"] = "black_ox_brew",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.remains + execute_time ) >= 65",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [11]
						},
						["cooldowns_improved_niuzao_woo"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "pb_in_window",
								["criteria"] = "prev.invoke_niuzao_the_black_ox",
								["description"] = "Name: Improved Niuzao + Weapons of Order",
								["value"] = "floor ( cooldown.purifying_brew.charges_fractional + ( 20 + 4 * 0.05 ) / cooldown.purifying_brew.duration / 0.65 )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( cooldown.purifying_brew.charges_fractional + ( 20 + 4 * 0.05 ) / cooldown.purifying_brew.duration / 0.65 )",
								["criteria"] = "prev.invoke_niuzao_the_black_ox",
								["var_name"] = "pb_in_window",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & ( time - action.purifying_brew.last_used >= 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used / variable.pb_in_window & time - action.invoke_niuzao_the_black_ox.last_used <= 20 + 4 * 0.05 )",
								["action"] = "purifying_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & ( variable.pb_in_window = 0 & 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used < 1 & 20 + 4 * 0.05 - time + action.invoke_niuzao_the_black_ox.last_used > 0 )",
								["action"] = "purifying_brew",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.weapons_of_order.enabled",
								["action"] = "weapons_of_order",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.invoke_niuzao_the_black_ox.remains <= 3.5 & time - action.purifying_brew.last_used >= 3.5 + cooldown.invoke_niuzao_the_black_ox.remains",
								["action"] = "purifying_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_niuzao_the_black_ox.enabled & time - action.purifying_brew.last_used <= 5",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.purifying_brew.enabled & cooldown.purifying_brew.full_recharge_time * 2 <= cooldown.invoke_niuzao_the_black_ox.remains - 3.5",
								["action"] = "purifying_brew",
							}, -- [8]
						},
						["rotation_chp_dfb"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.charred_passions.enabled & buff.charred_passions.remains < 1.5 || talent.dragonfire_brew.enabled",
								["action"] = "breath_of_fire",
								["description"] = "Name: Salsalabim's Strength Charred Passions / Dragonfire Brew",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [2]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.exploding_keg.enabled",
								["action"] = "exploding_keg",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( variable.time_to_scheduled_ks + execute_time ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [6]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.remains + execute_time ) >= 65 & active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.remains + execute_time ) >= 65 & active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [11]
						},
					},
					["version"] = 20221218,
					["warnings"] = "The import for 'cooldowns_improved_niuzao_cta' required some automated changes.\nLine 1: Converted operations in 'floor(cooldown.purifying_brew.charges_fractional+(10+2*0.05)%cooldown.purifying_brew.duration%0.65)' to 'floor(cooldown.purifying_brew.charges_fractional+(10+2*0.05)/cooldown.purifying_brew.duration/0.65)'.\nLine 2: Converted operations in 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65)' to 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)/cooldown.purifying_brew.duration/0.65)'.\nLine 4: Converted operations in 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=10+2*0.05-time+action.weapons_of_order.last_used%variable.pb_in_window&time-action.weapons_of_order.last_used<=10+2*0.05)' to 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=10+2*0.05-time+action.weapons_of_order.last_used/variable.pb_in_window&time-action.weapons_of_order.last_used<=10+2*0.05)'.\nLine 5: Converted operations in 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)' to 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used/variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)'.\n\nThe import for 'rotation_fom_boc' required some automated changes.\nLine 1: Converted operations in 'cooldown.blackout_kick.duration_expected*(1-(boc_count)%%3)+cooldown.blackout_kick.remains+1' to 'cooldown.blackout_kick.duration_expected*(1-(boc_count)%3)+cooldown.blackout_kick.remains+1'.\nLine 3: Converted operations in 'boc_count%%3=1&talent.rising_sun_kick.enabled' to 'boc_count%3=1&talent.rising_sun_kick.enabled'.\nLine 4: Converted operations in 'buff.blackout_combo.up&boc_count%%3=1' to 'buff.blackout_combo.up&boc_count%3=1'.\nLine 5: Converted operations in 'buff.blackout_combo.up&boc_count%%3=2' to 'buff.blackout_combo.up&boc_count%3=2'.\nLine 6: Converted operations in 'buff.blackout_combo.up&boc_count%%3=0&cooldown.keg_smash.charges_fractional>1&cooldown.keg_smash.full_recharge_time<=variable.time_to_scheduled_ks&energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=80' to 'buff.blackout_combo.up&boc_count%3=0&cooldown.keg_smash.charges_fractional>1&cooldown.keg_smash.full_recharge_time<=variable.time_to_scheduled_ks&energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=80'.\nLine 7: Converted operations in 'boc_count%%3=0' to 'boc_count%3=0'.\n\nThe import for 'default' required some automated changes.\nLine 35: Converted operations in 'variable.rotation_selection=1&(((1%spell_haste-1)*100>=1%3&talent.fluidity_of_motion.enabled)||!talent.fluidity_of_motion.enabled)' to 'variable.rotation_selection=1&(((1/spell_haste-1)*100>=1/3&talent.fluidity_of_motion.enabled)||!talent.fluidity_of_motion.enabled)'.\nLine 36: Converted operations in 'variable.rotation_selection=1&((1%spell_haste-1)*100<1%3&talent.fluidity_of_motion.enabled)' to 'variable.rotation_selection=1&((1/spell_haste-1)*100<1/3&talent.fluidity_of_motion.enabled)'.\n\nThe import for 'cooldowns_improved_niuzao_woo' required some automated changes.\nLine 1: Converted operations in 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65)' to 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)/cooldown.purifying_brew.duration/0.65)'.\nLine 2: Converted operations in 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65)' to 'floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)/cooldown.purifying_brew.duration/0.65)'.\nLine 3: Converted operations in 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)' to 'talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used/variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)'.\n\nImported 9 action lists.\n",
					["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst,if=talent.chi_burst.enabled\nactions.precombat+=/chi_wave,if=talent.chi_wave.enabled\n## Blackout Combo\n## actions.precombat+=/variable,name=boc_count,op=set,value=0\n\nactions+=/spear_hand_strike\nactions+=/diffuse_magic\nactions+=/purifying_brew,if=settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=buff.purified_chi.up&buff.blackout_combo.down\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&group&stagger.pct>=settings.purify_stagger_currhp\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&solo&stagger.pct>=settings.purify_stagger_currhp*0.5\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&group&stagger.pct>=settings.purify_stagger_maxhp\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&solo&stagger.pct>=settings.purify_stagger_maxhp*0.5\n# Cast PB during the Niuzao window, but only if recently hit.\nactions+=/purifying_brew,if=stagger.amounttototalpct>=0.7&(cooldown.invoke_niuzao_the_black_ox.remains<5||buff.invoke_niuzao_the_black_ox.up)\n# Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&group&stagger.pct>20\n# Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&solo&stagger.pct>10\n# Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\n# Base DPS Cooldowns\nactions+=/summon_white_tiger_statue,if=talent.summon_white_tiger_statue.enabled\nactions+=/touch_of_death\nactions+=/bonedust_brew,if=!debuff.bonedust_brew_debuff.up&talent.bonedust_brew.enabled\nactions+=/use_item,name=jotungeirr_destinys_call\nactions+=/use_item,name=scars_of_fraternal_strife,if=!buff.scars_of_fraternal_strife_4.up&time>1\nactions+=/use_item,name=cache_of_acquired_treasures,if=buff.acquired_axe.up||boss&fight_remains<25\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\n# Cooldown Action Lists\nactions+=/call_action_list,name=cooldowns_improved_niuzao_woo,strict=1,if=(talent.invoke_niuzao_the_black_ox.enabled+talent.improved_invoke_niuzao_the_black_ox.enabled)=2&(talent.weapons_of_order.enabled+talent.call_to_arms.enabled)<=1\nactions+=/call_action_list,name=cooldowns_improved_niuzao_cta,strict=1,if=(talent.invoke_niuzao_the_black_ox.enabled+talent.improved_invoke_niuzao_the_black_ox.enabled)=2&(talent.weapons_of_order.enabled+talent.call_to_arms.enabled)=2\nactions+=/call_action_list,name=cooldowns_niuzao_woo,strict=1,if=(talent.invoke_niuzao_the_black_ox.enabled+talent.improved_invoke_niuzao_the_black_ox.enabled)<=1\n# Rotation Selection\nactions+=/variable,op=set,name=rotation_selection,value=0\nactions+=/variable,op=set,name=rotation_selection,value=1,if=(talent.charred_passions.enabled||talent.dragonfire_brew.enabled)&talent.salsalabims_strength.enabled\nactions+=/variable,op=set,name=rotation_selection,value=2,if=(talent.charred_passions.enabled||talent.dragonfire_brew.enabled)&talent.salsalabims_strength.enabled&talent.blackout_combo.enabled\nactions+=/variable,op=set,name=rotation_selection,value=3-variable.rotation_selection\n# Rotation Action Lists\nactions+=/call_action_list,name=rotation_boc,strict=1,if=variable.rotation_selection=1&(((1%spell_haste-1)*100>=1%3&talent.fluidity_of_motion.enabled)||!talent.fluidity_of_motion.enabled)\nactions+=/call_action_list,name=rotation_fom_boc,strict=1,if=variable.rotation_selection=1&((1%spell_haste-1)*100<1%3&talent.fluidity_of_motion.enabled)\nactions+=/call_action_list,name=rotation_chp_dfb,strict=1,if=variable.rotation_selection=2\n# Fallback Rotation\nactions+=/call_action_list,name=rotation_fallback,strict=1,if=variable.rotation_selection=3\n\n# Name: Niuzao + Weapons of Order / Niuzao + Call to Arms\nactions.cooldowns_niuzao_woo+=/weapons_of_order,if=talent.weapons_of_order.enabled\nactions.cooldowns_niuzao_woo+=/invoke_niuzao_the_black_ox,if=talent.invoke_niuzao_the_black_ox.enabled&buff.weapons_of_order.remains<=16&talent.weapons_of_order.enabled\nactions.cooldowns_niuzao_woo+=/invoke_niuzao_the_black_ox,if=talent.invoke_niuzao_the_black_ox.enabled&!talent.weapons_of_order.enabled\nactions.cooldowns_niuzao_woo+=/purifying_brew,if=talent.purifying_brew.enabled&stagger.amounttototalpct>=0.7&!buff.blackout_combo.up\nactions.cooldowns_niuzao_woo+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.purifying_brew.remains_expected<5&!buff.blackout_combo.up\n\n# Name: Improved Niuzao + Weapons of Order\nactions.cooldowns_improved_niuzao_woo+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.invoke_niuzao_the_black_ox\nactions.cooldowns_improved_niuzao_woo+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.invoke_niuzao_the_black_ox\nactions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\nactions.cooldowns_improved_niuzao_woo+=/purifying_brew,use_off_gcd=1,if=talent.purifying_brew.enabled&(variable.pb_in_window=0&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used<1&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used>0)\nactions.cooldowns_improved_niuzao_woo+=/weapons_of_order,if=talent.weapons_of_order.enabled\nactions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.invoke_niuzao_the_black_ox.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.invoke_niuzao_the_black_ox.remains\nactions.cooldowns_improved_niuzao_woo+=/invoke_niuzao_the_black_ox,if=talent.invoke_niuzao_the_black_ox.enabled&time-action.purifying_brew.last_used<=5\nactions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.purifying_brew.full_recharge_time*2<=cooldown.invoke_niuzao_the_black_ox.remains-3.5\n\n# Name: Improved Niuzao + Call to Arms\nactions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(10+2*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.weapons_of_order\nactions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.invoke_niuzao_the_black_ox\nactions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=sub,value=1,if=prev.purifying_brew&(time-action.weapons_of_order.last_used<=10+2*0.05||time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=10+2*0.05-time+action.weapons_of_order.last_used%variable.pb_in_window&time-action.weapons_of_order.last_used<=10+2*0.05)\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=talent.purifying_brew.enabled&(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,use_off_gcd=1,if=talent.purifying_brew.enabled&(variable.pb_in_window=0&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used<1&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used>0)\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.weapons_of_order.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.weapons_of_order.remains\nactions.cooldowns_improved_niuzao_cta+=/weapons_of_order,if=talent.weapons_of_order.enabled&time-action.purifying_brew.last_used<=5\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.invoke_niuzao_the_black_ox.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.invoke_niuzao_the_black_ox.remains&buff.weapons_of_order.remains<=30-17\nactions.cooldowns_improved_niuzao_cta+=/invoke_niuzao_the_black_ox,if=talent.invoke_niuzao_the_black_ox.enabled&buff.weapons_of_order.remains<=30-17&action.purifying_brew.last_used>action.weapons_of_order.last_used+10+2*0.05\nactions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=talent.purifying_brew.enabled&cooldown.purifying_brew.full_recharge_time*2<=cooldown.weapons_of_order.remains-3.5&cooldown.purifying_brew.full_recharge_time*2<=cooldown.invoke_niuzao_the_black_ox.remains-3.5\n\n# Name: Blackout Combo Salsalabim's Strength Charred Passions [Shadowboxing Treads or high haste Fluidity of Motion]\nactions.rotation_boc+=/blackout_kick\nactions.rotation_boc+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_boc+=/breath_of_fire,if=buff.blackout_combo.up\nactions.rotation_boc+=/keg_smash,if=buff.blackout_combo.up\nactions.rotation_boc+=/exploding_keg,if=talent.exploding_keg.enabled\nactions.rotation_boc+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&talent.rushing_jade_wind.enabled\nactions.rotation_boc+=/black_ox_brew,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&talent.black_ox_brew.enabled\nactions.rotation_boc+=/keg_smash,if=cooldown.keg_smash.charges_fractional>1.5\nactions.rotation_boc+=/spinning_crane_kick,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&active_enemies>1\nactions.rotation_boc+=/tiger_palm,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&active_enemies=1&!buff.blackout_combo.up\nactions.rotation_boc+=/celestial_brew,if=talent.celestial_brew.enabled&!buff.blackout_combo.up\nactions.rotation_boc+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_boc+=/chi_burst,if=talent.chi_burst.enabled\n\n# Name: Blackout Combo Salsalabim's Strength Chared Passions Fluidity of Motion Not High Haste\n## actions.rotation_fom_boc+=/variable,name=boc_count,op=add,value=1,if=prev.blackout_kick\nactions.rotation_fom_boc+=/variable,name=time_to_scheduled_ks,op=set,value=cooldown.blackout_kick.duration_expected*(1-(boc_count)%%3)+cooldown.blackout_kick.remains+1\nactions.rotation_fom_boc+=/blackout_kick,if=buff.blackout_combo.down\nactions.rotation_fom_boc+=/rising_sun_kick,if=boc_count%%3=1&talent.rising_sun_kick.enabled\nactions.rotation_fom_boc+=/breath_of_fire,if=buff.blackout_combo.up&boc_count%%3=1\nactions.rotation_fom_boc+=/keg_smash,if=buff.blackout_combo.up&boc_count%%3=2\nactions.rotation_fom_boc+=/keg_smash,if=buff.blackout_combo.up&boc_count%%3=0&cooldown.keg_smash.charges_fractional>1&cooldown.keg_smash.full_recharge_time<=variable.time_to_scheduled_ks&energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=80\nactions.rotation_fom_boc+=/cancel_buff,name=blackout_combo,if=boc_count%%3=0\nactions.rotation_fom_boc+=/exploding_keg,if=talent.exploding_keg.enabled\nactions.rotation_fom_boc+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&talent.rushing_jade_wind.enabled\nactions.rotation_fom_boc+=/black_ox_brew,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&talent.black_ox_brew.enabled\nactions.rotation_fom_boc+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_fom_boc+=/spinning_crane_kick,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&buff.charred_passions.up&active_enemies>1\nactions.rotation_fom_boc+=/tiger_palm,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&active_enemies=1&!buff.blackout_combo.up\n## Disabled to avoid wasteful use of Celestial Brew; use mitigation logic instead.\n## actions.rotation_fom_boc+=/celestial_brew,if=!buff.blackout_combo.up\nactions.rotation_fom_boc+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_fom_boc+=/chi_burst,if=talent.chi_burst.enabled\n\n# Name: Salsalabim's Strength Charred Passions / Dragonfire Brew\nactions.rotation_chp_dfb+=/breath_of_fire,if=talent.charred_passions.enabled&buff.charred_passions.remains<1.5||talent.dragonfire_brew.enabled\nactions.rotation_chp_dfb+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&talent.rushing_jade_wind.enabled\nactions.rotation_chp_dfb+=/blackout_kick\nactions.rotation_chp_dfb+=/keg_smash\nactions.rotation_chp_dfb+=/exploding_keg,if=talent.exploding_keg.enabled\nactions.rotation_chp_dfb+=/black_ox_brew,if=energy+energy.regen*(variable.time_to_scheduled_ks+execute_time)>=65&talent.black_ox_brew.enabled\nactions.rotation_chp_dfb+=/rising_sun_kick\nactions.rotation_chp_dfb+=/spinning_crane_kick,if=energy+energy.regen*(cooldown.keg_smash.remains+execute_time)>=65&active_enemies>1\nactions.rotation_chp_dfb+=/tiger_palm,if=energy+energy.regen*(cooldown.keg_smash.remains+execute_time)>=65&active_enemies=1\nactions.rotation_chp_dfb+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_chp_dfb+=/chi_burst,if=talent.chi_burst.enabled\n## Disabled to avoid wasteful use of Celestial Brew; use mitigation logic instead.\n## actions.rotation_chp_dfb+=/celestial_brew\n\n# Name: Fallback\nactions.rotation_fallback+=/purifying_brew,if=cooldown.purifying_brew.charges_fractional>=1.8&(cooldown.invoke_niuzao_the_black_ox.remains>10||buff.invoke_niuzao_the_black_ox.up)\nactions.rotation_fallback+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_fallback+=/keg_smash\nactions.rotation_fallback+=/breath_of_fire,if=talent.breath_of_fire.enabled\nactions.rotation_fallback+=/blackout_kick,if=buff.blackout_combo.down\nactions.rotation_fallback+=/exploding_keg,if=talent.exploding_keg.enabled\nactions.rotation_fallback+=/black_ox_brew,if=energy+energy.regen*(cooldown.keg_smash.remains+execute_time)>=65\nactions.rotation_fallback+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_fallback+=/spinning_crane_kick,if=energy+energy.regen*(cooldown.keg_smash.remains+execute_time)>=65\n## Disabled to avoid wasteful use of Celestial Brew; use mitigation logic instead.\n## actions.rotation_fallback+=/celestial_brew,if=!buff.blackout_combo.up&talent.celestial_brew.enabled&buff.purified_chi.up\nactions.rotation_fallback+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_fallback+=/chi_burst,if=talent.chi_burst.enabled",
					["spec"] = 268,
				},
			},
		},
	},
}
