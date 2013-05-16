   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  47                     ; 51 void TIM2_DeInit(void)
  47                     ; 52 {
  49                     .text:	section	.text,new
  50  0000               _TIM2_DeInit:
  54                     ; 53   TIM2->CR1 = TIM_CR1_RESET_VALUE;
  56  0000 725f5250      	clr	21072
  57                     ; 54   TIM2->CR2 = TIM_CR2_RESET_VALUE;
  59  0004 725f5251      	clr	21073
  60                     ; 55   TIM2->SMCR = TIM_SMCR_RESET_VALUE;
  62  0008 725f5252      	clr	21074
  63                     ; 56   TIM2->ETR = TIM_ETR_RESET_VALUE;
  65  000c 725f5253      	clr	21075
  66                     ; 57   TIM2->IER = TIM_IER_RESET_VALUE;
  68  0010 725f5255      	clr	21077
  69                     ; 58   TIM2->SR2 = TIM_SR2_RESET_VALUE;
  71  0014 725f5257      	clr	21079
  72                     ; 61   TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
  74  0018 725f525b      	clr	21083
  75                     ; 63   TIM2->CCMR1 = 0x01;/*TIM2_ICxSource_TIxFPx */
  77  001c 35015259      	mov	21081,#1
  78                     ; 64   TIM2->CCMR2 = 0x01;/*TIM2_ICxSource_TIxFPx */
  80  0020 3501525a      	mov	21082,#1
  81                     ; 67   TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
  83  0024 725f525b      	clr	21083
  84                     ; 68   TIM2->CCMR1 = TIM_CCMR1_RESET_VALUE;
  86  0028 725f5259      	clr	21081
  87                     ; 69   TIM2->CCMR2 = TIM_CCMR2_RESET_VALUE;
  89  002c 725f525a      	clr	21082
  90                     ; 71   TIM2->CNTRH = TIM_CNTRH_RESET_VALUE;
  92  0030 725f525c      	clr	21084
  93                     ; 72   TIM2->CNTRL = TIM_CNTRL_RESET_VALUE;
  95  0034 725f525d      	clr	21085
  96                     ; 74   TIM2->PSCR = TIM_PSCR_RESET_VALUE;
  98  0038 725f525e      	clr	21086
  99                     ; 76   TIM2->ARRH = TIM_ARRH_RESET_VALUE;
 101  003c 35ff525f      	mov	21087,#255
 102                     ; 77   TIM2->ARRL = TIM_ARRL_RESET_VALUE;
 104  0040 35ff5260      	mov	21088,#255
 105                     ; 79   TIM2->CCR1H = TIM_CCR1H_RESET_VALUE;
 107  0044 725f5261      	clr	21089
 108                     ; 80   TIM2->CCR1L = TIM_CCR1L_RESET_VALUE;
 110  0048 725f5262      	clr	21090
 111                     ; 81   TIM2->CCR2H = TIM_CCR2H_RESET_VALUE;
 113  004c 725f5263      	clr	21091
 114                     ; 82   TIM2->CCR2L = TIM_CCR2L_RESET_VALUE;
 116  0050 725f5264      	clr	21092
 117                     ; 85   TIM2->OISR = TIM_OISR_RESET_VALUE;
 119  0054 725f5266      	clr	21094
 120                     ; 86   TIM2->EGR = 0x01;/* TIM_EGR_UG */
 122  0058 35015258      	mov	21080,#1
 123                     ; 87   TIM2->BKR = TIM_BKR_RESET_VALUE;
 125  005c 725f5265      	clr	21093
 126                     ; 88   TIM2->SR1 = TIM_SR1_RESET_VALUE;
 128  0060 725f5256      	clr	21078
 129                     ; 89 }
 132  0064 81            	ret	
 294                     ; 99 void TIM2_TimeBaseInit(TIM2_Prescaler_TypeDef TIM2_Prescaler,
 294                     ; 100                        TIM2_CounterMode_TypeDef TIM2_CounterMode,
 294                     ; 101                        uint16_t TIM2_Period)
 294                     ; 102 {
 295                     .text:	section	.text,new
 296  0000               _TIM2_TimeBaseInit:
 298  0000 89            	pushw	x
 299       00000000      OFST:	set	0
 302                     ; 104   assert_param(IS_TIM2_PRESCALER(TIM2_Prescaler));
 304                     ; 105   assert_param(IS_TIM2_COUNTER_MODE(TIM2_CounterMode));
 306                     ; 110   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8) ;
 308  0001 7b05          	ld	a,(OFST+5,sp)
 309  0003 c7525f        	ld	21087,a
 310                     ; 111   TIM2->ARRL = (uint8_t)(TIM2_Period);
 312  0006 7b06          	ld	a,(OFST+6,sp)
 313  0008 c75260        	ld	21088,a
 314                     ; 114   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 316  000b 9e            	ld	a,xh
 317  000c c7525e        	ld	21086,a
 318                     ; 117   TIM2->CR1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS)) & ((uint8_t)(~TIM_CR1_DIR));
 320  000f c65250        	ld	a,21072
 321  0012 a48f          	and	a,#143
 322  0014 c75250        	ld	21072,a
 323                     ; 118   TIM2->CR1 |= (uint8_t)(TIM2_CounterMode);
 325  0017 9f            	ld	a,xl
 326  0018 ca5250        	or	a,21072
 327  001b c75250        	ld	21072,a
 328                     ; 121   TIM2->EGR = TIM2_EventSource_Update;
 330  001e 35015258      	mov	21080,#1
 331                     ; 122 }
 334  0022 85            	popw	x
 335  0023 81            	ret	
 533                     ; 133 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 533                     ; 134                   TIM2_OutputState_TypeDef TIM2_OutputState,
 533                     ; 135                   uint16_t TIM2_Pulse,
 533                     ; 136                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity,
 533                     ; 137                   TIM2_OCIdleState_TypeDef TIM2_OCIdleState)
 533                     ; 138 {
 534                     .text:	section	.text,new
 535  0000               _TIM2_OC1Init:
 537  0000 89            	pushw	x
 538  0001 88            	push	a
 539       00000001      OFST:	set	1
 542                     ; 139   uint8_t tmpccmr1 = 0;
 544                     ; 142   assert_param(IS_TIM2_OC_MODE(TIM2_OCMode));
 546                     ; 143   assert_param(IS_TIM2_OUTPUT_STATE(TIM2_OutputState));
 548                     ; 144   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
 550                     ; 145   assert_param(IS_TIM2_OCIDLE_STATE(TIM2_OCIdleState));
 552                     ; 147   tmpccmr1 = TIM2->CCMR1;
 554  0002 c65259        	ld	a,21081
 555  0005 6b01          	ld	(OFST+0,sp),a
 556                     ; 150   TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
 558                     ; 152   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
 560  0007 a48f          	and	a,#143
 561  0009 7211525b      	bres	21083,#0
 562  000d 6b01          	ld	(OFST+0,sp),a
 563                     ; 155   tmpccmr1 |= (uint8_t)TIM2_OCMode;
 565  000f 9e            	ld	a,xh
 566  0010 1a01          	or	a,(OFST+0,sp)
 567  0012 6b01          	ld	(OFST+0,sp),a
 568                     ; 157   TIM2->CCMR1 = tmpccmr1;
 570  0014 c75259        	ld	21081,a
 571                     ; 160   if (TIM2_OutputState == TIM2_OutputState_Enable)
 573  0017 9f            	ld	a,xl
 574  0018 4a            	dec	a
 575  0019 2606          	jrne	L722
 576                     ; 162     TIM2->CCER1 |= TIM_CCER1_CC1E;
 578  001b 7210525b      	bset	21083,#0
 580  001f 2004          	jra	L132
 581  0021               L722:
 582                     ; 166     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
 584  0021 7211525b      	bres	21083,#0
 585  0025               L132:
 586                     ; 170   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
 588  0025 7b08          	ld	a,(OFST+7,sp)
 589  0027 4a            	dec	a
 590  0028 2606          	jrne	L332
 591                     ; 172     TIM2->CCER1 |= TIM_CCER1_CC1P;
 593  002a 7212525b      	bset	21083,#1
 595  002e 2004          	jra	L532
 596  0030               L332:
 597                     ; 176     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
 599  0030 7213525b      	bres	21083,#1
 600  0034               L532:
 601                     ; 180   if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
 603  0034 7b09          	ld	a,(OFST+8,sp)
 604  0036 4a            	dec	a
 605  0037 2606          	jrne	L732
 606                     ; 182     TIM2->OISR |= TIM_OISR_OIS1;
 608  0039 72105266      	bset	21094,#0
 610  003d 2004          	jra	L142
 611  003f               L732:
 612                     ; 186     TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS1);
 614  003f 72115266      	bres	21094,#0
 615  0043               L142:
 616                     ; 190   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 618  0043 7b06          	ld	a,(OFST+5,sp)
 619  0045 c75261        	ld	21089,a
 620                     ; 191   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 622  0048 7b07          	ld	a,(OFST+6,sp)
 623  004a c75262        	ld	21090,a
 624                     ; 192 }
 627  004d 5b03          	addw	sp,#3
 628  004f 81            	ret	
 711                     ; 203 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 711                     ; 204                   TIM2_OutputState_TypeDef TIM2_OutputState,
 711                     ; 205                   uint16_t TIM2_Pulse,
 711                     ; 206                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity,
 711                     ; 207                   TIM2_OCIdleState_TypeDef TIM2_OCIdleState)
 711                     ; 208 {
 712                     .text:	section	.text,new
 713  0000               _TIM2_OC2Init:
 715  0000 89            	pushw	x
 716  0001 88            	push	a
 717       00000001      OFST:	set	1
 720                     ; 209   uint8_t tmpccmr2 = 0;
 722                     ; 212   assert_param(IS_TIM2_OC_MODE(TIM2_OCMode));
 724                     ; 213   assert_param(IS_TIM2_OUTPUT_STATE(TIM2_OutputState));
 726                     ; 214   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
 728                     ; 215   assert_param(IS_TIM2_OCIDLE_STATE(TIM2_OCIdleState));
 730                     ; 217   tmpccmr2 = TIM2->CCMR2;
 732  0002 c6525a        	ld	a,21082
 733  0005 6b01          	ld	(OFST+0,sp),a
 734                     ; 220   TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
 736                     ; 223   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
 738  0007 a48f          	and	a,#143
 739  0009 7219525b      	bres	21083,#4
 740  000d 6b01          	ld	(OFST+0,sp),a
 741                     ; 226   tmpccmr2 |= (uint8_t)TIM2_OCMode;
 743  000f 9e            	ld	a,xh
 744  0010 1a01          	or	a,(OFST+0,sp)
 745  0012 6b01          	ld	(OFST+0,sp),a
 746                     ; 228   TIM2->CCMR2 = tmpccmr2;
 748  0014 c7525a        	ld	21082,a
 749                     ; 231   if (TIM2_OutputState == TIM2_OutputState_Enable)
 751  0017 9f            	ld	a,xl
 752  0018 4a            	dec	a
 753  0019 2606          	jrne	L503
 754                     ; 233     TIM2->CCER1 |= TIM_CCER1_CC2E;
 756  001b 7218525b      	bset	21083,#4
 758  001f 2004          	jra	L703
 759  0021               L503:
 760                     ; 237     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
 762  0021 7219525b      	bres	21083,#4
 763  0025               L703:
 764                     ; 241   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
 766  0025 7b08          	ld	a,(OFST+7,sp)
 767  0027 4a            	dec	a
 768  0028 2606          	jrne	L113
 769                     ; 243     TIM2->CCER1 |= TIM_CCER1_CC2P;
 771  002a 721a525b      	bset	21083,#5
 773  002e 2004          	jra	L313
 774  0030               L113:
 775                     ; 247     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P);
 777  0030 721b525b      	bres	21083,#5
 778  0034               L313:
 779                     ; 252   if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
 781  0034 7b09          	ld	a,(OFST+8,sp)
 782  0036 4a            	dec	a
 783  0037 2606          	jrne	L513
 784                     ; 254     TIM2->OISR |= TIM_OISR_OIS2;
 786  0039 72145266      	bset	21094,#2
 788  003d 2004          	jra	L713
 789  003f               L513:
 790                     ; 258     TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS2);
 792  003f 72155266      	bres	21094,#2
 793  0043               L713:
 794                     ; 262   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 796  0043 7b06          	ld	a,(OFST+5,sp)
 797  0045 c75263        	ld	21091,a
 798                     ; 263   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 800  0048 7b07          	ld	a,(OFST+6,sp)
 801  004a c75264        	ld	21092,a
 802                     ; 264 }
 805  004d 5b03          	addw	sp,#3
 806  004f 81            	ret	
