   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  47                     ; 51 void TIM3_DeInit(void)
  47                     ; 52 {
  49                     .text:	section	.text,new
  50  0000               _TIM3_DeInit:
  54                     ; 53   TIM3->CR1 = TIM_CR1_RESET_VALUE;
  56  0000 725f5280      	clr	21120
  57                     ; 54   TIM3->CR2 = TIM_CR2_RESET_VALUE;
  59  0004 725f5281      	clr	21121
  60                     ; 55   TIM3->SMCR = TIM_SMCR_RESET_VALUE;
  62  0008 725f5282      	clr	21122
  63                     ; 56   TIM3->ETR = TIM_ETR_RESET_VALUE;
  65  000c 725f5283      	clr	21123
  66                     ; 57   TIM3->IER = TIM_IER_RESET_VALUE;
  68  0010 725f5285      	clr	21125
  69                     ; 58   TIM3->SR2 = TIM_SR2_RESET_VALUE;
  71  0014 725f5287      	clr	21127
  72                     ; 61   TIM3->CCER1 = TIM_CCER1_RESET_VALUE;
  74  0018 725f528b      	clr	21131
  75                     ; 63   TIM3->CCMR1 = 0x01;/* TIM3_ICxSource_TIxFPx */
  77  001c 35015289      	mov	21129,#1
  78                     ; 64   TIM3->CCMR2 = 0x01;/* TIM3_ICxSource_TIxFPx */
  80  0020 3501528a      	mov	21130,#1
  81                     ; 67   TIM3->CCER1 = TIM_CCER1_RESET_VALUE;
  83  0024 725f528b      	clr	21131
  84                     ; 68   TIM3->CCMR1 = TIM_CCMR1_RESET_VALUE;
  86  0028 725f5289      	clr	21129
  87                     ; 69   TIM3->CCMR2 = TIM_CCMR2_RESET_VALUE;
  89  002c 725f528a      	clr	21130
  90                     ; 71   TIM3->CNTRH = TIM_CNTRH_RESET_VALUE;
  92  0030 725f528c      	clr	21132
  93                     ; 72   TIM3->CNTRL = TIM_CNTRL_RESET_VALUE;
  95  0034 725f528d      	clr	21133
  96                     ; 74   TIM3->PSCR = TIM_PSCR_RESET_VALUE;
  98  0038 725f528e      	clr	21134
  99                     ; 76   TIM3->ARRH = TIM_ARRH_RESET_VALUE;
 101  003c 35ff528f      	mov	21135,#255
 102                     ; 77   TIM3->ARRL = TIM_ARRL_RESET_VALUE;
 104  0040 35ff5290      	mov	21136,#255
 105                     ; 79   TIM3->CCR1H = TIM_CCR1H_RESET_VALUE;
 107  0044 725f5291      	clr	21137
 108                     ; 80   TIM3->CCR1L = TIM_CCR1L_RESET_VALUE;
 110  0048 725f5292      	clr	21138
 111                     ; 81   TIM3->CCR2H = TIM_CCR2H_RESET_VALUE;
 113  004c 725f5293      	clr	21139
 114                     ; 82   TIM3->CCR2L = TIM_CCR2L_RESET_VALUE;
 116  0050 725f5294      	clr	21140
 117                     ; 85   TIM3->OISR = TIM_OISR_RESET_VALUE;
 119  0054 725f5296      	clr	21142
 120                     ; 86   TIM3->EGR = 0x01;/* TIM_EGR_UG */
 122  0058 35015288      	mov	21128,#1
 123                     ; 87   TIM3->BKR = TIM_BKR_RESET_VALUE;
 125  005c 725f5295      	clr	21141
 126                     ; 88   TIM3->SR1 = TIM_SR1_RESET_VALUE;
 128  0060 725f5286      	clr	21126
 129                     ; 89 }
 132  0064 81            	ret	
 294                     ; 99 void TIM3_TimeBaseInit(TIM3_Prescaler_TypeDef TIM3_Prescaler,
 294                     ; 100                        TIM3_CounterMode_TypeDef TIM3_CounterMode,
 294                     ; 101                        uint16_t TIM3_Period)
 294                     ; 102 {
 295                     .text:	section	.text,new
 296  0000               _TIM3_TimeBaseInit:
 298  0000 89            	pushw	x
 299       00000000      OFST:	set	0
 302                     ; 104   assert_param(IS_TIM3_PRESCALER(TIM3_Prescaler));
 304                     ; 105   assert_param(IS_TIM3_COUNTER_MODE(TIM3_CounterMode));
 306                     ; 110   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8) ;
 308  0001 7b05          	ld	a,(OFST+5,sp)
 309  0003 c7528f        	ld	21135,a
 310                     ; 111   TIM3->ARRL = (uint8_t)(TIM3_Period);
 312  0006 7b06          	ld	a,(OFST+6,sp)
 313  0008 c75290        	ld	21136,a
 314                     ; 114   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 316  000b 9e            	ld	a,xh
 317  000c c7528e        	ld	21134,a
 318                     ; 117   TIM3->CR1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS)) & ((uint8_t)(~TIM_CR1_DIR));
 320  000f c65280        	ld	a,21120
 321  0012 a48f          	and	a,#143
 322  0014 c75280        	ld	21120,a
 323                     ; 118   TIM3->CR1 |= (uint8_t)(TIM3_CounterMode);
 325  0017 9f            	ld	a,xl
 326  0018 ca5280        	or	a,21120
 327  001b c75280        	ld	21120,a
 328                     ; 121   TIM3->EGR = TIM3_EventSource_Update;
 330  001e 35015288      	mov	21128,#1
 331                     ; 122 }
 334  0022 85            	popw	x
 335  0023 81            	ret	
 533                     ; 133 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 533                     ; 134                   TIM3_OutputState_TypeDef TIM3_OutputState,
 533                     ; 135                   uint16_t TIM3_Pulse,
 533                     ; 136                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity,
 533                     ; 137                   TIM3_OCIdleState_TypeDef TIM3_OCIdleState)
 533                     ; 138 {
 534                     .text:	section	.text,new
 535  0000               _TIM3_OC1Init:
 537  0000 89            	pushw	x
 538  0001 88            	push	a
 539       00000001      OFST:	set	1
 542                     ; 139   uint8_t tmpccmr1 = 0;
 544                     ; 142   assert_param(IS_TIM3_OC_MODE(TIM3_OCMode));
 546                     ; 143   assert_param(IS_TIM3_OUTPUT_STATE(TIM3_OutputState));
 548                     ; 144   assert_param(IS_TIM3_OC_POLARITY(TIM3_OCPolarity));
 550                     ; 145   assert_param(IS_TIM3_OCIDLE_STATE(TIM3_OCIdleState));
 552                     ; 147   tmpccmr1 = TIM3->CCMR1;
 554  0002 c65289        	ld	a,21129
 555  0005 6b01          	ld	(OFST+0,sp),a
 556                     ; 150   TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
 558                     ; 152   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
 560  0007 a48f          	and	a,#143
 561  0009 7211528b      	bres	21131,#0
 562  000d 6b01          	ld	(OFST+0,sp),a
 563                     ; 155   tmpccmr1 |= (uint8_t)TIM3_OCMode;
 565  000f 9e            	ld	a,xh
 566  0010 1a01          	or	a,(OFST+0,sp)
 567  0012 6b01          	ld	(OFST+0,sp),a
 568                     ; 157   TIM3->CCMR1 = tmpccmr1;
 570  0014 c75289        	ld	21129,a
 571                     ; 160   if (TIM3_OutputState == TIM3_OutputState_Enable)
 573  0017 9f            	ld	a,xl
 574  0018 4a            	dec	a
 575  0019 2606          	jrne	L722
 576                     ; 162     TIM3->CCER1 |= TIM_CCER1_CC1E;
 578  001b 7210528b      	bset	21131,#0
 580  001f 2004          	jra	L132
 581  0021               L722:
 582                     ; 166     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
 584  0021 7211528b      	bres	21131,#0
 585  0025               L132:
 586                     ; 170   if (TIM3_OCPolarity == TIM3_OCPolarity_Low)
 588  0025 7b08          	ld	a,(OFST+7,sp)
 589  0027 4a            	dec	a
 590  0028 2606          	jrne	L332
 591                     ; 172     TIM3->CCER1 |= TIM_CCER1_CC1P;
 593  002a 7212528b      	bset	21131,#1
 595  002e 2004          	jra	L532
 596  0030               L332:
 597                     ; 176     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
 599  0030 7213528b      	bres	21131,#1
 600  0034               L532:
 601                     ; 180   if (TIM3_OCIdleState == TIM3_OCIdleState_Set)
 603  0034 7b09          	ld	a,(OFST+8,sp)
 604  0036 4a            	dec	a
 605  0037 2606          	jrne	L732
 606                     ; 182     TIM3->OISR |= TIM_OISR_OIS1;
 608  0039 72105296      	bset	21142,#0
 610  003d 2004          	jra	L142
 611  003f               L732:
 612                     ; 186     TIM3->OISR &= (uint8_t)(~TIM_OISR_OIS1);
 614  003f 72115296      	bres	21142,#0
 615  0043               L142:
 616                     ; 190   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 618  0043 7b06          	ld	a,(OFST+5,sp)
 619  0045 c75291        	ld	21137,a
 620                     ; 191   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 622  0048 7b07          	ld	a,(OFST+6,sp)
 623  004a c75292        	ld	21138,a
 624                     ; 192 }
 627  004d 5b03          	addw	sp,#3
 628  004f 81            	ret	
 711                     ; 203 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 711                     ; 204                   TIM3_OutputState_TypeDef TIM3_OutputState,
 711                     ; 205                   uint16_t TIM3_Pulse,
 711                     ; 206                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity,
 711                     ; 207                   TIM3_OCIdleState_TypeDef TIM3_OCIdleState)
 711                     ; 208 {
 712                     .text:	section	.text,new
 713  0000               _TIM3_OC2Init:
 715  0000 89            	pushw	x
 716  0001 88            	push	a
 717       00000001      OFST:	set	1
 720                     ; 209   uint8_t tmpccmr2 = 0;
 722                     ; 212   assert_param(IS_TIM3_OC_MODE(TIM3_OCMode));
 724                     ; 213   assert_param(IS_TIM3_OUTPUT_STATE(TIM3_OutputState));
 726                     ; 214   assert_param(IS_TIM3_OC_POLARITY(TIM3_OCPolarity));
 728                     ; 215   assert_param(IS_TIM3_OCIDLE_STATE(TIM3_OCIdleState));
 730                     ; 217   tmpccmr2 = TIM3->CCMR2;
 732  0002 c6528a        	ld	a,21130
 733  0005 6b01          	ld	(OFST+0,sp),a
 734                     ; 220   TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
 736                     ; 223   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
 738  0007 a48f          	and	a,#143
 739  0009 7219528b      	bres	21131,#4
 740  000d 6b01          	ld	(OFST+0,sp),a
 741                     ; 226   tmpccmr2 |= (uint8_t)TIM3_OCMode;
 743  000f 9e            	ld	a,xh
 744  0010 1a01          	or	a,(OFST+0,sp)
 745  0012 6b01          	ld	(OFST+0,sp),a
 746                     ; 228   TIM3->CCMR2 = tmpccmr2;
 748  0014 c7528a        	ld	21130,a
 749                     ; 231   if (TIM3_OutputState == TIM3_OutputState_Enable)
 751  0017 9f            	ld	a,xl
 752  0018 4a            	dec	a
 753  0019 2606          	jrne	L503
 754                     ; 233     TIM3->CCER1 |= TIM_CCER1_CC2E;
 756  001b 7218528b      	bset	21131,#4
 758  001f 2004          	jra	L703
 759  0021               L503:
 760                     ; 237     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
 762  0021 7219528b      	bres	21131,#4
 763  0025               L703:
 764                     ; 241   if (TIM3_OCPolarity == TIM3_OCPolarity_Low)
 766  0025 7b08          	ld	a,(OFST+7,sp)
 767  0027 4a            	dec	a
 768  0028 2606          	jrne	L113
 769                     ; 243     TIM3->CCER1 |= TIM_CCER1_CC2P;
 771  002a 721a528b      	bset	21131,#5
 773  002e 2004          	jra	L313
 774  0030               L113:
 775                     ; 247     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P);
 777  0030 721b528b      	bres	21131,#5
 778  0034               L313:
 779                     ; 252   if (TIM3_OCIdleState == TIM3_OCIdleState_Set)
 781  0034 7b09          	ld	a,(OFST+8,sp)
 782  0036 4a            	dec	a
 783  0037 2606          	jrne	L513
 784                     ; 254     TIM3->OISR |= TIM_OISR_OIS2;
 786  0039 72145296      	bset	21142,#2
 788  003d 2004          	jra	L713
 789  003f               L513:
 790                     ; 258     TIM3->OISR &= (uint8_t)(~TIM_OISR_OIS2);
 792  003f 72155296      	bres	21142,#2
 793  0043               L713:
 794                     ; 262   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 796  0043 7b06          	ld	a,(OFST+5,sp)
 797  0045 c75293        	ld	21139,a
 798                     ; 263   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 800  0048 7b07          	ld	a,(OFST+6,sp)
 801  004a c75294        	ld	21140,a
 802                     ; 264 }
 805  004d 5b03          	addw	sp,#3
 806  004f 81            	ret	
