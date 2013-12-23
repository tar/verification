/* Course work made by Anton Lukashin group 6084-12 */

/* Exercise 1,12,15 (WN,NS) (NE, EW) (SW, ES)*/
/* Types of signals */

#define MAX 3

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



/* Traffic generation process */
active proctype gen_t ()
{	
	int ns=0;
	int wn=0;
	int ne=0;
	int es=0;
	int ew=0;
	int sw=0;
	
    end: do
                :: (!NS_S && ns<MAX) -> 
       NSTrue:     atomic{NS_S = true;ns=ns+1;}
	        :: (NS_S && NS_L==Green) -> 
       NSFalse:    NS_S = false;
                :: (!WN_S && wn<MAX) -> 
       WNTrue:     atomic{WN_S = true;wn=wn+1;}
                :: (WN_S && WN_L==Green) ->
       WNFalse:    WN_S = false
                :: (!NE_S && ne<MAX) -> 
       NETrue:     atomic{NE_S = true;ne=ne+1;}
                :: (NE_S && NE_L==Green) -> 
       NEFalse:    NE_S = false;
                :: (!EW_S && ew<MAX) -> 
       EWTrue:     atomic{EW_S = true;ew=ew+1;}
                :: (EW_S && EW_L==Green) -> 
       EWFalse:    EW_S = false;
                :: (!ES_S && es<MAX) -> 
       ESTrue:     atomic{ES_S = true;es=es+1;}
                :: (ES_S && ES_L==Green) -> 
       ESFalse:    ES_S = false;
                :: (!SW_S && sw<MAX) -> 
       SWTrue:     atomic{SW_S = true;sw=sw+1;}
                :: (SW_S && SW_L==Green) -> 
       SWFalse:    SW_S = false;
       			:: (ns>=MAX && wn>=MAX && ne>=MAX && es>=MAX && ew>=MAX && sw>=MAX) ->
       					atomic{ns=0;
						wn=0;
						ne=0;
						es=0;
						ew=0;
						sw=0;
					}
            od;
}
/* NS controller */
active proctype NS ()
{
	        NS_WN_EW ! true;
        NS_WN_SW ! true;
    end: 
    	do
    	    :: NS_S ->
    			/* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true;
        green:  NS_L = Green;
	
                if
                	/* Wait for end of car queue */
                    :: !NS_S -> skip;
                fi;
        red:        NS_L = Red; 
        
		NS_WN_EW ! true; NS_WN_SW ! true;
	od;
}

/* WN controller */
active proctype WN ()
{
    end: 
    	do
            :: WN_S ->
                /* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true; NE_WN_EW ? true;
    green:            atomic{ WN_L = Green;}
    
                if
                	/* Wait for end of car queue */
                    :: !WN_S -> skip;
                fi;
    red:            WN_L = Red;
    
		NS_WN_EW ! true; NS_WN_SW ! true; NE_WN_EW ! true;
    	od;
}

/* NE controller */
active proctype NE ()
{
        NE_WN_EW ! true;
        NE_ES ! true;
    end:
    	do
        	:: NE_S ->
    			/* Wait for resources */
                NE_WN_EW  ? true; NE_ES ? true;
    green:            NE_L = Green;
    
                if
                    /* Wait for end of car queue */
                    :: !NE_S -> skip;
                fi;
    red:            NE_L = Red;
    
                NE_WN_EW ! true; NE_ES ! true; 
   		od;
}

/* NE controller */
active proctype EW ()
{
    end: 
    	do
    		:: EW_S ->
				/* Wait for resources */
                NS_WN_EW ? true; NE_WN_EW ? true;
        green:        EW_L = Green;
	
                if
                    /* Wait for end of car queue */
                    :: !EW_S -> skip;
                fi;
        red:        EW_L = Red;
	
                NS_WN_EW ! true; NE_WN_EW ! true;
   		od;
}

/* ES controller */
active proctype ES ()
{
        ES_SW ! true;
    end: 
    	do
            :: ES_S ->
				/* Wait for resources */
                ES_SW ? true; NE_ES ? true;
        green:        ES_L = Green;
	
                if
                    /* Wait for end of car queue */
                    :: !ES_S -> skip;
                fi;
        red:        ES_L = Red;
	
                ES_SW ! true; NE_ES ! true;
   		od;
}

/* SW controller */
active proctype SW ()
{
    end: 
    	do
        	:: SW_S ->
    			/* Wait for resources */
                NS_WN_SW ? true; ES_SW ? true;
        green:        SW_L = Green;
	
                if
                    /* Wait for end of car queue */
                    :: !SW_S -> skip;
                fi;
        red:        SW_L = Red;
        
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

#define pNS_F ((NS@green) && gen_t@NSTrue)
#define pWN_F ((WN@green) && gen_t@WNTrue)
#define pEW_F ((EW@green) && gen_t@EWTrue)
#define pNE_F ((NE@green) && gen_t@NETrue)
#define pSW_F ((SW@green) && gen_t@SWTrue)
#define pES_F ((ES@green) && gen_t@ESTrue)

/*Safety*/
ltl pS_NS {[] !pNS_S}
ltl pS_WN {[] !pWN_S}
ltl pS_EW {[] !pEW_S}
ltl pS_NE {[] !pNE_S}
ltl pS_ES {[] !pES_S}
ltl pS_SW {[] !pSW_S}

/*Fairness -> Liveness*/



ltl pL_NS {[] (pNS_L -> <> qNS_L)}
ltl pF_NS {([]<> !(pWN_F || pEW_F || pSW_F )) -> ([] (pNS_L -> <> qNS_L))}
/*ltl pF_WN {([]<> !(pWN_F)) -> ([] (pWN_L -> <> qWN_L))}*/
/*ltl pF_EW {([]<> !(pEW_F)) -> ([] (pEW_L -> <> qEW_L))}*/
/*ltl pF_NE {([]<> !(pNE_F)) -> ([] (pNE_L -> <> qNE_L))}*/
/*ltl pF_ES {([]<> !(pES_F)) -> ([] (pES_L -> <> qES_L))}*/
/*ltl pF_SW {([]<> !(pSW_F)) -> ([] (pSW_L -> <> qSW_L))}*/