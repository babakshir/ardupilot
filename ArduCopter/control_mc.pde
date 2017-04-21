
static bool mc_init(bool ignore_checks)
{
	return true;

}

static void mc_run()
{
	static int c = 0;
	mavlink_channel_t chan = MAVLINK_COMM_1;
	mavlink_vicon_position_estimate_t pos_est;
	pos_est.x = MC_Position.x;
	pos_est.y = MC_Position.y;
	pos_est.z = MC_Position.z;



	c++;
//	if (c % 100 < 25)
//	{
//	    if (comm_get_txspace(chan) >=
//	    		MAVLINK_MSG_ID_LOCAL_POSITION_NED_LEN + MAVLINK_NUM_NON_PAYLOAD_BYTES)
//	    {
////	    	hal.console->printf("nedx: %f", MC_Position.x);
//	    	mavlink_msg_local_position_ned_send(chan, 0, MC_Position.x, MC_Position.y, MC_Position.z, 0, 0, 0);
//	    }
		AP_Notify::flags.gps_status = 3;
	    attitude_control.angle_ef_roll_pitch_yaw(-500,0,0,true);
//	}

}
