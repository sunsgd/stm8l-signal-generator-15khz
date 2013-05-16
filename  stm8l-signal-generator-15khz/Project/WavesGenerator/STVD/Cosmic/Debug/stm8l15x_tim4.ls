   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  47                     ; 44 void TIM4_DeInit(void)
  47                     ; 45 {
  49                     .text:	section	.text,new
  50  0000               _TIM4_DeInit:
  54                     ; 46   TIM4->CR1   = TIM4_CR1_RESET_VALUE;
  56  0000 725f52e0      	clr	21216
  57                     ; 47   TIM4->CR2   = TIM4_CR2_RESET_VALUE;
  59  0004 725f52e1      	clr	21217
  60                     ; 48   TIM4->SMCR   = TIM4_SMCR_RESET_VALUE;
  62  0008 725f52e2      	clr	21218
  63                     ; 49   TIM4->IER   = TIM4_IER_RESET_VALUE;
  65  000c 725f52e4      	clr	21220
  66                     ; 50   TIM4->CNTR   = TIM4_CNTR_RESET_VALUE;
  68  0010 725f52e7      	clr	21223
  69                     ; 51   TIM4->PSCR  = TIM4_PSCR_RESET_VALUE;
  71  0014 725f52e8      	clr	21224
  72                     ; 52   TIM4->ARR   = TIM4_ARR_RESET_VALUE;
  74  0018 35ff52e9      	mov	21225,#255
  75                     ; 53   TIM4->SR1   = TIM4_SR1_RESET_VALUE;
  77  001c 725f52e5      	clr	21221
  78                     ; 54 }
  81  0020 81            	ret	
 249                     ; 62 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler,
 249                     ; 63                        uint8_t TIM4_Period)
 249                     ; 64 {
 250                     .text:	section	.text,new
 251  0000               _TIM4_TimeBaseInit:
 255                     ; 66   assert_param(IS_TIM4_Prescaler(TIM4_Prescaler));
 257                     ; 68   TIM4->ARR = (uint8_t)(TIM4_Period);
 259  0000 9f            	ld	a,xl
 260  0001 c752e9        	ld	21225,a
 261                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 263  0004 9e            	ld	a,xh
 264  0005 c752e8        	ld	21224,a
 265                     ; 73   TIM4->EGR = TIM4_EventSource_Update;
 267  0008 350152e6      	mov	21222,#1
 268                     ; 74 }
 271  000c 81            	ret	
 326                     ; 82 void TIM4_Cmd(FunctionalState NewState)
 326                     ; 83 {
 327                     .text:	section	.text,new
 328  0000               _TIM4_Cmd:
 332                     ; 85   assert_param(IS_FUNCTIONAL_STATE(NewState));
 334                     ; 88   if (NewState != DISABLE)
 336  0000 4d            	tnz	a
 337  0001 2705          	jreq	L531
 338                     ; 90     TIM4->CR1 |= TIM4_CR1_CEN ;
 340  0003 721052e0      	bset	21216,#0
 343  0007 81            	ret	
 344  0008               L531:
 345                     ; 94     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN) ;
 347  0008 721152e0      	bres	21216,#0
 348                     ; 96 }
 351  000c 81            	ret	
 387                     ; 104 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 387                     ; 105 {
 388                     .text:	section	.text,new
 389  0000               _TIM4_UpdateDisableConfig:
 393                     ; 107   assert_param(IS_FUNCTIONAL_STATE(NewState));
 395                     ; 110   if (NewState != DISABLE)
 397  0000 4d            	tnz	a
 398  0001 2705          	jreq	L751
 399                     ; 112     TIM4->CR1 |= TIM4_CR1_UDIS ;
 401  0003 721252e0      	bset	21216,#1
 404  0007 81            	ret	
 405  0008               L751:
 406                     ; 116     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS) ;
 408  0008 721352e0      	bres	21216,#1
 409                     ; 118 }
 412  000c 81            	ret	
 470                     ; 126 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 470                     ; 127 {
 471                     .text:	section	.text,new
 472  0000               _TIM4_UpdateRequestConfig:
 476                     ; 129   assert_param(IS_TIM4_UPDATE_SOURCE(TIM4_UpdateSource));
 478                     ; 132   if (TIM4_UpdateSource == TIM4_UpdateSource_Regular)
 480  0000 4a            	dec	a
 481  0001 2605          	jrne	L112
 482                     ; 134     TIM4->CR1 |= TIM4_CR1_URS ;
 484  0003 721452e0      	bset	21216,#2
 487  0007 81            	ret	
 488  0008               L112:
 489                     ; 138     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS) ;
 491  0008 721552e0      	bres	21216,#2
 492                     ; 140 }
 495  000c 81            	ret	
 552                     ; 148 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 552                     ; 149 {
 553                     .text:	section	.text,new
 554  0000               _TIM4_SelectOnePulseMode:
 558                     ; 151   assert_param(IS_TIM4_OPM_MODE(TIM4_OPMode));
 560                     ; 154   if (TIM4_OPMode == TIM4_OPMode_Single)
 562  0000 4a            	dec	a
 563  0001 2605          	jrne	L342
 564                     ; 156     TIM4->CR1 |= TIM4_CR1_OPM ;
 566  0003 721652e0      	bset	21216,#3
 569  0007 81            	ret	
 570  0008               L342:
 571                     ; 160     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM) ;
 573  0008 721752e0      	bres	21216,#3
 574                     ; 163 }
 577  000c 81            	ret	
 645                     ; 173 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler,
 645                     ; 174                           TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 645                     ; 175 {
 646                     .text:	section	.text,new
 647  0000               _TIM4_PrescalerConfig:
 651                     ; 177   assert_param(IS_TIM4_Prescaler_RELOAD(TIM4_PSCReloadMode));
 653                     ; 178   assert_param(IS_TIM4_Prescaler(Prescaler));
 655                     ; 181   TIM4->PSCR = (uint8_t) Prescaler;
 657  0000 9e            	ld	a,xh
 658  0001 c752e8        	ld	21224,a
 659                     ; 184   if (TIM4_PSCReloadMode == TIM4_PSCReloadMode_Immediate)
 661  0004 9f            	ld	a,xl
 662  0005 4a            	dec	a
 663  0006 2605          	jrne	L103
 664                     ; 186     TIM4->EGR |= TIM4_EGR_UG ;
 666  0008 721052e6      	bset	21222,#0
 669  000c 81            	ret	
 670  000d               L103:
 671                     ; 190     TIM4->EGR &= (uint8_t)(~TIM4_EGR_UG) ;
 673  000d 721152e6      	bres	21222,#0
 674                     ; 192 }
 677  0011 81            	ret	
 713                     ; 200 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 713                     ; 201 {
 714                     .text:	section	.text,new
 715  0000               _TIM4_ARRPreloadConfig:
 719                     ; 203   assert_param(IS_FUNCTIONAL_STATE(NewState));
 721                     ; 206   if (NewState != DISABLE)
 723  0000 4d            	tnz	a
 724  0001 2705          	jreq	L323
 725                     ; 208     TIM4->CR1 |= TIM4_CR1_ARPE ;
 727  0003 721e52e0      	bset	21216,#7
 730  0007 81            	ret	
 731  0008               L323:
 732                     ; 212     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE) ;
 734  0008 721f52e0      	bres	21216,#7
 735                     ; 214 }
 738  000c 81            	ret	
 772                     ; 222 void TIM4_SetCounter(uint8_t Counter)
 772                     ; 223 {
 773                     .text:	section	.text,new
 774  0000               _TIM4_SetCounter:
 778                     ; 225   TIM4->CNTR = (uint8_t)(Counter);
 780  0000 c752e7        	ld	21223,a
 781                     ; 226 }
 784  0003 81            	ret	
 818                     ; 234 void TIM4_SetAutoreload(uint8_t Autoreload)
 818                     ; 235 {
 819                     .text:	section	.text,new
 820  0000               _TIM4_SetAutoreload:
 824                     ; 238   TIM4->ARR = (uint8_t)(Autoreload);
 826  0000 c752e9        	ld	21225,a
 827                     ; 239 }
 830  0003 81            	ret	
 864                     ; 246 uint8_t TIM4_GetCounter(void)
 864                     ; 247 {
 865                     .text:	section	.text,new
 866  0000               _TIM4_GetCounter:
 868  0000 88            	push	a
 869       00000001      OFST:	set	1
 872                     ; 248   uint8_t tmpcntr = 0;
 874                     ; 249   tmpcntr = TIM4->CNTR;
 876  0001 c652e7        	ld	a,21223
 877                     ; 251   return ((uint8_t)tmpcntr);
 881  0004 5b01          	addw	sp,#1
 882  0006 81            	ret	
 906                     ; 259 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 906                     ; 260 {
 907                     .text:	section	.text,new
 908  0000               _TIM4_GetPrescaler:
 912                     ; 262   return ((TIM4_Prescaler_TypeDef)TIM4->PSCR);
 914  0000 c652e8        	ld	a,21224
 917  0003 81            	ret	
 982                     ; 273 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 982                     ; 274 {
 983                     .text:	section	.text,new
 984  0000               _TIM4_ITConfig:
 986  0000 89            	pushw	x
 987       00000000      OFST:	set	0
 990                     ; 276   assert_param(IS_TIM4_IT(TIM4_IT));
 992                     ; 277   assert_param(IS_FUNCTIONAL_STATE(NewState));
 994                     ; 279   if (NewState != DISABLE)
 996  0001 9f            	ld	a,xl
 997  0002 4d            	tnz	a
 998  0003 2706          	jreq	L344
 999                     ; 282     TIM4->IER |= (uint8_t)TIM4_IT;
1001  0005 9e            	ld	a,xh
1002  0006 ca52e4        	or	a,21220
1004  0009 2006          	jra	L544
1005  000b               L344:
1006                     ; 287     TIM4->IER &= (uint8_t)(~(uint8_t)TIM4_IT);
1008  000b 7b01          	ld	a,(OFST+1,sp)
1009  000d 43            	cpl	a
1010  000e c452e4        	and	a,21220
1011  0011               L544:
1012  0011 c752e4        	ld	21220,a
1013                     ; 289 }
1016  0014 85            	popw	x
1017  0015 81            	ret	
1074                     ; 297 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1074                     ; 298 {
1075                     .text:	section	.text,new
1076  0000               _TIM4_GenerateEvent:
1080                     ; 300   assert_param(IS_TIM4_EVENT_SOURCE((uint8_t)TIM4_EventSource));
1082                     ; 303   TIM4->EGR |= (uint8_t)TIM4_EventSource;
1084  0000 ca52e6        	or	a,21222
1085  0003 c752e6        	ld	21222,a
1086                     ; 304 }
1089  0006 81            	ret	
1148                     ; 314 void TIM4_DMACmd( TIM4_DMASource_TypeDef TIM4_DMASource, FunctionalState NewState)
1148                     ; 315 {
1149                     .text:	section	.text,new
1150  0000               _TIM4_DMACmd:
1152  0000 89            	pushw	x
1153       00000000      OFST:	set	0
1156                     ; 317   assert_param(IS_FUNCTIONAL_STATE(NewState));
1158                     ; 318   assert_param(IS_TIM4_DMA_SOURCE(TIM4_DMASource));
1160                     ; 320   if (NewState != DISABLE)
1162  0001 9f            	ld	a,xl
1163  0002 4d            	tnz	a
1164  0003 2706          	jreq	L525
1165                     ; 323     TIM4->DER |= (uint8_t)TIM4_DMASource;
1167  0005 9e            	ld	a,xh
1168  0006 ca52e3        	or	a,21219
1170  0009 2006          	jra	L725
1171  000b               L525:
1172                     ; 328     TIM4->DER &= (uint8_t)~TIM4_DMASource;
1174  000b 7b01          	ld	a,(OFST+1,sp)
1175  000d 43            	cpl	a
1176  000e c452e3        	and	a,21219
1177  0011               L725:
1178  0011 c752e3        	ld	21219,a
1179                     ; 330 }
1182  0014 85            	popw	x
1183  0015 81            	ret	
1258                     ; 338 void TIM4_SelectOutputTrigger(TIM4_TRGOSource_TypeDef TIM4_TRGOSource)
1258                     ; 339 {
1259                     .text:	section	.text,new
1260  0000               _TIM4_SelectOutputTrigger:
1262  0000 88            	push	a
1263  0001 88            	push	a
1264       00000001      OFST:	set	1
1267                     ; 340   uint8_t tmpcr2 = 0;
1269                     ; 343   assert_param(IS_TIM4_TRGO_SOURCE(TIM4_TRGOSource));
1271                     ; 345   tmpcr2 = TIM4->CR2;
1273  0002 c652e1        	ld	a,21217
1274                     ; 348   tmpcr2 &= (uint8_t)(~TIM4_CR2_MMS);
1276  0005 a48f          	and	a,#143
1277                     ; 351   tmpcr2 |=  (uint8_t)TIM4_TRGOSource;
1279  0007 1a02          	or	a,(OFST+1,sp)
1280                     ; 353   TIM4->CR2 = tmpcr2;
1282  0009 c752e1        	ld	21217,a
1283                     ; 354 }
1286  000c 85            	popw	x
1287  000d 81            	ret	
1323                     ; 362 void TIM4_SelectMasterSlaveMode(FunctionalState NewState)
1323                     ; 363 {
1324                     .text:	section	.text,new
1325  0000               _TIM4_SelectMasterSlaveMode:
1329                     ; 365   assert_param(IS_FUNCTIONAL_STATE(NewState));
1331                     ; 368   if (NewState != DISABLE)
1333  0000 4d            	tnz	a
1334  0001 2705          	jreq	L306
1335                     ; 370     TIM4->SMCR |= TIM4_SMCR_MSM;
1337  0003 721e52e2      	bset	21218,#7
1340  0007 81            	ret	
1341  0008               L306:
1342                     ; 374     TIM4->SMCR &= (uint8_t)(~TIM4_SMCR_MSM);
1344  0008 721f52e2      	bres	21218,#7
1345                     ; 376 }
1348  000c 81            	ret	
1432                     ; 384 void TIM4_SelectInputTrigger(TIM4_TRGSelection_TypeDef TIM4_InputTriggerSource)
1432                     ; 385 {
1433                     .text:	section	.text,new
1434  0000               _TIM4_SelectInputTrigger:
1436  0000 88            	push	a
1437  0001 88            	push	a
1438       00000001      OFST:	set	1
1441                     ; 386   uint8_t tmpsmcr = 0;
1443                     ; 389   assert_param(IS_TIM4_TRIGGER_SELECTION(TIM4_InputTriggerSource));
1445                     ; 391   tmpsmcr = TIM4->SMCR;
1447  0002 c652e2        	ld	a,21218
1448                     ; 394   tmpsmcr &= (uint8_t)(~TIM4_SMCR_TS);
1450  0005 a48f          	and	a,#143
1451                     ; 395   tmpsmcr |= (uint8_t)TIM4_InputTriggerSource;
1453  0007 1a02          	or	a,(OFST+1,sp)
1454                     ; 397   TIM4->SMCR = (uint8_t)tmpsmcr;
1456  0009 c752e2        	ld	21218,a
1457                     ; 398 }
1460  000c 85            	popw	x
1461  000d 81            	ret	
1485                     ; 405 void TIM4_InternalClockConfig(void)
1485                     ; 406 {
1486                     .text:	section	.text,new
1487  0000               _TIM4_InternalClockConfig:
1491                     ; 408   TIM4->SMCR &=  (uint8_t)(~TIM4_SMCR_SMS);
1493  0000 c652e2        	ld	a,21218
1494  0003 a4f8          	and	a,#248
1495  0005 c752e2        	ld	21218,a
1496                     ; 409 }
1499  0008 81            	ret	
1590                     ; 417 void TIM4_SelectSlaveMode(TIM4_SlaveMode_TypeDef TIM4_SlaveMode)
1590                     ; 418 {
1591                     .text:	section	.text,new
1592  0000               _TIM4_SelectSlaveMode:
1594  0000 88            	push	a
1595  0001 88            	push	a
1596       00000001      OFST:	set	1
1599                     ; 419   uint8_t tmpsmcr = 0;
1601                     ; 422   assert_param(IS_TIM4_SLAVE_MODE(TIM4_SlaveMode));
1603                     ; 424   tmpsmcr = TIM4->SMCR;
1605  0002 c652e2        	ld	a,21218
1606                     ; 427   tmpsmcr &= (uint8_t)(~TIM4_SMCR_SMS);
1608  0005 a4f8          	and	a,#248
1609                     ; 430   tmpsmcr |= (uint8_t)TIM4_SlaveMode;
1611  0007 1a02          	or	a,(OFST+1,sp)
1612                     ; 432   TIM4->SMCR = tmpsmcr;
1614  0009 c752e2        	ld	21218,a
1615                     ; 433 }
1618  000c 85            	popw	x
1619  000d 81            	ret	
1705                     ; 442 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1705                     ; 443 {
1706                     .text:	section	.text,new
1707  0000               _TIM4_GetFlagStatus:
1709  0000 88            	push	a
1710       00000001      OFST:	set	1
1713                     ; 444   FlagStatus bitstatus = RESET;
1715                     ; 447   assert_param(IS_TIM4_GET_FLAG(TIM4_FLAG));
1717                     ; 449   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1719  0001 c452e5        	and	a,21221
1720  0004 2702          	jreq	L757
1721                     ; 451     bitstatus = SET;
1723  0006 a601          	ld	a,#1
1725  0008               L757:
1726                     ; 455     bitstatus = RESET;
1728                     ; 457   return ((FlagStatus)bitstatus);
1732  0008 5b01          	addw	sp,#1
1733  000a 81            	ret	
1768                     ; 466 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1768                     ; 467 {
1769                     .text:	section	.text,new
1770  0000               _TIM4_ClearFlag:
1774                     ; 469   assert_param(IS_TIM4_CLEAR_FLAG((uint8_t)TIM4_FLAG));
1776                     ; 471   TIM4->SR1 = (uint8_t)(~((uint8_t)TIM4_FLAG));
1778  0000 43            	cpl	a
1779  0001 c752e5        	ld	21221,a
1780                     ; 472 }
1783  0004 81            	ret	
1847                     ; 482 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1847                     ; 483 {
1848                     .text:	section	.text,new
1849  0000               _TIM4_GetITStatus:
1851  0000 88            	push	a
1852  0001 89            	pushw	x
1853       00000002      OFST:	set	2
1856                     ; 484   ITStatus bitstatus = RESET;
1858                     ; 486   uint8_t itStatus = 0x0, itEnable = 0x0;
1862                     ; 489   assert_param(IS_TIM4_GET_IT(TIM4_IT));
1864                     ; 491   itStatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1866  0002 c452e5        	and	a,21221
1867  0005 6b01          	ld	(OFST-1,sp),a
1868                     ; 493   itEnable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1870  0007 c652e4        	ld	a,21220
1871  000a 1403          	and	a,(OFST+1,sp)
1872  000c 6b02          	ld	(OFST+0,sp),a
1873                     ; 495   if ((itStatus != (uint8_t)RESET ) && (itEnable != (uint8_t)RESET ))
1875  000e 7b01          	ld	a,(OFST-1,sp)
1876  0010 2708          	jreq	L3301
1878  0012 7b02          	ld	a,(OFST+0,sp)
1879  0014 2704          	jreq	L3301
1880                     ; 497     bitstatus = (ITStatus)SET;
1882  0016 a601          	ld	a,#1
1884  0018 2001          	jra	L5301
1885  001a               L3301:
1886                     ; 501     bitstatus = (ITStatus)RESET;
1888  001a 4f            	clr	a
1889  001b               L5301:
1890                     ; 503   return ((ITStatus)bitstatus);
1894  001b 5b03          	addw	sp,#3
1895  001d 81            	ret	
1931                     ; 512 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1931                     ; 513 {
1932                     .text:	section	.text,new
1933  0000               _TIM4_ClearITPendingBit:
1937                     ; 515   assert_param(IS_TIM4_IT(TIM4_IT));
1939                     ; 518   TIM4->SR1 = (uint8_t)(~(uint8_t)TIM4_IT);
1941  0000 43            	cpl	a
1942  0001 c752e5        	ld	21221,a
1943                     ; 519 }
1946  0004 81            	ret	
1959                     	xdef	_TIM4_ClearITPendingBit
1960                     	xdef	_TIM4_GetITStatus
1961                     	xdef	_TIM4_ClearFlag
1962                     	xdef	_TIM4_GetFlagStatus
1963                     	xdef	_TIM4_SelectSlaveMode
1964                     	xdef	_TIM4_InternalClockConfig
1965                     	xdef	_TIM4_SelectInputTrigger
1966                     	xdef	_TIM4_SelectMasterSlaveMode
1967                     	xdef	_TIM4_SelectOutputTrigger
1968                     	xdef	_TIM4_DMACmd
1969                     	xdef	_TIM4_GenerateEvent
1970                     	xdef	_TIM4_ITConfig
1971                     	xdef	_TIM4_GetPrescaler
1972                     	xdef	_TIM4_GetCounter
1973                     	xdef	_TIM4_SetAutoreload
1974                     	xdef	_TIM4_SetCounter
1975                     	xdef	_TIM4_ARRPreloadConfig
1976                     	xdef	_TIM4_PrescalerConfig
1977                     	xdef	_TIM4_SelectOnePulseMode
1978                     	xdef	_TIM4_UpdateRequestConfig
1979                     	xdef	_TIM4_UpdateDisableConfig
1980                     	xdef	_TIM4_Cmd
1981                     	xdef	_TIM4_TimeBaseInit
1982                     	xdef	_TIM4_DeInit
2001                     	end
