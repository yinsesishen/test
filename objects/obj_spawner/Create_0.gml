/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BE324A7
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "spawn_rate"
spawn_rate = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 56C940CA
/// @DnDArgument : "steps" "spawn_rate"
/// @DnDArgument : "alarm" " 0"
alarm_set( 0, spawn_rate);