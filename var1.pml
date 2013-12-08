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

#define pNS_S (NS_L==Green && WN_L==Green && SW_L==Green && EW_L==Green) 
#define pWN_S (WN_L==Green && NS_L==Green && NE_L==Green && SW_L==Green && EW_L==Green) 
#define pEW_S (EW_L==Green && NE_L==Green && WN_L==Green && NS_L==Green) 
#define pNE_S (NE_L==Green && WN_L==Green && ES_L==Green && EW_L==Green)
#define pSW_S (SW_L==Green && ES_L==Green && WN_L==Green && NS_L==Green)
#define pES_S (SW_L==Green && ES_L==Green && WN_L==Green && NS_L==Green)

#define pNS_L (NS_S && (NS_L==Red))
#define qNS_L (NS_L==Green)

#define pWN_L (WN_S && (WN_L==Red))
#define qWN_L (WN_L==Green)

#define pEW_L (EW_S && (EW_L==Red))
#define qEW_L (EW_L==Green)

#define pNE_L (NE_S && (NE_L==Red))
#define qNE_L (NE_L==Green)

#define pSW_L (SW_S && (SW_L==Red))
#define qSW_L (SW_L==Green)

#define pES_L (ES_S && (ES_L==Red))
#define qES_L (ES_L==Green)

#define pNS_F ((NS_L==Green) && NS_S)
#define pWN_F ((WN_L==Green) && WN_S)
#define pEW_F ((EW_L==Green) && EW_S)
#define pNE_F ((NE_L==Green) && NE_S)
#define pSW_F ((SW_L==Green) && SW_S)
#define pES_F ((ES_L==Green) && ES_S)

/*Safety*/
ltl p0_1 {[] !pNS_S}
ltl p0_2 {[] !pWN_S}
ltl p0_3 {[] !pEW_S}
ltl p0_4 {[] !pNE_S}
ltl p0_5 {[] !pSW_S}
ltl p0_6 {[] !pES_S}
/*Liveness*/
ltl p1_1 {[] (!pNS_L || (<> qNS_L))}
ltl p1_2 {[] (pWN_L -> (<> qWN_L))}
ltl p1_3 {[] (pEW_L -> (<> qEW_L))}
ltl p1_4 {[] (pNE_L -> (<> qNE_L))}
ltl p1_5 {[] (pSW_L -> (<> qSW_L))}
ltl p1_6 {[] (pES_L -> (<> qES_L))}

/*Fairness*/
ltl p2_1 {[] <> !pNS_F -> ([] <> (!pNS_F) && (pNS_L -> (<> qNS_L)))}
ltl p2_2 {[] <> !pWN_F -> ([] <> (!pWN_F) && (pWN_L -> (<> qWN_L)))}
ltl p2_3 {[] <> !pEW_F -> ([] <> (!pEW_F) && (pEW_L -> (<> qEW_L)))}
ltl p2_4 {[] <> !pNE_F -> ([] <> (!pNE_F) && (pNE_L -> (<> qNE_L)))}
ltl p2_5 {[] <> !pES_F -> ([] <> (!pES_F) && (pES_L -> (<> qES_L)))}
ltl p2_6 {[] <> !pSW_F -> ([] <> (!pSW_F) && (pSW_L -> (<> qSW_L)))}


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
    accpet: do
        :: true->
             if
                :: (NS_L==Green || !NS_S) -> NS_S = !NS_S;
                :: else -> skip;
            fi
        :: true->
            if
                :: (WN_L==Green || !WN_S) -> WN_S = !WN_S;
                :: else -> skip;
            fi
        ::  true->
            if
                :: (NE_L==Green || !NE_S) -> NE_S = !NE_S;
                :: else -> skip;
            fi
        :: true->
            if
                :: (EW_L==Green || !EW_S) -> EW_S = !EW_S;
                :: else -> skip;
            fi
        :: true->
            if
                :: (ES_L==Green || !ES_S) -> ES_S = !ES_S;
                :: else -> skip;
            fi
        :: true->
            if
                :: (SW_L==Green || !SW_S) -> SW_S = !SW_S;
                :: else -> skip;
            fi
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
                if
                	/* Wait for end of car queue */
                    :: !NS_S -> skip;
                fi;
                NS_L = Red; 
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
                if
                	/* Wait for end of car queue */
                    :: !WN_S -> skip;
                fi;
                WN_L = Red;
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
                if
                    /* Wait for end of car queue */
                    :: !NE_S -> skip;
                fi;
                NE_L = Red;
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
                if
                    /* Wait for end of car queue */
                    :: !EW_S -> skip;
                fi;
                EW_L = Red;
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
                if
                    /* Wait for end of car queue */
                    :: !ES_S -> skip;
                fi;
                ES_L = Red;
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
                if
                    /* Wait for end of car queue */
                    :: !SW_S -> skip;
                fi;
                SW_L = Red;
                NS_WN_SW ! true; ES_SW ! true;
   		od;
}
