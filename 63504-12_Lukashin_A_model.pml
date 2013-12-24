/* Course work made by Anton Lukashin group 6084-12 */

/* Exercise 1,12,15 (WN,NS) (NE, EW) (SW, ES)*/
/* Types of signals */

#define MAX 5

mtype = {Red, Green};

/* Lights signals */

mtype NS_L = Red;
mtype WN_L = Red;

mtype NE_L = Red;
mtype EW_L = Red;

mtype ES_L = Red;
mtype SW_L = Red;

/* Car traffic sensors */

bool NS_R = false;
bool WN_R = false;

bool NE_R = false;
bool EW_R = false;

bool ES_R = false;
bool SW_R = false;


/* Synchronization channels */

chan NS_WN_EW = [1] of {bool};
chan NS_WN_SW = [1] of {bool};
chan NE_WN_EW = [1] of {bool};
chan NE_ES = [1] of {bool};
chan ES_SW = [1] of {bool};



/* Traffic generation process */
 proctype gen_t ()
{	
	
    end: do
                :: (!NS_R) -> 
		    NS_R = true;
                :: (!WN_R) -> 
		    WN_R = true;
                :: (!NE_R) -> 
		    NE_R = true;
                :: (!EW_R) -> 
		    EW_R = true;
                :: (!ES_R) -> 
		    ES_R = true;
                :: (!SW_R) -> 
		    SW_R = true;
            od;
}


/* NS controller */
 proctype NS ()
{
	bool sensor = false;
	int n=0;
    end: 
    	do
    	    :: NS_R ->
    			/* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true;
        green:  NS_L = Green;
	NSTrue:	sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break;
		od;
    NSFalse:	sensor = false;
		n=0;
        red:        NS_L = Red; 
		NS_R=false;
		NS_WN_EW ! true; NS_WN_SW ! true;
	od;
}

/* WN controller */
 proctype WN ()
{
	bool sensor = false;
	int n=0;
    end: 
    	do
            :: WN_R ->
                /* Wait for resources */
                NS_WN_EW ? true; NS_WN_SW ? true; NE_WN_EW ? true;
    green:      WN_L = Green;
    WNTrue:     sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break; 
		od;
    WNFalse:	sensor = false;
		n=0;
    red:        WN_L = Red;
		WN_R = false;
		NS_WN_EW ! true; NS_WN_SW ! true; NE_WN_EW ! true;
    	od;
}

/* NE controller */
 proctype NE ()
{
	bool sensor = false;
	int n=0;
    end:
    	do
        	:: NE_R ->
    			/* Wait for resources */
                NE_WN_EW  ? true; NE_ES ? true;
    green:            NE_L = Green;
    NETrue:           sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break; 
		od;
    NEFalse:	sensor = false;
		n=0;
    red:            NE_L = Red;
		NE_R = false;
                NE_WN_EW ! true; NE_ES ! true; 
   		od;
}

/* NE controller */
 proctype EW ()
{
	bool sensor = false;
	int n=0;
    end: 
    	do
    		:: EW_R ->
				/* Wait for resources */
                NS_WN_EW ? true; NE_WN_EW ? true;
        green:        EW_L = Green;
	
        EWTrue: sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break; 
		od;
    EWFalse:	sensor = false;
		n=0;
        red:        EW_L = Red;
		EW_R = false;
                NS_WN_EW ! true; NE_WN_EW ! true;
   		od;
}

/* ES controller */
 proctype ES ()
{
	bool sensor = false;
	int n=0;
    end: 
    	do
            :: ES_R ->
				/* Wait for resources */
                ES_SW ? true; NE_ES ? true;
        green:        ES_L = Green;
        ESTrue:       sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break; 
		od;
    ESFalse:	sensor = false;
		n=0;
        red:        ES_L = Red;
		ES_R = false;
                ES_SW ! true; NE_ES ! true;
   		od;
}

/* SW controller */
 proctype SW ()
{
	bool sensor = false;
	int n=0;
    end: 
    	do
        	:: SW_R ->
    			/* Wait for resources */
                NS_WN_SW ? true; ES_SW ? true;
        green:        SW_L = Green;
	
        SWTrue:       sensor = true;
		do
		    :: n<= MAX -> 
			break; 
		    :: n<= MAX ->
			n=n+1;
		    :: n>MAX -> 
			break; 
		od;
	SWFalse:	sensor = false;
		n=0;
        red:        SW_L = Red;
		SW_R=false;
                NS_WN_SW ! true; ES_SW ! true;
   		od;
}


init {
	atomic{
		NS_WN_EW ! true;
		NS_WN_SW ! true;
		NE_WN_EW ! true;
		NE_ES ! true;
		ES_SW ! true;	
	}
	atomic{
		run NS();
		run WN();
		run NE();
		run ES();
		run SW();
		run EW();
		run gen_t();
	}
}

#define pNS_S (NS@green && WN@green && SW@green && EW@green) 
#define pWN_S (WN@green && NS@green && NE@green && SW@green && EW@green) 
#define pEW_S (EW@green && NE@green && WN@green && NS@green) 
#define pNE_S (NE@green && WN@green && ES@green && EW@green)
#define pSW_S (SW@green && ES@green && WN@green && NS@green)
#define pES_S (SW@green && ES@green && WN@green && NS@green)

#define pNS_L (NS@NSTrue && (NS@red))
#define qNS_L (NS@green)

#define pWN_L (WN@WNTrue && (WN@red))
#define qWN_L (WN@green)

#define pEW_L (EW@EWTrue && (EW@red))
#define qEW_L (EW@green)

#define pNE_L (NE@NETrue && (NE@red))
#define qNE_L (NE@green)

#define pSW_L (SW@SWTrue && (SW@red))
#define qSW_L (SW@green)

#define pES_L (ES@ESTrue && (ES@red))
#define qES_L (ES@green)

#define pNS_F ((NS@green) && NS@NSTrue)
#define pWN_F ((WN@green) && WN@WNTrue)
#define pEW_F ((EW@green) && EW@EWTrue)
#define pNE_F ((NE@green) && NE@NETrue)
#define pSW_F ((SW@green) && SW@SWTrue)
#define pES_F ((ES@green) && ES@ESTrue)

/*Safety*/
ltl pS_NS {[] !pNS_S}
ltl pS_WN {[] !pWN_S}
ltl pS_EW {[] !pEW_S}
ltl pS_NE {[] !pNE_S}
ltl pS_ES {[] !pES_S}
ltl pS_SW {[] !pSW_S}

/*Liveness*/

ltl pL_NS {[] (pNS_L -> (<> qNS_L))}
ltl pL_WN {[] (pWN_L -> (<> qWN_L))}
ltl pL_EW {[] (pEW_L -> (<> qEW_L))}
ltl pL_NE {[] (pNE_L -> (<> qNE_L))}
ltl pL_ES {[] (pES_L -> (<> qES_L))}
ltl pL_SW {[] (pSW_L -> (<> qSW_L))}

/*Fairness */
ltl pF {[]<> (!(pNS_F) && !(pWN_F) && !(pNE_F) && !(pEW_F) && !(pES_F) && !(pSW_F))}

/*ltl pF_NS {([]<> (!(pWN_F || pEW_F || pSW_F ))) -> ([] (pNS_L -> <> qNS_L))}*/