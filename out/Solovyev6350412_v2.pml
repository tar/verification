/*
    Task numbers: 
    2 - WN, NE;
    5 - NS, SW;
    13 - NE, ES.
*/

/* Traffic lights states */
mtype = {RED, GREEN};

/* Directions mtype */
mtype = {WN, NE, NS, SW, ES};

/* All lights are RED at start */
mtype lightWN = RED;
mtype lightNE = RED;
mtype lightNS = RED;
mtype lightSW = RED;
mtype lightES = RED;

/* Sensors - thay are global because of verification */
bool sensorWN = false;
bool sensorNE = false;
bool sensorNS = false;
bool sensorSW = false;
bool sensorES = false;

/* Channels */
chan channel_WN_NS_SW = [1] of {bit};
chan channel_WN_NE = [1] of {bit};
chan channel_NE_ES = [1] of {bit};
chan channel_ES_SW = [1] of {bit};

/* Channel for sensors' states */
chan sensorChannel = [5] of {mtype, bit};

/* Channels for car passes */
chan carsPassWN = [1] of {bit};
chan carsPassNE = [1] of {bit};
chan carsPassNS = [1] of {bit};
chan carsPassSW = [1] of {bit};
chan carsPassES = [1] of {bit};

/* Verification formulas */

/* Safety */
ltl s {[] !(((lightNS == GREEN) && (lightSW == GREEN) && (lightWN == GREEN))
			|| ((lightWN == GREEN) && (lightSW == GREEN) && (lightNS == GREEN) && (lightNE == GREEN))
			|| ((lightNE == GREEN) && (lightES == GREEN) && (lightWN == GREEN))
			|| ((lightES == GREEN) && (lightSW == GREEN) && (lightNE == GREEN))
			|| ((lightSW == GREEN) && (lightES == GREEN) && (lightWN == GREEN) && (lightNS == GREEN)))};
/**********/

/* Liveness */
ltl lWN {[] ((sensorWN && (lightWN == RED)) -> <> (lightWN == GREEN))};
ltl lNE {[] ((sensorNE && (lightNE == RED)) -> <> (lightNE == GREEN))};
ltl lNS {[] ((sensorNS && (lightNS == RED)) -> <> (lightNS == GREEN))};
ltl lSW {[] ((sensorSW && (lightSW == RED)) -> <> (lightSW == GREEN))};
ltl lES {[] ((sensorES && (lightES == RED)) -> <> (lightES == GREEN))};
/************/

/* Fairness */
ltl fWN {[] <> !((lightWN == GREEN) && sensorWN)}
ltl fNE {[] <> !((lightNE == GREEN) && sensorNE)}
ltl fNS {[] <> !((lightNS == GREEN) && sensorNS)}
ltl fSW {[] <> !((lightSW == GREEN) && sensorSW)}
ltl fES {[] <> !((lightES == GREEN) && sensorES)}
/************/

/*************************/

init {
    /* All resources are freed at start */
    atomic {
        channel_WN_NS_SW ! 1;
        channel_WN_NE ! 1;
        channel_NE_ES ! 1;
        channel_ES_SW ! 1;
        
        run trafficManager ();
        
        run dirWN ();
        run dirNE ();
        run dirNS ();
        run dirSW ();
        run dirES ();
    }
}

/* Traffic manager process */
proctype trafficManager () {
endTM:  do
        :: sensorWN ->
            if
                :: (len (carsPassWN) != 0) ->
                    carsPassWN ? 1;
                    sensorWN = false;
                    sensorChannel ! WN, 0;
                :: else -> skip;
            fi;
        :: sensorNE ->
            if
                :: (len (carsPassNE) != 0) ->
                    carsPassNE ? 1;
                    sensorNE = false;
                    sensorChannel ! NE, 0;
                :: else -> skip;
            fi;
        :: sensorNS ->
            if
                :: (len (carsPassNS) != 0) ->
                    carsPassNS ? 1;
                    sensorNS = false;
                    sensorChannel ! NS, 0;
                :: else -> skip;
            fi;
        :: sensorSW ->
            if
                :: (len (carsPassSW) != 0) ->
                    carsPassSW ? 1;
                    sensorSW = false;
                    sensorChannel ! SW, 0;
                :: else -> skip;
            fi;
        :: sensorES ->
            if
                :: (len (carsPassES) != 0) ->
                    carsPassES ? 1;
                    sensorES = false;
                    sensorChannel ! ES, 0;
                :: else -> skip;
            fi;
        :: !sensorWN ->
            sensorWN = true;
            sensorChannel ! WN, 1;
        :: !sensorNE ->
            sensorNE = true;
            sensorChannel ! NE, 1;
        :: !sensorNS ->
            sensorNS = true;
            sensorChannel ! NS, 1;
        :: !sensorSW ->
            sensorSW = true;
            sensorChannel ! SW, 1;
        :: !sensorES ->
            sensorES = true;
            sensorChannel ! ES, 1;
    od;
}

/* WN direction process */
proctype dirWN () {
endWN:  do
        ::
        /* Wait for the resources */
        sensorChannel ? WN, 1;
        channel_WN_NS_SW ? 1; channel_WN_NE ? 1;
        /* We can go! */
        lightWN = GREEN;
        carsPassWN ! 1;
        sensorChannel ? WN, 0;
        lightWN = RED;
        /* Return resources */
        channel_WN_NS_SW ! 1; channel_WN_NE ! 1;
    od;
}

/* NE direction process */
proctype dirNE () {
endNE:  do
        ::
        /* Wait for the resources */
        sensorChannel ? NE, 1;
        channel_NE_ES ? 1; channel_WN_NE ? 1;
        /* We can go! */
        lightNE = GREEN;
        carsPassNE ! 1;
        sensorChannel ? NE, 0;
        lightNE = RED;
        /* Return resources */
        channel_NE_ES ! 1; channel_WN_NE ! 1;
    od;
}

/* NS direction process */
proctype dirNS () {
endNS:  do
        ::
        /* Wait for the resources */
        sensorChannel ? NS, 1;
        channel_WN_NS_SW ? 1;
        /* We can go! */
        lightNS = GREEN;
        carsPassNS ! 1;
        sensorChannel ? NS, 0;
        lightNS = RED;
        /* Return resources */
        channel_WN_NS_SW ! 1;
    od;
}

/* SW direction process */
proctype dirSW () {
endSW:  do
        ::
        /* Wait for the resources */
        sensorChannel ? SW, 1;
        channel_ES_SW ? 1; channel_WN_NS_SW ? 1;
        /* We can go! */
        lightSW = GREEN;
        carsPassSW ! 1;
        sensorChannel ? SW, 0;
        lightSW = RED;
        /* Return resources */
        channel_ES_SW ! 1; channel_WN_NS_SW ! 1;
    od;
}

/* ES direction process */
proctype dirES () {
endES:  do
        ::
        /* Wait for the resources */
        sensorChannel ? ES, 1;
        channel_ES_SW ? 1; channel_NE_ES ? 1;
        /* We can go! */
        lightES = GREEN;
        carsPassES ! 1;
        sensorChannel ? ES, 0;
        lightES = RED;
        /* Return resources */
        channel_ES_SW ! 1; channel_NE_ES ! 1;
    od;
}
