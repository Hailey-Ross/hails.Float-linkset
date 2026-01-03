// Script Created by Hailey Enfield
// Site: https://u.hails.cc/Links
// Github: https://github.com/Hailey-Ross/hails.Float-linkset
// PLEASE LEAVE ALL CREDITS/COMMENTS INTACT

float AMPLITUDE  = 0.05;  // meters up/down
float MIN_PERIOD = 9.0;   // seconds
float MAX_PERIOD = 15.0;  // seconds
float TICK       = 0.05;

vector baseLocal;
float  t0;
float  period;

float randomPeriod()
{
    return MIN_PERIOD + llFrand(MAX_PERIOD - MIN_PERIOD);
}

default
{
    state_entry()
    {
        baseLocal = llGetLocalPos();

        period = randomPeriod();
        t0 = llGetTime();
        llSetTimerEvent(TICK);
    }

    on_rez(integer start_param)
    {
        llResetScript();
    }

    timer()
    {
        float t = llGetTime() - t0;
        float phase = (t / period) * TWO_PI;

        if (phase >= TWO_PI)
        {
            period = randomPeriod();
            t0 = llGetTime();
            phase = 0.0;
        }

        float offsetZ = llSin(phase) * AMPLITUDE;
        vector targetLocal = baseLocal + <0.0, 0.0, offsetZ>;

        llSetLinkPrimitiveParamsFast(LINK_THIS, [PRIM_POS_LOCAL, targetLocal]);
    }
}
