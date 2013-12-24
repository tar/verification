#define spin_lock(mutex)    \
   do                       \
   :: 1 ->                  \
   atomic                   \
   {                        \
       if                   \
       :: mutex == 0 ->     \
            mutex = 1;      \
            break           \
       :: else -> skip      \
       fi                   \
    }                      \
   od
 
 #define spin_unlock(mutex) \
    mutex = 0

// WE
bool WE_GREEN = false;
bool WE_SENSE = false;

// ES
bool ES_GREEN = false;
bool ES_SENSE = false;

// SW
bool SW_GREEN = false;
bool SW_SENSE = false;

// NS
bool NS_GREEN = false;
bool NS_SENSE = false;

// SW
bool WN_GREEN = false;
bool WN_SENSE = false;

bit LOCK_MUTEX = 0;

#define CROSS1_FREE (!NS_GREEN && !WN_GREEN && !SW_GREEN)
#define CROSS2_FREE (!NS_GREEN && !WE_GREEN)
#define CROSS3_FREE (!WE_GREEN && !ES_GREEN && !SW_GREEN)

ltl safety
{
        [] !(WE_GREEN && ES_GREEN)
    &&  [] !(WE_GREEN && SW_GREEN)
    &&  [] !(NS_GREEN && SW_GREEN)
    &&  [] !(NS_GREEN && WN_GREEN)
    &&  [] !(NS_GREEN && WE_GREEN)
    &&  [] !(SW_GREEN && ES_GREEN)
    &&  [] !(SW_GREEN && WN_GREEN)
}

ltl fairness
{
        []<> !(WE_SENSE && WE_GREEN)
    &&  []<> !(ES_SENSE && ES_GREEN)
    &&  []<> !(SW_SENSE && SW_GREEN)
    &&  []<> !(NS_SENSE && NS_GREEN)
    &&  []<> !(WN_SENSE && WN_GREEN)
}

ltl non_parall
{
    !( <> ((WN_GREEN) || (WE_GREEN))
    && <> ((WN_GREEN) || (ES_GREEN))
    && <> ((NS_GREEN) || (ES_GREEN)))
}

proctype WE_TRAFFIC_CTRL()
{
    do
    :: (!WE_SENSE && !WE_GREEN) ->
        WE_SENSE = true;
    :: (WE_SENSE && WE_GREEN) ->
        WE_SENSE = false;
    od;
}

proctype WE_LIGHT_CTRL()
{
    do
    :: (WE_SENSE) ->        
        spin_lock(LOCK_MUTEX);
        (CROSS2_FREE && CROSS3_FREE) ->
            WE_GREEN = true;
        spin_unlock(LOCK_MUTEX);
WE_EX:
        (!WE_SENSE) ->
            WE_GREEN = false;
    od;
}

proctype ES_TRAFFIC_CTRL()
{
    do
    :: (!ES_SENSE && !ES_GREEN) ->
        ES_SENSE = true;
    :: (ES_SENSE && ES_GREEN) ->
        ES_SENSE = false;
    od;
}

proctype ES_LIGHT_CTRL()
{
    do
    :: (ES_SENSE) ->        
        spin_lock(LOCK_MUTEX);
        (CROSS3_FREE) ->            
            ES_GREEN = true;
        spin_unlock(LOCK_MUTEX);
ES_EX:
        (!ES_SENSE) ->
            ES_GREEN = false;
            
    od;
}

proctype SW_TRAFFIC_CTRL()
{
    do
    :: (!SW_SENSE && !SW_GREEN) ->
        SW_SENSE = true;
    :: (SW_SENSE && SW_GREEN) ->
        SW_SENSE = false;
    od;
}

proctype SW_LIGHT_CTRL()
{
    do
    :: (SW_SENSE) ->        
        spin_lock(LOCK_MUTEX);
        (CROSS3_FREE && CROSS1_FREE) ->
            SW_GREEN = true;
        spin_unlock(LOCK_MUTEX);
SW_EX:
        (!SW_SENSE) ->
            SW_GREEN = false;
    od;
}

proctype NS_TRAFFIC_CTRL()
{
    do
    :: (!NS_SENSE && !NS_GREEN) ->
        NS_SENSE = true;
    :: (NS_SENSE && NS_GREEN) ->
        NS_SENSE = false;
    od;
}

proctype NS_LIGHT_CTRL()
{
    do
    :: (NS_SENSE) ->        
        spin_lock(LOCK_MUTEX);
        (CROSS1_FREE && CROSS2_FREE) ->            
            NS_GREEN = true;
        spin_unlock(LOCK_MUTEX);
NS_EX:
        (!NS_SENSE) ->
            NS_GREEN = false;
            
    od;
}

proctype WN_TRAFFIC_CTRL()
{
    do
    :: (!WN_SENSE && !WN_GREEN) ->
        WN_SENSE = true;
    :: (WN_SENSE && WN_GREEN) ->
        WN_SENSE = false;
    od;
}

proctype WN_LIGHT_CTRL()
{
    do
    :: (WN_SENSE) ->        
        spin_lock(LOCK_MUTEX);
        (CROSS1_FREE) ->
            WN_GREEN = true;
        spin_unlock(LOCK_MUTEX);
WN_EX:
        (!WN_SENSE) ->
            WN_GREEN = false;
    od;
}

init
{
    atomic {
        run WE_TRAFFIC_CTRL();
        run ES_TRAFFIC_CTRL();
        run SW_TRAFFIC_CTRL();
        run NS_TRAFFIC_CTRL();
        run WN_TRAFFIC_CTRL();

        run WE_LIGHT_CTRL();
        run ES_LIGHT_CTRL();
        run SW_LIGHT_CTRL();
        run NS_LIGHT_CTRL();
        run WN_LIGHT_CTRL();
    };
}

ltl lvn_we 
{
        // strong fairness -> liveness
        ((([]<> (WE_SENSE)) -> ([]<> (WE_SENSE && WE_LIGHT_CTRL@WE_EX)))) -> ([] ((WE_SENSE && !WE_GREEN) -> <>WE_GREEN))
        // weak fairness -> liveness
        //(((<>[]WE_SENSE) -> ([]<>WE_GREEN)) && []<> !(WE_SENSE && WE_GREEN)) -> ([] ((WE_SENSE && !WE_GREEN) -> <>WE_GREEN))
}

ltl lvn_es 
{
        ((([]<> (ES_SENSE)) -> ([]<> (ES_SENSE && ES_LIGHT_CTRL@ES_EX)))) -> ([] ((ES_SENSE && !ES_GREEN) -> <>ES_GREEN))
}

ltl lvn_sw 
{
        ((([]<> (SW_SENSE)) -> ([]<> (SW_SENSE && SW_LIGHT_CTRL@SW_EX)))) -> ([] ((SW_SENSE && !SW_GREEN) -> <>SW_GREEN))
}

ltl lvn_ns 
{
        ((([]<> (NS_SENSE)) -> ([]<> (NS_SENSE && NS_LIGHT_CTRL@NS_EX)))) -> ([] ((NS_SENSE && !NS_GREEN) -> <>NS_GREEN))
}

ltl lvn_wn 
{
        ((([]<> (WN_SENSE)) -> ([]<> (WN_SENSE && WN_LIGHT_CTRL@WN_EX)))) -> ([] ((WN_SENSE && !WN_GREEN) -> <>WN_GREEN))
}
