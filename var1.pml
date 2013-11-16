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

/* Car crossing checkers */
bool NS_C = true;
bool WN_C = true;

bool NE_C = true;
bool EW_C = true;

bool ES_C = true;
bool SW_C = true;

/*Safety*/
ltl p0_1 {[] !(NS_L==Green && WN_L==Green && SW_L==Green && EW_L==Green)}
ltl p0_2 {[] !(WN_L==Green && NS_L==Green && NE_L==Green && SW_L==Green && EW_L==Green)}
ltl p0_3 {[] !(EW_L==Green && NE_L==Green && WN_L==Green && NS_L==Green)}
ltl p0_4 {[] !(NE_L==Green && WN_L==Green && ES_L==Green && EW_L==Green)}
ltl p0_5 {[] !(SW_L==Green && ES_L==Green && WN_L==Green && NS_L==Green)}
ltl p0_6 {[] !(ES_L==Green && SW_L==Green && NE_L==Green)}
/*Liveness*/
ltl p1_1 {[] ((NS_S && (NS_L==Red)) -> <> (NS_L==Green))}
ltl p1_2 {[] ((WN_S && (WN_L==Red)) -> <> (WN_L==Green))}
ltl p1_3 {[] ((NE_S && (NE_L==Red)) -> <> (NE_L==Green))}
ltl p1_4 {[] ((EW_S && (EW_L==Red)) -> <> (EW_L==Green))}
ltl p1_5 {[] ((ES_S && (ES_L==Red)) -> <> (ES_L==Green))}
ltl p1_6 {[] ((SW_S && (SW_L==Red)) -> <> (SW_L==Green))}

/*Fairness*/
ltl p2_1 {[] <> !((NS_L==Green) && NS_S)}
ltl p2_2 {[] <> !((WN_L==Green) && WN_S)}
ltl p2_3 {[] <> !((NE_L==Green) && NE_S)}
ltl p2_4 {[] <> !((EW_L==Green) && EW_S)}
ltl p2_5 {[] <> !((ES_L==Green) && ES_S)}
ltl p2_6 {[] <> !((SW_L==Green) && SW_S)}


/* Synchronization channels */

chan NS_WN = [0] of {bool};
chan NE_EW = [0] of {bool};
chan ES_SW = [0] of {bool};

chan NS_SW = [0] of {bool};
chan NS_EW = [0] of {bool};

chan NE_WN = [0] of {bool};
chan NE_ES = [0] of {bool};

chan EW_WN = [0] of {bool};
chan SW_WN = [0] of {bool};

init
{
	atomic{
	   NS_WN ! true;
	   NE_EW ! true;
	   ES_SW ! true;
	   NS_SW ! true;
	   NS_EW ! true;
	   NE_WN ! true;
	   NE_ES ! true;
	   SW_WN ! true;
	   EW_WN ! true;
   };
}

/* Traffic generation process */
active proctype gen_t ()
{
	do
		:: true ->
			if
				:: NS_C -> NS_S = !NS_S; NS_C = false;
				:: else -> skip;
			fi
	    :: true ->
	    	if
	    		:: WN_C -> WN_S = !WN_S; WN_C = false;
	    		:: else -> skip;
	    	fi
		:: true ->
	    	if
		    	:: NE_C -> NE_S = !NE_S; NE_C = false;
	    		:: else -> skip;
	    	fi
		:: true ->
	    	if
				:: EW_C -> EW_S = !EW_S; EW_C = false;
	    		:: else -> skip;
	    	fi
		:: true ->
	    	if
				:: ES_C -> ES_S = !ES_S; ES_C = false;
	    		:: else -> skip;
	    	fi
		:: true ->
	    	if
				:: SW_C -> SW_S = !SW_S; SW_C=false;
	    		:: else -> skip;
	    	fi
   od;
}

/* NS controller */
active proctype NS ()
{
	do
	/* Wait for resources */
	      	:: if
	      		:: NS_S ->
					NS_WN ? true; NS_SW ? true; NS_EW ? true;
		      		NS_L = Green;
		      		NS_C = true;
		      		if
		      			/* Wait for end of car queue */
		      			:: !NS_S -> skip;
		      		fi;
		      		NS_L = Red; 
		      		NS_WN ! true; NS_SW ! true; NS_EW ! true;
		      	:: else -> skip;
	      	fi;
   od;
}

/* WN controller */
active proctype WN ()
{
	do
		:: if
			:: WN_S ->
				/* Wait for resources */
				NS_WN ? true; SW_WN ? true; EW_WN ? true; NE_WN ? true;
				WN_L = Green;
				WN_C = true;
				if
				/* Wait for end of car queue */
					:: !WN_S -> skip;
				fi;
				WN_L = Red;
				NS_WN ! true; SW_WN ! true; EW_WN ! true; NE_WN ! true;
			:: else -> skip;
		fi;
	od;
}

/* NE controller */
active proctype NE ()
{
	do
	/* Wait for resources */
	      	:: if
	      		:: NE_S ->
					NE_EW ? true; NE_WN ? true; NE_ES ? true;
		      		NE_L = Green;
		      		NE_C = true;
		      		if
		      			/* Wait for end of car queue */
		      			:: !NE_S -> skip;
		      		fi;
		      		NE_L = Red;
		      		NE_EW ! true; NE_WN ! true; NE_ES ! true;
		      	:: else -> skip;
	      	fi;
   od;
}

/* NE controller */
active proctype EW ()
{
	do
	/* Wait for resources */
	      	:: if
	      		:: EW_S ->
	      			NE_EW ? true; NS_EW ? true; EW_WN ? true;
		      		EW_L = Green;
		      		EW_C = true;
		      		if
		      			/* Wait for end of car queue */
		      			:: !EW_S -> skip;
		      		fi;
		      		EW_L = Red;
		      		NE_EW ! true; NS_EW ! true; EW_WN ! true;
		      	:: else -> skip;
	      	fi;
   od;
}

/* ES controller */
active proctype ES ()
{
	do
	/* Wait for resources */
	      	:: if
	      		:: ES_S ->
	      			ES_SW ? true; NE_ES ? true;
		      		ES_L = Green;
		      		ES_C = true;
		      		if
		      			/* Wait for end of car queue */
		      			:: !ES_S -> skip;
		      		fi;
		      		ES_L = Red;
		      		ES_SW ! true; NE_ES ! true;
		      	:: else -> skip;
	      	fi;
   od;
}

/* SW controller */
active proctype SW ()
{
	do
	/* Wait for resources */
	      	:: if
	      		:: SW_S ->
	      			ES_SW ? true; SW_WN ? true; NS_SW ? true;
		      		SW_L = Green;
		      		SW_C = true;
		      		if
		      			/* Wait for end of car queue */
		      			:: !SW_S -> skip;
		      		fi;
		      		SW_L = Red;
		      		ES_SW ! true; SW_WN ! true; NS_SW ! true;
		      	:: else -> skip;
	      	fi;
   od;
}
