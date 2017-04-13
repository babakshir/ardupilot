
static bool mc_init(bool ignore_checks)
{

}

static void mc_run()
{
	static int c = 0;
	c++;
	if (c % 100 == 0)
	{
	    if (comm_get_txspace(chan) >=
	    		MAVLINK_MSG_ID_LOCAL_POSITION_NED_COV_LEN + MAVLINK_NUM_NON_PAYLOAD_BYTES)
	    {
	    //	mavlink_msg_local_position_ned_cov_send(
	    //        chan, ,,,);
	    }
	}

}
