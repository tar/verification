#define NS 0
#define WN 1
#define NE 2
#define EW 3
#define ES 4
#define SW 5
#define DIRECTION_COUNT 6

#define GREEN true
#define RED false

#define LOCK(mutex) mutex ! true;
#define UNLOCK(mutex) mutex ? true;

typedef Direction {
        chan mutex = [1] of {bool}
        byte conflictCount;
        byte conflicts[DIRECTION_COUNT-1];
};

Direction directions[DIRECTION_COUNT];
bool lightState[DIRECTION_COUNT];
bool hasTraffic[DIRECTION_COUNT];

proctype trafficProc(byte id) {
        endpoint:
        do
        :: !hasTraffic[id] ->
                progress:
                hasTraffic[id] = true;
        :: hasTraffic[id] && lightState[id] == GREEN ->
                hasTraffic[id] = false;
        od
}

proctype lightProc(byte id) {
        endpoint:
        do
        :: hasTraffic[id] ->
                LOCK(directions[id].mutex);
                int i = 0;
                do
                :: i < directions[id].conflictCount && i>=0 ->
			if 
			:: len (directions[directions[id].conflicts[i]].mutex) == 0 -> 
			   LOCK(directions[directions[id].conflicts[i]].mutex);
			   i = i + 1;
			:: else ->
			   i=i-1;
			   if :: i<0->break; :: else ->
			   UNLOCK(directions[directions[id].conflicts[i]].mutex);
			   fi; 
			fi;
			
                :: !(i < directions[id].conflictCount || i<0) -> break;
                od;

                lightState[id] = GREEN;

                !hasTraffic[id];
                
                lightState[id] = RED;

                i = directions[id].conflictCount - 1;
                do
                :: i > 0 ->
                        UNLOCK(directions[directions[id].conflicts[i]].mutex);
                        i = i - 1;
                :: !(i > 0) -> break;
                od;
                UNLOCK(directions[id].mutex);
        od
}

#define FOR_ALL_DIRECTIONS(DO) \
        DO(NS); \
        DO(WN); \
        DO(NE); \
        DO(EW); \
        DO(ES); \
	DO(SW);


#define INIT_DIRECTION(DIR, CONFLICT_COUNT, C0, C1, C2, C3, C4) \
        lightState[DIR] = RED; \
        hasTraffic[DIR] = false; \
        directions[DIR].conflictCount = CONFLICT_COUNT; \
        directions[DIR].conflicts[0] = C0; \
        directions[DIR].conflicts[1] = C1; \
        directions[DIR].conflicts[2] = C2; \
        directions[DIR].conflicts[3] = C3; \
	directions[DIR].conflicts[4] = C4;

init {
        INIT_DIRECTION(NS, 3, WN, EW, SW, -1, -1);
        INIT_DIRECTION(WN, 4, NS, EW, NE, ES, -1);
        INIT_DIRECTION(NE, 3, WN, EW, ES, -1, -1);
        INIT_DIRECTION(EW, 3, NS, WN, NE, -1, -1);
	INIT_DIRECTION(ES, 2, NE, SW, 0, -1, -1);
        INIT_DIRECTION(SW, 3, WN, NS, ES, -1, -1);

        FOR_ALL_DIRECTIONS(run trafficProc)
        FOR_ALL_DIRECTIONS(run lightProc)
}

#define IS_RED(D1) (lightState[D1] == RED)
#define IS_GREEN(D1) (lightState[D1] == GREEN)

#define pNS_S ( IS_GREEN(NS) && IS_GREEN(WN) && IS_GREEN(SW) && IS_GREEN(EW)) 
#define pWN_S ( IS_GREEN(WN) && IS_GREEN(NS) && IS_GREEN(EW) && IS_GREEN(NE) && IS_GREEN(SW)) 
#define pNE_S ( IS_GREEN(NE) && IS_GREEN(WN) && IS_GREEN(EW) && IS_GREEN(ES)) 
#define pEW_S ( IS_GREEN(EW) && IS_GREEN(WN) && IS_GREEN(NE) && IS_GREEN(NS)) 
#define pES_S ( IS_GREEN(ES) && IS_GREEN(NE) && IS_GREEN(SW)) 
#define pSW_S ( IS_GREEN(SW) && IS_GREEN(WN) && IS_GREEN(ES) && IS_GREEN(NS)) 


#define pNS_L (hasTraffic[NS] && IS_RED(NS))
#define qNS_L (IS_GREEN(NS))
#define pWN_L (hasTraffic[WN] && IS_RED(WN))
#define qWN_L (IS_GREEN(WN))
#define pNE_L (hasTraffic[NE] && IS_RED(NE))
#define qNE_L (IS_GREEN(NE))
#define pEW_L (hasTraffic[EW] && IS_RED(EW))
#define qEW_L (IS_GREEN(EW))
#define pES_L (hasTraffic[ES] && IS_RED(ES))
#define qES_L (IS_GREEN(ES))
#define pSW_L (hasTraffic[SW] && IS_RED(SW))
#define qSW_L (IS_GREEN(SW))

#define pNS_F (IS_GREEN(NS) && hasTraffic[NS])
#define pWN_F (IS_GREEN(WN) && hasTraffic[WN])
#define pNE_F (IS_GREEN(NE) && hasTraffic[NE])
#define pEW_F (IS_GREEN(EW) && hasTraffic[EW])
#define pES_F (IS_GREEN(ES) && hasTraffic[ES])
#define pSW_F (IS_GREEN(SW) && hasTraffic[SW])

/*Safety*/
ltl pS_NS {[] !pNS_S}
ltl pS_WN {[] !pWN_S}
ltl pS_EW {[] !pEW_S}
ltl pS_NE {[] !pNE_S}
ltl pS_ES {[] !pES_S}
ltl pS_SW {[] !pSW_S}


/*Liveness*/

/*ltl pL_NS {[] (pNS_L -> <> qNS_L)}*/
ltl pL_NS {([]<> !(pWN_F || pEW_F || pSW_F )) -> ([] (pNS_L -> <> qNS_L))}
/*ltl pF_WN {([]<> !(pWN_F)) -> ([] (pWN_L -> <> qWN_L))}*/
/*ltl pF_EW {([]<> !(pEW_F)) -> ([] (pEW_L -> <> qEW_L))}*/
/*ltl pF_NE {([]<> !(pNE_F)) -> ([] (pNE_L -> <> qNE_L))}*/
/*ltl pF_ES {([]<> !(pES_F)) -> ([] (pES_L -> <> qES_L))}*/
/*ltl pF_SW {([]<> !(pSW_F)) -> ([] (pSW_L -> <> qSW_L))}*/


/*Fairness*/
ltl pF_NS {[]<> !pNS_F}
ltl pF_WN {[]<> !pWN_F}
ltl pF_NE {[]<> !pNE_F}
ltl pF_EW {[]<> !pEW_F}
ltl pF_ES {[]<> !pES_F}
ltl pF_SW {[]<> !pSW_F}