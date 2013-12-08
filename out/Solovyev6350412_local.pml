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

/* Traffic manager process */
proctype trafficManager () {
    bool sensorWN = false;
    bool sensorNE = false;
    bool sensorNS = false;
    bool sensorSW = false;
    bool sensorES = false;

end:
    do
        :: (sensorWN && (len (carsPassWN) != 0))->
            carsPassWN ? 1;
wnFalse:
            sensorWN = false;
            sensorChannel ! WN, 0;
        :: (sensorNE && (len (carsPassNE) != 0)) ->
            carsPassNE ? 1;
neFalse:
            sensorNE = false;
            sensorChannel ! NE, 0;
        :: (sensorNS && (len (carsPassNS) != 0)) ->
            carsPassNS ? 1;
nsFalse:
            sensorNS = false;
            sensorChannel ! NS, 0;
        :: (sensorSW && (len (carsPassSW) != 0)) ->
            carsPassSW ? 1;
swFalse:
            sensorSW = false;
            sensorChannel ! SW, 0;
        :: (sensorES && (len (carsPassES) != 0)) ->
            carsPassES ? 1;
esFalse:
            sensorES = false;
            sensorChannel ! ES, 0;
        :: !sensorWN ->
wnTrue:
            sensorWN = true;
            sensorChannel ! WN, 1;
        :: !sensorNE ->
neTrue:
            sensorNE = true;
            sensorChannel ! NE, 1;
        :: !sensorNS ->
nsTrue:
            sensorNS = true;
            sensorChannel ! NS, 1;
        :: !sensorSW ->
swTrue:
            sensorSW = true;
            sensorChannel ! SW, 1;
        :: !sensorES ->
esTrue:
            sensorES = true;
            sensorChannel ! ES, 1;
    od;
}

/* WN direction process */
proctype dirWN () {
    mtype lightWN = RED;
end:
    do
        ::
        /* Wait for the resources */
        sensorChannel ? WN, 1;
        channel_WN_NS_SW ? 1; channel_WN_NE ? 1;
        /* We can go! */
green:
        lightWN = GREEN;
        carsPassWN ! 1;
        sensorChannel ? WN, 0;
red:
        lightWN = RED;
        /* Return resources */
        channel_WN_NS_SW ! 1; channel_WN_NE ! 1;
    od;
}

/* NE direction process */
proctype dirNE () {
    mtype lightNE = RED;
end:
    do
        ::
        /* Wait for the resources */
        sensorChannel ? NE, 1;
        channel_NE_ES ? 1; channel_WN_NE ? 1;
        /* We can go! */
green:
        lightNE = GREEN;
        carsPassNE ! 1;
        sensorChannel ? NE, 0;
red:
        lightNE = RED;
        /* Return resources */
        channel_NE_ES ! 1; channel_WN_NE ! 1;
    od;
}

/* NS direction process */
proctype dirNS () {
    mtype lightNS = RED;
end:
    do
        ::
        /* Wait for the resources */
        sensorChannel ? NS, 1;
        channel_WN_NS_SW ? 1;
        /* We can go! */
green:
        lightNS = GREEN;
        carsPassNS ! 1;
        sensorChannel ? NS, 0;
red:
        lightNS = RED;
        /* Return resources */
        channel_WN_NS_SW ! 1;
    od;
}

/* SW direction process */
proctype dirSW () {
    mtype lightSW = RED;
end:
    do
        ::
        /* Wait for the resources */
        sensorChannel ? SW, 1;
        channel_ES_SW ? 1; channel_WN_NS_SW ? 1;
        /* We can go! */
green:
        lightSW = GREEN;
        carsPassSW ! 1;
        sensorChannel ? SW, 0;
red:
        lightSW = RED;
        /* Return resources */
        channel_ES_SW ! 1; channel_WN_NS_SW ! 1;
    od;
}

/* ES direction process */
proctype dirES () {
    mtype lightES = RED;
end:        
    do
        ::
        /* Wait for the resources */
        sensorChannel ? ES, 1;
        channel_ES_SW ? 1; channel_NE_ES ? 1;
        /* We can go! */
green:
        lightES = GREEN;
        carsPassES ! 1;
        sensorChannel ? ES, 0;
red:
        lightES = RED;
        /* Return resources */
        channel_ES_SW ! 1; channel_NE_ES ! 1;
    od;
}

/* Init process */
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

/* Verification formulas */

/* Safety */
ltl s {[] !((dirNS@green && dirSW@green && dirWN@green)
			|| (dirWN@green && dirSW@green && dirNS@green && dirNE@green)
			|| (dirNE@green && dirES@green && dirWN@green)
			|| (dirES@green && dirSW@green && dirNE@green)
			|| (dirSW@green && dirES@green && dirWN@green && dirNS@green))};
/**********/
/* Liveness */
/**
ltl wn { ([] <> !(dirWN@green && trafficManager@wnTrue)) -> ([] <> (!(dirWN@green && trafficManager@wnTrue) && ([] ((trafficManager@wnTrue && dirWN@red) -> <> dirWN@green)))) };
/**
ltl ne { ([] <> !(dirNE@green && trafficManager@neTrue)) -> ([] <> (!(dirNE@green && trafficManager@neTrue) && ([] ((trafficManager@neTrue && dirNE@red) -> <> dirNE@green)))) };
/**/
ltl ns { ([] <> !(dirNS@green && trafficManager@nsTrue)) -> ([] <> (!(dirNS@green && trafficManager@nsTrue) && ([] ((trafficManager@nsTrue && dirNS@red) -> <> dirNS@green)))) };
/**
ltl sw { ([] <> !(dirSW@green && trafficManager@swTrue)) -> ([] <> (!(dirSW@green && trafficManager@swTrue) && ([] ((trafficManager@swTrue && dirSW@red) -> <> dirSW@green)))) };
/**
ltl es { ([] <> !(dirES@green && trafficManager@esTrue)) -> ([] <> (!(dirES@green && trafficManager@esTrue) && ([] ((trafficManager@esTrue && dirES@red) -> <> dirES@green)))) };
/************/
/*************************/
