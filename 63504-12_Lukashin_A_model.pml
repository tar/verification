/* Course work made by Anton Lukashin group 6084-12 */

/* Exercise 1,12,15 (WN,NS) (NE, EW) (SW, ES)*/
/* Types of signals */
mtype = {Red, Green};

/* Lights signals */

mtype NS_L = Red;
mtype WN_L = Red;

mtype NE_L = Red;
mtype EW_L = Red;

mtype ES_L = Red;
mtype SW_L = Red;

/* Car traffic sensors */

bool NS_S = false;
bool WN_S = false;

bool NE_S = false;
bool EW_S = false;

bool ES_S = false;
bool SW_S = false;


/* Synchronization channels */

chan NS_WN_EW = [1] of {bool};
chan NS_WN_SW = [1] of {bool};
chan NE_WN_EW = [1] of {bool};
chan NE_ES = [1] of {bool};
chan ES_SW = [1] of {bool};


init
{
    atomic{
        NS_WN_EW ! true;
        NS_WN_SW ! true;
        NE_WN_EW ! true;
        NE_ES ! true;
        ES_SW ! true;
   };
    atomic{
        run NS();
        run WN();
        run NE();
        run ES();
        run EW();
        run SW();
        run gen_t();
   };
}

/* Traffic generation process */
proctype gen_t ()
{
    end: do
                :: (!NS_S) -> 
       NSTrue:     NS_S = true;
	        :: (NS_L==Green) -> 
       NSFalse:    NS_S = false;
                :: (!WN_S) -> 
       WNTrue:     WN_S = true;
                :: (WN_L==Green) ->
       WNFalse:    WN_S = false
                :: (!NE_S) -> 
       NETrue:     NE_S = true;
                :: (NE_L==Green) -> 
       NEFalse:    NE_S = false;
                :: (!EW_S) -> 
       EWTrue:     EW_S = true;
                :: (EW_L==Green) -> 
       EWFalse:    EW_S = false;
                :: (!ES_S) -> 
       ESTrue:     ES_S = true;
                :: (ES_L==Green) -> 
       ESFalse:    ES_S = false;
                :: (!SW_S) -> 
       SWTrue:     SW_S = true;
                :: (SW_L==Green) -> 
       SWFalse:    SW_S = false;
            od;
}
/* NS controller */
proctype NS ()
{
    end: 
    	do
    	    :: NS_S ->
    			/* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true;
                NS_L = Green;
	green:
                if
                	/* Wait for end of car queue */
                    :: !NS_S -> skip;
                fi;
                NS_L = Red; 
        red:
		NS_WN_EW ! true; NS_WN_SW ! true;
	od;
}

/* WN controller */
proctype WN ()
{
    end: 
    	do
            :: WN_S ->
                /* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true; NE_WN_EW ? true;
                WN_L = Green;
    green:
                if
                	/* Wait for end of car queue */
                    :: !WN_S -> skip;
                fi;
                WN_L = Red;
    red:
		NS_WN_EW ! true; NS_WN_SW ! true; NE_WN_EW ! true;
    	od;
}

/* NE controller */
proctype NE ()
{
    end:
    	do
        	:: NE_S ->
    			/* Wait for resources */
                NE_WN_EW  ? true; NE_ES ? true;
                NE_L = Green;
    green:
                if
                    /* Wait for end of car queue */
                    :: !NE_S -> skip;
                fi;
                NE_L = Red;
    red:
                NE_WN_EW ! true; NE_ES ! true; 
   		od;
}

/* NE controller */
proctype EW ()
{
    end: 
    	do
    		:: EW_S ->
				/* Wait for resources */
                NS_WN_EW ? true; NE_WN_EW ? true;
                EW_L = Green;
	green:
                if
                    /* Wait for end of car queue */
                    :: !EW_S -> skip;
                fi;
                EW_L = Red;
	red:
                NS_WN_EW ! true; NE_WN_EW ! true;
   		od;
}

/* ES controller */
proctype ES ()
{
    end: 
    	do
            :: ES_S ->
				/* Wait for resources */
                ES_SW ? true; NE_ES ? true;
                ES_L = Green;
	green:
                if
                    /* Wait for end of car queue */
                    :: !ES_S -> skip;
                fi;
                ES_L = Red;
	red:
                ES_SW ! true; NE_ES ! true;
   		od;
}

/* SW controller */
proctype SW ()
{
    end: 
    	do
        	:: SW_S ->
    			/* Wait for resources */
                NS_WN_SW ? true; ES_SW ? true;
                SW_L = Green;
	green:
                if
                    /* Wait for end of car queue */
                    :: !SW_S -> skip;
                fi;
                SW_L = Red;
        red:
                NS_WN_SW ! true; ES_SW ! true;
   		od;
}

#define pNS_S (NS@green && WN@green && SW@green && EW@green) 
#define pWN_S (WN@green && NS@green && NE@green && SW@green && EW@green) 
#define pEW_S (EW@green && NE@green && WN@green && NS@green) 
#define pNE_S (NE@green && WN@green && ES@green && EW@green)
#define pSW_S (SW@green && ES@green && WN@green && NS@green)
#define pES_S (SW@green && ES@green && WN@green && NS@green)

#define pNS_L (gen_t@NSTrue && (NS@red))
#define qNS_L (NS@green)

#define pWN_L (gen_t@WNTrue && (WN@red))
#define qWN_L (WN@green)

#define pEW_L (gen_t@EWTrue && (EW@red))
#define qEW_L (EW@green)

#define pNE_L (gen_t@NETrue && (NE@red))
#define qNE_L (NE@green)

#define pSW_L (gen_t@SWTrue && (SW@red))
#define qSW_L (SW@green)

#define pES_L (gen_t@ESTrue && (ES@red))
#define qES_L (ES@green)

#define pNS_F (gen_t@NSTrue)
#define pWN_F (gen_t@WNTrue)
#define pEW_F (gen_t@EWTrue)
#define pNE_F (gen_t@NETrue)
#define pSW_F (gen_t@SWTrue)
#define pES_F (gen_t@ESTrue)

/*Safety*/
ltl pS_NS {[] !pNS_S}
ltl pS_WN {[] !pWN_S}
ltl pS_EW {[] !pEW_S}
ltl pS_NE {[] !pNE_S}
ltl pS_ES {[] !pES_S}
ltl pS_SW {[] !pSW_S}

/*Fairness -> Liveness*/

ltl pF_NS {([]<> (pWN_F && pSW_F && pEW_F)) -> ([] (pNS_L -> <> qNS_L))}
ltl pF_WN {([]<> (pNS_F && pEW_F && pSW_F && pNE_F)) -> ([] (pWN_L -> <> qWN_L))}
ltl pF_EW {([]<> (pNS_F && pNE_F && pWN_F)) -> ([] (pEW_L -> <> qEW_L))}
ltl pF_NE {([]<> (pEW_F && pWN_F && pES_F)) -> ([] (pNE_L -> <> qNE_L))}
ltl pF_ES {([]<> (pNE_F && pSW_F)) -> ([] (pES_L -> <> qES_L))}
ltl pF_SW {([]<> (pNS_F && pWN_F && pES_F)) -> ([] (pSW_L -> <> qSW_L))}