1004                     ; 281 void TIM2_BKRConfig(TIM2_OSSIState_TypeDef TIM2_OSSIState,
1004                     ; 282                     TIM2_LockLevel_TypeDef TIM2_LockLevel,
1004                     ; 283                     TIM2_BreakState_TypeDef TIM2_BreakState,
1004                     ; 284                     TIM2_BreakPolarity_TypeDef TIM2_BreakPolarity,
1004                     ; 285                     TIM2_AutomaticOutput_TypeDef TIM2_AutomaticOutput)
1004                     ; 286 
1004                     ; 287 {
1005                     .text:	section	.text,new
1006  0000               _TIM2_BKRConfig:
1008  0000 89            	pushw	x
1009  0001 88            	push	a
1010       00000001      OFST:	set	1
1013                     ; 289   assert_param(IS_TIM2_OSSI_STATE(TIM2_OSSIState));
1015                     ; 290   assert_param(IS_TIM2_LOCK_LEVEL(TIM2_LockLevel));
1017                     ; 291   assert_param(IS_TIM2_BREAK_STATE(TIM2_BreakState));
1019                     ; 292   assert_param(IS_TIM2_BREAK_POLARITY(TIM2_BreakPolarity));
1021                     ; 293   assert_param(IS_TIM2_AUTOMATIC_OUTPUT_STATE(TIM2_AutomaticOutput));
1023                     ; 300   TIM2->BKR = (uint8_t)((uint8_t)((uint8_t)((uint8_t)TIM2_OSSIState | (uint8_t)TIM2_LockLevel) | \
1023                     ; 301                                   (uint8_t)((uint8_t)TIM2_BreakState | TIM2_BreakPolarity)) | \
1023                     ; 302                         (uint8_t)TIM2_AutomaticOutput);
1025  0002 7b06          	ld	a,(OFST+5,sp)
1026  0004 1a07          	or	a,(OFST+6,sp)
1027  0006 6b01          	ld	(OFST+0,sp),a
1028  0008 9f            	ld	a,xl
1029  0009 1a02          	or	a,(OFST+1,sp)
1030  000b 1a01          	or	a,(OFST+0,sp)
1031  000d 1a08          	or	a,(OFST+7,sp)
1032  000f c75265        	ld	21093,a
1033                     ; 303 }
1036  0012 5b03          	addw	sp,#3
1037  0014 81            	ret	
1221                     ; 314 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1221                     ; 315                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1221                     ; 316                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1221                     ; 317                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1221                     ; 318                  uint8_t TIM2_ICFilter)
1221                     ; 319 {
1222                     .text:	section	.text,new
1223  0000               _TIM2_ICInit:
1225  0000 89            	pushw	x
1226       00000000      OFST:	set	0
1229                     ; 321   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
1231                     ; 323   if (TIM2_Channel == TIM2_Channel_1)
1233  0001 9e            	ld	a,xh
1234  0002 4d            	tnz	a
1235  0003 2614          	jrne	L735
1236                     ; 326     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
1238  0005 7b07          	ld	a,(OFST+7,sp)
1239  0007 88            	push	a
1240  0008 7b06          	ld	a,(OFST+6,sp)
1241  000a 97            	ld	xl,a
1242  000b 7b03          	ld	a,(OFST+3,sp)
1243  000d 95            	ld	xh,a
1244  000e cd0000        	call	L3_TI1_Config
1246  0011 84            	pop	a
1247                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1249  0012 7b06          	ld	a,(OFST+6,sp)
1250  0014 cd0000        	call	_TIM2_SetIC1Prescaler
1253  0017 2012          	jra	L145
1254  0019               L735:
1255                     ; 334     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
1257  0019 7b07          	ld	a,(OFST+7,sp)
1258  001b 88            	push	a
1259  001c 7b06          	ld	a,(OFST+6,sp)
1260  001e 97            	ld	xl,a
1261  001f 7b03          	ld	a,(OFST+3,sp)
1262  0021 95            	ld	xh,a
1263  0022 cd0000        	call	L5_TI2_Config
1265  0025 84            	pop	a
1266                     ; 337     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1268  0026 7b06          	ld	a,(OFST+6,sp)
1269  0028 cd0000        	call	_TIM2_SetIC2Prescaler
1271  002b               L145:
1272                     ; 339 }
1275  002b 85            	popw	x
1276  002c 81            	ret	
1372                     ; 351 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1372                     ; 352                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1372                     ; 353                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1372                     ; 354                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1372                     ; 355                      uint8_t TIM2_ICFilter)
1372                     ; 356 {
1373                     .text:	section	.text,new
1374  0000               _TIM2_PWMIConfig:
1376  0000 89            	pushw	x
1377  0001 89            	pushw	x
1378       00000002      OFST:	set	2
1381                     ; 357   uint8_t icpolarity = TIM2_ICPolarity_Rising;
1383                     ; 358   uint8_t icselection = TIM2_ICSelection_DirectTI;
1385                     ; 361   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
1387                     ; 364   if (TIM2_ICPolarity == TIM2_ICPolarity_Rising)
1389  0002 9f            	ld	a,xl
1390  0003 4d            	tnz	a
1391  0004 2605          	jrne	L116
1392                     ; 366     icpolarity = TIM2_ICPolarity_Falling;
1394  0006 4c            	inc	a
1395  0007 6b01          	ld	(OFST-1,sp),a
1397  0009 2002          	jra	L316
1398  000b               L116:
1399                     ; 370     icpolarity = TIM2_ICPolarity_Rising;
1401  000b 0f01          	clr	(OFST-1,sp)
1402  000d               L316:
1403                     ; 374   if (TIM2_ICSelection == TIM2_ICSelection_DirectTI)
1405  000d 7b07          	ld	a,(OFST+5,sp)
1406  000f 4a            	dec	a
1407  0010 2604          	jrne	L516
1408                     ; 376     icselection = TIM2_ICSelection_IndirectTI;
1410  0012 a602          	ld	a,#2
1412  0014 2002          	jra	L716
1413  0016               L516:
1414                     ; 380     icselection = TIM2_ICSelection_DirectTI;
1416  0016 a601          	ld	a,#1
1417  0018               L716:
1418  0018 6b02          	ld	(OFST+0,sp),a
1419                     ; 383   if (TIM2_Channel == TIM2_Channel_1)
1421  001a 7b03          	ld	a,(OFST+1,sp)
1422  001c 2626          	jrne	L126
1423                     ; 386     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection,
1423                     ; 387                TIM2_ICFilter);
1425  001e 7b09          	ld	a,(OFST+7,sp)
1426  0020 88            	push	a
1427  0021 7b08          	ld	a,(OFST+6,sp)
1428  0023 97            	ld	xl,a
1429  0024 7b05          	ld	a,(OFST+3,sp)
1430  0026 95            	ld	xh,a
1431  0027 cd0000        	call	L3_TI1_Config
1433  002a 84            	pop	a
1434                     ; 390     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1436  002b 7b08          	ld	a,(OFST+6,sp)
1437  002d cd0000        	call	_TIM2_SetIC1Prescaler
1439                     ; 393     TI2_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
1441  0030 7b09          	ld	a,(OFST+7,sp)
1442  0032 88            	push	a
1443  0033 7b03          	ld	a,(OFST+1,sp)
1444  0035 97            	ld	xl,a
1445  0036 7b02          	ld	a,(OFST+0,sp)
1446  0038 95            	ld	xh,a
1447  0039 cd0000        	call	L5_TI2_Config
1449  003c 84            	pop	a
1450                     ; 396     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1452  003d 7b08          	ld	a,(OFST+6,sp)
1453  003f cd0000        	call	_TIM2_SetIC2Prescaler
1456  0042 2024          	jra	L326
1457  0044               L126:
1458                     ; 401     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection,
1458                     ; 402                TIM2_ICFilter);
1460  0044 7b09          	ld	a,(OFST+7,sp)
1461  0046 88            	push	a
1462  0047 7b08          	ld	a,(OFST+6,sp)
1463  0049 97            	ld	xl,a
1464  004a 7b05          	ld	a,(OFST+3,sp)
1465  004c 95            	ld	xh,a
1466  004d cd0000        	call	L5_TI2_Config
1468  0050 84            	pop	a
1469                     ; 405     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1471  0051 7b08          	ld	a,(OFST+6,sp)
1472  0053 cd0000        	call	_TIM2_SetIC2Prescaler
1474                     ; 408     TI1_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
1476  0056 7b09          	ld	a,(OFST+7,sp)
1477  0058 88            	push	a
1478  0059 7b03          	ld	a,(OFST+1,sp)
1479  005b 97            	ld	xl,a
1480  005c 7b02          	ld	a,(OFST+0,sp)
1481  005e 95            	ld	xh,a
1482  005f cd0000        	call	L3_TI1_Config
1484  0062 84            	pop	a
1485                     ; 411     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1487  0063 7b08          	ld	a,(OFST+6,sp)
1488  0065 cd0000        	call	_TIM2_SetIC1Prescaler
1490  0068               L326:
1491                     ; 413 }
1494  0068 5b04          	addw	sp,#4
1495  006a 81            	ret	
1550                     ; 421 void TIM2_Cmd(FunctionalState NewState)
1550                     ; 422 {
1551                     .text:	section	.text,new
1552  0000               _TIM2_Cmd:
1556                     ; 424   assert_param(IS_FUNCTIONAL_STATE(NewState));
1558                     ; 427   if (NewState != DISABLE)
1560  0000 4d            	tnz	a
1561  0001 2705          	jreq	L356
1562                     ; 429     TIM2->CR1 |= TIM_CR1_CEN;
1564  0003 72105250      	bset	21072,#0
1567  0007 81            	ret	
1568  0008               L356:
1569                     ; 433     TIM2->CR1 &= (uint8_t)(~TIM_CR1_CEN);
1571  0008 72115250      	bres	21072,#0
1572                     ; 435 }
1575  000c 81            	ret	
1611                     ; 443 void TIM2_CtrlPWMOutputs(FunctionalState NewState)
1611                     ; 444 {
1612                     .text:	section	.text,new
1613  0000               _TIM2_CtrlPWMOutputs:
1617                     ; 446   assert_param(IS_FUNCTIONAL_STATE(NewState));
1619                     ; 450   if (NewState != DISABLE)
1621  0000 4d            	tnz	a
1622  0001 2705          	jreq	L576
1623                     ; 452     TIM2->BKR |= TIM_BKR_MOE ;
1625  0003 721e5265      	bset	21093,#7
1628  0007 81            	ret	
1629  0008               L576:
1630                     ; 456     TIM2->BKR &= (uint8_t)(~TIM_BKR_MOE) ;
1632  0008 721f5265      	bres	21093,#7
1633                     ; 458 }
1636  000c 81            	ret	
1722                     ; 468 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1722                     ; 469 {
1723                     .text:	section	.text,new
1724  0000               _TIM2_ITConfig:
1726  0000 89            	pushw	x
1727       00000000      OFST:	set	0
1730                     ; 471   assert_param(IS_TIM2_IT(TIM2_IT));
1732                     ; 472   assert_param(IS_FUNCTIONAL_STATE(NewState));
1734                     ; 474   if (NewState != DISABLE)
1736  0001 9f            	ld	a,xl
1737  0002 4d            	tnz	a
1738  0003 2706          	jreq	L147
1739                     ; 477     TIM2->IER |= (uint8_t)TIM2_IT;
1741  0005 9e            	ld	a,xh
1742  0006 ca5255        	or	a,21077
1744  0009 2006          	jra	L347
1745  000b               L147:
1746                     ; 482     TIM2->IER &= (uint8_t)(~(uint8_t)TIM2_IT);
1748  000b 7b01          	ld	a,(OFST+1,sp)
1749  000d 43            	cpl	a
1750  000e c45255        	and	a,21077
1751  0011               L347:
1752  0011 c75255        	ld	21077,a
1753                     ; 484 }
1756  0014 85            	popw	x
1757  0015 81            	ret	
1830                     ; 494 void TIM2_DMACmd( TIM2_DMASource_TypeDef TIM2_DMASource, FunctionalState NewState)
1830                     ; 495 {
1831                     .text:	section	.text,new
1832  0000               _TIM2_DMACmd:
1834  0000 89            	pushw	x
1835       00000000      OFST:	set	0
1838                     ; 497   assert_param(IS_FUNCTIONAL_STATE(NewState));
1840                     ; 498   assert_param(IS_TIM2_DMA_SOURCE(TIM2_DMASource));
1842                     ; 500   if (NewState != DISABLE)
1844  0001 9f            	ld	a,xl
1845  0002 4d            	tnz	a
1846  0003 2706          	jreq	L1001
1847                     ; 503     TIM2->DER |= (uint8_t)TIM2_DMASource;
1849  0005 9e            	ld	a,xh
1850  0006 ca5254        	or	a,21076
1852  0009 2006          	jra	L3001
1853  000b               L1001:
1854                     ; 508     TIM2->DER &= (uint8_t)(~TIM2_DMASource);
1856  000b 7b01          	ld	a,(OFST+1,sp)
1857  000d 43            	cpl	a
1858  000e c45254        	and	a,21076
1859  0011               L3001:
1860  0011 c75254        	ld	21076,a
1861                     ; 510 }
1864  0014 85            	popw	x
1865  0015 81            	ret	
1889                     ; 518 void TIM2_InternalClockConfig(void)
1889                     ; 519 {
1890                     .text:	section	.text,new
1891  0000               _TIM2_InternalClockConfig:
1895                     ; 521   TIM2->SMCR &=  (uint8_t)(~TIM_SMCR_SMS);
1897  0000 c65252        	ld	a,21074
1898  0003 a4f8          	and	a,#248
1899  0005 c75252        	ld	21074,a
1900                     ; 522 }
1903  0008 81            	ret	
2020                     ; 534 void TIM2_ETRClockMode1Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
2020                     ; 535                               TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
2020                     ; 536                               uint8_t ExtTRGFilter)
2020                     ; 537 {
2021                     .text:	section	.text,new
2022  0000               _TIM2_ETRClockMode1Config:
2024  0000 89            	pushw	x
2025       00000000      OFST:	set	0
2028                     ; 539   TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
2030  0001 7b05          	ld	a,(OFST+5,sp)
2031  0003 88            	push	a
2032  0004 7b02          	ld	a,(OFST+2,sp)
2033  0006 95            	ld	xh,a
2034  0007 cd0000        	call	_TIM2_ETRConfig
2036  000a 84            	pop	a
2037                     ; 542   TIM2->SMCR &= (uint8_t)(~TIM_SMCR_SMS);
2039  000b c65252        	ld	a,21074
2040  000e a4f8          	and	a,#248
2041  0010 c75252        	ld	21074,a
2042                     ; 543   TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
2044  0013 c65252        	ld	a,21074
2045  0016 aa07          	or	a,#7
2046  0018 c75252        	ld	21074,a
2047                     ; 546   TIM2->SMCR &= (uint8_t)(~TIM_SMCR_TS);
2049  001b c65252        	ld	a,21074
2050  001e a48f          	and	a,#143
2051  0020 c75252        	ld	21074,a
2052                     ; 547   TIM2->SMCR |= (uint8_t)((TIM2_TRGSelection_TypeDef)TIM2_TRGSelection_ETRF);
2054  0023 c65252        	ld	a,21074
2055  0026 aa70          	or	a,#112
2056  0028 c75252        	ld	21074,a
2057                     ; 548 }
2060  002b 85            	popw	x
2061  002c 81            	ret	
2119                     ; 560 void TIM2_ETRClockMode2Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
2119                     ; 561                               TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
2119                     ; 562                               uint8_t ExtTRGFilter)
2119                     ; 563 {
2120                     .text:	section	.text,new
2121  0000               _TIM2_ETRClockMode2Config:
2123  0000 89            	pushw	x
2124       00000000      OFST:	set	0
2127                     ; 565   TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
2129  0001 7b05          	ld	a,(OFST+5,sp)
2130  0003 88            	push	a
2131  0004 7b02          	ld	a,(OFST+2,sp)
2132  0006 95            	ld	xh,a
2133  0007 cd0000        	call	_TIM2_ETRConfig
2135  000a 721c5253      	bset	21075,#6
2136  000e 84            	pop	a
2137                     ; 568   TIM2->ETR |= TIM_ETR_ECE ;
2139                     ; 569 }
2142  000f 85            	popw	x
2143  0010 81            	ret	
2199                     ; 581 void TIM2_ETRConfig(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
2199                     ; 582                     TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
2199                     ; 583                     uint8_t ExtTRGFilter)
2199                     ; 584 {
2200                     .text:	section	.text,new
2201  0000               _TIM2_ETRConfig:
2203  0000 89            	pushw	x
2204       00000000      OFST:	set	0
2207                     ; 586   assert_param(IS_TIM2_EXT_PRESCALER(TIM2_ExtTRGPrescaler));
2209                     ; 587   assert_param(IS_TIM2_EXT_POLARITY(TIM2_ExtTRGPolarity));
2211                     ; 588   assert_param(IS_TIM2_EXT_FILTER(ExtTRGFilter));
2213                     ; 590   TIM2->ETR |= (uint8_t)((uint8_t)((uint8_t)TIM2_ExtTRGPrescaler | \
2213                     ; 591                                    (uint8_t)TIM2_ExtTRGPolarity ) | (uint8_t)ExtTRGFilter);
2215  0001 9f            	ld	a,xl
2216  0002 1a01          	or	a,(OFST+1,sp)
2217  0004 1a05          	or	a,(OFST+5,sp)
2218  0006 ca5253        	or	a,21075
2219  0009 c75253        	ld	21075,a
2220                     ; 592 }
2223  000c 85            	popw	x
2224  000d 81            	ret	
2313                     ; 604 void TIM2_TIxExternalClockConfig(TIM2_TIxExternalCLK1Source_TypeDef TIM2_TIxExternalCLKSource,
2313                     ; 605                                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
2313                     ; 606                                  uint8_t ICFilter)
2313                     ; 607 {
2314                     .text:	section	.text,new
2315  0000               _TIM2_TIxExternalClockConfig:
2317  0000 89            	pushw	x
2318       00000000      OFST:	set	0
2321                     ; 609   assert_param(IS_TIM2_TIXCLK_SOURCE(TIM2_TIxExternalCLKSource));
2323                     ; 610   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
2325                     ; 611   assert_param(IS_TIM2_IC_FILTER(ICFilter));
2327                     ; 614   if (TIM2_TIxExternalCLKSource == TIM2_TIxExternalCLK1Source_TI2)
2329  0001 9e            	ld	a,xh
2330  0002 a160          	cp	a,#96
2331  0004 260e          	jrne	L3021
2332                     ; 616     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
2334  0006 7b05          	ld	a,(OFST+5,sp)
2335  0008 88            	push	a
2336  0009 ae0001        	ldw	x,#1
2337  000c 7b03          	ld	a,(OFST+3,sp)
2338  000e 95            	ld	xh,a
2339  000f cd0000        	call	L5_TI2_Config
2342  0012 200c          	jra	L5021
2343  0014               L3021:
2344                     ; 620     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
2346  0014 7b05          	ld	a,(OFST+5,sp)
2347  0016 88            	push	a
2348  0017 ae0001        	ldw	x,#1
2349  001a 7b03          	ld	a,(OFST+3,sp)
2350  001c 95            	ld	xh,a
2351  001d cd0000        	call	L3_TI1_Config
2353  0020               L5021:
2354  0020 84            	pop	a
2355                     ; 624   TIM2_SelectInputTrigger((TIM2_TRGSelection_TypeDef)TIM2_TIxExternalCLKSource);
2357  0021 7b01          	ld	a,(OFST+1,sp)
2358  0023 cd0000        	call	_TIM2_SelectInputTrigger
2360                     ; 627   TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
2362  0026 c65252        	ld	a,21074
2363  0029 aa07          	or	a,#7
2364  002b c75252        	ld	21074,a
2365                     ; 628 }
2368  002e 85            	popw	x
2369  002f 81            	ret	
2485                     ; 636 void TIM2_SelectInputTrigger(TIM2_TRGSelection_TypeDef TIM2_InputTriggerSource)
2485                     ; 637 {
2486                     .text:	section	.text,new
2487  0000               _TIM2_SelectInputTrigger:
2489  0000 88            	push	a
2490  0001 88            	push	a
2491       00000001      OFST:	set	1
2494                     ; 638   uint8_t tmpsmcr = 0;
2496                     ; 641   assert_param(IS_TIM2_TRIGGER_SELECTION(TIM2_InputTriggerSource));
2498                     ; 643   tmpsmcr = TIM2->SMCR;
2500  0002 c65252        	ld	a,21074
2501                     ; 646   tmpsmcr &= (uint8_t)(~TIM_SMCR_TS);
2503  0005 a48f          	and	a,#143
2504                     ; 647   tmpsmcr |= (uint8_t)TIM2_InputTriggerSource;
2506  0007 1a02          	or	a,(OFST+1,sp)
2507                     ; 649   TIM2->SMCR = (uint8_t)tmpsmcr;
2509  0009 c75252        	ld	21074,a
2510                     ; 650 }
2513  000c 85            	popw	x
2514  000d 81            	ret	
2550                     ; 659 void TIM2_UpdateDisableConfig(FunctionalState NewState)
2550                     ; 660 {
2551                     .text:	section	.text,new
2552  0000               _TIM2_UpdateDisableConfig:
2556                     ; 662   assert_param(IS_FUNCTIONAL_STATE(NewState));
2558                     ; 665   if (NewState != DISABLE)
2560  0000 4d            	tnz	a
2561  0001 2705          	jreq	L3721
2562                     ; 667     TIM2->CR1 |= TIM_CR1_UDIS;
2564  0003 72125250      	bset	21072,#1
2567  0007 81            	ret	
2568  0008               L3721:
2569                     ; 671     TIM2->CR1 &= (uint8_t)(~TIM_CR1_UDIS);
2571  0008 72135250      	bres	21072,#1
2572                     ; 673 }
2575  000c 81            	ret	
2633                     ; 681 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2633                     ; 682 {
2634                     .text:	section	.text,new
2635  0000               _TIM2_UpdateRequestConfig:
2639                     ; 684   assert_param(IS_TIM2_UPDATE_SOURCE(TIM2_UpdateSource));
2641                     ; 687   if (TIM2_UpdateSource == TIM2_UpdateSource_Regular)
2643  0000 4a            	dec	a
2644  0001 2605          	jrne	L5231
2645                     ; 689     TIM2->CR1 |= TIM_CR1_URS ;
2647  0003 72145250      	bset	21072,#2
2650  0007 81            	ret	
2651  0008               L5231:
2652                     ; 693     TIM2->CR1 &= (uint8_t)(~TIM_CR1_URS);
2654  0008 72155250      	bres	21072,#2
2655                     ; 695 }
2658  000c 81            	ret	
2694                     ; 703 void TIM2_SelectHallSensor(FunctionalState NewState)
2694                     ; 704 {
2695                     .text:	section	.text,new
2696  0000               _TIM2_SelectHallSensor:
2700                     ; 706   assert_param(IS_FUNCTIONAL_STATE(NewState));
2702                     ; 709   if (NewState != DISABLE)
2704  0000 4d            	tnz	a
2705  0001 2705          	jreq	L7431
2706                     ; 711     TIM2->CR2 |= TIM_CR2_TI1S;
2708  0003 721e5251      	bset	21073,#7
2711  0007 81            	ret	
2712  0008               L7431:
2713                     ; 715     TIM2->CR2 &= (uint8_t)(~TIM_CR2_TI1S);
2715  0008 721f5251      	bres	21073,#7
2716                     ; 717 }
2719  000c 81            	ret	
2776                     ; 725 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2776                     ; 726 {
2777                     .text:	section	.text,new
2778  0000               _TIM2_SelectOnePulseMode:
2782                     ; 728   assert_param(IS_TIM2_OPM_MODE(TIM2_OPMode));
2784                     ; 731   if (TIM2_OPMode == TIM2_OPMode_Single)
2786  0000 4a            	dec	a
2787  0001 2605          	jrne	L1041
2788                     ; 733     TIM2->CR1 |= TIM_CR1_OPM ;
2790  0003 72165250      	bset	21072,#3
2793  0007 81            	ret	
2794  0008               L1041:
2795                     ; 737     TIM2->CR1 &= (uint8_t)(~TIM_CR1_OPM);
2797  0008 72175250      	bres	21072,#3
2798                     ; 739 }
2801  000c 81            	ret	
2900                     ; 747 void TIM2_SelectOutputTrigger(TIM2_TRGOSource_TypeDef TIM2_TRGOSource)
2900                     ; 748 {
2901                     .text:	section	.text,new
2902  0000               _TIM2_SelectOutputTrigger:
2904  0000 88            	push	a
2905  0001 88            	push	a
2906       00000001      OFST:	set	1
2909                     ; 749   uint8_t tmpcr2 = 0;
2911                     ; 752   assert_param(IS_TIM2_TRGO_SOURCE(TIM2_TRGOSource));
2913                     ; 754   tmpcr2 = TIM2->CR2;
2915  0002 c65251        	ld	a,21073
2916                     ; 757   tmpcr2 &= (uint8_t)(~TIM_CR2_MMS);
2918  0005 a48f          	and	a,#143
2919                     ; 760   tmpcr2 |=  (uint8_t)TIM2_TRGOSource;
2921  0007 1a02          	or	a,(OFST+1,sp)
2922                     ; 762   TIM2->CR2 = tmpcr2;
2924  0009 c75251        	ld	21073,a
2925                     ; 763 }
2928  000c 85            	popw	x
2929  000d 81            	ret	
3012                     ; 771 void TIM2_SelectSlaveMode(TIM2_SlaveMode_TypeDef TIM2_SlaveMode)
3012                     ; 772 {
3013                     .text:	section	.text,new
3014  0000               _TIM2_SelectSlaveMode:
3016  0000 88            	push	a
3017  0001 88            	push	a
3018       00000001      OFST:	set	1
3021                     ; 773   uint8_t tmpsmcr = 0;
3023                     ; 776   assert_param(IS_TIM2_SLAVE_MODE(TIM2_SlaveMode));
3025                     ; 778   tmpsmcr = TIM2->SMCR;
3027  0002 c65252        	ld	a,21074
3028                     ; 781   tmpsmcr &= (uint8_t)(~TIM_SMCR_SMS);
3030  0005 a4f8          	and	a,#248
3031                     ; 784   tmpsmcr |= (uint8_t)TIM2_SlaveMode;
3033  0007 1a02          	or	a,(OFST+1,sp)
3034                     ; 786   TIM2->SMCR = tmpsmcr;
3036  0009 c75252        	ld	21074,a
3037                     ; 787 }
3040  000c 85            	popw	x
3041  000d 81            	ret	
3077                     ; 795 void TIM2_SelectMasterSlaveMode(FunctionalState NewState)
3077                     ; 796 {
3078                     .text:	section	.text,new
3079  0000               _TIM2_SelectMasterSlaveMode:
3083                     ; 798   assert_param(IS_FUNCTIONAL_STATE(NewState));
3085                     ; 801   if (NewState != DISABLE)
3087  0000 4d            	tnz	a
3088  0001 2705          	jreq	L3251
3089                     ; 803     TIM2->SMCR |= TIM_SMCR_MSM;
3091  0003 721e5252      	bset	21074,#7
3094  0007 81            	ret	
3095  0008               L3251:
3096                     ; 807     TIM2->SMCR &= (uint8_t)(~TIM_SMCR_MSM);
3098  0008 721f5252      	bres	21074,#7
3099                     ; 809 }
3102  000c 81            	ret	
3215                     ; 821 void TIM2_EncoderInterfaceConfig(TIM2_EncoderMode_TypeDef TIM2_EncoderMode,
3215                     ; 822                                  TIM2_ICPolarity_TypeDef TIM2_IC1Polarity,
3215                     ; 823                                  TIM2_ICPolarity_TypeDef TIM2_IC2Polarity)
3215                     ; 824 {
3216                     .text:	section	.text,new
3217  0000               _TIM2_EncoderInterfaceConfig:
3219  0000 89            	pushw	x
3220  0001 5203          	subw	sp,#3
3221       00000003      OFST:	set	3
3224                     ; 825   uint8_t tmpsmcr = 0;
3226                     ; 826   uint8_t tmpccmr1 = 0;
3228                     ; 827   uint8_t tmpccmr2 = 0;
3230                     ; 830   assert_param(IS_TIM2_ENCODER_MODE(TIM2_EncoderMode));
3232                     ; 831   assert_param(IS_TIM2_IC_POLARITY(TIM2_IC1Polarity));
3234                     ; 832   assert_param(IS_TIM2_IC_POLARITY(TIM2_IC2Polarity));
3236                     ; 834   tmpsmcr = TIM2->SMCR;
3238  0003 c65252        	ld	a,21074
3239  0006 6b01          	ld	(OFST-2,sp),a
3240                     ; 835   tmpccmr1 = TIM2->CCMR1;
3242  0008 c65259        	ld	a,21081
3243  000b 6b02          	ld	(OFST-1,sp),a
3244                     ; 836   tmpccmr2 = TIM2->CCMR2;
3246  000d c6525a        	ld	a,21082
3247  0010 6b03          	ld	(OFST+0,sp),a
3248                     ; 839   tmpsmcr &= (uint8_t)(TIM_SMCR_MSM | TIM_SMCR_TS)  ;
3250  0012 7b01          	ld	a,(OFST-2,sp)
3251  0014 a4f0          	and	a,#240
3252  0016 6b01          	ld	(OFST-2,sp),a
3253                     ; 840   tmpsmcr |= (uint8_t)TIM2_EncoderMode;
3255  0018 9e            	ld	a,xh
3256  0019 1a01          	or	a,(OFST-2,sp)
3257  001b 6b01          	ld	(OFST-2,sp),a
3258                     ; 843   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS);
3260  001d 7b02          	ld	a,(OFST-1,sp)
3261  001f a4fc          	and	a,#252
3262  0021 6b02          	ld	(OFST-1,sp),a
3263                     ; 844   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS);
3265  0023 7b03          	ld	a,(OFST+0,sp)
3266  0025 a4fc          	and	a,#252
3267  0027 6b03          	ld	(OFST+0,sp),a
3268                     ; 845   tmpccmr1 |= TIM_CCMR_TIxDirect_Set;
3270  0029 7b02          	ld	a,(OFST-1,sp)
3271  002b aa01          	or	a,#1
3272  002d 6b02          	ld	(OFST-1,sp),a
3273                     ; 846   tmpccmr2 |= TIM_CCMR_TIxDirect_Set;
3275  002f 7b03          	ld	a,(OFST+0,sp)
3276  0031 aa01          	or	a,#1
3277  0033 6b03          	ld	(OFST+0,sp),a
3278                     ; 849   if (TIM2_IC1Polarity == TIM2_ICPolarity_Falling)
3280  0035 9f            	ld	a,xl
3281  0036 4a            	dec	a
3282  0037 2606          	jrne	L3061
3283                     ; 851     TIM2->CCER1 |= TIM_CCER1_CC1P ;
3285  0039 7212525b      	bset	21083,#1
3287  003d 2004          	jra	L5061
3288  003f               L3061:
3289                     ; 855     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
3291  003f 7213525b      	bres	21083,#1
3292  0043               L5061:
3293                     ; 858   if (TIM2_IC2Polarity == TIM2_ICPolarity_Falling)
3295  0043 7b08          	ld	a,(OFST+5,sp)
3296  0045 4a            	dec	a
3297  0046 2606          	jrne	L7061
3298                     ; 860     TIM2->CCER1 |= TIM_CCER1_CC2P ;
3300  0048 721a525b      	bset	21083,#5
3302  004c 2004          	jra	L1161
3303  004e               L7061:
3304                     ; 864     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
3306  004e 721b525b      	bres	21083,#5
3307  0052               L1161:
3308                     ; 867   TIM2->SMCR = tmpsmcr;
3310  0052 7b01          	ld	a,(OFST-2,sp)
3311  0054 c75252        	ld	21074,a
3312                     ; 868   TIM2->CCMR1 = tmpccmr1;
3314  0057 7b02          	ld	a,(OFST-1,sp)
3315  0059 c75259        	ld	21081,a
3316                     ; 869   TIM2->CCMR2 = tmpccmr2;
3318  005c 7b03          	ld	a,(OFST+0,sp)
3319  005e c7525a        	ld	21082,a
3320                     ; 870 }
3323  0061 5b05          	addw	sp,#5
3324  0063 81            	ret	
3392                     ; 880 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
3392                     ; 881                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
3392                     ; 882 {
3393                     .text:	section	.text,new
3394  0000               _TIM2_PrescalerConfig:
3398                     ; 884   assert_param(IS_TIM2_PRESCALER(Prescaler));
3400                     ; 885   assert_param(IS_TIM2_PRESCALER_RELOAD(TIM2_PSCReloadMode));
3402                     ; 888   TIM2->PSCR = (uint8_t)(Prescaler);
3404  0000 9e            	ld	a,xh
3405  0001 c7525e        	ld	21086,a
3406                     ; 891   if (TIM2_PSCReloadMode == TIM2_PSCReloadMode_Immediate)
3408  0004 9f            	ld	a,xl
3409  0005 4a            	dec	a
3410  0006 2605          	jrne	L5461
3411                     ; 893     TIM2->EGR |= TIM_EGR_UG ;
3413  0008 72105258      	bset	21080,#0
3416  000c 81            	ret	
3417  000d               L5461:
3418                     ; 897     TIM2->EGR &= (uint8_t)(~TIM_EGR_UG) ;
3420  000d 72115258      	bres	21080,#0
3421                     ; 899 }
3424  0011 81            	ret	
3469                     ; 907 void TIM2_CounterModeConfig(TIM2_CounterMode_TypeDef TIM2_CounterMode)
3469                     ; 908 {
3470                     .text:	section	.text,new
3471  0000               _TIM2_CounterModeConfig:
3473  0000 88            	push	a
3474  0001 88            	push	a
3475       00000001      OFST:	set	1
3478                     ; 909   uint8_t tmpcr1 = 0;
3480                     ; 912   assert_param(IS_TIM2_COUNTER_MODE(TIM2_CounterMode));
3482                     ; 914   tmpcr1 = TIM2->CR1;
3484  0002 c65250        	ld	a,21072
3485                     ; 917   tmpcr1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS) & (uint8_t)(~TIM_CR1_DIR));
3487  0005 a48f          	and	a,#143
3488                     ; 920   tmpcr1 |= (uint8_t)TIM2_CounterMode;
3490  0007 1a02          	or	a,(OFST+1,sp)
3491                     ; 922   TIM2->CR1 = tmpcr1;
3493  0009 c75250        	ld	21072,a
3494                     ; 923 }
3497  000c 85            	popw	x
3498  000d 81            	ret	
3565                     ; 931 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
3565                     ; 932 {
3566                     .text:	section	.text,new
3567  0000               _TIM2_ForcedOC1Config:
3569  0000 88            	push	a
3570  0001 88            	push	a
3571       00000001      OFST:	set	1
3574                     ; 933   uint8_t tmpccmr1 = 0;
3576                     ; 936   assert_param(IS_TIM2_FORCED_ACTION(TIM2_ForcedAction));
3578                     ; 938   tmpccmr1 = TIM2->CCMR1;
3580  0002 c65259        	ld	a,21081
3581                     ; 941   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
3583  0005 a48f          	and	a,#143
3584                     ; 944   tmpccmr1 |= (uint8_t)TIM2_ForcedAction;
3586  0007 1a02          	or	a,(OFST+1,sp)
3587                     ; 946   TIM2->CCMR1 = tmpccmr1;
3589  0009 c75259        	ld	21081,a
3590                     ; 947 }
3593  000c 85            	popw	x
3594  000d 81            	ret	
3639                     ; 955 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
3639                     ; 956 {
3640                     .text:	section	.text,new
3641  0000               _TIM2_ForcedOC2Config:
3643  0000 88            	push	a
3644  0001 88            	push	a
3645       00000001      OFST:	set	1
3648                     ; 957   uint8_t tmpccmr2 = 0;
3650                     ; 960   assert_param(IS_TIM2_FORCED_ACTION(TIM2_ForcedAction));
3652                     ; 962   tmpccmr2 = TIM2->CCMR2;
3654  0002 c6525a        	ld	a,21082
3655                     ; 965   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
3657  0005 a48f          	and	a,#143
3658                     ; 968   tmpccmr2 |= (uint8_t)TIM2_ForcedAction;
3660  0007 1a02          	or	a,(OFST+1,sp)
3661                     ; 970   TIM2->CCMR2 = tmpccmr2;
3663  0009 c7525a        	ld	21082,a
3664                     ; 971 }
3667  000c 85            	popw	x
3668  000d 81            	ret	
3704                     ; 979 void TIM2_ARRPreloadConfig(FunctionalState NewState)
3704                     ; 980 {
3705                     .text:	section	.text,new
3706  0000               _TIM2_ARRPreloadConfig:
3710                     ; 982   assert_param(IS_FUNCTIONAL_STATE(NewState));
3712                     ; 985   if (NewState != DISABLE)
3714  0000 4d            	tnz	a
3715  0001 2705          	jreq	L5671
3716                     ; 987     TIM2->CR1 |= TIM_CR1_ARPE;
3718  0003 721e5250      	bset	21072,#7
3721  0007 81            	ret	
3722  0008               L5671:
3723                     ; 991     TIM2->CR1 &= (uint8_t)(~TIM_CR1_ARPE);
3725  0008 721f5250      	bres	21072,#7
3726                     ; 993 }
3729  000c 81            	ret	
3765                     ; 1001 void TIM2_OC1PreloadConfig(FunctionalState NewState)
3765                     ; 1002 {
3766                     .text:	section	.text,new
3767  0000               _TIM2_OC1PreloadConfig:
3771                     ; 1004   assert_param(IS_FUNCTIONAL_STATE(NewState));
3773                     ; 1007   if (NewState != DISABLE)
3775  0000 4d            	tnz	a
3776  0001 2705          	jreq	L7002
3777                     ; 1009     TIM2->CCMR1 |= TIM_CCMR_OCxPE ;
3779  0003 72165259      	bset	21081,#3
3782  0007 81            	ret	
3783  0008               L7002:
3784                     ; 1013     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
3786  0008 72175259      	bres	21081,#3
3787                     ; 1015 }
3790  000c 81            	ret	
3826                     ; 1023 void TIM2_OC2PreloadConfig(FunctionalState NewState)
3826                     ; 1024 {
3827                     .text:	section	.text,new
3828  0000               _TIM2_OC2PreloadConfig:
3832                     ; 1026   assert_param(IS_FUNCTIONAL_STATE(NewState));
3834                     ; 1029   if (NewState != DISABLE)
3836  0000 4d            	tnz	a
3837  0001 2705          	jreq	L1302
3838                     ; 1031     TIM2->CCMR2 |= TIM_CCMR_OCxPE ;
3840  0003 7216525a      	bset	21082,#3
3843  0007 81            	ret	
3844  0008               L1302:
3845                     ; 1035     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
3847  0008 7217525a      	bres	21082,#3
3848                     ; 1037 }
3851  000c 81            	ret	
3886                     ; 1045 void TIM2_OC1FastCmd(FunctionalState NewState)
3886                     ; 1046 {
3887                     .text:	section	.text,new
3888  0000               _TIM2_OC1FastCmd:
3892                     ; 1048   assert_param(IS_FUNCTIONAL_STATE(NewState));
3894                     ; 1051   if (NewState != DISABLE)
3896  0000 4d            	tnz	a
3897  0001 2705          	jreq	L3502
3898                     ; 1053     TIM2->CCMR1 |= TIM_CCMR_OCxFE ;
3900  0003 72145259      	bset	21081,#2
3903  0007 81            	ret	
3904  0008               L3502:
3905                     ; 1057     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
3907  0008 72155259      	bres	21081,#2
3908                     ; 1059 }
3911  000c 81            	ret	
3946                     ; 1068 void TIM2_OC2FastCmd(FunctionalState NewState)
3946                     ; 1069 {
3947                     .text:	section	.text,new
3948  0000               _TIM2_OC2FastCmd:
3952                     ; 1071   assert_param(IS_FUNCTIONAL_STATE(NewState));
3954                     ; 1074   if (NewState != DISABLE)
3956  0000 4d            	tnz	a
3957  0001 2705          	jreq	L5702
3958                     ; 1076     TIM2->CCMR2 |= TIM_CCMR_OCxFE ;
3960  0003 7214525a      	bset	21082,#2
3963  0007 81            	ret	
3964  0008               L5702:
3965                     ; 1080     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
3967  0008 7215525a      	bres	21082,#2
3968                     ; 1082 }
3971  000c 81            	ret	
4052                     ; 1090 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
4052                     ; 1091 {
4053                     .text:	section	.text,new
4054  0000               _TIM2_GenerateEvent:
4058                     ; 1093   assert_param(IS_TIM2_EVENT_SOURCE((uint8_t)TIM2_EventSource));
4060                     ; 1096   TIM2->EGR |= (uint8_t)TIM2_EventSource;
4062  0000 ca5258        	or	a,21080
4063  0003 c75258        	ld	21080,a
4064                     ; 1097 }
4067  0006 81            	ret	
4103                     ; 1105 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
4103                     ; 1106 {
4104                     .text:	section	.text,new
4105  0000               _TIM2_OC1PolarityConfig:
4109                     ; 1108   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
4111                     ; 1111   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
4113  0000 4a            	dec	a
4114  0001 2605          	jrne	L3512
4115                     ; 1113     TIM2->CCER1 |= TIM_CCER1_CC1P ;
4117  0003 7212525b      	bset	21083,#1
4120  0007 81            	ret	
4121  0008               L3512:
4122                     ; 1117     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
4124  0008 7213525b      	bres	21083,#1
4125                     ; 1119 }
4128  000c 81            	ret	
4164                     ; 1127 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
4164                     ; 1128 {
4165                     .text:	section	.text,new
4166  0000               _TIM2_OC2PolarityConfig:
4170                     ; 1130   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
4172                     ; 1133   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
4174  0000 4a            	dec	a
4175  0001 2605          	jrne	L5712
4176                     ; 1135     TIM2->CCER1 |= TIM_CCER1_CC2P ;
4178  0003 721a525b      	bset	21083,#5
4181  0007 81            	ret	
4182  0008               L5712:
4183                     ; 1139     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
4185  0008 721b525b      	bres	21083,#5
4186                     ; 1141 }
4189  000c 81            	ret	
4234                     ; 1151 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel,
4234                     ; 1152                  FunctionalState NewState)
4234                     ; 1153 {
4235                     .text:	section	.text,new
4236  0000               _TIM2_CCxCmd:
4238  0000 89            	pushw	x
4239       00000000      OFST:	set	0
4242                     ; 1155   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
4244                     ; 1156   assert_param(IS_FUNCTIONAL_STATE(NewState));
4246                     ; 1158   if (TIM2_Channel == TIM2_Channel_1)
4248  0001 9e            	ld	a,xh
4249  0002 4d            	tnz	a
4250  0003 2610          	jrne	L3222
4251                     ; 1161     if (NewState != DISABLE)
4253  0005 9f            	ld	a,xl
4254  0006 4d            	tnz	a
4255  0007 2706          	jreq	L5222
4256                     ; 1163       TIM2->CCER1 |= TIM_CCER1_CC1E ;
4258  0009 7210525b      	bset	21083,#0
4260  000d 2014          	jra	L1322
4261  000f               L5222:
4262                     ; 1167       TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E) ;
4264  000f 7211525b      	bres	21083,#0
4265  0013 200e          	jra	L1322
4266  0015               L3222:
4267                     ; 1174     if (NewState != DISABLE)
4269  0015 7b02          	ld	a,(OFST+2,sp)
4270  0017 2706          	jreq	L3322
4271                     ; 1176       TIM2->CCER1 |= TIM_CCER1_CC2E;
4273  0019 7218525b      	bset	21083,#4
4275  001d 2004          	jra	L1322
4276  001f               L3322:
4277                     ; 1180       TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E) ;
4279  001f 7219525b      	bres	21083,#4
4280  0023               L1322:
4281                     ; 1183 }
4284  0023 85            	popw	x
4285  0024 81            	ret	
4330                     ; 1195 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel,
4330                     ; 1196                      TIM2_OCMode_TypeDef TIM2_OCMode)
4330                     ; 1197 {
4331                     .text:	section	.text,new
4332  0000               _TIM2_SelectOCxM:
4334  0000 89            	pushw	x
4335       00000000      OFST:	set	0
4338                     ; 1199   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
4340                     ; 1200   assert_param(IS_TIM2_OCM(TIM2_OCMode));
4342                     ; 1202   if (TIM2_Channel == TIM2_Channel_1)
4344  0001 9e            	ld	a,xh
4345  0002 4d            	tnz	a
4346  0003 2615          	jrne	L1622
4347                     ; 1205     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
4349  0005 7211525b      	bres	21083,#0
4350                     ; 1208     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCM);
4352  0009 c65259        	ld	a,21081
4353  000c a48f          	and	a,#143
4354  000e c75259        	ld	21081,a
4355                     ; 1211     TIM2->CCMR1 |= (uint8_t)TIM2_OCMode;
4357  0011 9f            	ld	a,xl
4358  0012 ca5259        	or	a,21081
4359  0015 c75259        	ld	21081,a
4361  0018 2014          	jra	L3622
4362  001a               L1622:
4363                     ; 1216     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
4365  001a 7219525b      	bres	21083,#4
4366                     ; 1219     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCM);
4368  001e c6525a        	ld	a,21082
4369  0021 a48f          	and	a,#143
4370  0023 c7525a        	ld	21082,a
4371                     ; 1222     TIM2->CCMR2 |= (uint8_t)TIM2_OCMode;
4373  0026 c6525a        	ld	a,21082
4374  0029 1a02          	or	a,(OFST+2,sp)
4375  002b c7525a        	ld	21082,a
4376  002e               L3622:
4377                     ; 1224 }
4380  002e 85            	popw	x
4381  002f 81            	ret	
4415                     ; 1232 void TIM2_SetCounter(uint16_t Counter)
4415                     ; 1233 {
4416                     .text:	section	.text,new
4417  0000               _TIM2_SetCounter:
4421                     ; 1236   TIM2->CNTRH = (uint8_t)(Counter >> 8);
4423  0000 9e            	ld	a,xh
4424  0001 c7525c        	ld	21084,a
4425                     ; 1237   TIM2->CNTRL = (uint8_t)(Counter);
4427  0004 9f            	ld	a,xl
4428  0005 c7525d        	ld	21085,a
4429                     ; 1238 }
4432  0008 81            	ret	
4466                     ; 1246 void TIM2_SetAutoreload(uint16_t Autoreload)
4466                     ; 1247 {
4467                     .text:	section	.text,new
4468  0000               _TIM2_SetAutoreload:
4472                     ; 1249   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
4474  0000 9e            	ld	a,xh
4475  0001 c7525f        	ld	21087,a
4476                     ; 1250   TIM2->ARRL = (uint8_t)(Autoreload);
4478  0004 9f            	ld	a,xl
4479  0005 c75260        	ld	21088,a
4480                     ; 1251 }
4483  0008 81            	ret	
4517                     ; 1259 void TIM2_SetCompare1(uint16_t Compare)
4517                     ; 1260 {
4518                     .text:	section	.text,new
4519  0000               _TIM2_SetCompare1:
4523                     ; 1262   TIM2->CCR1H = (uint8_t)(Compare >> 8);
4525  0000 9e            	ld	a,xh
4526  0001 c75261        	ld	21089,a
4527                     ; 1263   TIM2->CCR1L = (uint8_t)(Compare);
4529  0004 9f            	ld	a,xl
4530  0005 c75262        	ld	21090,a
4531                     ; 1264 }
4534  0008 81            	ret	
4568                     ; 1272 void TIM2_SetCompare2(uint16_t Compare)
4568                     ; 1273 {
4569                     .text:	section	.text,new
4570  0000               _TIM2_SetCompare2:
4574                     ; 1275   TIM2->CCR2H = (uint8_t)(Compare >> 8);
4576  0000 9e            	ld	a,xh
4577  0001 c75263        	ld	21091,a
4578                     ; 1276   TIM2->CCR2L = (uint8_t)(Compare);
4580  0004 9f            	ld	a,xl
4581  0005 c75264        	ld	21092,a
4582                     ; 1277 }
4585  0008 81            	ret	
4630                     ; 1285 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
4630                     ; 1286 {
4631                     .text:	section	.text,new
4632  0000               _TIM2_SetIC1Prescaler:
4634  0000 88            	push	a
4635  0001 88            	push	a
4636       00000001      OFST:	set	1
4639                     ; 1287   uint8_t tmpccmr1 = 0;
4641                     ; 1290   assert_param(IS_TIM2_IC_PRESCALER(TIM2_IC1Prescaler));
4643                     ; 1292   tmpccmr1 = TIM2->CCMR1;
4645  0002 c65259        	ld	a,21081
4646                     ; 1295   tmpccmr1 &= (uint8_t)(~TIM_CCMR_ICxPSC);
4648  0005 a4f3          	and	a,#243
4649                     ; 1298   tmpccmr1 |= (uint8_t)TIM2_IC1Prescaler;
4651  0007 1a02          	or	a,(OFST+1,sp)
4652                     ; 1300   TIM2->CCMR1 = tmpccmr1;
4654  0009 c75259        	ld	21081,a
4655                     ; 1301 }
4658  000c 85            	popw	x
4659  000d 81            	ret	
4704                     ; 1309 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
4704                     ; 1310 {
4705                     .text:	section	.text,new
4706  0000               _TIM2_SetIC2Prescaler:
4708  0000 88            	push	a
4709  0001 88            	push	a
4710       00000001      OFST:	set	1
4713                     ; 1311   uint8_t tmpccmr2 = 0;
4715                     ; 1314   assert_param(IS_TIM2_IC_PRESCALER(TIM2_IC2Prescaler));
4717                     ; 1316   tmpccmr2 = TIM2->CCMR2;
4719  0002 c6525a        	ld	a,21082
4720                     ; 1319   tmpccmr2 &= (uint8_t)(~TIM_CCMR_ICxPSC);
4722  0005 a4f3          	and	a,#243
4723                     ; 1322   tmpccmr2 |= (uint8_t)TIM2_IC2Prescaler;
4725  0007 1a02          	or	a,(OFST+1,sp)
4726                     ; 1324   TIM2->CCMR2 = tmpccmr2;
4728  0009 c7525a        	ld	21082,a
4729                     ; 1325 }
4732  000c 85            	popw	x
4733  000d 81            	ret	
4785                     ; 1332 uint16_t TIM2_GetCapture1(void)
4785                     ; 1333 {
4786                     .text:	section	.text,new
4787  0000               _TIM2_GetCapture1:
4789  0000 5204          	subw	sp,#4
4790       00000004      OFST:	set	4
4793                     ; 1334   uint16_t tmpccr1 = 0;
4795                     ; 1337   tmpccr1h = TIM2->CCR1H;
4797  0002 c65261        	ld	a,21089
4798  0005 6b02          	ld	(OFST-2,sp),a
4799                     ; 1338   tmpccr1l = TIM2->CCR1L;
4801  0007 c65262        	ld	a,21090
4802  000a 6b01          	ld	(OFST-3,sp),a
4803                     ; 1340   tmpccr1 = (uint16_t)(tmpccr1l);
4805  000c 5f            	clrw	x
4806  000d 97            	ld	xl,a
4807  000e 1f03          	ldw	(OFST-1,sp),x
4808                     ; 1341   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4810  0010 5f            	clrw	x
4811  0011 7b02          	ld	a,(OFST-2,sp)
4812  0013 97            	ld	xl,a
4813  0014 7b04          	ld	a,(OFST+0,sp)
4814  0016 01            	rrwa	x,a
4815  0017 1a03          	or	a,(OFST-1,sp)
4816  0019 01            	rrwa	x,a
4817                     ; 1343   return ((uint16_t)tmpccr1);
4821  001a 5b04          	addw	sp,#4
4822  001c 81            	ret	
4874                     ; 1351 uint16_t TIM2_GetCapture2(void)
4874                     ; 1352 {
4875                     .text:	section	.text,new
4876  0000               _TIM2_GetCapture2:
4878  0000 5204          	subw	sp,#4
4879       00000004      OFST:	set	4
4882                     ; 1353   uint16_t tmpccr2 = 0;
4884                     ; 1356   tmpccr2h = TIM2->CCR2H;
4886  0002 c65263        	ld	a,21091
4887  0005 6b02          	ld	(OFST-2,sp),a
4888                     ; 1357   tmpccr2l = TIM2->CCR2L;
4890  0007 c65264        	ld	a,21092
4891  000a 6b01          	ld	(OFST-3,sp),a
4892                     ; 1359   tmpccr2 = (uint16_t)(tmpccr2l);
4894  000c 5f            	clrw	x
4895  000d 97            	ld	xl,a
4896  000e 1f03          	ldw	(OFST-1,sp),x
4897                     ; 1360   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4899  0010 5f            	clrw	x
4900  0011 7b02          	ld	a,(OFST-2,sp)
4901  0013 97            	ld	xl,a
4902  0014 7b04          	ld	a,(OFST+0,sp)
4903  0016 01            	rrwa	x,a
4904  0017 1a03          	or	a,(OFST-1,sp)
4905  0019 01            	rrwa	x,a
4906                     ; 1362   return ((uint16_t)tmpccr2);
4910  001a 5b04          	addw	sp,#4
4911  001c 81            	ret	
4963                     ; 1370 uint16_t TIM2_GetCounter(void)
4963                     ; 1371 {
4964                     .text:	section	.text,new
4965  0000               _TIM2_GetCounter:
4967  0000 5204          	subw	sp,#4
4968       00000004      OFST:	set	4
4971                     ; 1372   uint16_t tmpcnt = 0;
4973                     ; 1375   tmpcntrh = TIM2->CNTRH;
4975  0002 c6525c        	ld	a,21084
4976  0005 6b02          	ld	(OFST-2,sp),a
4977                     ; 1376   tmpcntrl = TIM2->CNTRL;
4979  0007 c6525d        	ld	a,21085
4980  000a 6b01          	ld	(OFST-3,sp),a
4981                     ; 1378   tmpcnt = (uint16_t)(tmpcntrl);
4983  000c 5f            	clrw	x
4984  000d 97            	ld	xl,a
4985  000e 1f03          	ldw	(OFST-1,sp),x
4986                     ; 1379   tmpcnt |= (uint16_t)((uint16_t)tmpcntrh << 8);
4988  0010 5f            	clrw	x
4989  0011 7b02          	ld	a,(OFST-2,sp)
4990  0013 97            	ld	xl,a
4991  0014 7b04          	ld	a,(OFST+0,sp)
4992  0016 01            	rrwa	x,a
4993  0017 1a03          	or	a,(OFST-1,sp)
4994  0019 01            	rrwa	x,a
4995                     ; 1381   return ((uint16_t)tmpcnt);
4999  001a 5b04          	addw	sp,#4
5000  001c 81            	ret	
5024                     ; 1389 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
5024                     ; 1390 {
5025                     .text:	section	.text,new
5026  0000               _TIM2_GetPrescaler:
5030                     ; 1392   return ((TIM2_Prescaler_TypeDef)TIM2->PSCR);
5032  0000 c6525e        	ld	a,21086
5035  0003 81            	ret	
5070                     ; 1401 void TIM2_SelectCCDMA(FunctionalState NewState)
5070                     ; 1402 {
5071                     .text:	section	.text,new
5072  0000               _TIM2_SelectCCDMA:
5076                     ; 1404   assert_param(IS_FUNCTIONAL_STATE(NewState));
5078                     ; 1406   if (NewState != DISABLE)
5080  0000 4d            	tnz	a
5081  0001 2705          	jreq	L1552
5082                     ; 1409     TIM2->CR2 |= TIM_CR2_CCDS;
5084  0003 72165251      	bset	21073,#3
5087  0007 81            	ret	
5088  0008               L1552:
5089                     ; 1414     TIM2->CR2 &= (uint8_t)(~TIM_CR2_CCDS);
5091  0008 72175251      	bres	21073,#3
5092                     ; 1416 }
5095  000c 81            	ret	
5234                     ; 1425 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
5234                     ; 1426 {
5235                     .text:	section	.text,new
5236  0000               _TIM2_GetFlagStatus:
5238  0000 89            	pushw	x
5239  0001 89            	pushw	x
5240       00000002      OFST:	set	2
5243                     ; 1427   FlagStatus bitstatus = RESET;
5245                     ; 1428   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
5249                     ; 1431   assert_param(IS_TIM2_GET_FLAG(TIM2_FLAG));
5251                     ; 1433   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)(TIM2_FLAG));
5253  0002 9f            	ld	a,xl
5254  0003 c45256        	and	a,21078
5255  0006 6b01          	ld	(OFST-1,sp),a
5256                     ; 1434   tim2_flag_h = (uint8_t)(TIM2->SR2 & (uint8_t)((uint16_t)TIM2_FLAG >> 8));
5258  0008 c65257        	ld	a,21079
5259  000b 1403          	and	a,(OFST+1,sp)
5260  000d 6b02          	ld	(OFST+0,sp),a
5261                     ; 1436   if ((uint8_t)(tim2_flag_l | tim2_flag_h) != 0)
5263  000f 1a01          	or	a,(OFST-1,sp)
5264  0011 2702          	jreq	L1462
5265                     ; 1438     bitstatus = SET;
5267  0013 a601          	ld	a,#1
5269  0015               L1462:
5270                     ; 1442     bitstatus = RESET;
5272                     ; 1444   return ((FlagStatus)bitstatus);
5276  0015 5b04          	addw	sp,#4
5277  0017 81            	ret	
5312                     ; 1453 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
5312                     ; 1454 {
5313                     .text:	section	.text,new
5314  0000               _TIM2_ClearFlag:
5316  0000 89            	pushw	x
5317       00000000      OFST:	set	0
5320                     ; 1456   assert_param(IS_TIM2_CLEAR_FLAG((uint16_t)TIM2_FLAG));
5322                     ; 1458   TIM2->SR1 = (uint8_t)(~(uint8_t)(TIM2_FLAG));
5324  0001 9f            	ld	a,xl
5325  0002 43            	cpl	a
5326  0003 c75256        	ld	21078,a
5327                     ; 1459   TIM2->SR2 = (uint8_t)(~(uint8_t)((uint16_t)TIM2_FLAG >> 8));
5329  0006 7b01          	ld	a,(OFST+1,sp)
5330  0008 43            	cpl	a
5331  0009 c75257        	ld	21079,a
5332                     ; 1460 }
5335  000c 85            	popw	x
5336  000d 81            	ret	
5400                     ; 1469 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
5400                     ; 1470 {
5401                     .text:	section	.text,new
5402  0000               _TIM2_GetITStatus:
5404  0000 88            	push	a
5405  0001 89            	pushw	x
5406       00000002      OFST:	set	2
5409                     ; 1471   ITStatus bitstatus = RESET;
5411                     ; 1473   uint8_t TIM2_itStatus = 0x0, TIM2_itEnable = 0x0;
5415                     ; 1476   assert_param(IS_TIM2_GET_IT(TIM2_IT));
5417                     ; 1478   TIM2_itStatus = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_IT);
5419  0002 c45256        	and	a,21078
5420  0005 6b01          	ld	(OFST-1,sp),a
5421                     ; 1480   TIM2_itEnable = (uint8_t)(TIM2->IER & (uint8_t)TIM2_IT);
5423  0007 c65255        	ld	a,21077
5424  000a 1403          	and	a,(OFST+1,sp)
5425  000c 6b02          	ld	(OFST+0,sp),a
5426                     ; 1482   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET))
5428  000e 7b01          	ld	a,(OFST-1,sp)
5429  0010 2708          	jreq	L5172
5431  0012 7b02          	ld	a,(OFST+0,sp)
5432  0014 2704          	jreq	L5172
5433                     ; 1484     bitstatus = (ITStatus)SET;
5435  0016 a601          	ld	a,#1
5437  0018 2001          	jra	L7172
5438  001a               L5172:
5439                     ; 1488     bitstatus = (ITStatus)RESET;
5441  001a 4f            	clr	a
5442  001b               L7172:
5443                     ; 1490   return ((ITStatus)bitstatus);
5447  001b 5b03          	addw	sp,#3
5448  001d 81            	ret	
5484                     ; 1499 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
5484                     ; 1500 {
5485                     .text:	section	.text,new
5486  0000               _TIM2_ClearITPendingBit:
5490                     ; 1502   assert_param(IS_TIM2_IT(TIM2_IT));
5492                     ; 1505   TIM2->SR1 = (uint8_t)(~(uint8_t)TIM2_IT);
5494  0000 43            	cpl	a
5495  0001 c75256        	ld	21078,a
5496                     ; 1506 }
5499  0004 81            	ret	
5571                     ; 1518 static void TI1_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity, \
5571                     ; 1519                        TIM2_ICSelection_TypeDef TIM2_ICSelection, \
5571                     ; 1520                        uint8_t TIM2_ICFilter)
5571                     ; 1521 {
5572                     .text:	section	.text,new
5573  0000               L3_TI1_Config:
5575  0000 89            	pushw	x
5576  0001 89            	pushw	x
5577       00000002      OFST:	set	2
5580                     ; 1522   uint8_t tmpccmr1 = 0;
5582                     ; 1523   uint8_t tmpicpolarity = (uint8_t)TIM2_ICPolarity;
5584  0002 9e            	ld	a,xh
5585  0003 6b01          	ld	(OFST-1,sp),a
5586                     ; 1524   tmpccmr1 = TIM2->CCMR1;
5588  0005 c65259        	ld	a,21081
5589  0008 6b02          	ld	(OFST+0,sp),a
5590                     ; 1527   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
5592                     ; 1528   assert_param(IS_TIM2_IC_SELECTION(TIM2_ICSelection));
5594                     ; 1529   assert_param(IS_TIM2_IC_FILTER(TIM2_ICFilter));
5596                     ; 1532   TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC1E);
5598                     ; 1535   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5600  000a a40c          	and	a,#12
5601  000c 7211525b      	bres	21083,#0
5602  0010 6b02          	ld	(OFST+0,sp),a
5603                     ; 1536   tmpccmr1 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
5605  0012 7b07          	ld	a,(OFST+5,sp)
5606  0014 97            	ld	xl,a
5607  0015 a610          	ld	a,#16
5608  0017 42            	mul	x,a
5609  0018 9f            	ld	a,xl
5610  0019 1a04          	or	a,(OFST+2,sp)
5611  001b 1a02          	or	a,(OFST+0,sp)
5612  001d 6b02          	ld	(OFST+0,sp),a
5613                     ; 1538   TIM2->CCMR1 = tmpccmr1;
5615  001f c75259        	ld	21081,a
5616                     ; 1541   if (tmpicpolarity == (uint8_t)(TIM2_ICPolarity_Falling))
5618  0022 7b01          	ld	a,(OFST-1,sp)
5619  0024 4a            	dec	a
5620  0025 2606          	jrne	L5772
5621                     ; 1543     TIM2->CCER1 |= TIM_CCER1_CC1P;
5623  0027 7212525b      	bset	21083,#1
5625  002b 2004          	jra	L7772
5626  002d               L5772:
5627                     ; 1547     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
5629  002d 7213525b      	bres	21083,#1
5630  0031               L7772:
5631                     ; 1551   TIM2->CCER1 |=  TIM_CCER1_CC1E;
5633  0031 7210525b      	bset	21083,#0
5634                     ; 1552 }
5637  0035 5b04          	addw	sp,#4
5638  0037 81            	ret	
5710                     ; 1564 static void TI2_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
5710                     ; 1565                        TIM2_ICSelection_TypeDef TIM2_ICSelection,
5710                     ; 1566                        uint8_t TIM2_ICFilter)
5710                     ; 1567 {
5711                     .text:	section	.text,new
5712  0000               L5_TI2_Config:
5714  0000 89            	pushw	x
5715  0001 89            	pushw	x
5716       00000002      OFST:	set	2
5719                     ; 1568   uint8_t tmpccmr2 = 0;
5721                     ; 1569   uint8_t tmpicpolarity = (uint8_t)TIM2_ICPolarity;
5723  0002 9e            	ld	a,xh
5724  0003 6b01          	ld	(OFST-1,sp),a
5725                     ; 1572   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
5727                     ; 1573   assert_param(IS_TIM2_IC_SELECTION(TIM2_ICSelection));
5729                     ; 1574   assert_param(IS_TIM2_IC_FILTER(TIM2_ICFilter));
5731                     ; 1576   tmpccmr2 = TIM2->CCMR2;
5733  0005 c6525a        	ld	a,21082
5734  0008 6b02          	ld	(OFST+0,sp),a
5735                     ; 1579   TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC2E);
5737                     ; 1582   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5739  000a a40c          	and	a,#12
5740  000c 7219525b      	bres	21083,#4
5741  0010 6b02          	ld	(OFST+0,sp),a
5742                     ; 1583   tmpccmr2 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
5744  0012 7b07          	ld	a,(OFST+5,sp)
5745  0014 97            	ld	xl,a
5746  0015 a610          	ld	a,#16
5747  0017 42            	mul	x,a
5748  0018 9f            	ld	a,xl
5749  0019 1a04          	or	a,(OFST+2,sp)
5750  001b 1a02          	or	a,(OFST+0,sp)
5751  001d 6b02          	ld	(OFST+0,sp),a
5752                     ; 1585   TIM2->CCMR2 = tmpccmr2;
5754  001f c7525a        	ld	21082,a
5755                     ; 1588   if (tmpicpolarity == TIM2_ICPolarity_Falling)
5757  0022 7b01          	ld	a,(OFST-1,sp)
5758  0024 4a            	dec	a
5759  0025 2606          	jrne	L7303
5760                     ; 1590     TIM2->CCER1 |= TIM_CCER1_CC2P ;
5762  0027 721a525b      	bset	21083,#5
5764  002b 2004          	jra	L1403
5765  002d               L7303:
5766                     ; 1594     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
5768  002d 721b525b      	bres	21083,#5
5769  0031               L1403:
5770                     ; 1598   TIM2->CCER1 |=  TIM_CCER1_CC2E;
5772  0031 7218525b      	bset	21083,#4
5773                     ; 1599 }
5776  0035 5b04          	addw	sp,#4
5777  0037 81            	ret	
5790                     	xdef	_TIM2_ClearITPendingBit
5791                     	xdef	_TIM2_GetITStatus
5792                     	xdef	_TIM2_ClearFlag
5793                     	xdef	_TIM2_GetFlagStatus
5794                     	xdef	_TIM2_SelectCCDMA
5795                     	xdef	_TIM2_OC2FastCmd
5796                     	xdef	_TIM2_OC1FastCmd
5797                     	xdef	_TIM2_GetPrescaler
5798                     	xdef	_TIM2_GetCounter
5799                     	xdef	_TIM2_GetCapture2
5800                     	xdef	_TIM2_GetCapture1
5801                     	xdef	_TIM2_SetIC2Prescaler
5802                     	xdef	_TIM2_SetIC1Prescaler
5803                     	xdef	_TIM2_SetCompare2
5804                     	xdef	_TIM2_SetCompare1
5805                     	xdef	_TIM2_SetAutoreload
5806                     	xdef	_TIM2_SetCounter
5807                     	xdef	_TIM2_SelectOCxM
5808                     	xdef	_TIM2_CCxCmd
5809                     	xdef	_TIM2_OC2PolarityConfig
5810                     	xdef	_TIM2_OC1PolarityConfig
5811                     	xdef	_TIM2_GenerateEvent
5812                     	xdef	_TIM2_OC2PreloadConfig
5813                     	xdef	_TIM2_OC1PreloadConfig
5814                     	xdef	_TIM2_ARRPreloadConfig
5815                     	xdef	_TIM2_ForcedOC2Config
5816                     	xdef	_TIM2_ForcedOC1Config
5817                     	xdef	_TIM2_CounterModeConfig
5818                     	xdef	_TIM2_PrescalerConfig
5819                     	xdef	_TIM2_EncoderInterfaceConfig
5820                     	xdef	_TIM2_SelectMasterSlaveMode
5821                     	xdef	_TIM2_SelectSlaveMode
5822                     	xdef	_TIM2_SelectOutputTrigger
5823                     	xdef	_TIM2_SelectOnePulseMode
5824                     	xdef	_TIM2_SelectHallSensor
5825                     	xdef	_TIM2_UpdateRequestConfig
5826                     	xdef	_TIM2_UpdateDisableConfig
5827                     	xdef	_TIM2_SelectInputTrigger
5828                     	xdef	_TIM2_TIxExternalClockConfig
5829                     	xdef	_TIM2_ETRConfig
5830                     	xdef	_TIM2_ETRClockMode2Config
5831                     	xdef	_TIM2_ETRClockMode1Config
5832                     	xdef	_TIM2_InternalClockConfig
5833                     	xdef	_TIM2_DMACmd
5834                     	xdef	_TIM2_ITConfig
5835                     	xdef	_TIM2_CtrlPWMOutputs
5836                     	xdef	_TIM2_Cmd
5837                     	xdef	_TIM2_PWMIConfig
5838                     	xdef	_TIM2_ICInit
5839                     	xdef	_TIM2_BKRConfig
5840                     	xdef	_TIM2_OC2Init
5841                     	xdef	_TIM2_OC1Init
5842                     	xdef	_TIM2_TimeBaseInit
5843                     	xdef	_TIM2_DeInit
5862                     	end
