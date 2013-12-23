	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM pF */
;
		;
		;
		;
		
	case 5: /* STATE 13 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pF_NS */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 11: /* STATE 22 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pL_NS */
;
		;
		;
		;
		
	case 14: /* STATE 13 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_SW */
;
		
	case 15: /* STATE 1 */
		goto R999;

	case 16: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_ES */
;
		
	case 17: /* STATE 1 */
		goto R999;

	case 18: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_NE */
;
		
	case 19: /* STATE 1 */
		goto R999;

	case 20: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_EW */
;
		
	case 21: /* STATE 1 */
		goto R999;

	case 22: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_WN */
;
		
	case 23: /* STATE 1 */
		goto R999;

	case 24: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pS_NS */
;
		
	case 25: /* STATE 1 */
		goto R999;

	case 26: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SW */
;
		;
		
	case 28: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.NS_WN_SW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 29: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.ES_SW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 30: /* STATE 4 */
		;
		now.SW_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: /* STATE 9 */
		;
		now.SW_L = trpt->bup.oval;
		;
		goto R999;

	case 33: /* STATE 10 */
		;
		_m = unsend(now.NS_WN_SW);
		;
		goto R999;

	case 34: /* STATE 11 */
		;
		_m = unsend(now.ES_SW);
		;
		goto R999;

	case 35: /* STATE 15 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ES */

	case 36: /* STATE 1 */
		;
		_m = unsend(now.ES_SW);
		;
		goto R999;
;
		;
		
	case 38: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.ES_SW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 39: /* STATE 4 */
		;
		XX = 1;
		unrecv(now.NE_ES, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 40: /* STATE 5 */
		;
		now.ES_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 42: /* STATE 10 */
		;
		now.ES_L = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 11 */
		;
		_m = unsend(now.ES_SW);
		;
		goto R999;

	case 44: /* STATE 12 */
		;
		_m = unsend(now.NE_ES);
		;
		goto R999;

	case 45: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC EW */
;
		;
		
	case 47: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.NS_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 48: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.NE_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 49: /* STATE 4 */
		;
		now.EW_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 51: /* STATE 9 */
		;
		now.EW_L = trpt->bup.oval;
		;
		goto R999;

	case 52: /* STATE 10 */
		;
		_m = unsend(now.NS_WN_EW);
		;
		goto R999;

	case 53: /* STATE 11 */
		;
		_m = unsend(now.NE_WN_EW);
		;
		goto R999;

	case 54: /* STATE 15 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC NE */

	case 55: /* STATE 1 */
		;
		_m = unsend(now.NE_WN_EW);
		;
		goto R999;

	case 56: /* STATE 2 */
		;
		_m = unsend(now.NE_ES);
		;
		goto R999;
;
		;
		
	case 58: /* STATE 4 */
		;
		XX = 1;
		unrecv(now.NE_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 59: /* STATE 5 */
		;
		XX = 1;
		unrecv(now.NE_ES, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 60: /* STATE 6 */
		;
		now.NE_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 62: /* STATE 11 */
		;
		now.NE_L = trpt->bup.oval;
		;
		goto R999;

	case 63: /* STATE 12 */
		;
		_m = unsend(now.NE_WN_EW);
		;
		goto R999;

	case 64: /* STATE 13 */
		;
		_m = unsend(now.NE_ES);
		;
		goto R999;

	case 65: /* STATE 17 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC WN */
;
		;
		
	case 67: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.NS_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 68: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.NS_WN_SW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 69: /* STATE 4 */
		;
		XX = 1;
		unrecv(now.NE_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 70: /* STATE 5 */
		;
		now.WN_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 72: /* STATE 11 */
		;
		now.WN_L = trpt->bup.oval;
		;
		goto R999;

	case 73: /* STATE 12 */
		;
		_m = unsend(now.NS_WN_EW);
		;
		goto R999;

	case 74: /* STATE 13 */
		;
		_m = unsend(now.NS_WN_SW);
		;
		goto R999;

	case 75: /* STATE 14 */
		;
		_m = unsend(now.NE_WN_EW);
		;
		goto R999;

	case 76: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC NS */

	case 77: /* STATE 1 */
		;
		_m = unsend(now.NS_WN_EW);
		;
		goto R999;

	case 78: /* STATE 2 */
		;
		_m = unsend(now.NS_WN_SW);
		;
		goto R999;
;
		;
		
	case 80: /* STATE 4 */
		;
		XX = 1;
		unrecv(now.NS_WN_EW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 81: /* STATE 5 */
		;
		XX = 1;
		unrecv(now.NS_WN_SW, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 82: /* STATE 6 */
		;
		now.NS_L = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 84: /* STATE 11 */
		;
		now.NS_L = trpt->bup.oval;
		;
		goto R999;

	case 85: /* STATE 12 */
		;
		_m = unsend(now.NS_WN_EW);
		;
		goto R999;

	case 86: /* STATE 13 */
		;
		_m = unsend(now.NS_WN_SW);
		;
		goto R999;

	case 87: /* STATE 17 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC gen_t */
;
		;
		
	case 89: /* STATE 3 */
		;
		((P0 *)this)->ns = trpt->bup.ovals[1];
		now.NS_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 91: /* STATE 6 */
		;
		now.NS_S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 93: /* STATE 9 */
		;
		((P0 *)this)->wn = trpt->bup.ovals[1];
		now.WN_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 95: /* STATE 12 */
		;
		now.WN_S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: /* STATE 15 */
		;
		((P0 *)this)->ne = trpt->bup.ovals[1];
		now.NE_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 99: /* STATE 18 */
		;
		now.NE_S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 101: /* STATE 21 */
		;
		((P0 *)this)->ew = trpt->bup.ovals[1];
		now.EW_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 103: /* STATE 24 */
		;
		now.EW_S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 105: /* STATE 27 */
		;
		((P0 *)this)->es = trpt->bup.ovals[1];
		now.ES_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 107: /* STATE 30 */
		;
		now.ES_S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 109: /* STATE 33 */
		;
		((P0 *)this)->sw = trpt->bup.ovals[1];
		now.SW_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 111: /* STATE 36 */
		;
		now.SW_S = trpt->bup.oval;
		;
		goto R999;

	case 112: /* STATE 37 */
		;
	/* 5 */	((P0 *)this)->sw = trpt->bup.ovals[5];
	/* 4 */	((P0 *)this)->ew = trpt->bup.ovals[4];
	/* 3 */	((P0 *)this)->es = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->ne = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->wn = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->ns = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 113: /* STATE 43 */
		;
		((P0 *)this)->sw = trpt->bup.ovals[5];
		((P0 *)this)->ew = trpt->bup.ovals[4];
		((P0 *)this)->es = trpt->bup.ovals[3];
		((P0 *)this)->ne = trpt->bup.ovals[2];
		((P0 *)this)->wn = trpt->bup.ovals[1];
		((P0 *)this)->ns = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 114: /* STATE 48 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