1004                     ; 281 void TIM3_BKRConfig(TIM3_OSSIState_TypeDef TIM3_OSSIState,
1004                     ; 282                     TIM3_LockLevel_TypeDef TIM3_LockLevel,
1004                     ; 283                     TIM3_BreakState_TypeDef TIM3_BreakState,
1004                     ; 284                     TIM3_BreakPolarity_TypeDef TIM3_BreakPolarity,
1004                     ; 285                     TIM3_AutomaticOutput_TypeDef TIM3_AutomaticOutput)
1004                     ; 286 {
1005                     .text:	section	.text,new
1006  0000               _TIM3_BKRConfig:
1008  0000 89            	pushw	x
1009  0001 88            	push	a
1010       00000001      OFST:	set	1
1013                     ; 288   assert_param(IS_TIM3_OSSI_STATE(TIM3_OSSIState));
1015                     ; 289   assert_param(IS_TIM3_LOCK_LEVEL(TIM3_LockLevel));
1017                     ; 290   assert_param(IS_TIM3_BREAK_STATE(TIM3_BreakState));
1019                     ; 291   assert_param(IS_TIM3_BREAK_POLARITY(TIM3_BreakPolarity));
1021                     ; 292   assert_param(IS_TIM3_AUTOMATIC_OUTPUT_STATE(TIM3_AutomaticOutput));
1023                     ; 299   TIM3->BKR = (uint8_t)((uint8_t)((uint8_t)((uint8_t)((uint8_t)TIM3_OSSIState | (uint8_t)TIM3_LockLevel) | \
1023                     ; 300                                   (uint8_t)((uint8_t)TIM3_BreakState | (uint8_t)TIM3_BreakPolarity)) | \
1023                     ; 301                                   TIM3_AutomaticOutput));
1025  0002 7b06          	ld	a,(OFST+5,sp)
1026  0004 1a07          	or	a,(OFST+6,sp)
1027  0006 6b01          	ld	(OFST+0,sp),a
1028  0008 9f            	ld	a,xl
1029  0009 1a02          	or	a,(OFST+1,sp)
1030  000b 1a01          	or	a,(OFST+0,sp)
1031  000d 1a08          	or	a,(OFST+7,sp)
1032  000f c75295        	ld	21141,a
1033                     ; 302 }
1036  0012 5b03          	addw	sp,#3
1037  0014 81            	ret	
1221                     ; 313 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
1221                     ; 314                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1221                     ; 315                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
1221                     ; 316                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1221                     ; 317                  uint8_t TIM3_ICFilter)
1221                     ; 318 {
1222                     .text:	section	.text,new
1223  0000               _TIM3_ICInit:
1225  0000 89            	pushw	x
1226       00000000      OFST:	set	0
1229                     ; 320   assert_param(IS_TIM3_CHANNEL(TIM3_Channel));
1231                     ; 322   if (TIM3_Channel == TIM3_Channel_1)
1233  0001 9e            	ld	a,xh
1234  0002 4d            	tnz	a
1235  0003 2614          	jrne	L735
1236                     ; 325     TI1_Config(TIM3_ICPolarity, TIM3_ICSelection, TIM3_ICFilter);
1238  0005 7b07          	ld	a,(OFST+7,sp)
1239  0007 88            	push	a
1240  0008 7b06          	ld	a,(OFST+6,sp)
1241  000a 97            	ld	xl,a
1242  000b 7b03          	ld	a,(OFST+3,sp)
1243  000d 95            	ld	xh,a
1244  000e cd0000        	call	L3_TI1_Config
1246  0011 84            	pop	a
1247                     ; 328     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1249  0012 7b06          	ld	a,(OFST+6,sp)
1250  0014 cd0000        	call	_TIM3_SetIC1Prescaler
1253  0017 2012          	jra	L145
1254  0019               L735:
1255                     ; 333     TI2_Config(TIM3_ICPolarity, TIM3_ICSelection, TIM3_ICFilter);
1257  0019 7b07          	ld	a,(OFST+7,sp)
1258  001b 88            	push	a
1259  001c 7b06          	ld	a,(OFST+6,sp)
1260  001e 97            	ld	xl,a
1261  001f 7b03          	ld	a,(OFST+3,sp)
1262  0021 95            	ld	xh,a
1263  0022 cd0000        	call	L5_TI2_Config
1265  0025 84            	pop	a
1266                     ; 335     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1268  0026 7b06          	ld	a,(OFST+6,sp)
1269  0028 cd0000        	call	_TIM3_SetIC2Prescaler
1271  002b               L145:
1272                     ; 337 }
1275  002b 85            	popw	x
1276  002c 81            	ret	
1372                     ; 349 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1372                     ; 350                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1372                     ; 351                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1372                     ; 352                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1372                     ; 353                      uint8_t TIM3_ICFilter)
1372                     ; 354 {
1373                     .text:	section	.text,new
1374  0000               _TIM3_PWMIConfig:
1376  0000 89            	pushw	x
1377  0001 89            	pushw	x
1378       00000002      OFST:	set	2
1381                     ; 355   uint8_t icpolarity = TIM3_ICPolarity_Rising;
1383                     ; 356   uint8_t icselection = TIM3_ICSelection_DirectTI;
1385                     ; 359   assert_param(IS_TIM3_CHANNEL(TIM3_Channel));
1387                     ; 362   if (TIM3_ICPolarity == TIM3_ICPolarity_Rising)
1389  0002 9f            	ld	a,xl
1390  0003 4d            	tnz	a
1391  0004 2605          	jrne	L116
1392                     ; 364     icpolarity = TIM3_ICPolarity_Falling;
1394  0006 4c            	inc	a
1395  0007 6b01          	ld	(OFST-1,sp),a
1397  0009 2002          	jra	L316
1398  000b               L116:
1399                     ; 368     icpolarity = TIM3_ICPolarity_Rising;
1401  000b 0f01          	clr	(OFST-1,sp)
1402  000d               L316:
1403                     ; 372   if (TIM3_ICSelection == TIM3_ICSelection_DirectTI)
1405  000d 7b07          	ld	a,(OFST+5,sp)
1406  000f 4a            	dec	a
1407  0010 2604          	jrne	L516
1408                     ; 374     icselection = TIM3_ICSelection_IndirectTI;
1410  0012 a602          	ld	a,#2
1412  0014 2002          	jra	L716
1413  0016               L516:
1414                     ; 378     icselection = TIM3_ICSelection_DirectTI;
1416  0016 a601          	ld	a,#1
1417  0018               L716:
1418  0018 6b02          	ld	(OFST+0,sp),a
1419                     ; 381   if (TIM3_Channel == TIM3_Channel_1)
1421  001a 7b03          	ld	a,(OFST+1,sp)
1422  001c 2626          	jrne	L126
1423                     ; 384     TI1_Config(TIM3_ICPolarity, TIM3_ICSelection, TIM3_ICFilter);
1425  001e 7b09          	ld	a,(OFST+7,sp)
1426  0020 88            	push	a
1427  0021 7b08          	ld	a,(OFST+6,sp)
1428  0023 97            	ld	xl,a
1429  0024 7b05          	ld	a,(OFST+3,sp)
1430  0026 95            	ld	xh,a
1431  0027 cd0000        	call	L3_TI1_Config
1433  002a 84            	pop	a
1434                     ; 387     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1436  002b 7b08          	ld	a,(OFST+6,sp)
1437  002d cd0000        	call	_TIM3_SetIC1Prescaler
1439                     ; 390     TI2_Config((TIM3_ICPolarity_TypeDef)icpolarity, (TIM3_ICSelection_TypeDef)icselection, TIM3_ICFilter);
1441  0030 7b09          	ld	a,(OFST+7,sp)
1442  0032 88            	push	a
1443  0033 7b03          	ld	a,(OFST+1,sp)
1444  0035 97            	ld	xl,a
1445  0036 7b02          	ld	a,(OFST+0,sp)
1446  0038 95            	ld	xh,a
1447  0039 cd0000        	call	L5_TI2_Config
1449  003c 84            	pop	a
1450                     ; 393     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1452  003d 7b08          	ld	a,(OFST+6,sp)
1453  003f cd0000        	call	_TIM3_SetIC2Prescaler
1456  0042 2024          	jra	L326
1457  0044               L126:
1458                     ; 398     TI2_Config(TIM3_ICPolarity, TIM3_ICSelection, TIM3_ICFilter);
1460  0044 7b09          	ld	a,(OFST+7,sp)
1461  0046 88            	push	a
1462  0047 7b08          	ld	a,(OFST+6,sp)
1463  0049 97            	ld	xl,a
1464  004a 7b05          	ld	a,(OFST+3,sp)
1465  004c 95            	ld	xh,a
1466  004d cd0000        	call	L5_TI2_Config
1468  0050 84            	pop	a
1469                     ; 401     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1471  0051 7b08          	ld	a,(OFST+6,sp)
1472  0053 cd0000        	call	_TIM3_SetIC2Prescaler
1474                     ; 404     TI1_Config((TIM3_ICPolarity_TypeDef)icpolarity, (TIM3_ICSelection_TypeDef)icselection, TIM3_ICFilter);
1476  0056 7b09          	ld	a,(OFST+7,sp)
1477  0058 88            	push	a
1478  0059 7b03          	ld	a,(OFST+1,sp)
1479  005b 97            	ld	xl,a
1480  005c 7b02          	ld	a,(OFST+0,sp)
1481  005e 95            	ld	xh,a
1482  005f cd0000        	call	L3_TI1_Config
1484  0062 84            	pop	a
1485                     ; 407     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1487  0063 7b08          	ld	a,(OFST+6,sp)
1488  0065 cd0000        	call	_TIM3_SetIC1Prescaler
1490  0068               L326:
1491                     ; 409 }
1494  0068 5b04          	addw	sp,#4
1495  006a 81            	ret	
1550                     ; 417 void TIM3_Cmd(FunctionalState NewState)
1550                     ; 418 {
1551                     .text:	section	.text,new
1552  0000               _TIM3_Cmd:
1556                     ; 420   assert_param(IS_FUNCTIONAL_STATE(NewState));
1558                     ; 423   if (NewState != DISABLE)
1560  0000 4d            	tnz	a
1561  0001 2705          	jreq	L356
1562                     ; 425     TIM3->CR1 |= TIM_CR1_CEN;
1564  0003 72105280      	bset	21120,#0
1567  0007 81            	ret	
1568  0008               L356:
1569                     ; 429     TIM3->CR1 &= (uint8_t)(~TIM_CR1_CEN);
1571  0008 72115280      	bres	21120,#0
1572                     ; 431 }
1575  000c 81            	ret	
1611                     ; 439 void TIM3_CtrlPWMOutputs(FunctionalState NewState)
1611                     ; 440 {
1612                     .text:	section	.text,new
1613  0000               _TIM3_CtrlPWMOutputs:
1617                     ; 442   assert_param(IS_FUNCTIONAL_STATE(NewState));
1619                     ; 446   if (NewState != DISABLE)
1621  0000 4d            	tnz	a
1622  0001 2705          	jreq	L576
1623                     ; 448     TIM3->BKR |= TIM_BKR_MOE ;
1625  0003 721e5295      	bset	21141,#7
1628  0007 81            	ret	
1629  0008               L576:
1630                     ; 452     TIM3->BKR &= (uint8_t)(~TIM_BKR_MOE) ;
1632  0008 721f5295      	bres	21141,#7
1633                     ; 454 }
1636  000c 81            	ret	
1722                     ; 463 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1722                     ; 464 {
1723                     .text:	section	.text,new
1724  0000               _TIM3_ITConfig:
1726  0000 89            	pushw	x
1727       00000000      OFST:	set	0
1730                     ; 466   assert_param(IS_TIM3_IT(TIM3_IT));
1732                     ; 467   assert_param(IS_FUNCTIONAL_STATE(NewState));
1734                     ; 469   if (NewState != DISABLE)
1736  0001 9f            	ld	a,xl
1737  0002 4d            	tnz	a
1738  0003 2706          	jreq	L147
1739                     ; 472     TIM3->IER |= (uint8_t)TIM3_IT;
1741  0005 9e            	ld	a,xh
1742  0006 ca5285        	or	a,21125
1744  0009 2006          	jra	L347
1745  000b               L147:
1746                     ; 477     TIM3->IER &= (uint8_t)(~(uint8_t)TIM3_IT);
1748  000b 7b01          	ld	a,(OFST+1,sp)
1749  000d 43            	cpl	a
1750  000e c45285        	and	a,21125
1751  0011               L347:
1752  0011 c75285        	ld	21125,a
1753                     ; 479 }
1756  0014 85            	popw	x
1757  0015 81            	ret	
1830                     ; 488 void TIM3_DMACmd(TIM3_DMASource_TypeDef TIM3_DMASource, FunctionalState NewState)
1830                     ; 489 {
1831                     .text:	section	.text,new
1832  0000               _TIM3_DMACmd:
1834  0000 89            	pushw	x
1835       00000000      OFST:	set	0
1838                     ; 491   assert_param(IS_FUNCTIONAL_STATE(NewState));
1840                     ; 492   assert_param(IS_TIM3_DMA_SOURCE(TIM3_DMASource));
1842                     ; 494   if (NewState != DISABLE)
1844  0001 9f            	ld	a,xl
1845  0002 4d            	tnz	a
1846  0003 2706          	jreq	L1001
1847                     ; 497     TIM3->DER |= TIM3_DMASource;
1849  0005 9e            	ld	a,xh
1850  0006 ca5284        	or	a,21124
1852  0009 2006          	jra	L3001
1853  000b               L1001:
1854                     ; 502     TIM3->DER &= (uint8_t)~TIM3_DMASource;
1856  000b 7b01          	ld	a,(OFST+1,sp)
1857  000d 43            	cpl	a
1858  000e c45284        	and	a,21124
1859  0011               L3001:
1860  0011 c75284        	ld	21124,a
1861                     ; 504 }
1864  0014 85            	popw	x
1865  0015 81            	ret	
1889                     ; 511 void TIM3_InternalClockConfig(void)
1889                     ; 512 {
1890                     .text:	section	.text,new
1891  0000               _TIM3_InternalClockConfig:
1895                     ; 514   TIM3->SMCR &=  (uint8_t)(~TIM_SMCR_SMS);
1897  0000 c65282        	ld	a,21122
1898  0003 a4f8          	and	a,#248
1899  0005 c75282        	ld	21122,a
1900                     ; 515 }
1903  0008 81            	ret	
2020                     ; 527 void TIM3_ETRClockMode1Config(TIM3_ExtTRGPSC_TypeDef TIM3_ExtTRGPrescaler,
2020                     ; 528                               TIM3_ExtTRGPolarity_TypeDef TIM3_ExtTRGPolarity,
2020                     ; 529                               uint8_t ExtTRGFilter)
2020                     ; 530 {
2021                     .text:	section	.text,new
2022  0000               _TIM3_ETRClockMode1Config:
2024  0000 89            	pushw	x
2025       00000000      OFST:	set	0
2028                     ; 532   TIM3_ETRConfig(TIM3_ExtTRGPrescaler, TIM3_ExtTRGPolarity, ExtTRGFilter);
2030  0001 7b05          	ld	a,(OFST+5,sp)
2031  0003 88            	push	a
2032  0004 7b02          	ld	a,(OFST+2,sp)
2033  0006 95            	ld	xh,a
2034  0007 cd0000        	call	_TIM3_ETRConfig
2036  000a 84            	pop	a
2037                     ; 535   TIM3->SMCR &= (uint8_t)(~TIM_SMCR_SMS);
2039  000b c65282        	ld	a,21122
2040  000e a4f8          	and	a,#248
2041  0010 c75282        	ld	21122,a
2042                     ; 536   TIM3->SMCR |= (uint8_t)(TIM3_SlaveMode_External1);
2044  0013 c65282        	ld	a,21122
2045  0016 aa07          	or	a,#7
2046  0018 c75282        	ld	21122,a
2047                     ; 539   TIM3->SMCR &= (uint8_t)(~TIM_SMCR_TS);
2049  001b c65282        	ld	a,21122
2050  001e a48f          	and	a,#143
2051  0020 c75282        	ld	21122,a
2052                     ; 540   TIM3->SMCR |= (uint8_t)((TIM3_TRGSelection_TypeDef)TIM3_TRGSelection_ETRF);
2054  0023 c65282        	ld	a,21122
2055  0026 aa70          	or	a,#112
2056  0028 c75282        	ld	21122,a
2057                     ; 541 }
2060  002b 85            	popw	x
2061  002c 81            	ret	
2119                     ; 553 void TIM3_ETRClockMode2Config(TIM3_ExtTRGPSC_TypeDef TIM3_ExtTRGPrescaler,
2119                     ; 554                               TIM3_ExtTRGPolarity_TypeDef TIM3_ExtTRGPolarity,
2119                     ; 555                               uint8_t ExtTRGFilter)
2119                     ; 556 {
2120                     .text:	section	.text,new
2121  0000               _TIM3_ETRClockMode2Config:
2123  0000 89            	pushw	x
2124       00000000      OFST:	set	0
2127                     ; 558   TIM3_ETRConfig(TIM3_ExtTRGPrescaler, TIM3_ExtTRGPolarity, ExtTRGFilter);
2129  0001 7b05          	ld	a,(OFST+5,sp)
2130  0003 88            	push	a
2131  0004 7b02          	ld	a,(OFST+2,sp)
2132  0006 95            	ld	xh,a
2133  0007 cd0000        	call	_TIM3_ETRConfig
2135  000a 721c5283      	bset	21123,#6
2136  000e 84            	pop	a
2137                     ; 561   TIM3->ETR |= TIM_ETR_ECE ;
2139                     ; 562 }
2142  000f 85            	popw	x
2143  0010 81            	ret	
2199                     ; 574 void TIM3_ETRConfig(TIM3_ExtTRGPSC_TypeDef TIM3_ExtTRGPrescaler,
2199                     ; 575                     TIM3_ExtTRGPolarity_TypeDef TIM3_ExtTRGPolarity,
2199                     ; 576                     uint8_t ExtTRGFilter)
2199                     ; 577 {
2200                     .text:	section	.text,new
2201  0000               _TIM3_ETRConfig:
2203  0000 89            	pushw	x
2204       00000000      OFST:	set	0
2207                     ; 579   assert_param(IS_TIM3_EXT_PRESCALER(TIM3_ExtTRGPrescaler));
2209                     ; 580   assert_param(IS_TIM3_EXT_POLARITY(TIM3_ExtTRGPolarity));
2211                     ; 581   assert_param(IS_TIM3_EXT_FILTER(ExtTRGFilter));
2213                     ; 584   TIM3->ETR |= (uint8_t)((uint8_t)((uint8_t)TIM3_ExtTRGPrescaler | (uint8_t)TIM3_ExtTRGPolarity)
2213                     ; 585                          | (uint8_t)ExtTRGFilter);
2215  0001 9f            	ld	a,xl
2216  0002 1a01          	or	a,(OFST+1,sp)
2217  0004 1a05          	or	a,(OFST+5,sp)
2218  0006 ca5283        	or	a,21123
2219  0009 c75283        	ld	21123,a
2220                     ; 586 }
2223  000c 85            	popw	x
2224  000d 81            	ret	
2313                     ; 598 void TIM3_TIxExternalClockConfig(TIM3_TIxExternalCLK1Source_TypeDef TIM3_TIxExternalCLKSource,
2313                     ; 599                                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
2313                     ; 600                                  uint8_t ICFilter)
2313                     ; 601 {
2314                     .text:	section	.text,new
2315  0000               _TIM3_TIxExternalClockConfig:
2317  0000 89            	pushw	x
2318       00000000      OFST:	set	0
2321                     ; 603   assert_param(IS_TIM3_TIXCLK_SOURCE(TIM3_TIxExternalCLKSource));
2323                     ; 604   assert_param(IS_TIM3_IC_POLARITY(TIM3_ICPolarity));
2325                     ; 605   assert_param(IS_TIM3_IC_FILTER(ICFilter));
2327                     ; 608   if (TIM3_TIxExternalCLKSource == TIM3_TIxExternalCLK1Source_TI2)
2329  0001 9e            	ld	a,xh
2330  0002 a160          	cp	a,#96
2331  0004 260e          	jrne	L3021
2332                     ; 610     TI2_Config(TIM3_ICPolarity, TIM3_ICSelection_DirectTI, ICFilter);
2334  0006 7b05          	ld	a,(OFST+5,sp)
2335  0008 88            	push	a
2336  0009 ae0001        	ldw	x,#1
2337  000c 7b03          	ld	a,(OFST+3,sp)
2338  000e 95            	ld	xh,a
2339  000f cd0000        	call	L5_TI2_Config
2342  0012 200c          	jra	L5021
2343  0014               L3021:
2344                     ; 614     TI1_Config(TIM3_ICPolarity, TIM3_ICSelection_DirectTI, ICFilter);
2346  0014 7b05          	ld	a,(OFST+5,sp)
2347  0016 88            	push	a
2348  0017 ae0001        	ldw	x,#1
2349  001a 7b03          	ld	a,(OFST+3,sp)
2350  001c 95            	ld	xh,a
2351  001d cd0000        	call	L3_TI1_Config
2353  0020               L5021:
2354  0020 84            	pop	a
2355                     ; 618   TIM3_SelectInputTrigger((TIM3_TRGSelection_TypeDef)TIM3_TIxExternalCLKSource);
2357  0021 7b01          	ld	a,(OFST+1,sp)
2358  0023 cd0000        	call	_TIM3_SelectInputTrigger
2360                     ; 621   TIM3->SMCR |= (uint8_t)(TIM3_SlaveMode_External1);
2362  0026 c65282        	ld	a,21122
2363  0029 aa07          	or	a,#7
2364  002b c75282        	ld	21122,a
2365                     ; 622 }
2368  002e 85            	popw	x
2369  002f 81            	ret	
2485                     ; 630 void TIM3_SelectInputTrigger(TIM3_TRGSelection_TypeDef TIM3_InputTriggerSource)
2485                     ; 631 {
2486                     .text:	section	.text,new
2487  0000               _TIM3_SelectInputTrigger:
2489  0000 88            	push	a
2490  0001 88            	push	a
2491       00000001      OFST:	set	1
2494                     ; 632   uint8_t tmpsmcr = 0;
2496                     ; 635   assert_param(IS_TIM3_TRIGGER_SELECTION(TIM3_InputTriggerSource));
2498                     ; 637   tmpsmcr = TIM3->SMCR;
2500  0002 c65282        	ld	a,21122
2501                     ; 640   tmpsmcr &= (uint8_t)(~TIM_SMCR_TS);
2503  0005 a48f          	and	a,#143
2504                     ; 641   tmpsmcr |= (uint8_t)TIM3_InputTriggerSource;
2506  0007 1a02          	or	a,(OFST+1,sp)
2507                     ; 643   TIM3->SMCR = (uint8_t)tmpsmcr;
2509  0009 c75282        	ld	21122,a
2510                     ; 644 }
2513  000c 85            	popw	x
2514  000d 81            	ret	
2550                     ; 653 void TIM3_UpdateDisableConfig(FunctionalState NewState)
2550                     ; 654 {
2551                     .text:	section	.text,new
2552  0000               _TIM3_UpdateDisableConfig:
2556                     ; 656   assert_param(IS_FUNCTIONAL_STATE(NewState));
2558                     ; 659   if (NewState != DISABLE)
2560  0000 4d            	tnz	a
2561  0001 2705          	jreq	L3721
2562                     ; 661     TIM3->CR1 |= TIM_CR1_UDIS;
2564  0003 72125280      	bset	21120,#1
2567  0007 81            	ret	
2568  0008               L3721:
2569                     ; 665     TIM3->CR1 &= (uint8_t)(~TIM_CR1_UDIS);
2571  0008 72135280      	bres	21120,#1
2572                     ; 667 }
2575  000c 81            	ret	
2633                     ; 675 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
2633                     ; 676 {
2634                     .text:	section	.text,new
2635  0000               _TIM3_UpdateRequestConfig:
2639                     ; 678   assert_param(IS_TIM3_UPDATE_SOURCE(TIM3_UpdateSource));
2641                     ; 681   if (TIM3_UpdateSource == TIM3_UpdateSource_Regular)
2643  0000 4a            	dec	a
2644  0001 2605          	jrne	L5231
2645                     ; 683     TIM3->CR1 |= TIM_CR1_URS ;
2647  0003 72145280      	bset	21120,#2
2650  0007 81            	ret	
2651  0008               L5231:
2652                     ; 687     TIM3->CR1 &= (uint8_t)(~TIM_CR1_URS);
2654  0008 72155280      	bres	21120,#2
2655                     ; 689 }
2658  000c 81            	ret	
2694                     ; 697 void TIM3_SelectHallSensor(FunctionalState NewState)
2694                     ; 698 {
2695                     .text:	section	.text,new
2696  0000               _TIM3_SelectHallSensor:
2700                     ; 700   assert_param(IS_FUNCTIONAL_STATE(NewState));
2702                     ; 703   if (NewState != DISABLE)
2704  0000 4d            	tnz	a
2705  0001 2705          	jreq	L7431
2706                     ; 705     TIM3->CR2 |= TIM_CR2_TI1S;
2708  0003 721e5281      	bset	21121,#7
2711  0007 81            	ret	
2712  0008               L7431:
2713                     ; 709     TIM3->CR2 &= (uint8_t)(~TIM_CR2_TI1S);
2715  0008 721f5281      	bres	21121,#7
2716                     ; 711 }
2719  000c 81            	ret	
2776                     ; 719 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
2776                     ; 720 {
2777                     .text:	section	.text,new
2778  0000               _TIM3_SelectOnePulseMode:
2782                     ; 722   assert_param(IS_TIM3_OPM_MODE(TIM3_OPMode));
2784                     ; 725   if (TIM3_OPMode == TIM3_OPMode_Single)
2786  0000 4a            	dec	a
2787  0001 2605          	jrne	L1041
2788                     ; 727     TIM3->CR1 |= TIM_CR1_OPM ;
2790  0003 72165280      	bset	21120,#3
2793  0007 81            	ret	
2794  0008               L1041:
2795                     ; 731     TIM3->CR1 &= (uint8_t)(~TIM_CR1_OPM);
2797  0008 72175280      	bres	21120,#3
2798                     ; 733 }
2801  000c 81            	ret	
2900                     ; 741 void TIM3_SelectOutputTrigger(TIM3_TRGOSource_TypeDef TIM3_TRGOSource)
2900                     ; 742 {
2901                     .text:	section	.text,new
2902  0000               _TIM3_SelectOutputTrigger:
2904  0000 88            	push	a
2905  0001 88            	push	a
2906       00000001      OFST:	set	1
2909                     ; 743   uint8_t tmpcr2 = 0;
2911                     ; 746   assert_param(IS_TIM3_TRGO_SOURCE(TIM3_TRGOSource));
2913                     ; 748   tmpcr2 = TIM3->CR2;
2915  0002 c65281        	ld	a,21121
2916                     ; 751   tmpcr2 &= (uint8_t)(~TIM_CR2_MMS);
2918  0005 a48f          	and	a,#143
2919                     ; 754   tmpcr2 |=  (uint8_t)TIM3_TRGOSource;
2921  0007 1a02          	or	a,(OFST+1,sp)
2922                     ; 756   TIM3->CR2 = tmpcr2;
2924  0009 c75281        	ld	21121,a
2925                     ; 757 }
2928  000c 85            	popw	x
2929  000d 81            	ret	
3012                     ; 765 void TIM3_SelectSlaveMode(TIM3_SlaveMode_TypeDef TIM3_SlaveMode)
3012                     ; 766 {
3013                     .text:	section	.text,new
3014  0000               _TIM3_SelectSlaveMode:
3016  0000 88            	push	a
3017  0001 88            	push	a
3018       00000001      OFST:	set	1
3021                     ; 767   uint8_t tmpsmcr = 0;
3023                     ; 770   assert_param(IS_TIM3_SLAVE_MODE(TIM3_SlaveMode));
3025                     ; 772   tmpsmcr = TIM3->SMCR;
3027  0002 c65282        	ld	a,21122
3028                     ; 775   tmpsmcr &= (uint8_t)(~TIM_SMCR_SMS);
3030  0005 a4f8          	and	a,#248
3031                     ; 778   tmpsmcr |= (uint8_t)TIM3_SlaveMode;
3033  0007 1a02          	or	a,(OFST+1,sp)
3034                     ; 780   TIM3->SMCR = tmpsmcr;
3036  0009 c75282        	ld	21122,a
3037                     ; 781 }
3040  000c 85            	popw	x
3041  000d 81            	ret	
3077                     ; 789 void TIM3_SelectMasterSlaveMode(FunctionalState NewState)
3077                     ; 790 {
3078                     .text:	section	.text,new
3079  0000               _TIM3_SelectMasterSlaveMode:
3083                     ; 792   assert_param(IS_FUNCTIONAL_STATE(NewState));
3085                     ; 795   if (NewState != DISABLE)
3087  0000 4d            	tnz	a
3088  0001 2705          	jreq	L3251
3089                     ; 797     TIM3->SMCR |= TIM_SMCR_MSM;
3091  0003 721e5282      	bset	21122,#7
3094  0007 81            	ret	
3095  0008               L3251:
3096                     ; 801     TIM3->SMCR &= (uint8_t)(~TIM_SMCR_MSM);
3098  0008 721f5282      	bres	21122,#7
3099                     ; 803 }
3102  000c 81            	ret	
3215                     ; 815 void TIM3_EncoderInterfaceConfig(TIM3_EncoderMode_TypeDef TIM3_EncoderMode,
3215                     ; 816                                  TIM3_ICPolarity_TypeDef TIM3_IC1Polarity,
3215                     ; 817                                  TIM3_ICPolarity_TypeDef TIM3_IC2Polarity)
3215                     ; 818 {
3216                     .text:	section	.text,new
3217  0000               _TIM3_EncoderInterfaceConfig:
3219  0000 89            	pushw	x
3220  0001 5203          	subw	sp,#3
3221       00000003      OFST:	set	3
3224                     ; 819   uint8_t tmpsmcr = 0;
3226                     ; 820   uint8_t tmpccmr1 = 0;
3228                     ; 821   uint8_t tmpccmr2 = 0;
3230                     ; 824   assert_param(IS_TIM3_ENCODER_MODE(TIM3_EncoderMode));
3232                     ; 825   assert_param(IS_TIM3_IC_POLARITY(TIM3_IC1Polarity));
3234                     ; 826   assert_param(IS_TIM3_IC_POLARITY(TIM3_IC2Polarity));
3236                     ; 828   tmpsmcr = TIM3->SMCR;
3238  0003 c65282        	ld	a,21122
3239  0006 6b01          	ld	(OFST-2,sp),a
3240                     ; 829   tmpccmr1 = TIM3->CCMR1;
3242  0008 c65289        	ld	a,21129
3243  000b 6b02          	ld	(OFST-1,sp),a
3244                     ; 830   tmpccmr2 = TIM3->CCMR2;
3246  000d c6528a        	ld	a,21130
3247  0010 6b03          	ld	(OFST+0,sp),a
3248                     ; 833   tmpsmcr &= (uint8_t)(TIM_SMCR_MSM | TIM_SMCR_TS)  ;
3250  0012 7b01          	ld	a,(OFST-2,sp)
3251  0014 a4f0          	and	a,#240
3252  0016 6b01          	ld	(OFST-2,sp),a
3253                     ; 834   tmpsmcr |= (uint8_t)TIM3_EncoderMode;
3255  0018 9e            	ld	a,xh
3256  0019 1a01          	or	a,(OFST-2,sp)
3257  001b 6b01          	ld	(OFST-2,sp),a
3258                     ; 837   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS);
3260  001d 7b02          	ld	a,(OFST-1,sp)
3261  001f a4fc          	and	a,#252
3262  0021 6b02          	ld	(OFST-1,sp),a
3263                     ; 838   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS);
3265  0023 7b03          	ld	a,(OFST+0,sp)
3266  0025 a4fc          	and	a,#252
3267  0027 6b03          	ld	(OFST+0,sp),a
3268                     ; 839   tmpccmr1 |= TIM_CCMR_TIxDirect_Set;
3270  0029 7b02          	ld	a,(OFST-1,sp)
3271  002b aa01          	or	a,#1
3272  002d 6b02          	ld	(OFST-1,sp),a
3273                     ; 840   tmpccmr2 |= TIM_CCMR_TIxDirect_Set;
3275  002f 7b03          	ld	a,(OFST+0,sp)
3276  0031 aa01          	or	a,#1
3277  0033 6b03          	ld	(OFST+0,sp),a
3278                     ; 843   if (TIM3_IC1Polarity == TIM3_ICPolarity_Falling)
3280  0035 9f            	ld	a,xl
3281  0036 4a            	dec	a
3282  0037 2606          	jrne	L3061
3283                     ; 845     TIM3->CCER1 |= TIM_CCER1_CC1P ;
3285  0039 7212528b      	bset	21131,#1
3287  003d 2004          	jra	L5061
3288  003f               L3061:
3289                     ; 849     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
3291  003f 7213528b      	bres	21131,#1
3292  0043               L5061:
3293                     ; 852   if (TIM3_IC2Polarity == TIM3_ICPolarity_Falling)
3295  0043 7b08          	ld	a,(OFST+5,sp)
3296  0045 4a            	dec	a
3297  0046 2606          	jrne	L7061
3298                     ; 854     TIM3->CCER1 |= TIM_CCER1_CC2P ;
3300  0048 721a528b      	bset	21131,#5
3302  004c 2004          	jra	L1161
3303  004e               L7061:
3304                     ; 858     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
3306  004e 721b528b      	bres	21131,#5
3307  0052               L1161:
3308                     ; 861   TIM3->SMCR = tmpsmcr;
3310  0052 7b01          	ld	a,(OFST-2,sp)
3311  0054 c75282        	ld	21122,a
3312                     ; 862   TIM3->CCMR1 = tmpccmr1;
3314  0057 7b02          	ld	a,(OFST-1,sp)
3315  0059 c75289        	ld	21129,a
3316                     ; 863   TIM3->CCMR2 = tmpccmr2;
3318  005c 7b03          	ld	a,(OFST+0,sp)
3319  005e c7528a        	ld	21130,a
3320                     ; 864 }
3323  0061 5b05          	addw	sp,#5
3324  0063 81            	ret	
3392                     ; 874 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
3392                     ; 875                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
3392                     ; 876 {
3393                     .text:	section	.text,new
3394  0000               _TIM3_PrescalerConfig:
3398                     ; 878   assert_param(IS_TIM3_PRESCALER(Prescaler));
3400                     ; 879   assert_param(IS_TIM3_PRESCALER_RELOAD(TIM3_PSCReloadMode));
3402                     ; 882   TIM3->PSCR = (uint8_t)(Prescaler);
3404  0000 9e            	ld	a,xh
3405  0001 c7528e        	ld	21134,a
3406                     ; 885   if (TIM3_PSCReloadMode == TIM3_PSCReloadMode_Immediate)
3408  0004 9f            	ld	a,xl
3409  0005 4a            	dec	a
3410  0006 2605          	jrne	L5461
3411                     ; 887     TIM3->EGR |= TIM_EGR_UG ;
3413  0008 72105288      	bset	21128,#0
3416  000c 81            	ret	
3417  000d               L5461:
3418                     ; 891     TIM3->EGR &= (uint8_t)(~TIM_EGR_UG) ;
3420  000d 72115288      	bres	21128,#0
3421                     ; 893 }
3424  0011 81            	ret	
3469                     ; 901 void TIM3_CounterModeConfig(TIM3_CounterMode_TypeDef TIM3_CounterMode)
3469                     ; 902 {
3470                     .text:	section	.text,new
3471  0000               _TIM3_CounterModeConfig:
3473  0000 88            	push	a
3474  0001 88            	push	a
3475       00000001      OFST:	set	1
3478                     ; 903   uint8_t tmpcr1 = 0;
3480                     ; 906   assert_param(IS_TIM3_COUNTER_MODE(TIM3_CounterMode));
3482                     ; 908   tmpcr1 = TIM3->CR1;
3484  0002 c65280        	ld	a,21120
3485                     ; 911   tmpcr1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS) & (uint8_t)(~TIM_CR1_DIR));
3487  0005 a48f          	and	a,#143
3488                     ; 914   tmpcr1 |= (uint8_t)TIM3_CounterMode;
3490  0007 1a02          	or	a,(OFST+1,sp)
3491                     ; 916   TIM3->CR1 = tmpcr1;
3493  0009 c75280        	ld	21120,a
3494                     ; 917 }
3497  000c 85            	popw	x
3498  000d 81            	ret	
3565                     ; 925 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
3565                     ; 926 {
3566                     .text:	section	.text,new
3567  0000               _TIM3_ForcedOC1Config:
3569  0000 88            	push	a
3570  0001 88            	push	a
3571       00000001      OFST:	set	1
3574                     ; 927   uint8_t tmpccmr1 = 0;
3576                     ; 930   assert_param(IS_TIM3_FORCED_ACTION(TIM3_ForcedAction));
3578                     ; 932   tmpccmr1 = TIM3->CCMR1;
3580  0002 c65289        	ld	a,21129
3581                     ; 935   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
3583  0005 a48f          	and	a,#143
3584                     ; 938   tmpccmr1 |= (uint8_t)TIM3_ForcedAction;
3586  0007 1a02          	or	a,(OFST+1,sp)
3587                     ; 940   TIM3->CCMR1 = tmpccmr1;
3589  0009 c75289        	ld	21129,a
3590                     ; 941 }
3593  000c 85            	popw	x
3594  000d 81            	ret	
3639                     ; 949 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
3639                     ; 950 {
3640                     .text:	section	.text,new
3641  0000               _TIM3_ForcedOC2Config:
3643  0000 88            	push	a
3644  0001 88            	push	a
3645       00000001      OFST:	set	1
3648                     ; 951   uint8_t tmpccmr2 = 0;
3650                     ; 954   assert_param(IS_TIM3_FORCED_ACTION(TIM3_ForcedAction));
3652                     ; 956   tmpccmr2 = TIM3->CCMR2;
3654  0002 c6528a        	ld	a,21130
3655                     ; 959   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
3657  0005 a48f          	and	a,#143
3658                     ; 962   tmpccmr2 |= (uint8_t)TIM3_ForcedAction;
3660  0007 1a02          	or	a,(OFST+1,sp)
3661                     ; 964   TIM3->CCMR2 = tmpccmr2;
3663  0009 c7528a        	ld	21130,a
3664                     ; 965 }
3667  000c 85            	popw	x
3668  000d 81            	ret	
3704                     ; 973 void TIM3_ARRPreloadConfig(FunctionalState NewState)
3704                     ; 974 {
3705                     .text:	section	.text,new
3706  0000               _TIM3_ARRPreloadConfig:
3710                     ; 976   assert_param(IS_FUNCTIONAL_STATE(NewState));
3712                     ; 979   if (NewState != DISABLE)
3714  0000 4d            	tnz	a
3715  0001 2705          	jreq	L5671
3716                     ; 981     TIM3->CR1 |= TIM_CR1_ARPE;
3718  0003 721e5280      	bset	21120,#7
3721  0007 81            	ret	
3722  0008               L5671:
3723                     ; 985     TIM3->CR1 &= (uint8_t)(~TIM_CR1_ARPE);
3725  0008 721f5280      	bres	21120,#7
3726                     ; 987 }
3729  000c 81            	ret	
3765                     ; 995 void TIM3_OC1PreloadConfig(FunctionalState NewState)
3765                     ; 996 {
3766                     .text:	section	.text,new
3767  0000               _TIM3_OC1PreloadConfig:
3771                     ; 998   assert_param(IS_FUNCTIONAL_STATE(NewState));
3773                     ; 1001   if (NewState != DISABLE)
3775  0000 4d            	tnz	a
3776  0001 2705          	jreq	L7002
3777                     ; 1003     TIM3->CCMR1 |= TIM_CCMR_OCxPE ;
3779  0003 72165289      	bset	21129,#3
3782  0007 81            	ret	
3783  0008               L7002:
3784                     ; 1007     TIM3->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
3786  0008 72175289      	bres	21129,#3
3787                     ; 1009 }
3790  000c 81            	ret	
3826                     ; 1017 void TIM3_OC2PreloadConfig(FunctionalState NewState)
3826                     ; 1018 {
3827                     .text:	section	.text,new
3828  0000               _TIM3_OC2PreloadConfig:
3832                     ; 1020   assert_param(IS_FUNCTIONAL_STATE(NewState));
3834                     ; 1023   if (NewState != DISABLE)
3836  0000 4d            	tnz	a
3837  0001 2705          	jreq	L1302
3838                     ; 1025     TIM3->CCMR2 |= TIM_CCMR_OCxPE ;
3840  0003 7216528a      	bset	21130,#3
3843  0007 81            	ret	
3844  0008               L1302:
3845                     ; 1029     TIM3->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
3847  0008 7217528a      	bres	21130,#3
3848                     ; 1031 }
3851  000c 81            	ret	
3886                     ; 1039 void TIM3_OC1FastCmd(FunctionalState NewState)
3886                     ; 1040 {
3887                     .text:	section	.text,new
3888  0000               _TIM3_OC1FastCmd:
3892                     ; 1042   assert_param(IS_FUNCTIONAL_STATE(NewState));
3894                     ; 1045   if (NewState != DISABLE)
3896  0000 4d            	tnz	a
3897  0001 2705          	jreq	L3502
3898                     ; 1047     TIM3->CCMR1 |= TIM_CCMR_OCxFE ;
3900  0003 72145289      	bset	21129,#2
3903  0007 81            	ret	
3904  0008               L3502:
3905                     ; 1051     TIM3->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
3907  0008 72155289      	bres	21129,#2
3908                     ; 1053 }
3911  000c 81            	ret	
3946                     ; 1062 void TIM3_OC2FastCmd(FunctionalState NewState)
3946                     ; 1063 {
3947                     .text:	section	.text,new
3948  0000               _TIM3_OC2FastCmd:
3952                     ; 1065   assert_param(IS_FUNCTIONAL_STATE(NewState));
3954                     ; 1068   if (NewState != DISABLE)
3956  0000 4d            	tnz	a
3957  0001 2705          	jreq	L5702
3958                     ; 1070     TIM3->CCMR2 |= TIM_CCMR_OCxFE ;
3960  0003 7214528a      	bset	21130,#2
3963  0007 81            	ret	
3964  0008               L5702:
3965                     ; 1074     TIM3->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
3967  0008 7215528a      	bres	21130,#2
3968                     ; 1076 }
3971  000c 81            	ret	
4052                     ; 1084 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
4052                     ; 1085 {
4053                     .text:	section	.text,new
4054  0000               _TIM3_GenerateEvent:
4058                     ; 1087   assert_param(IS_TIM3_EVENT_SOURCE((uint8_t)TIM3_EventSource));
4060                     ; 1090   TIM3->EGR |= (uint8_t)TIM3_EventSource;
4062  0000 ca5288        	or	a,21128
4063  0003 c75288        	ld	21128,a
4064                     ; 1091 }
4067  0006 81            	ret	
4103                     ; 1099 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
4103                     ; 1100 {
4104                     .text:	section	.text,new
4105  0000               _TIM3_OC1PolarityConfig:
4109                     ; 1102   assert_param(IS_TIM3_OC_POLARITY(TIM3_OCPolarity));
4111                     ; 1105   if (TIM3_OCPolarity == TIM3_OCPolarity_Low)
4113  0000 4a            	dec	a
4114  0001 2605          	jrne	L3512
4115                     ; 1107     TIM3->CCER1 |= TIM_CCER1_CC1P ;
4117  0003 7212528b      	bset	21131,#1
4120  0007 81            	ret	
4121  0008               L3512:
4122                     ; 1111     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
4124  0008 7213528b      	bres	21131,#1
4125                     ; 1113 }
4128  000c 81            	ret	
4164                     ; 1121 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
4164                     ; 1122 {
4165                     .text:	section	.text,new
4166  0000               _TIM3_OC2PolarityConfig:
4170                     ; 1124   assert_param(IS_TIM3_OC_POLARITY(TIM3_OCPolarity));
4172                     ; 1127   if (TIM3_OCPolarity == TIM3_OCPolarity_Low)
4174  0000 4a            	dec	a
4175  0001 2605          	jrne	L5712
4176                     ; 1129     TIM3->CCER1 |= TIM_CCER1_CC2P ;
4178  0003 721a528b      	bset	21131,#5
4181  0007 81            	ret	
4182  0008               L5712:
4183                     ; 1133     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
4185  0008 721b528b      	bres	21131,#5
4186                     ; 1135 }
4189  000c 81            	ret	
4234                     ; 1145 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
4234                     ; 1146 {
4235                     .text:	section	.text,new
4236  0000               _TIM3_CCxCmd:
4238  0000 89            	pushw	x
4239       00000000      OFST:	set	0
4242                     ; 1148   assert_param(IS_TIM3_CHANNEL(TIM3_Channel));
4244                     ; 1149   assert_param(IS_FUNCTIONAL_STATE(NewState));
4246                     ; 1151   if (TIM3_Channel == TIM3_Channel_1)
4248  0001 9e            	ld	a,xh
4249  0002 4d            	tnz	a
4250  0003 2610          	jrne	L3222
4251                     ; 1154     if (NewState != DISABLE)
4253  0005 9f            	ld	a,xl
4254  0006 4d            	tnz	a
4255  0007 2706          	jreq	L5222
4256                     ; 1156       TIM3->CCER1 |= TIM_CCER1_CC1E ;
4258  0009 7210528b      	bset	21131,#0
4260  000d 2014          	jra	L1322
4261  000f               L5222:
4262                     ; 1160       TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E) ;
4264  000f 7211528b      	bres	21131,#0
4265  0013 200e          	jra	L1322
4266  0015               L3222:
4267                     ; 1167     if (NewState != DISABLE)
4269  0015 7b02          	ld	a,(OFST+2,sp)
4270  0017 2706          	jreq	L3322
4271                     ; 1169       TIM3->CCER1 |= TIM_CCER1_CC2E;
4273  0019 7218528b      	bset	21131,#4
4275  001d 2004          	jra	L1322
4276  001f               L3322:
4277                     ; 1173       TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E) ;
4279  001f 7219528b      	bres	21131,#4
4280  0023               L1322:
4281                     ; 1176 }
4284  0023 85            	popw	x
4285  0024 81            	ret	
4330                     ; 1188 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel,
4330                     ; 1189                      TIM3_OCMode_TypeDef TIM3_OCMode)
4330                     ; 1190 {
4331                     .text:	section	.text,new
4332  0000               _TIM3_SelectOCxM:
4334  0000 89            	pushw	x
4335       00000000      OFST:	set	0
4338                     ; 1192   assert_param(IS_TIM3_CHANNEL(TIM3_Channel));
4340                     ; 1193   assert_param(IS_TIM3_OCM(TIM3_OCMode));
4342                     ; 1195   if (TIM3_Channel == TIM3_Channel_1)
4344  0001 9e            	ld	a,xh
4345  0002 4d            	tnz	a
4346  0003 2615          	jrne	L1622
4347                     ; 1198     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
4349  0005 7211528b      	bres	21131,#0
4350                     ; 1201     TIM3->CCMR1 &= (uint8_t)(~TIM_CCMR_OCM);
4352  0009 c65289        	ld	a,21129
4353  000c a48f          	and	a,#143
4354  000e c75289        	ld	21129,a
4355                     ; 1204     TIM3->CCMR1 |= (uint8_t)TIM3_OCMode;
4357  0011 9f            	ld	a,xl
4358  0012 ca5289        	or	a,21129
4359  0015 c75289        	ld	21129,a
4361  0018 2014          	jra	L3622
4362  001a               L1622:
4363                     ; 1209     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
4365  001a 7219528b      	bres	21131,#4
4366                     ; 1212     TIM3->CCMR2 &= (uint8_t)(~TIM_CCMR_OCM);
4368  001e c6528a        	ld	a,21130
4369  0021 a48f          	and	a,#143
4370  0023 c7528a        	ld	21130,a
4371                     ; 1215     TIM3->CCMR2 |= (uint8_t)TIM3_OCMode;
4373  0026 c6528a        	ld	a,21130
4374  0029 1a02          	or	a,(OFST+2,sp)
4375  002b c7528a        	ld	21130,a
4376  002e               L3622:
4377                     ; 1217 }
4380  002e 85            	popw	x
4381  002f 81            	ret	
4415                     ; 1225 void TIM3_SetCounter(uint16_t Counter)
4415                     ; 1226 {
4416                     .text:	section	.text,new
4417  0000               _TIM3_SetCounter:
4421                     ; 1228   TIM3->CNTRH = (uint8_t)(Counter >> 8);
4423  0000 9e            	ld	a,xh
4424  0001 c7528c        	ld	21132,a
4425                     ; 1229   TIM3->CNTRL = (uint8_t)(Counter);
4427  0004 9f            	ld	a,xl
4428  0005 c7528d        	ld	21133,a
4429                     ; 1230 }
4432  0008 81            	ret	
4466                     ; 1238 void TIM3_SetAutoreload(uint16_t Autoreload)
4466                     ; 1239 {
4467                     .text:	section	.text,new
4468  0000               _TIM3_SetAutoreload:
4472                     ; 1241   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
4474  0000 9e            	ld	a,xh
4475  0001 c7528f        	ld	21135,a
4476                     ; 1242   TIM3->ARRL = (uint8_t)(Autoreload);
4478  0004 9f            	ld	a,xl
4479  0005 c75290        	ld	21136,a
4480                     ; 1243 }
4483  0008 81            	ret	
4517                     ; 1251 void TIM3_SetCompare1(uint16_t Compare)
4517                     ; 1252 {
4518                     .text:	section	.text,new
4519  0000               _TIM3_SetCompare1:
4523                     ; 1254   TIM3->CCR1H = (uint8_t)(Compare >> 8);
4525  0000 9e            	ld	a,xh
4526  0001 c75291        	ld	21137,a
4527                     ; 1255   TIM3->CCR1L = (uint8_t)(Compare);
4529  0004 9f            	ld	a,xl
4530  0005 c75292        	ld	21138,a
4531                     ; 1256 }
4534  0008 81            	ret	
4568                     ; 1264 void TIM3_SetCompare2(uint16_t Compare)
4568                     ; 1265 {
4569                     .text:	section	.text,new
4570  0000               _TIM3_SetCompare2:
4574                     ; 1267   TIM3->CCR2H = (uint8_t)(Compare >> 8);
4576  0000 9e            	ld	a,xh
4577  0001 c75293        	ld	21139,a
4578                     ; 1268   TIM3->CCR2L = (uint8_t)(Compare);
4580  0004 9f            	ld	a,xl
4581  0005 c75294        	ld	21140,a
4582                     ; 1269 }
4585  0008 81            	ret	
4630                     ; 1277 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
4630                     ; 1278 {
4631                     .text:	section	.text,new
4632  0000               _TIM3_SetIC1Prescaler:
4634  0000 88            	push	a
4635  0001 88            	push	a
4636       00000001      OFST:	set	1
4639                     ; 1279   uint8_t tmpccmr1 = 0;
4641                     ; 1282   assert_param(IS_TIM3_IC_PRESCALER(TIM3_IC1Prescaler));
4643                     ; 1284   tmpccmr1 = TIM3->CCMR1;
4645  0002 c65289        	ld	a,21129
4646                     ; 1287   tmpccmr1 &= (uint8_t)(~TIM_CCMR_ICxPSC);
4648  0005 a4f3          	and	a,#243
4649                     ; 1290   tmpccmr1 |= (uint8_t)TIM3_IC1Prescaler;
4651  0007 1a02          	or	a,(OFST+1,sp)
4652                     ; 1292   TIM3->CCMR1 = tmpccmr1;
4654  0009 c75289        	ld	21129,a
4655                     ; 1293 }
4658  000c 85            	popw	x
4659  000d 81            	ret	
4704                     ; 1301 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
4704                     ; 1302 {
4705                     .text:	section	.text,new
4706  0000               _TIM3_SetIC2Prescaler:
4708  0000 88            	push	a
4709  0001 88            	push	a
4710       00000001      OFST:	set	1
4713                     ; 1303   uint8_t tmpccmr2 = 0;
4715                     ; 1306   assert_param(IS_TIM3_IC_PRESCALER(TIM3_IC2Prescaler));
4717                     ; 1308   tmpccmr2 = TIM3->CCMR2;
4719  0002 c6528a        	ld	a,21130
4720                     ; 1311   tmpccmr2 &= (uint8_t)(~TIM_CCMR_ICxPSC);
4722  0005 a4f3          	and	a,#243
4723                     ; 1314   tmpccmr2 |= (uint8_t)TIM3_IC2Prescaler;
4725  0007 1a02          	or	a,(OFST+1,sp)
4726                     ; 1316   TIM3->CCMR2 = tmpccmr2;
4728  0009 c7528a        	ld	21130,a
4729                     ; 1317 }
4732  000c 85            	popw	x
4733  000d 81            	ret	
4785                     ; 1324 uint16_t TIM3_GetCapture1(void)
4785                     ; 1325 {
4786                     .text:	section	.text,new
4787  0000               _TIM3_GetCapture1:
4789  0000 5204          	subw	sp,#4
4790       00000004      OFST:	set	4
4793                     ; 1326   uint16_t tmpccr1 = 0;
4795                     ; 1329   tmpccr1h = TIM3->CCR1H;
4797  0002 c65291        	ld	a,21137
4798  0005 6b02          	ld	(OFST-2,sp),a
4799                     ; 1330   tmpccr1l = TIM3->CCR1L;
4801  0007 c65292        	ld	a,21138
4802  000a 6b01          	ld	(OFST-3,sp),a
4803                     ; 1332   tmpccr1 = (uint16_t)(tmpccr1l);
4805  000c 5f            	clrw	x
4806  000d 97            	ld	xl,a
4807  000e 1f03          	ldw	(OFST-1,sp),x
4808                     ; 1333   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4810  0010 5f            	clrw	x
4811  0011 7b02          	ld	a,(OFST-2,sp)
4812  0013 97            	ld	xl,a
4813  0014 7b04          	ld	a,(OFST+0,sp)
4814  0016 01            	rrwa	x,a
4815  0017 1a03          	or	a,(OFST-1,sp)
4816  0019 01            	rrwa	x,a
4817                     ; 1335   return ((uint16_t)tmpccr1);
4821  001a 5b04          	addw	sp,#4
4822  001c 81            	ret	
4874                     ; 1343 uint16_t TIM3_GetCapture2(void)
4874                     ; 1344 {
4875                     .text:	section	.text,new
4876  0000               _TIM3_GetCapture2:
4878  0000 5204          	subw	sp,#4
4879       00000004      OFST:	set	4
4882                     ; 1345   uint16_t tmpccr2 = 0;
4884                     ; 1348   tmpccr2h = TIM3->CCR2H;
4886  0002 c65293        	ld	a,21139
4887  0005 6b02          	ld	(OFST-2,sp),a
4888                     ; 1349   tmpccr2l = TIM3->CCR2L;
4890  0007 c65294        	ld	a,21140
4891  000a 6b01          	ld	(OFST-3,sp),a
4892                     ; 1351   tmpccr2 = (uint16_t)(tmpccr2l);
4894  000c 5f            	clrw	x
4895  000d 97            	ld	xl,a
4896  000e 1f03          	ldw	(OFST-1,sp),x
4897                     ; 1352   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4899  0010 5f            	clrw	x
4900  0011 7b02          	ld	a,(OFST-2,sp)
4901  0013 97            	ld	xl,a
4902  0014 7b04          	ld	a,(OFST+0,sp)
4903  0016 01            	rrwa	x,a
4904  0017 1a03          	or	a,(OFST-1,sp)
4905  0019 01            	rrwa	x,a
4906                     ; 1354   return ((uint16_t)tmpccr2);
4910  001a 5b04          	addw	sp,#4
4911  001c 81            	ret	
4963                     ; 1362 uint16_t TIM3_GetCounter(void)
4963                     ; 1363 {
4964                     .text:	section	.text,new
4965  0000               _TIM3_GetCounter:
4967  0000 5204          	subw	sp,#4
4968       00000004      OFST:	set	4
4971                     ; 1364   uint16_t tmpcnt = 0;
4973                     ; 1367   tmpcntrh = TIM3->CNTRH;
4975  0002 c6528c        	ld	a,21132
4976  0005 6b02          	ld	(OFST-2,sp),a
4977                     ; 1368   tmpcntrl = TIM3->CNTRL;
4979  0007 c6528d        	ld	a,21133
4980  000a 6b01          	ld	(OFST-3,sp),a
4981                     ; 1370   tmpcnt = (uint16_t)(tmpcntrl);
4983  000c 5f            	clrw	x
4984  000d 97            	ld	xl,a
4985  000e 1f03          	ldw	(OFST-1,sp),x
4986                     ; 1371   tmpcnt |= (uint16_t)((uint16_t)tmpcntrh << 8);
4988  0010 5f            	clrw	x
4989  0011 7b02          	ld	a,(OFST-2,sp)
4990  0013 97            	ld	xl,a
4991  0014 7b04          	ld	a,(OFST+0,sp)
4992  0016 01            	rrwa	x,a
4993  0017 1a03          	or	a,(OFST-1,sp)
4994  0019 01            	rrwa	x,a
4995                     ; 1373   return ((uint16_t)tmpcnt);
4999  001a 5b04          	addw	sp,#4
5000  001c 81            	ret	
5024                     ; 1381 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
5024                     ; 1382 {
5025                     .text:	section	.text,new
5026  0000               _TIM3_GetPrescaler:
5030                     ; 1384   return ((TIM3_Prescaler_TypeDef)TIM3->PSCR);
5032  0000 c6528e        	ld	a,21134
5035  0003 81            	ret	
5070                     ; 1393 void TIM3_SelectCCDMA(FunctionalState NewState)
5070                     ; 1394 {
5071                     .text:	section	.text,new
5072  0000               _TIM3_SelectCCDMA:
5076                     ; 1396   assert_param(IS_FUNCTIONAL_STATE(NewState));
5078                     ; 1398   if (NewState != DISABLE)
5080  0000 4d            	tnz	a
5081  0001 2705          	jreq	L1552
5082                     ; 1401     TIM3->CR2 |= TIM_CR2_CCDS;
5084  0003 72165281      	bset	21121,#3
5087  0007 81            	ret	
5088  0008               L1552:
5089                     ; 1406     TIM3->CR2 &= (uint8_t)(~TIM_CR2_CCDS);
5091  0008 72175281      	bres	21121,#3
5092                     ; 1408 }
5095  000c 81            	ret	
5234                     ; 1417 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
5234                     ; 1418 {
5235                     .text:	section	.text,new
5236  0000               _TIM3_GetFlagStatus:
5238  0000 89            	pushw	x
5239  0001 89            	pushw	x
5240       00000002      OFST:	set	2
5243                     ; 1419   FlagStatus bitstatus = RESET;
5245                     ; 1420   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
5249                     ; 1423   assert_param(IS_TIM3_GET_FLAG(TIM3_FLAG));
5251                     ; 1425   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)(TIM3_FLAG));
5253  0002 9f            	ld	a,xl
5254  0003 c45286        	and	a,21126
5255  0006 6b01          	ld	(OFST-1,sp),a
5256                     ; 1426   tim3_flag_h = (uint8_t)(TIM3->SR2 & (uint8_t)((uint16_t)TIM3_FLAG >> 8));
5258  0008 c65287        	ld	a,21127
5259  000b 1403          	and	a,(OFST+1,sp)
5260  000d 6b02          	ld	(OFST+0,sp),a
5261                     ; 1428   if ((uint8_t)(tim3_flag_l | tim3_flag_h) != 0)
5263  000f 1a01          	or	a,(OFST-1,sp)
5264  0011 2702          	jreq	L1462
5265                     ; 1430     bitstatus = SET;
5267  0013 a601          	ld	a,#1
5269  0015               L1462:
5270                     ; 1434     bitstatus = RESET;
5272                     ; 1436   return ((FlagStatus)bitstatus);
5276  0015 5b04          	addw	sp,#4
5277  0017 81            	ret	
5312                     ; 1445 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
5312                     ; 1446 {
5313                     .text:	section	.text,new
5314  0000               _TIM3_ClearFlag:
5316  0000 89            	pushw	x
5317       00000000      OFST:	set	0
5320                     ; 1448   assert_param(IS_TIM3_CLEAR_FLAG((uint16_t)TIM3_FLAG));
5322                     ; 1450   TIM3->SR1 = (uint8_t)(~(uint8_t)(TIM3_FLAG));
5324  0001 9f            	ld	a,xl
5325  0002 43            	cpl	a
5326  0003 c75286        	ld	21126,a
5327                     ; 1451   TIM3->SR2 = (uint8_t)(~(uint8_t)((uint16_t)TIM3_FLAG >> 8));
5329  0006 7b01          	ld	a,(OFST+1,sp)
5330  0008 43            	cpl	a
5331  0009 c75287        	ld	21127,a
5332                     ; 1452 }
5335  000c 85            	popw	x
5336  000d 81            	ret	
5400                     ; 1462 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
5400                     ; 1463 {
5401                     .text:	section	.text,new
5402  0000               _TIM3_GetITStatus:
5404  0000 88            	push	a
5405  0001 89            	pushw	x
5406       00000002      OFST:	set	2
5409                     ; 1464   ITStatus bitstatus = RESET;
5411                     ; 1466   uint8_t TIM3_itStatus = 0x0, TIM3_itEnable = 0x0;
5415                     ; 1469   assert_param(IS_TIM3_GET_IT(TIM3_IT));
5417                     ; 1471   TIM3_itStatus = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_IT);
5419  0002 c45286        	and	a,21126
5420  0005 6b01          	ld	(OFST-1,sp),a
5421                     ; 1473   TIM3_itEnable = (uint8_t)(TIM3->IER & (uint8_t)TIM3_IT);
5423  0007 c65285        	ld	a,21125
5424  000a 1403          	and	a,(OFST+1,sp)
5425  000c 6b02          	ld	(OFST+0,sp),a
5426                     ; 1475   if ((TIM3_itStatus != (uint8_t)RESET) && (TIM3_itEnable != (uint8_t)RESET))
5428  000e 7b01          	ld	a,(OFST-1,sp)
5429  0010 2708          	jreq	L5172
5431  0012 7b02          	ld	a,(OFST+0,sp)
5432  0014 2704          	jreq	L5172
5433                     ; 1477     bitstatus = (ITStatus)SET;
5435  0016 a601          	ld	a,#1
5437  0018 2001          	jra	L7172
5438  001a               L5172:
5439                     ; 1481     bitstatus = (ITStatus)RESET;
5441  001a 4f            	clr	a
5442  001b               L7172:
5443                     ; 1483   return ((ITStatus)bitstatus);
5447  001b 5b03          	addw	sp,#3
5448  001d 81            	ret	
5484                     ; 1492 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
5484                     ; 1493 {
5485                     .text:	section	.text,new
5486  0000               _TIM3_ClearITPendingBit:
5490                     ; 1495   assert_param(IS_TIM3_IT(TIM3_IT));
5492                     ; 1498   TIM3->SR1 = (uint8_t)(~(uint8_t)TIM3_IT);
5494  0000 43            	cpl	a
5495  0001 c75286        	ld	21126,a
5496                     ; 1499 }
5499  0004 81            	ret	
5571                     ; 1511 static void TI1_Config(TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
5571                     ; 1512                        TIM3_ICSelection_TypeDef TIM3_ICSelection,
5571                     ; 1513                        uint8_t TIM3_ICFilter)
5571                     ; 1514 {
5572                     .text:	section	.text,new
5573  0000               L3_TI1_Config:
5575  0000 89            	pushw	x
5576  0001 89            	pushw	x
5577       00000002      OFST:	set	2
5580                     ; 1515   uint8_t tmpccmr1 = 0;
5582                     ; 1516   uint8_t tmpicpolarity = TIM3_ICPolarity;
5584  0002 9e            	ld	a,xh
5585  0003 6b01          	ld	(OFST-1,sp),a
5586                     ; 1517   tmpccmr1 = TIM3->CCMR1;
5588  0005 c65289        	ld	a,21129
5589  0008 6b02          	ld	(OFST+0,sp),a
5590                     ; 1520   assert_param(IS_TIM3_IC_POLARITY(TIM3_ICPolarity));
5592                     ; 1521   assert_param(IS_TIM3_IC_SELECTION(TIM3_ICSelection));
5594                     ; 1522   assert_param(IS_TIM3_IC_FILTER(TIM3_ICFilter));
5596                     ; 1525   TIM3->CCER1 &=  (uint8_t)(~TIM_CCER1_CC1E);
5598                     ; 1528   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5600  000a a40c          	and	a,#12
5601  000c 7211528b      	bres	21131,#0
5602  0010 6b02          	ld	(OFST+0,sp),a
5603                     ; 1529   tmpccmr1 |= (uint8_t)(((uint8_t)(TIM3_ICSelection)) | ((uint8_t)(TIM3_ICFilter << 4)));
5605  0012 7b07          	ld	a,(OFST+5,sp)
5606  0014 97            	ld	xl,a
5607  0015 a610          	ld	a,#16
5608  0017 42            	mul	x,a
5609  0018 9f            	ld	a,xl
5610  0019 1a04          	or	a,(OFST+2,sp)
5611  001b 1a02          	or	a,(OFST+0,sp)
5612  001d 6b02          	ld	(OFST+0,sp),a
5613                     ; 1531   TIM3->CCMR1 = tmpccmr1;
5615  001f c75289        	ld	21129,a
5616                     ; 1534   if (tmpicpolarity == (uint8_t)(TIM3_ICPolarity_Falling))
5618  0022 7b01          	ld	a,(OFST-1,sp)
5619  0024 4a            	dec	a
5620  0025 2606          	jrne	L5772
5621                     ; 1536     TIM3->CCER1 |= TIM_CCER1_CC1P;
5623  0027 7212528b      	bset	21131,#1
5625  002b 2004          	jra	L7772
5626  002d               L5772:
5627                     ; 1540     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
5629  002d 7213528b      	bres	21131,#1
5630  0031               L7772:
5631                     ; 1544   TIM3->CCER1 |=  TIM_CCER1_CC1E;
5633  0031 7210528b      	bset	21131,#0
5634                     ; 1545 }
5637  0035 5b04          	addw	sp,#4
5638  0037 81            	ret	
5710                     ; 1557 static void TI2_Config(TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
5710                     ; 1558                        TIM3_ICSelection_TypeDef TIM3_ICSelection,
5710                     ; 1559                        uint8_t TIM3_ICFilter)
5710                     ; 1560 {
5711                     .text:	section	.text,new
5712  0000               L5_TI2_Config:
5714  0000 89            	pushw	x
5715  0001 89            	pushw	x
5716       00000002      OFST:	set	2
5719                     ; 1561   uint8_t tmpccmr2 = 0;
5721                     ; 1562   uint8_t tmpicpolarity = TIM3_ICPolarity;
5723  0002 9e            	ld	a,xh
5724  0003 6b01          	ld	(OFST-1,sp),a
5725                     ; 1565   assert_param(IS_TIM3_IC_POLARITY(TIM3_ICPolarity));
5727                     ; 1566   assert_param(IS_TIM3_IC_SELECTION(TIM3_ICSelection));
5729                     ; 1567   assert_param(IS_TIM3_IC_FILTER(TIM3_ICFilter));
5731                     ; 1569   tmpccmr2 = TIM3->CCMR2;
5733  0005 c6528a        	ld	a,21130
5734  0008 6b02          	ld	(OFST+0,sp),a
5735                     ; 1572   TIM3->CCER1 &=  (uint8_t)(~TIM_CCER1_CC2E);
5737                     ; 1575   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5739  000a a40c          	and	a,#12
5740  000c 7219528b      	bres	21131,#4
5741  0010 6b02          	ld	(OFST+0,sp),a
5742                     ; 1576   tmpccmr2 |= (uint8_t)(((uint8_t)(TIM3_ICSelection)) | ((uint8_t)(TIM3_ICFilter << 4)));
5744  0012 7b07          	ld	a,(OFST+5,sp)
5745  0014 97            	ld	xl,a
5746  0015 a610          	ld	a,#16
5747  0017 42            	mul	x,a
5748  0018 9f            	ld	a,xl
5749  0019 1a04          	or	a,(OFST+2,sp)
5750  001b 1a02          	or	a,(OFST+0,sp)
5751  001d 6b02          	ld	(OFST+0,sp),a
5752                     ; 1578   TIM3->CCMR2 = tmpccmr2;
5754  001f c7528a        	ld	21130,a
5755                     ; 1581   if (tmpicpolarity == TIM3_ICPolarity_Falling)
5757  0022 7b01          	ld	a,(OFST-1,sp)
5758  0024 4a            	dec	a
5759  0025 2606          	jrne	L7303
5760                     ; 1583     TIM3->CCER1 |= TIM_CCER1_CC2P ;
5762  0027 721a528b      	bset	21131,#5
5764  002b 2004          	jra	L1403
5765  002d               L7303:
5766                     ; 1587     TIM3->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
5768  002d 721b528b      	bres	21131,#5
5769  0031               L1403:
5770                     ; 1591   TIM3->CCER1 |=  TIM_CCER1_CC2E;
5772  0031 7218528b      	bset	21131,#4
5773                     ; 1592 }
5776  0035 5b04          	addw	sp,#4
5777  0037 81            	ret	
5790                     	xdef	_TIM3_ClearITPendingBit
5791                     	xdef	_TIM3_GetITStatus
5792                     	xdef	_TIM3_ClearFlag
5793                     	xdef	_TIM3_GetFlagStatus
5794                     	xdef	_TIM3_SelectCCDMA
5795                     	xdef	_TIM3_OC2FastCmd
5796                     	xdef	_TIM3_OC1FastCmd
5797                     	xdef	_TIM3_GetPrescaler
5798                     	xdef	_TIM3_GetCounter
5799                     	xdef	_TIM3_GetCapture2
5800                     	xdef	_TIM3_GetCapture1
5801                     	xdef	_TIM3_SetIC2Prescaler
5802                     	xdef	_TIM3_SetIC1Prescaler
5803                     	xdef	_TIM3_SetCompare2
5804                     	xdef	_TIM3_SetCompare1
5805                     	xdef	_TIM3_SetAutoreload
5806                     	xdef	_TIM3_SetCounter
5807                     	xdef	_TIM3_SelectOCxM
5808                     	xdef	_TIM3_CCxCmd
5809                     	xdef	_TIM3_OC2PolarityConfig
5810                     	xdef	_TIM3_OC1PolarityConfig
5811                     	xdef	_TIM3_GenerateEvent
5812                     	xdef	_TIM3_OC2PreloadConfig
5813                     	xdef	_TIM3_OC1PreloadConfig
5814                     	xdef	_TIM3_ARRPreloadConfig
5815                     	xdef	_TIM3_ForcedOC2Config
5816                     	xdef	_TIM3_ForcedOC1Config
5817                     	xdef	_TIM3_CounterModeConfig
5818                     	xdef	_TIM3_PrescalerConfig
5819                     	xdef	_TIM3_EncoderInterfaceConfig
5820                     	xdef	_TIM3_SelectMasterSlaveMode
5821                     	xdef	_TIM3_SelectSlaveMode
5822                     	xdef	_TIM3_SelectOutputTrigger
5823                     	xdef	_TIM3_SelectOnePulseMode
5824                     	xdef	_TIM3_SelectHallSensor
5825                     	xdef	_TIM3_UpdateRequestConfig
5826                     	xdef	_TIM3_UpdateDisableConfig
5827                     	xdef	_TIM3_SelectInputTrigger
5828                     	xdef	_TIM3_TIxExternalClockConfig
5829                     	xdef	_TIM3_ETRConfig
5830                     	xdef	_TIM3_ETRClockMode2Config
5831                     	xdef	_TIM3_ETRClockMode1Config
5832                     	xdef	_TIM3_InternalClockConfig
5833                     	xdef	_TIM3_DMACmd
5834                     	xdef	_TIM3_ITConfig
5835                     	xdef	_TIM3_CtrlPWMOutputs
5836                     	xdef	_TIM3_Cmd
5837                     	xdef	_TIM3_PWMIConfig
5838                     	xdef	_TIM3_ICInit
5839                     	xdef	_TIM3_BKRConfig
5840                     	xdef	_TIM3_OC2Init
5841                     	xdef	_TIM3_OC1Init
5842                     	xdef	_TIM3_TimeBaseInit
5843                     	xdef	_TIM3_DeInit
5862                     	end
