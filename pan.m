#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM pF */
	case 3: /* STATE 1 - _spin_nvr.tmp:85 - [(!(!((((((((NS._p==green)&&(gen_t._p==NSTrue))||((WN._p==green)&&(gen_t._p==WNTrue)))||((NE._p==green)&&(gen_t._p==NETrue)))||((EW._p==green)&&(gen_t._p==EWTrue)))||((ES._p==green)&&(gen_t._p==ESTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!( !( !((((((((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==4))||((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==10)))||((((int)((P3 *)Pptr(f_pid(3)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==16)))||((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==22)))||((((int)((P5 *)Pptr(f_pid(5)))->_p)==5)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==28)))||((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==34)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 8 - _spin_nvr.tmp:90 - [(!(!((((((((NS._p==green)&&(gen_t._p==NSTrue))||((WN._p==green)&&(gen_t._p==WNTrue)))||((NE._p==green)&&(gen_t._p==NETrue)))||((EW._p==green)&&(gen_t._p==EWTrue)))||((ES._p==green)&&(gen_t._p==ESTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][8] = 1;
		if (!( !( !((((((((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==4))||((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==10)))||((((int)((P3 *)Pptr(f_pid(3)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==16)))||((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==22)))||((((int)((P5 *)Pptr(f_pid(5)))->_p)==5)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==28)))||((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==34)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 13 - _spin_nvr.tmp:92 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pF_NS */
	case 6: /* STATE 1 - _spin_nvr.tmp:68 - [(((!(((((WN._p==green)&&(gen_t._p==WNTrue))||((EW._p==green)&&(gen_t._p==EWTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))&&!(!(((gen_t._p==NSTrue)&&(NS._p==red)))))&&!((NS._p==green))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!((( !(((((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==10))||((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==22)))||((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==34))))&& !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==4)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==11)))))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - _spin_nvr.tmp:69 - [((!(!(((gen_t._p==NSTrue)&&(NS._p==red))))&&!((NS._p==green))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][3] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==4)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==11))))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 10 - _spin_nvr.tmp:74 - [(!((NS._p==green)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][10] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 15 - _spin_nvr.tmp:78 - [((!(((((WN._p==green)&&(gen_t._p==WNTrue))||((EW._p==green)&&(gen_t._p==EWTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))&&!((NS._p==green))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][15] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==10))||((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==22)))||((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==34))))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 17 - _spin_nvr.tmp:79 - [(!((NS._p==green)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][17] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 22 - _spin_nvr.tmp:81 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pL_NS */
	case 12: /* STATE 1 - _spin_nvr.tmp:57 - [((!(!(((gen_t._p==NSTrue)&&(NS._p==red))))&&!((NS._p==green))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==4)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==11))))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 8 - _spin_nvr.tmp:62 - [(!((NS._p==green)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][8] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 13 - _spin_nvr.tmp:64 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_SW */
	case 15: /* STATE 1 - _spin_nvr.tmp:48 - [(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!( !( !(((((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))))
			continue;
		/* merge: assert(!(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green))))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !( !(((((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))), " !( !( !(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: /* STATE 10 - _spin_nvr.tmp:53 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_ES */
	case 17: /* STATE 1 - _spin_nvr.tmp:39 - [(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!( !( !(((((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))))
			continue;
		/* merge: assert(!(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green))))))(0, 2, 6) */
		reached[11][2] = 1;
		spin_assert( !( !( !(((((((int)((P6 *)Pptr(f_pid(6)))->_p)==4)&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))), " !( !( !(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[11][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: /* STATE 10 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_NE */
	case 19: /* STATE 1 - _spin_nvr.tmp:30 - [(!(!(((((NE._p==green)&&(WN._p==green))&&(ES._p==green))&&(EW._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!( !( !(((((((int)((P3 *)Pptr(f_pid(3)))->_p)==6)&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))))
			continue;
		/* merge: assert(!(!(!(((((NE._p==green)&&(WN._p==green))&&(ES._p==green))&&(EW._p==green))))))(0, 2, 6) */
		reached[10][2] = 1;
		spin_assert( !( !( !(((((((int)((P3 *)Pptr(f_pid(3)))->_p)==6)&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P5 *)Pptr(f_pid(5)))->_p)==5))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))), " !( !( !(((((NE._p==green)&&(WN._p==green))&&(ES._p==green))&&(EW._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[10][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: /* STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_EW */
	case 21: /* STATE 1 - _spin_nvr.tmp:21 - [(!(!(((((EW._p==green)&&(NE._p==green))&&(WN._p==green))&&(NS._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!( !( !(((((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P3 *)Pptr(f_pid(3)))->_p)==6))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))))
			continue;
		/* merge: assert(!(!(!(((((EW._p==green)&&(NE._p==green))&&(WN._p==green))&&(NS._p==green))))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !( !( !(((((((int)((P4 *)Pptr(f_pid(4)))->_p)==4)&&(((int)((P3 *)Pptr(f_pid(3)))->_p)==6))&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))))), " !( !( !(((((EW._p==green)&&(NE._p==green))&&(WN._p==green))&&(NS._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: /* STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_WN */
	case 23: /* STATE 1 - _spin_nvr.tmp:12 - [(!(!((((((WN._p==green)&&(NS._p==green))&&(NE._p==green))&&(SW._p==green))&&(EW._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !( !((((((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))&&(((int)((P3 *)Pptr(f_pid(3)))->_p)==6))&&(((int)((P6 *)Pptr(f_pid(6)))->_p)==4))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))))
			continue;
		/* merge: assert(!(!(!((((((WN._p==green)&&(NS._p==green))&&(NE._p==green))&&(SW._p==green))&&(EW._p==green))))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !( !((((((((int)((P2 *)Pptr(f_pid(2)))->_p)==6)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==6))&&(((int)((P3 *)Pptr(f_pid(3)))->_p)==6))&&(((int)((P6 *)Pptr(f_pid(6)))->_p)==4))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))), " !( !( !((((((WN._p==green)&&(NS._p==green))&&(NE._p==green))&&(SW._p==green))&&(EW._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: /* STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pS_NS */
	case 25: /* STATE 1 - _spin_nvr.tmp:3 - [(!(!(((((NS._p==green)&&(WN._p==green))&&(SW._p==green))&&(EW._p==green)))))] (6:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !( !(((((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P6 *)Pptr(f_pid(6)))->_p)==4))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))))
			continue;
		/* merge: assert(!(!(!(((((NS._p==green)&&(WN._p==green))&&(SW._p==green))&&(EW._p==green))))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !( !(((((((int)((P1 *)Pptr(f_pid(1)))->_p)==6)&&(((int)((P2 *)Pptr(f_pid(2)))->_p)==6))&&(((int)((P6 *)Pptr(f_pid(6)))->_p)==4))&&(((int)((P4 *)Pptr(f_pid(4)))->_p)==4))))), " !( !( !(((((NS._p==green)&&(WN._p==green))&&(SW._p==green))&&(EW._p==green)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: /* STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SW */
	case 27: /* STATE 1 - 63504-12_Lukashin_A_model.pml:198 - [(SW_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[6][1] = 1;
		if (!(((int)now.SW_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 2 - 63504-12_Lukashin_A_model.pml:200 - [NS_WN_SW?1] (0:0:0 - 1) */
		reached[6][2] = 1;
		if (q_len(now.NS_WN_SW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_SW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_SW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_SW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 29: /* STATE 3 - 63504-12_Lukashin_A_model.pml:200 - [ES_SW?1] (0:0:0 - 1) */
		reached[6][3] = 1;
		if (q_len(now.ES_SW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ES_SW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.ES_SW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.ES_SW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ES_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 30: /* STATE 4 - 63504-12_Lukashin_A_model.pml:201 - [SW_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[6][4] = 1;
		(trpt+1)->bup.oval = now.SW_L;
		now.SW_L = 1;
#ifdef VAR_RANGES
		logval("SW_L", now.SW_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 5 - 63504-12_Lukashin_A_model.pml:205 - [(!(SW_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[6][5] = 1;
		if (!( !(((int)now.SW_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 9 - 63504-12_Lukashin_A_model.pml:207 - [SW_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[6][9] = 1;
		(trpt+1)->bup.oval = now.SW_L;
		now.SW_L = 2;
#ifdef VAR_RANGES
		logval("SW_L", now.SW_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 10 - 63504-12_Lukashin_A_model.pml:209 - [NS_WN_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[6][10] = 1;
		if (q_full(now.NS_WN_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 34: /* STATE 11 - 63504-12_Lukashin_A_model.pml:209 - [ES_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[6][11] = 1;
		if (q_full(now.ES_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ES_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ES_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 35: /* STATE 15 - 63504-12_Lukashin_A_model.pml:211 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[6][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ES */
	case 36: /* STATE 1 - 63504-12_Lukashin_A_model.pml:175 - [ES_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][1] = 1;
		if (q_full(now.ES_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ES_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ES_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 37: /* STATE 2 - 63504-12_Lukashin_A_model.pml:178 - [(ES_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][2] = 1;
		if (!(((int)now.ES_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 3 - 63504-12_Lukashin_A_model.pml:180 - [ES_SW?1] (0:0:0 - 1) */
		reached[5][3] = 1;
		if (q_len(now.ES_SW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ES_SW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.ES_SW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.ES_SW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ES_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 39: /* STATE 4 - 63504-12_Lukashin_A_model.pml:180 - [NE_ES?1] (0:0:0 - 1) */
		reached[5][4] = 1;
		if (q_len(now.NE_ES) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NE_ES, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NE_ES-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NE_ES, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NE_ES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 40: /* STATE 5 - 63504-12_Lukashin_A_model.pml:181 - [ES_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = now.ES_L;
		now.ES_L = 1;
#ifdef VAR_RANGES
		logval("ES_L", now.ES_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 6 - 63504-12_Lukashin_A_model.pml:185 - [(!(ES_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][6] = 1;
		if (!( !(((int)now.ES_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 10 - 63504-12_Lukashin_A_model.pml:187 - [ES_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[5][10] = 1;
		(trpt+1)->bup.oval = now.ES_L;
		now.ES_L = 2;
#ifdef VAR_RANGES
		logval("ES_L", now.ES_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 11 - 63504-12_Lukashin_A_model.pml:189 - [ES_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][11] = 1;
		if (q_full(now.ES_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ES_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ES_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 44: /* STATE 12 - 63504-12_Lukashin_A_model.pml:189 - [NE_ES!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][12] = 1;
		if (q_full(now.NE_ES))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_ES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_ES, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 45: /* STATE 16 - 63504-12_Lukashin_A_model.pml:191 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[5][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC EW */
	case 46: /* STATE 1 - 63504-12_Lukashin_A_model.pml:157 - [(EW_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][1] = 1;
		if (!(((int)now.EW_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 2 - 63504-12_Lukashin_A_model.pml:159 - [NS_WN_EW?1] (0:0:0 - 1) */
		reached[4][2] = 1;
		if (q_len(now.NS_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 48: /* STATE 3 - 63504-12_Lukashin_A_model.pml:159 - [NE_WN_EW?1] (0:0:0 - 1) */
		reached[4][3] = 1;
		if (q_len(now.NE_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NE_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NE_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NE_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 49: /* STATE 4 - 63504-12_Lukashin_A_model.pml:160 - [EW_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = now.EW_L;
		now.EW_L = 1;
#ifdef VAR_RANGES
		logval("EW_L", now.EW_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 5 - 63504-12_Lukashin_A_model.pml:164 - [(!(EW_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][5] = 1;
		if (!( !(((int)now.EW_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 9 - 63504-12_Lukashin_A_model.pml:166 - [EW_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[4][9] = 1;
		(trpt+1)->bup.oval = now.EW_L;
		now.EW_L = 2;
#ifdef VAR_RANGES
		logval("EW_L", now.EW_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 10 - 63504-12_Lukashin_A_model.pml:168 - [NS_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][10] = 1;
		if (q_full(now.NS_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 53: /* STATE 11 - 63504-12_Lukashin_A_model.pml:168 - [NE_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][11] = 1;
		if (q_full(now.NE_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 54: /* STATE 15 - 63504-12_Lukashin_A_model.pml:170 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC NE */
	case 55: /* STATE 1 - 63504-12_Lukashin_A_model.pml:133 - [NE_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		if (q_full(now.NE_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 56: /* STATE 2 - 63504-12_Lukashin_A_model.pml:134 - [NE_ES!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (q_full(now.NE_ES))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_ES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_ES, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 57: /* STATE 3 - 63504-12_Lukashin_A_model.pml:137 - [(NE_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((int)now.NE_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 4 - 63504-12_Lukashin_A_model.pml:139 - [NE_WN_EW?1] (0:0:0 - 1) */
		reached[3][4] = 1;
		if (q_len(now.NE_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NE_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NE_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NE_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 59: /* STATE 5 - 63504-12_Lukashin_A_model.pml:139 - [NE_ES?1] (0:0:0 - 1) */
		reached[3][5] = 1;
		if (q_len(now.NE_ES) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NE_ES, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NE_ES-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NE_ES, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NE_ES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 60: /* STATE 6 - 63504-12_Lukashin_A_model.pml:140 - [NE_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = now.NE_L;
		now.NE_L = 1;
#ifdef VAR_RANGES
		logval("NE_L", now.NE_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 7 - 63504-12_Lukashin_A_model.pml:144 - [(!(NE_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][7] = 1;
		if (!( !(((int)now.NE_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 11 - 63504-12_Lukashin_A_model.pml:146 - [NE_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = now.NE_L;
		now.NE_L = 2;
#ifdef VAR_RANGES
		logval("NE_L", now.NE_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: /* STATE 12 - 63504-12_Lukashin_A_model.pml:148 - [NE_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][12] = 1;
		if (q_full(now.NE_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 64: /* STATE 13 - 63504-12_Lukashin_A_model.pml:148 - [NE_ES!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][13] = 1;
		if (q_full(now.NE_ES))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_ES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_ES, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 65: /* STATE 17 - 63504-12_Lukashin_A_model.pml:150 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC WN */
	case 66: /* STATE 1 - 63504-12_Lukashin_A_model.pml:115 - [(WN_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		if (!(((int)now.WN_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: /* STATE 2 - 63504-12_Lukashin_A_model.pml:117 - [NS_WN_EW?1] (0:0:0 - 1) */
		reached[2][2] = 1;
		if (q_len(now.NS_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 68: /* STATE 3 - 63504-12_Lukashin_A_model.pml:117 - [NS_WN_SW?1] (0:0:0 - 1) */
		reached[2][3] = 1;
		if (q_len(now.NS_WN_SW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_SW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_SW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_SW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 69: /* STATE 4 - 63504-12_Lukashin_A_model.pml:117 - [NE_WN_EW?1] (0:0:0 - 1) */
		reached[2][4] = 1;
		if (q_len(now.NE_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NE_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NE_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NE_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 70: /* STATE 5 - 63504-12_Lukashin_A_model.pml:118 - [WN_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = now.WN_L;
		now.WN_L = 1;
#ifdef VAR_RANGES
		logval("WN_L", now.WN_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: /* STATE 7 - 63504-12_Lukashin_A_model.pml:122 - [(!(WN_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][7] = 1;
		if (!( !(((int)now.WN_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 11 - 63504-12_Lukashin_A_model.pml:124 - [WN_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[2][11] = 1;
		(trpt+1)->bup.oval = now.WN_L;
		now.WN_L = 2;
#ifdef VAR_RANGES
		logval("WN_L", now.WN_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: /* STATE 12 - 63504-12_Lukashin_A_model.pml:126 - [NS_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.NS_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 74: /* STATE 13 - 63504-12_Lukashin_A_model.pml:126 - [NS_WN_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][13] = 1;
		if (q_full(now.NS_WN_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 75: /* STATE 14 - 63504-12_Lukashin_A_model.pml:126 - [NE_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][14] = 1;
		if (q_full(now.NE_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 76: /* STATE 18 - 63504-12_Lukashin_A_model.pml:128 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC NS */
	case 77: /* STATE 1 - 63504-12_Lukashin_A_model.pml:91 - [NS_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.NS_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 78: /* STATE 2 - 63504-12_Lukashin_A_model.pml:92 - [NS_WN_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.NS_WN_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 79: /* STATE 3 - 63504-12_Lukashin_A_model.pml:95 - [(NS_S)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.NS_S)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 4 - 63504-12_Lukashin_A_model.pml:97 - [NS_WN_EW?1] (0:0:0 - 1) */
		reached[1][4] = 1;
		if (q_len(now.NS_WN_EW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_EW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_EW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_EW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 81: /* STATE 5 - 63504-12_Lukashin_A_model.pml:97 - [NS_WN_SW?1] (0:0:0 - 1) */
		reached[1][5] = 1;
		if (q_len(now.NS_WN_SW) == 0) continue;

		XX=1;
		if (1 != qrecv(now.NS_WN_SW, 0, 0, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.NS_WN_SW-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.NS_WN_SW, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 82: /* STATE 6 - 63504-12_Lukashin_A_model.pml:98 - [NS_L = Green] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.NS_L;
		now.NS_L = 1;
#ifdef VAR_RANGES
		logval("NS_L", now.NS_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: /* STATE 7 - 63504-12_Lukashin_A_model.pml:102 - [(!(NS_S))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!( !(((int)now.NS_S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: /* STATE 11 - 63504-12_Lukashin_A_model.pml:104 - [NS_L = Red] (0:0:1 - 2) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.NS_L;
		now.NS_L = 2;
#ifdef VAR_RANGES
		logval("NS_L", now.NS_L);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 12 - 63504-12_Lukashin_A_model.pml:106 - [NS_WN_EW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][12] = 1;
		if (q_full(now.NS_WN_EW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_EW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_EW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 86: /* STATE 13 - 63504-12_Lukashin_A_model.pml:106 - [NS_WN_SW!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		if (q_full(now.NS_WN_SW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NS_WN_SW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NS_WN_SW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 87: /* STATE 17 - 63504-12_Lukashin_A_model.pml:108 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC gen_t */
	case 88: /* STATE 1 - 63504-12_Lukashin_A_model.pml:54 - [((!(NS_S)&&(ns<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!(( !(((int)now.NS_S))&&(((P0 *)this)->ns<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: /* STATE 2 - 63504-12_Lukashin_A_model.pml:55 - [NS_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.NS_S);
		now.NS_S = 1;
#ifdef VAR_RANGES
		logval("NS_S", ((int)now.NS_S));
#endif
		;
		/* merge: ns = (ns+1)(45, 3, 45) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->ns;
		((P0 *)this)->ns = (((P0 *)this)->ns+1);
#ifdef VAR_RANGES
		logval("gen_t:ns", ((P0 *)this)->ns);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 90: /* STATE 5 - 63504-12_Lukashin_A_model.pml:56 - [((NS_S&&(NS_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.NS_S)&&(now.NS_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: /* STATE 6 - 63504-12_Lukashin_A_model.pml:57 - [NS_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.NS_S);
		now.NS_S = 0;
#ifdef VAR_RANGES
		logval("NS_S", ((int)now.NS_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: /* STATE 7 - 63504-12_Lukashin_A_model.pml:58 - [((!(WN_S)&&(wn<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!(( !(((int)now.WN_S))&&(((P0 *)this)->wn<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: /* STATE 8 - 63504-12_Lukashin_A_model.pml:59 - [WN_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.WN_S);
		now.WN_S = 1;
#ifdef VAR_RANGES
		logval("WN_S", ((int)now.WN_S));
#endif
		;
		/* merge: wn = (wn+1)(45, 9, 45) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->wn;
		((P0 *)this)->wn = (((P0 *)this)->wn+1);
#ifdef VAR_RANGES
		logval("gen_t:wn", ((P0 *)this)->wn);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 94: /* STATE 11 - 63504-12_Lukashin_A_model.pml:60 - [((WN_S&&(WN_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.WN_S)&&(now.WN_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: /* STATE 12 - 63504-12_Lukashin_A_model.pml:61 - [WN_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.WN_S);
		now.WN_S = 0;
#ifdef VAR_RANGES
		logval("WN_S", ((int)now.WN_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: /* STATE 13 - 63504-12_Lukashin_A_model.pml:62 - [((!(NE_S)&&(ne<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!(( !(((int)now.NE_S))&&(((P0 *)this)->ne<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: /* STATE 14 - 63504-12_Lukashin_A_model.pml:63 - [NE_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.NE_S);
		now.NE_S = 1;
#ifdef VAR_RANGES
		logval("NE_S", ((int)now.NE_S));
#endif
		;
		/* merge: ne = (ne+1)(45, 15, 45) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->ne;
		((P0 *)this)->ne = (((P0 *)this)->ne+1);
#ifdef VAR_RANGES
		logval("gen_t:ne", ((P0 *)this)->ne);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 98: /* STATE 17 - 63504-12_Lukashin_A_model.pml:64 - [((NE_S&&(NE_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)now.NE_S)&&(now.NE_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: /* STATE 18 - 63504-12_Lukashin_A_model.pml:65 - [NE_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.NE_S);
		now.NE_S = 0;
#ifdef VAR_RANGES
		logval("NE_S", ((int)now.NE_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: /* STATE 19 - 63504-12_Lukashin_A_model.pml:66 - [((!(EW_S)&&(ew<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!(( !(((int)now.EW_S))&&(((P0 *)this)->ew<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: /* STATE 20 - 63504-12_Lukashin_A_model.pml:67 - [EW_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EW_S);
		now.EW_S = 1;
#ifdef VAR_RANGES
		logval("EW_S", ((int)now.EW_S));
#endif
		;
		/* merge: ew = (ew+1)(45, 21, 45) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->ew;
		((P0 *)this)->ew = (((P0 *)this)->ew+1);
#ifdef VAR_RANGES
		logval("gen_t:ew", ((P0 *)this)->ew);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 102: /* STATE 23 - 63504-12_Lukashin_A_model.pml:68 - [((EW_S&&(EW_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((int)now.EW_S)&&(now.EW_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: /* STATE 24 - 63504-12_Lukashin_A_model.pml:69 - [EW_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.EW_S);
		now.EW_S = 0;
#ifdef VAR_RANGES
		logval("EW_S", ((int)now.EW_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: /* STATE 25 - 63504-12_Lukashin_A_model.pml:70 - [((!(ES_S)&&(es<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		if (!(( !(((int)now.ES_S))&&(((P0 *)this)->es<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: /* STATE 26 - 63504-12_Lukashin_A_model.pml:71 - [ES_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.ES_S);
		now.ES_S = 1;
#ifdef VAR_RANGES
		logval("ES_S", ((int)now.ES_S));
#endif
		;
		/* merge: es = (es+1)(45, 27, 45) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->es;
		((P0 *)this)->es = (((P0 *)this)->es+1);
#ifdef VAR_RANGES
		logval("gen_t:es", ((P0 *)this)->es);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 106: /* STATE 29 - 63504-12_Lukashin_A_model.pml:72 - [((ES_S&&(ES_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.ES_S)&&(now.ES_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: /* STATE 30 - 63504-12_Lukashin_A_model.pml:73 - [ES_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.ES_S);
		now.ES_S = 0;
#ifdef VAR_RANGES
		logval("ES_S", ((int)now.ES_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: /* STATE 31 - 63504-12_Lukashin_A_model.pml:74 - [((!(SW_S)&&(sw<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		if (!(( !(((int)now.SW_S))&&(((P0 *)this)->sw<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: /* STATE 32 - 63504-12_Lukashin_A_model.pml:75 - [SW_S = 1] (0:45:2 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.SW_S);
		now.SW_S = 1;
#ifdef VAR_RANGES
		logval("SW_S", ((int)now.SW_S));
#endif
		;
		/* merge: sw = (sw+1)(45, 33, 45) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->sw;
		((P0 *)this)->sw = (((P0 *)this)->sw+1);
#ifdef VAR_RANGES
		logval("gen_t:sw", ((P0 *)this)->sw);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 110: /* STATE 35 - 63504-12_Lukashin_A_model.pml:76 - [((SW_S&&(SW_L==Green)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((int)now.SW_S)&&(now.SW_L==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: /* STATE 36 - 63504-12_Lukashin_A_model.pml:77 - [SW_S = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.SW_S);
		now.SW_S = 0;
#ifdef VAR_RANGES
		logval("SW_S", ((int)now.SW_S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: /* STATE 37 - 63504-12_Lukashin_A_model.pml:78 - [(((((((ns>=2)&&(wn>=2))&&(ne>=2))&&(es>=2))&&(ew>=2))&&(sw>=2)))] (0:0:6 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((((((P0 *)this)->ns>=2)&&(((P0 *)this)->wn>=2))&&(((P0 *)this)->ne>=2))&&(((P0 *)this)->es>=2))&&(((P0 *)this)->ew>=2))&&(((P0 *)this)->sw>=2))))
			continue;
		/* dead 1: ns */  (trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->ns;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->ns = 0;
		/* dead 1: wn */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->wn;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->wn = 0;
		/* dead 1: ne */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->ne;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->ne = 0;
		/* dead 1: es */  (trpt+1)->bup.ovals[3] = ((P0 *)this)->es;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->es = 0;
		/* dead 1: ew */  (trpt+1)->bup.ovals[4] = ((P0 *)this)->ew;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->ew = 0;
		/* dead 1: sw */  (trpt+1)->bup.ovals[5] = ((P0 *)this)->sw;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->sw = 0;
		_m = 3; goto P999; /* 0 */
	case 113: /* STATE 38 - 63504-12_Lukashin_A_model.pml:79 - [ns = 0] (0:45:6 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->ns;
		((P0 *)this)->ns = 0;
#ifdef VAR_RANGES
		logval("gen_t:ns", ((P0 *)this)->ns);
#endif
		;
		/* merge: wn = 0(45, 39, 45) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->wn;
		((P0 *)this)->wn = 0;
#ifdef VAR_RANGES
		logval("gen_t:wn", ((P0 *)this)->wn);
#endif
		;
		/* merge: ne = 0(45, 40, 45) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->ne;
		((P0 *)this)->ne = 0;
#ifdef VAR_RANGES
		logval("gen_t:ne", ((P0 *)this)->ne);
#endif
		;
		/* merge: es = 0(45, 41, 45) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->es;
		((P0 *)this)->es = 0;
#ifdef VAR_RANGES
		logval("gen_t:es", ((P0 *)this)->es);
#endif
		;
		/* merge: ew = 0(45, 42, 45) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)this)->ew;
		((P0 *)this)->ew = 0;
#ifdef VAR_RANGES
		logval("gen_t:ew", ((P0 *)this)->ew);
#endif
		;
		/* merge: sw = 0(45, 43, 45) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)this)->sw;
		((P0 *)this)->sw = 0;
#ifdef VAR_RANGES
		logval("gen_t:sw", ((P0 *)this)->sw);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 114: /* STATE 48 - 63504-12_Lukashin_A_model.pml:87 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][48] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

