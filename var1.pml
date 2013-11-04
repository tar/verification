/* Course work made by Anton Lukashin group 6084-12 */

/* Exercise 1,12,15 (WN,NS) (NE, EW) (SW, ES)*/

#define p [] (NS_L==Green && WN_L==Green)
#define p1 <> (NS_T==true && NS_L==Green)

/* Types of signals */
mtype = {Red, Green};

/* Lights signals */

mtype NS_L = Red;
mtype WN_L = Red;

mtype NE_L = Red;
mtype EW_L = Red;

/* Car traffic sensors */

bool NS_S = false;
bool WN_S = false;

bool NE_S = false;
bool EW_S = false;

/* Car traffic for each direction */

bool NS_T = false;
bool WN_T = false;

bool NE_T = false;
bool EW_T = false;


/* Synchronization channels  */

chan NS_WN = [0] of {bool};
chan NE_EW = [0] of {bool};

init
{
   NS_WN ! true;
   NE_EW ! true;
}

/* Traffic generation process */
active proctype gen_t ()
{
	do
		:: true ->
			NS_S = !NS_S;
			if
	      		:: (!NS_T && NS_S) -> atomic { NS_T = true; printf("MSC: NS traffic gen")}
		      	:: else -> skip;
		    fi;
	    :: true ->
	    	WN_S = !WN_S;
		    if
		    	:: (!WN_T && !WN_S) -> atomic { WN_T = true; printf("MSC: WN traffic gen")}
		    	:: else -> skip;
		    fi;
   od;
}

/* NS controller */
active proctype NS ()
{
	NS_L = Red;
	do
	/* Wait for resources */
		:: NS_WN ? true;
	      	if
	      		:: NS_T ->
		      		NS_L = Green;
		      		if
		      			/* Wait for end of car queue */
		      			:: !NS_S -> skip;
		      		fi;
		      		atomic{NS_L = Red; printf("HERE!!!!!!");}
		      		atomic{NS_T = false; printf("aaaaaaaaaa");}
		      	:: else -> skip;
	      	fi;
	      	/* Send WN that NS direction is free */
	      	NS_WN ! true;
   od;
}

/* WN controller */
active proctype WN ()
{
	WN_L = Red;
	do
		/* Wait for resources */
		:: NS_WN ? true;
		if
			:: WN_T ->
				WN_T = Green;
				if
				/* Wait for end of car queue */
					:: !WN_S -> skip;
				fi;
				WN_L = Red;
				WN_T = false;
			:: else -> skip;
		fi;
		/* Send WN that NS direction is free */
		NS_WN ! true;
	od;
}