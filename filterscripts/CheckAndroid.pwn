#include <a_samp>

public OnPlayerConnect(playerid)
{
    SetPVarInt(playerid, "AndroidPlayer", 1);

    SendClientCheck(playerid, 0x48, 0, 0, 2);

    return true;
}

public OnClientCheckResponse(playerid, actionid, memaddr, retndata)
{
    if(actionid == 0x48)
    {
        DeletePVar(playerid, "AndroidPlayer");
    }

    return true;
}

public OnPlayerDisconnect(playerid, reason)
{
    DeletePVar(playerid, "AndroidPlayer");

    return true;
}