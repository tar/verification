#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(17*sizeof(Trans **));

	/* proctype 15: pF */

	trans[15] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[15][6]	= settr(246,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[15][5] = settr(245,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(245,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(245,0,3,0,0,"DO", 0, 2, 0);
	trans[15][1]	= settr(241,0,10,3,0,"(!(!((((((((NS._p==green)&&(gen_t._p==NSTrue))||((WN._p==green)&&(gen_t._p==WNTrue)))||((NE._p==green)&&(gen_t._p==NETrue)))||((EW._p==green)&&(gen_t._p==EWTrue)))||((ES._p==green)&&(gen_t._p==ESTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))))", 1, 2, 0);
	trans[15][2]	= settr(242,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][3]	= settr(243,0,5,1,0,"(1)", 0, 2, 0);
	trans[15][4]	= settr(244,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[15][7]	= settr(247,0,10,1,0,"break", 0, 2, 0);
	trans[15][11]	= settr(251,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[15][10] = settr(250,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(250,0,8,0,0,"DO", 0, 2, 0);
	trans[15][8]	= settr(248,0,10,4,0,"(!(!((((((((NS._p==green)&&(gen_t._p==NSTrue))||((WN._p==green)&&(gen_t._p==WNTrue)))||((NE._p==green)&&(gen_t._p==NETrue)))||((EW._p==green)&&(gen_t._p==EWTrue)))||((ES._p==green)&&(gen_t._p==ESTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))))", 1, 2, 0);
	trans[15][9]	= settr(249,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][12]	= settr(252,0,13,1,0,"break", 0, 2, 0);
	trans[15][13]	= settr(253,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 14: pF_NS */

	trans[14] = (Trans **) emalloc(23*sizeof(Trans *));

	trans[14][8]	= settr(226,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[14][7] = settr(225,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(225,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(225,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(225,0,5,0,0,"DO", 0, 2, 0);
	trans[14][1]	= settr(219,0,12,6,0,"(((!(((((WN._p==green)&&(gen_t._p==WNTrue))||((EW._p==green)&&(gen_t._p==EWTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))&&!(!(((gen_t._p==NSTrue)&&(NS._p==red)))))&&!((NS._p==green))))", 1, 2, 0);
	trans[14][2]	= settr(220,0,12,1,0,"goto accept_S69", 0, 2, 0);
	trans[14][3]	= settr(221,0,19,7,0,"((!(!(((gen_t._p==NSTrue)&&(NS._p==red))))&&!((NS._p==green))))", 1, 2, 0);
	trans[14][4]	= settr(222,0,19,1,0,"goto T0_S69", 0, 2, 0);
	trans[14][5]	= settr(223,0,7,1,0,"(1)", 0, 2, 0);
	trans[14][6]	= settr(224,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[14][9]	= settr(227,0,12,1,0,"break", 0, 2, 0);
	trans[14][13]	= settr(231,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[14][12] = settr(230,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(230,0,10,0,0,"DO", 0, 2, 0);
	trans[14][10]	= settr(228,0,19,8,0,"(!((NS._p==green)))", 1, 2, 0);
	trans[14][11]	= settr(229,0,19,1,0,"goto T0_S69", 0, 2, 0);
	trans[14][14]	= settr(232,0,19,1,0,"break", 0, 2, 0);
	trans[14][20]	= settr(238,0,19,1,0,".(goto)", 0, 2, 0);
	T = trans[14][19] = settr(237,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(237,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(237,0,17,0,0,"DO", 0, 2, 0);
	trans[14][15]	= settr(233,0,12,9,0,"((!(((((WN._p==green)&&(gen_t._p==WNTrue))||((EW._p==green)&&(gen_t._p==EWTrue)))||((SW._p==green)&&(gen_t._p==SWTrue))))&&!((NS._p==green))))", 1, 2, 0);
	trans[14][16]	= settr(234,0,12,1,0,"goto accept_S69", 0, 2, 0);
	trans[14][17]	= settr(235,0,19,10,0,"(!((NS._p==green)))", 1, 2, 0);
	trans[14][18]	= settr(236,0,19,1,0,"goto T0_S69", 0, 2, 0);
	trans[14][21]	= settr(239,0,22,1,0,"break", 0, 2, 0);
	trans[14][22]	= settr(240,0,0,11,11,"-end-", 0, 3500, 0);

	/* proctype 13: pL_NS */

	trans[13] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[13][6]	= settr(211,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[13][5] = settr(210,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(210,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(210,0,3,0,0,"DO", 0, 2, 0);
	trans[13][1]	= settr(206,0,10,12,0,"((!(!(((gen_t._p==NSTrue)&&(NS._p==red))))&&!((NS._p==green))))", 1, 2, 0);
	trans[13][2]	= settr(207,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[13][3]	= settr(208,0,5,1,0,"(1)", 0, 2, 0);
	trans[13][4]	= settr(209,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[13][7]	= settr(212,0,10,1,0,"break", 0, 2, 0);
	trans[13][11]	= settr(216,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[13][10] = settr(215,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(215,0,8,0,0,"DO", 0, 2, 0);
	trans[13][8]	= settr(213,0,10,13,0,"(!((NS._p==green)))", 1, 2, 0);
	trans[13][9]	= settr(214,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[13][12]	= settr(217,0,13,1,0,"break", 0, 2, 0);
	trans[13][13]	= settr(218,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 12: pS_SW */

	trans[12] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[12][7]	= settr(202,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[12][6] = settr(201,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(201,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 12][3] = settr(198,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(198,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[12][1]	= settr(196,0,6,15,15,"(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached12[2] = 1;
	trans[12][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green))))))",0,0,0);
	trans[12][4]	= settr(199,0,6,1,0,"(1)", 0, 2, 0);
	trans[12][5]	= settr(200,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[12][8]	= settr(203,0,9,1,0,"break", 0, 2, 0);
	trans[12][9]	= settr(204,0,10,1,0,"(1)", 0, 2, 0);
	trans[12][10]	= settr(205,0,0,16,16,"-end-", 0, 3500, 0);

	/* proctype 11: pS_ES */

	trans[11] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[11][7]	= settr(192,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[11][6] = settr(191,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(191,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(191,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 11][3] = settr(188,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(188,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[11][1]	= settr(186,0,6,17,17,"(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached11[2] = 1;
	trans[11][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((SW._p==green)&&(ES._p==green))&&(WN._p==green))&&(NS._p==green))))))",0,0,0);
	trans[11][4]	= settr(189,0,6,1,0,"(1)", 0, 2, 0);
	trans[11][5]	= settr(190,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[11][8]	= settr(193,0,9,1,0,"break", 0, 2, 0);
	trans[11][9]	= settr(194,0,10,1,0,"(1)", 0, 2, 0);
	trans[11][10]	= settr(195,0,0,18,18,"-end-", 0, 3500, 0);

	/* proctype 10: pS_NE */

	trans[10] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[10][7]	= settr(182,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[10][6] = settr(181,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(181,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(181,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 10][3] = settr(178,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(178,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[10][1]	= settr(176,0,6,19,19,"(!(!(((((NE._p==green)&&(WN._p==green))&&(ES._p==green))&&(EW._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached10[2] = 1;
	trans[10][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((NE._p==green)&&(WN._p==green))&&(ES._p==green))&&(EW._p==green))))))",0,0,0);
	trans[10][4]	= settr(179,0,6,1,0,"(1)", 0, 2, 0);
	trans[10][5]	= settr(180,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[10][8]	= settr(183,0,9,1,0,"break", 0, 2, 0);
	trans[10][9]	= settr(184,0,10,1,0,"(1)", 0, 2, 0);
	trans[10][10]	= settr(185,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 9: pS_EW */

	trans[9] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[9][7]	= settr(172,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[9][6] = settr(171,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(171,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(171,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 9][3] = settr(168,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(168,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[9][1]	= settr(166,0,6,21,21,"(!(!(((((EW._p==green)&&(NE._p==green))&&(WN._p==green))&&(NS._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached9[2] = 1;
	trans[9][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((EW._p==green)&&(NE._p==green))&&(WN._p==green))&&(NS._p==green))))))",0,0,0);
	trans[9][4]	= settr(169,0,6,1,0,"(1)", 0, 2, 0);
	trans[9][5]	= settr(170,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[9][8]	= settr(173,0,9,1,0,"break", 0, 2, 0);
	trans[9][9]	= settr(174,0,10,1,0,"(1)", 0, 2, 0);
	trans[9][10]	= settr(175,0,0,22,22,"-end-", 0, 3500, 0);

	/* proctype 8: pS_WN */

	trans[8] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[8][7]	= settr(162,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[8][6] = settr(161,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(161,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(161,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 8][3] = settr(158,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(158,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[8][1]	= settr(156,0,6,23,23,"(!(!((((((WN._p==green)&&(NS._p==green))&&(NE._p==green))&&(SW._p==green))&&(EW._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached8[2] = 1;
	trans[8][2]	= settr(0,0,0,0,0,"assert(!(!(!((((((WN._p==green)&&(NS._p==green))&&(NE._p==green))&&(SW._p==green))&&(EW._p==green))))))",0,0,0);
	trans[8][4]	= settr(159,0,6,1,0,"(1)", 0, 2, 0);
	trans[8][5]	= settr(160,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[8][8]	= settr(163,0,9,1,0,"break", 0, 2, 0);
	trans[8][9]	= settr(164,0,10,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(165,0,0,24,24,"-end-", 0, 3500, 0);

	/* proctype 7: pS_NS */

	trans[7] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[7][7]	= settr(152,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(151,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(151,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(148,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(148,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(146,0,6,25,25,"(!(!(((((NS._p==green)&&(WN._p==green))&&(SW._p==green))&&(EW._p==green)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((NS._p==green)&&(WN._p==green))&&(SW._p==green))&&(EW._p==green))))))",0,0,0);
	trans[7][4]	= settr(149,0,6,1,0,"(1)", 0, 2, 0);
	trans[7][5]	= settr(150,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(153,0,9,1,0,"break", 0, 2, 0);
	trans[7][9]	= settr(154,0,10,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(155,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 6: SW */

	trans[6] = (Trans **) emalloc(16*sizeof(Trans *));

	trans[6][13]	= settr(143,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[6][12] = settr(142,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(142,0,1,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(131,0,2,27,0,"(SW_S)", 1, 2, 0);
	trans[6][2]	= settr(132,0,3,28,28,"NS_WN_SW?1", 1, 504, 0);
	trans[6][3]	= settr(133,0,4,29,29,"ES_SW?1", 1, 507, 0);
	trans[6][4]	= settr(134,0,7,30,30,"SW_L = Green", 1, 2, 0);
	T = trans[6][7] = settr(137,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(137,0,5,0,0,"IF", 0, 2, 0);
	trans[6][5]	= settr(135,0,6,31,0,"(!(SW_S))", 1, 2, 0);
	trans[6][6]	= settr(136,0,9,1,0,"(1)", 0, 2, 0);
	trans[6][8]	= settr(138,0,9,1,0,".(goto)", 0, 2, 0);
	trans[6][9]	= settr(139,0,10,32,32,"SW_L = Red", 1, 2, 0);
	trans[6][10]	= settr(140,0,11,33,33,"NS_WN_SW!1", 1, 4, 0);
	trans[6][11]	= settr(141,0,12,34,34,"ES_SW!1", 1, 7, 0);
	trans[6][14]	= settr(144,0,15,1,0,"break", 0, 2, 0);
	trans[6][15]	= settr(145,0,0,35,35,"-end-", 0, 3500, 0);

	/* proctype 5: ES */

	trans[5] = (Trans **) emalloc(17*sizeof(Trans *));

	trans[5][1]	= settr(115,0,13,36,36,"ES_SW!1", 1, 7, 0);
	trans[5][14]	= settr(128,0,13,1,0,".(goto)", 0, 2, 0);
	T = trans[5][13] = settr(127,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(127,0,2,0,0,"DO", 0, 2, 0);
	trans[5][2]	= settr(116,0,3,37,0,"(ES_S)", 1, 2, 0);
	trans[5][3]	= settr(117,0,4,38,38,"ES_SW?1", 1, 507, 0);
	trans[5][4]	= settr(118,0,5,39,39,"NE_ES?1", 1, 506, 0);
	trans[5][5]	= settr(119,0,8,40,40,"ES_L = Green", 1, 2, 0);
	T = trans[5][8] = settr(122,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(122,0,6,0,0,"IF", 0, 2, 0);
	trans[5][6]	= settr(120,0,7,41,0,"(!(ES_S))", 1, 2, 0);
	trans[5][7]	= settr(121,0,10,1,0,"(1)", 0, 2, 0);
	trans[5][9]	= settr(123,0,10,1,0,".(goto)", 0, 2, 0);
	trans[5][10]	= settr(124,0,11,42,42,"ES_L = Red", 1, 2, 0);
	trans[5][11]	= settr(125,0,12,43,43,"ES_SW!1", 1, 7, 0);
	trans[5][12]	= settr(126,0,13,44,44,"NE_ES!1", 1, 6, 0);
	trans[5][15]	= settr(129,0,16,1,0,"break", 0, 2, 0);
	trans[5][16]	= settr(130,0,0,45,45,"-end-", 0, 3500, 0);

	/* proctype 4: EW */

	trans[4] = (Trans **) emalloc(16*sizeof(Trans *));

	trans[4][13]	= settr(112,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[4][12] = settr(111,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(111,0,1,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(100,0,2,46,0,"(EW_S)", 1, 2, 0);
	trans[4][2]	= settr(101,0,3,47,47,"NS_WN_EW?1", 1, 503, 0);
	trans[4][3]	= settr(102,0,4,48,48,"NE_WN_EW?1", 1, 505, 0);
	trans[4][4]	= settr(103,0,7,49,49,"EW_L = Green", 1, 2, 0);
	T = trans[4][7] = settr(106,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(106,0,5,0,0,"IF", 0, 2, 0);
	trans[4][5]	= settr(104,0,6,50,0,"(!(EW_S))", 1, 2, 0);
	trans[4][6]	= settr(105,0,9,1,0,"(1)", 0, 2, 0);
	trans[4][8]	= settr(107,0,9,1,0,".(goto)", 0, 2, 0);
	trans[4][9]	= settr(108,0,10,51,51,"EW_L = Red", 1, 2, 0);
	trans[4][10]	= settr(109,0,11,52,52,"NS_WN_EW!1", 1, 3, 0);
	trans[4][11]	= settr(110,0,12,53,53,"NE_WN_EW!1", 1, 5, 0);
	trans[4][14]	= settr(113,0,15,1,0,"break", 0, 2, 0);
	trans[4][15]	= settr(114,0,0,54,54,"-end-", 0, 3500, 0);

	/* proctype 3: NE */

	trans[3] = (Trans **) emalloc(18*sizeof(Trans *));

	trans[3][1]	= settr(83,0,2,55,55,"NE_WN_EW!1", 1, 5, 0);
	trans[3][2]	= settr(84,0,14,56,56,"NE_ES!1", 1, 6, 0);
	trans[3][15]	= settr(97,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[3][14] = settr(96,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(96,0,3,0,0,"DO", 0, 2, 0);
	trans[3][3]	= settr(85,0,4,57,0,"(NE_S)", 1, 2, 0);
	trans[3][4]	= settr(86,0,5,58,58,"NE_WN_EW?1", 1, 505, 0);
	trans[3][5]	= settr(87,0,6,59,59,"NE_ES?1", 1, 506, 0);
	trans[3][6]	= settr(88,0,9,60,60,"NE_L = Green", 1, 2, 0);
	T = trans[3][9] = settr(91,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(91,0,7,0,0,"IF", 0, 2, 0);
	trans[3][7]	= settr(89,0,8,61,0,"(!(NE_S))", 1, 2, 0);
	trans[3][8]	= settr(90,0,11,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(92,0,11,1,0,".(goto)", 0, 2, 0);
	trans[3][11]	= settr(93,0,12,62,62,"NE_L = Red", 1, 2, 0);
	trans[3][12]	= settr(94,0,13,63,63,"NE_WN_EW!1", 1, 5, 0);
	trans[3][13]	= settr(95,0,14,64,64,"NE_ES!1", 1, 6, 0);
	trans[3][16]	= settr(98,0,17,1,0,"break", 0, 2, 0);
	trans[3][17]	= settr(99,0,0,65,65,"-end-", 0, 3500, 0);

	/* proctype 2: WN */

	trans[2] = (Trans **) emalloc(19*sizeof(Trans *));

	trans[2][16]	= settr(80,0,15,1,0,".(goto)", 0, 2, 0);
	T = trans[2][15] = settr(79,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(79,0,1,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(65,0,2,66,0,"(WN_S)", 1, 2, 0);
	trans[2][2]	= settr(66,0,3,67,67,"NS_WN_EW?1", 1, 503, 0);
	trans[2][3]	= settr(67,0,4,68,68,"NS_WN_SW?1", 1, 504, 0);
	trans[2][4]	= settr(68,0,6,69,69,"NE_WN_EW?1", 1, 505, 0);
	T = trans[ 2][6] = settr(70,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(70,2,5,0,0,"ATOMIC", 1, 2, 0);
	trans[2][5]	= settr(69,0,9,70,70,"WN_L = Green", 1, 2, 0);
	T = trans[2][9] = settr(73,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(73,0,7,0,0,"IF", 0, 2, 0);
	trans[2][7]	= settr(71,0,8,71,0,"(!(WN_S))", 1, 2, 0);
	trans[2][8]	= settr(72,0,11,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(74,0,11,1,0,".(goto)", 0, 2, 0);
	trans[2][11]	= settr(75,0,12,72,72,"WN_L = Red", 1, 2, 0);
	trans[2][12]	= settr(76,0,13,73,73,"NS_WN_EW!1", 1, 3, 0);
	trans[2][13]	= settr(77,0,14,74,74,"NS_WN_SW!1", 1, 4, 0);
	trans[2][14]	= settr(78,0,15,75,75,"NE_WN_EW!1", 1, 5, 0);
	trans[2][17]	= settr(81,0,18,1,0,"break", 0, 2, 0);
	trans[2][18]	= settr(82,0,0,76,76,"-end-", 0, 3500, 0);

	/* proctype 1: NS */

	trans[1] = (Trans **) emalloc(18*sizeof(Trans *));

	trans[1][1]	= settr(48,0,2,77,77,"NS_WN_EW!1", 1, 3, 0);
	trans[1][2]	= settr(49,0,14,78,78,"NS_WN_SW!1", 1, 4, 0);
	trans[1][15]	= settr(62,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[1][14] = settr(61,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(61,0,3,0,0,"DO", 0, 2, 0);
	trans[1][3]	= settr(50,0,4,79,0,"(NS_S)", 1, 2, 0);
	trans[1][4]	= settr(51,0,5,80,80,"NS_WN_EW?1", 1, 503, 0);
	trans[1][5]	= settr(52,0,6,81,81,"NS_WN_SW?1", 1, 504, 0);
	trans[1][6]	= settr(53,0,9,82,82,"NS_L = Green", 1, 2, 0);
	T = trans[1][9] = settr(56,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(56,0,7,0,0,"IF", 0, 2, 0);
	trans[1][7]	= settr(54,0,8,83,0,"(!(NS_S))", 1, 2, 0);
	trans[1][8]	= settr(55,0,11,1,0,"(1)", 1, 2, 0);
	trans[1][10]	= settr(57,0,11,1,0,".(goto)", 1, 2, 0);
	trans[1][11]	= settr(58,0,12,84,84,"NS_L = Red", 1, 2, 0);
	trans[1][12]	= settr(59,0,13,85,85,"NS_WN_EW!1", 1, 3, 0);
	trans[1][13]	= settr(60,0,14,86,86,"NS_WN_SW!1", 1, 4, 0);
	trans[1][16]	= settr(63,0,17,1,0,"break", 0, 2, 0);
	trans[1][17]	= settr(64,0,0,87,87,"-end-", 0, 3500, 0);

	/* proctype 0: gen_t */

	trans[0] = (Trans **) emalloc(49*sizeof(Trans *));

	trans[0][46]	= settr(45,0,45,1,0,".(goto)", 0, 2, 0);
	T = trans[0][45] = settr(44,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,17,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,19,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,23,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,25,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,29,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(44,0,35,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(44,0,37,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,4,88,0,"((!(NS_S)&&(ns<2)))", 1, 2, 0);
	T = trans[ 0][4] = settr(3,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,0,45,89,89,"NS_S = 1", 1, 2, 0); /* m: 3 -> 0,45 */
	reached0[3] = 1;
	trans[0][3]	= settr(0,0,0,0,0,"ns = (ns+1)",0,0,0);
	trans[0][5]	= settr(4,0,6,90,0,"((NS_S&&(NS_L==Green)))", 1, 2, 0);
	trans[0][6]	= settr(5,0,45,91,91,"NS_S = 0", 1, 2, 0);
	trans[0][7]	= settr(6,0,10,92,0,"((!(WN_S)&&(wn<2)))", 1, 2, 0);
	T = trans[ 0][10] = settr(9,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(9,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,0,45,93,93,"WN_S = 1", 1, 2, 0); /* m: 9 -> 0,45 */
	reached0[9] = 1;
	trans[0][9]	= settr(0,0,0,0,0,"wn = (wn+1)",0,0,0);
	trans[0][11]	= settr(10,0,12,94,0,"((WN_S&&(WN_L==Green)))", 1, 2, 0);
	trans[0][12]	= settr(11,0,45,95,95,"WN_S = 0", 1, 2, 0);
	trans[0][13]	= settr(12,0,16,96,0,"((!(NE_S)&&(ne<2)))", 1, 2, 0);
	T = trans[ 0][16] = settr(15,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(15,2,14,0,0,"ATOMIC", 1, 2, 0);
	trans[0][14]	= settr(13,0,45,97,97,"NE_S = 1", 1, 2, 0); /* m: 15 -> 0,45 */
	reached0[15] = 1;
	trans[0][15]	= settr(0,0,0,0,0,"ne = (ne+1)",0,0,0);
	trans[0][17]	= settr(16,0,18,98,0,"((NE_S&&(NE_L==Green)))", 1, 2, 0);
	trans[0][18]	= settr(17,0,45,99,99,"NE_S = 0", 1, 2, 0);
	trans[0][19]	= settr(18,0,22,100,0,"((!(EW_S)&&(ew<2)))", 1, 2, 0);
	T = trans[ 0][22] = settr(21,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(21,2,20,0,0,"ATOMIC", 1, 2, 0);
	trans[0][20]	= settr(19,0,45,101,101,"EW_S = 1", 1, 2, 0); /* m: 21 -> 0,45 */
	reached0[21] = 1;
	trans[0][21]	= settr(0,0,0,0,0,"ew = (ew+1)",0,0,0);
	trans[0][23]	= settr(22,0,24,102,0,"((EW_S&&(EW_L==Green)))", 1, 2, 0);
	trans[0][24]	= settr(23,0,45,103,103,"EW_S = 0", 1, 2, 0);
	trans[0][25]	= settr(24,0,28,104,0,"((!(ES_S)&&(es<2)))", 1, 2, 0);
	T = trans[ 0][28] = settr(27,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(27,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[0][26]	= settr(25,0,45,105,105,"ES_S = 1", 1, 2, 0); /* m: 27 -> 0,45 */
	reached0[27] = 1;
	trans[0][27]	= settr(0,0,0,0,0,"es = (es+1)",0,0,0);
	trans[0][29]	= settr(28,0,30,106,0,"((ES_S&&(ES_L==Green)))", 1, 2, 0);
	trans[0][30]	= settr(29,0,45,107,107,"ES_S = 0", 1, 2, 0);
	trans[0][31]	= settr(30,0,34,108,0,"((!(SW_S)&&(sw<2)))", 1, 2, 0);
	T = trans[ 0][34] = settr(33,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(33,2,32,0,0,"ATOMIC", 1, 2, 0);
	trans[0][32]	= settr(31,0,45,109,109,"SW_S = 1", 1, 2, 0); /* m: 33 -> 0,45 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"sw = (sw+1)",0,0,0);
	trans[0][35]	= settr(34,0,36,110,0,"((SW_S&&(SW_L==Green)))", 1, 2, 0);
	trans[0][36]	= settr(35,0,45,111,111,"SW_S = 0", 1, 2, 0);
	trans[0][37]	= settr(36,0,44,112,112,"(((((((ns>=2)&&(wn>=2))&&(ne>=2))&&(es>=2))&&(ew>=2))&&(sw>=2)))", 0, 2, 0);
	T = trans[ 0][44] = settr(43,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(43,2,38,0,0,"ATOMIC", 0, 2, 0);
	trans[0][38]	= settr(37,0,45,113,113,"ns = 0", 0, 2, 0); /* m: 39 -> 0,45 */
	reached0[39] = 1;
	trans[0][39]	= settr(0,0,0,0,0,"wn = 0",0,0,0);
	trans[0][40]	= settr(0,0,0,0,0,"ne = 0",0,0,0);
	trans[0][41]	= settr(0,0,0,0,0,"es = 0",0,0,0);
	trans[0][42]	= settr(0,0,0,0,0,"ew = 0",0,0,0);
	trans[0][43]	= settr(0,0,0,0,0,"sw = 0",0,0,0);
	trans[0][47]	= settr(46,0,48,1,0,"break", 0, 2, 0);
	trans[0][48]	= settr(47,0,0,114,114,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
