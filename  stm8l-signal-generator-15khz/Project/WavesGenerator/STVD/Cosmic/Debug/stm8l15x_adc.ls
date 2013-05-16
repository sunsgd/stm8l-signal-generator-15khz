   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
 178                     ; 45 void ADC_DeInit(ADC_TypeDef* ADCx)
 178                     ; 46 {
 180                     .text:	section	.text,new
 181  0000               _ADC_DeInit:
 185                     ; 48   ADCx->CR1 =  ADC_CR1_RESET_VALUE;
 187  0000 7f            	clr	(x)
 188                     ; 49   ADCx->CR2 =  ADC_CR2_RESET_VALUE;
 190  0001 6f01          	clr	(1,x)
 191                     ; 50   ADCx->CR3 =  ADC_CR3_RESET_VALUE;
 193  0003 a61f          	ld	a,#31
 194  0005 e702          	ld	(2,x),a
 195                     ; 53   ADCx->SR =  (uint8_t)~ADC_SR_RESET_VALUE;
 197  0007 a6ff          	ld	a,#255
 198  0009 e703          	ld	(3,x),a
 199                     ; 56   ADCx->HTRH =  ADC_HTRH_RESET_VALUE;
 201  000b a60f          	ld	a,#15
 202  000d e706          	ld	(6,x),a
 203                     ; 57   ADCx->HTRL =  ADC_HTRL_RESET_VALUE;
 205  000f a6ff          	ld	a,#255
 206  0011 e707          	ld	(7,x),a
 207                     ; 60   ADCx->LTRH =  ADC_LTRH_RESET_VALUE;
 209  0013 6f08          	clr	(8,x)
 210                     ; 61   ADCx->LTRL =  ADC_LTRL_RESET_VALUE;
 212  0015 6f09          	clr	(9,x)
 213                     ; 64   ADCx->SQR[0] =  ADC_SQR1_RESET_VALUE;
 215  0017 6f0a          	clr	(10,x)
 216                     ; 65   ADCx->SQR[1] =  ADC_SQR2_RESET_VALUE;
 218  0019 6f0b          	clr	(11,x)
 219                     ; 66   ADCx->SQR[2] =  ADC_SQR3_RESET_VALUE;
 221  001b 6f0c          	clr	(12,x)
 222                     ; 67   ADCx->SQR[3] =  ADC_SQR4_RESET_VALUE;
 224  001d 6f0d          	clr	(13,x)
 225                     ; 70   ADCx->TRIGR[0] =  ADC_TRIGR1_RESET_VALUE;
 227  001f 6f0e          	clr	(14,x)
 228                     ; 71   ADCx->TRIGR[1] =  ADC_TRIGR2_RESET_VALUE;
 230  0021 6f0f          	clr	(15,x)
 231                     ; 72   ADCx->TRIGR[2] =  ADC_TRIGR3_RESET_VALUE;
 233  0023 6f10          	clr	(16,x)
 234                     ; 73   ADCx->TRIGR[3] =  ADC_TRIGR4_RESET_VALUE;
 236  0025 6f11          	clr	(17,x)
 237                     ; 74 }
 240  0027 81            	ret	
 387                     ; 87 void ADC_Init(ADC_TypeDef* ADCx,
 387                     ; 88               ADC_ConversionMode_TypeDef ADC_ConversionMode,
 387                     ; 89               ADC_Resolution_TypeDef ADC_Resolution,
 387                     ; 90               ADC_Prescaler_TypeDef ADC_Prescaler)
 387                     ; 91 {
 388                     .text:	section	.text,new
 389  0000               _ADC_Init:
 391  0000 89            	pushw	x
 392       00000000      OFST:	set	0
 395                     ; 93   assert_param(IS_ADC_CONVERSION_MODE(ADC_ConversionMode));
 397                     ; 94   assert_param(IS_ADC_RESOLUTION(ADC_Resolution));
 399                     ; 95   assert_param(IS_ADC_PRESCALER(ADC_Prescaler));
 401                     ; 98   ADCx->CR1 &= (uint8_t)~(ADC_CR1_CONT | ADC_CR1_RES);
 403  0001 f6            	ld	a,(x)
 404  0002 a49b          	and	a,#155
 405  0004 f7            	ld	(x),a
 406                     ; 101   ADCx->CR1 |= (uint8_t)((uint8_t)ADC_ConversionMode | (uint8_t)ADC_Resolution);
 408  0005 7b05          	ld	a,(OFST+5,sp)
 409  0007 1a06          	or	a,(OFST+6,sp)
 410  0009 fa            	or	a,(x)
 411  000a f7            	ld	(x),a
 412                     ; 104   ADCx->CR2 &= (uint8_t)~(ADC_CR2_PRESC );
 414  000b e601          	ld	a,(1,x)
 415  000d a47f          	and	a,#127
 416  000f e701          	ld	(1,x),a
 417                     ; 107   ADCx->CR2 |= (uint8_t) ADC_Prescaler;
 419  0011 e601          	ld	a,(1,x)
 420  0013 1a07          	or	a,(OFST+7,sp)
 421  0015 e701          	ld	(1,x),a
 422                     ; 108 }
 425  0017 85            	popw	x
 426  0018 81            	ret	
 758                     ; 124 void ADC_ChannelCmd(ADC_TypeDef* ADCx,
 758                     ; 125                     ADC_Channel_TypeDef ADC_Channels,
 758                     ; 126                     FunctionalState NewState)
 758                     ; 127 {
 759                     .text:	section	.text,new
 760  0000               _ADC_ChannelCmd:
 762  0000 89            	pushw	x
 763  0001 88            	push	a
 764       00000001      OFST:	set	1
 767                     ; 128   uint8_t regindex = 0;
 769                     ; 130   assert_param(IS_FUNCTIONAL_STATE(NewState));
 771                     ; 132   regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
 773  0002 7b06          	ld	a,(OFST+5,sp)
 774  0004 6b01          	ld	(OFST+0,sp),a
 775                     ; 134   if (NewState != DISABLE)
 777  0006 0d08          	tnz	(OFST+7,sp)
 778  0008 270d          	jreq	L163
 779                     ; 137     ADCx->SQR[regindex] |= (uint8_t)(ADC_Channels);
 781  000a 01            	rrwa	x,a
 782  000b 1b01          	add	a,(OFST+0,sp)
 783  000d 2401          	jrnc	L21
 784  000f 5c            	incw	x
 785  0010               L21:
 786  0010 02            	rlwa	x,a
 787  0011 e60a          	ld	a,(10,x)
 788  0013 1a07          	or	a,(OFST+6,sp)
 790  0015 2010          	jra	L363
 791  0017               L163:
 792                     ; 142     ADCx->SQR[regindex] &= (uint8_t)(~(uint8_t)(ADC_Channels));
 794  0017 7b02          	ld	a,(OFST+1,sp)
 795  0019 97            	ld	xl,a
 796  001a 7b03          	ld	a,(OFST+2,sp)
 797  001c 1b01          	add	a,(OFST+0,sp)
 798  001e 2401          	jrnc	L41
 799  0020 5c            	incw	x
 800  0021               L41:
 801  0021 02            	rlwa	x,a
 802  0022 7b07          	ld	a,(OFST+6,sp)
 803  0024 43            	cpl	a
 804  0025 e40a          	and	a,(10,x)
 805  0027               L363:
 806  0027 e70a          	ld	(10,x),a
 807                     ; 144 }
 810  0029 5b03          	addw	sp,#3
 811  002b 81            	ret	
 858                     ; 153 void ADC_Cmd(ADC_TypeDef* ADCx,
 858                     ; 154              FunctionalState NewState)
 858                     ; 155 {
 859                     .text:	section	.text,new
 860  0000               _ADC_Cmd:
 862  0000 89            	pushw	x
 863       00000000      OFST:	set	0
 866                     ; 157   assert_param(IS_FUNCTIONAL_STATE(NewState));
 868                     ; 159   if (NewState != DISABLE)
 870  0001 7b05          	ld	a,(OFST+5,sp)
 871  0003 2705          	jreq	L114
 872                     ; 162     ADCx->CR1 |= ADC_CR1_ADON;
 874  0005 f6            	ld	a,(x)
 875  0006 aa01          	or	a,#1
 877  0008 2005          	jra	L314
 878  000a               L114:
 879                     ; 167     ADCx->CR1 &= (uint8_t)~ADC_CR1_ADON;
 881  000a 1e01          	ldw	x,(OFST+1,sp)
 882  000c f6            	ld	a,(x)
 883  000d a4fe          	and	a,#254
 884  000f               L314:
 885  000f f7            	ld	(x),a
 886                     ; 169 }
 889  0010 85            	popw	x
 890  0011 81            	ret	
 974                     ; 180 void ADC_ITConfig(ADC_TypeDef* ADCx,
 974                     ; 181                   ADC_IT_TypeDef ADC_IT,
 974                     ; 182                   FunctionalState NewState)
 974                     ; 183 {
 975                     .text:	section	.text,new
 976  0000               _ADC_ITConfig:
 978  0000 89            	pushw	x
 979       00000000      OFST:	set	0
 982                     ; 185   assert_param(IS_FUNCTIONAL_STATE(NewState));
 984                     ; 186   assert_param(IS_ADC_IT(ADC_IT));
 986                     ; 188   if (NewState != DISABLE)
 988  0001 7b06          	ld	a,(OFST+6,sp)
 989  0003 2705          	jreq	L754
 990                     ; 191     ADCx->CR1 |= (uint8_t) ADC_IT;
 992  0005 f6            	ld	a,(x)
 993  0006 1a05          	or	a,(OFST+5,sp)
 995  0008 2006          	jra	L164
 996  000a               L754:
 997                     ; 196     ADCx->CR1 &= (uint8_t)(~ADC_IT);
 999  000a 1e01          	ldw	x,(OFST+1,sp)
1000  000c 7b05          	ld	a,(OFST+5,sp)
1001  000e 43            	cpl	a
1002  000f f4            	and	a,(x)
1003  0010               L164:
1004  0010 f7            	ld	(x),a
1005                     ; 198 }
1008  0011 85            	popw	x
1009  0012 81            	ret	
1056                     ; 207 void ADC_DMACmd(ADC_TypeDef* ADCx,
1056                     ; 208                 FunctionalState NewState)
1056                     ; 209 {
1057                     .text:	section	.text,new
1058  0000               _ADC_DMACmd:
1060  0000 89            	pushw	x
1061       00000000      OFST:	set	0
1064                     ; 211   assert_param(IS_FUNCTIONAL_STATE(NewState));
1066                     ; 213   if (NewState != DISABLE)
1068  0001 7b05          	ld	a,(OFST+5,sp)
1069  0003 2706          	jreq	L705
1070                     ; 216     ADCx->SQR[0] &= (uint8_t)~ADC_SQR1_DMAOFF;
1072  0005 e60a          	ld	a,(10,x)
1073  0007 a47f          	and	a,#127
1075  0009 2006          	jra	L115
1076  000b               L705:
1077                     ; 221     ADCx->SQR[0] |= ADC_SQR1_DMAOFF;
1079  000b 1e01          	ldw	x,(OFST+1,sp)
1080  000d e60a          	ld	a,(10,x)
1081  000f aa80          	or	a,#128
1082  0011               L115:
1083  0011 e70a          	ld	(10,x),a
1084                     ; 223 }
1087  0013 85            	popw	x
1088  0014 81            	ret	
1123                     ; 231 void ADC_TempSensorCmd(FunctionalState NewState)
1123                     ; 232 {
1124                     .text:	section	.text,new
1125  0000               _ADC_TempSensorCmd:
1129                     ; 234   assert_param(IS_FUNCTIONAL_STATE(NewState));
1131                     ; 236   if (NewState != DISABLE)
1133  0000 4d            	tnz	a
1134  0001 2705          	jreq	L135
1135                     ; 239     ADC1->TRIGR[0] |= (uint8_t)(ADC_TRIGR1_TSON);
1137  0003 721a534e      	bset	21326,#5
1140  0007 81            	ret	
1141  0008               L135:
1142                     ; 244     ADC1->TRIGR[0] &= (uint8_t)(~ADC_TRIGR1_TSON);
1144  0008 721b534e      	bres	21326,#5
1145                     ; 246 }
1148  000c 81            	ret	
1183                     ; 254 void ADC_VrefintCmd(FunctionalState NewState)
1183                     ; 255 {
1184                     .text:	section	.text,new
1185  0000               _ADC_VrefintCmd:
1189                     ; 257   assert_param(IS_FUNCTIONAL_STATE(NewState));
1191                     ; 259   if (NewState != DISABLE)
1193  0000 4d            	tnz	a
1194  0001 2705          	jreq	L355
1195                     ; 262     ADC1->TRIGR[0] |= (uint8_t)(ADC_TRIGR1_VREFINTON);
1197  0003 7218534e      	bset	21326,#4
1200  0007 81            	ret	
1201  0008               L355:
1202                     ; 267     ADC1->TRIGR[0] &= (uint8_t)(~ADC_TRIGR1_VREFINTON);
1204  0008 7219534e      	bres	21326,#4
1205                     ; 269 }
1208  000c 81            	ret	
1246                     ; 276 void ADC_SoftwareStartConv(ADC_TypeDef* ADCx)
1246                     ; 277 {
1247                     .text:	section	.text,new
1248  0000               _ADC_SoftwareStartConv:
1252                     ; 279   ADCx->CR1 |= ADC_CR1_START;
1254  0000 f6            	ld	a,(x)
1255  0001 aa02          	or	a,#2
1256  0003 f7            	ld	(x),a
1257                     ; 280 }
1260  0004 81            	ret	
1410                     ; 291 void ADC_SamplingTimeConfig(ADC_TypeDef* ADCx,
1410                     ; 292                             ADC_Group_TypeDef ADC_GroupChannels,
1410                     ; 293                             ADC_SamplingTime_TypeDef ADC_SamplingTime)
1410                     ; 294 {
1411                     .text:	section	.text,new
1412  0000               _ADC_SamplingTimeConfig:
1414  0000 89            	pushw	x
1415       00000000      OFST:	set	0
1418                     ; 296   assert_param(IS_ADC_GROUP(ADC_GroupChannels));
1420                     ; 297   assert_param(IS_ADC_SAMPLING_TIME_CYCLES(ADC_SamplingTime));
1422                     ; 299   if ( ADC_GroupChannels != ADC_Group_SlowChannels)
1424  0001 7b05          	ld	a,(OFST+5,sp)
1425  0003 2712          	jreq	L366
1426                     ; 302     ADCx->CR3 &= (uint8_t)~ADC_CR3_SMPT2;
1428  0005 e602          	ld	a,(2,x)
1429  0007 a41f          	and	a,#31
1430  0009 e702          	ld	(2,x),a
1431                     ; 303     ADCx->CR3 |= (uint8_t)(ADC_SamplingTime << 5);
1433  000b 7b06          	ld	a,(OFST+6,sp)
1434  000d 4e            	swap	a
1435  000e 48            	sll	a
1436  000f a4e0          	and	a,#224
1437  0011 ea02          	or	a,(2,x)
1438  0013 e702          	ld	(2,x),a
1440  0015 200e          	jra	L566
1441  0017               L366:
1442                     ; 308     ADCx->CR2 &= (uint8_t)~ADC_CR2_SMPT1;
1444  0017 1e01          	ldw	x,(OFST+1,sp)
1445  0019 e601          	ld	a,(1,x)
1446  001b a4f8          	and	a,#248
1447  001d e701          	ld	(1,x),a
1448                     ; 309     ADCx->CR2 |= (uint8_t)ADC_SamplingTime;
1450  001f e601          	ld	a,(1,x)
1451  0021 1a06          	or	a,(OFST+6,sp)
1452  0023 e701          	ld	(1,x),a
1453  0025               L566:
1454                     ; 311 }
1457  0025 85            	popw	x
1458  0026 81            	ret	
1525                     ; 322 void ADC_SchmittTriggerConfig(ADC_TypeDef* ADCx,
1525                     ; 323                               ADC_Channel_TypeDef ADC_Channels,
1525                     ; 324                               FunctionalState NewState)
1525                     ; 325 {
1526                     .text:	section	.text,new
1527  0000               _ADC_SchmittTriggerConfig:
1529  0000 89            	pushw	x
1530  0001 88            	push	a
1531       00000001      OFST:	set	1
1534                     ; 326   uint8_t regindex = 0;
1536                     ; 328   assert_param(IS_FUNCTIONAL_STATE(NewState));
1538                     ; 330   regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
1540  0002 7b06          	ld	a,(OFST+5,sp)
1541  0004 6b01          	ld	(OFST+0,sp),a
1542                     ; 332   if (NewState != DISABLE)
1544  0006 0d08          	tnz	(OFST+7,sp)
1545  0008 270e          	jreq	L327
1546                     ; 335     ADCx->TRIGR[regindex] &= (uint8_t)(~(uint8_t)ADC_Channels);
1548  000a 01            	rrwa	x,a
1549  000b 1b01          	add	a,(OFST+0,sp)
1550  000d 2401          	jrnc	L63
1551  000f 5c            	incw	x
1552  0010               L63:
1553  0010 02            	rlwa	x,a
1554  0011 7b07          	ld	a,(OFST+6,sp)
1555  0013 43            	cpl	a
1556  0014 e40e          	and	a,(14,x)
1558  0016 200f          	jra	L527
1559  0018               L327:
1560                     ; 340     ADCx->TRIGR[regindex] |= (uint8_t)(ADC_Channels);
1562  0018 7b02          	ld	a,(OFST+1,sp)
1563  001a 97            	ld	xl,a
1564  001b 7b03          	ld	a,(OFST+2,sp)
1565  001d 1b01          	add	a,(OFST+0,sp)
1566  001f 2401          	jrnc	L04
1567  0021 5c            	incw	x
1568  0022               L04:
1569  0022 02            	rlwa	x,a
1570  0023 e60e          	ld	a,(14,x)
1571  0025 1a07          	or	a,(OFST+6,sp)
1572  0027               L527:
1573  0027 e70e          	ld	(14,x),a
1574                     ; 342 }
1577  0029 5b03          	addw	sp,#3
1578  002b 81            	ret	
1706                     ; 353 void ADC_ExternalTrigConfig(ADC_TypeDef* ADCx,
1706                     ; 354                             ADC_ExtEventSelection_TypeDef ADC_ExtEventSelection,
1706                     ; 355                             ADC_ExtTRGSensitivity_TypeDef ADC_ExtTRGSensitivity)
1706                     ; 356 {
1707                     .text:	section	.text,new
1708  0000               _ADC_ExternalTrigConfig:
1710  0000 89            	pushw	x
1711       00000000      OFST:	set	0
1714                     ; 358   assert_param(IS_ADC_EXT_EVENT_SELECTION(ADC_ExtEventSelection));
1716                     ; 359   assert_param(IS_ADC_EXT_TRG_SENSITIVITY(ADC_ExtTRGSensitivity));
1718                     ; 362   ADCx->CR2 &= (uint8_t)~(ADC_CR2_TRIGEDGE | ADC_CR2_EXTSEL);
1720  0001 e601          	ld	a,(1,x)
1721  0003 a487          	and	a,#135
1722  0005 e701          	ld	(1,x),a
1723                     ; 365   ADCx->CR2 |= (uint8_t)( (uint8_t)ADC_ExtTRGSensitivity | (uint8_t)ADC_ExtEventSelection);
1725  0007 7b06          	ld	a,(OFST+6,sp)
1726  0009 1a05          	or	a,(OFST+5,sp)
1727  000b ea01          	or	a,(1,x)
1728  000d e701          	ld	(1,x),a
1729                     ; 366 }
1732  000f 85            	popw	x
1733  0010 81            	ret	
1780                     ; 374 uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
1780                     ; 375 {
1781                     .text:	section	.text,new
1782  0000               _ADC_GetConversionValue:
1784  0000 89            	pushw	x
1785  0001 89            	pushw	x
1786       00000002      OFST:	set	2
1789                     ; 376   uint16_t tmpreg = 0;
1791                     ; 379   tmpreg = (uint16_t)(ADCx->DRH);
1793  0002 e604          	ld	a,(4,x)
1794                     ; 380   tmpreg = (uint16_t)((uint16_t)((uint16_t)tmpreg << 8) | ADCx->DRL);
1796  0004 1603          	ldw	y,(OFST+1,sp)
1797  0006 97            	ld	xl,a
1798  0007 90e605        	ld	a,(5,y)
1799  000a 02            	rlwa	x,a
1800                     ; 383   return (uint16_t)(tmpreg) ;
1804  000b 5b04          	addw	sp,#4
1805  000d 81            	ret	
2119                     ; 395 void ADC_AnalogWatchdogChannelSelect(ADC_TypeDef* ADCx,
2119                     ; 396                                      ADC_AnalogWatchdogSelection_TypeDef ADC_AnalogWatchdogSelection)
2119                     ; 397 {
2120                     .text:	section	.text,new
2121  0000               _ADC_AnalogWatchdogChannelSelect:
2123  0000 89            	pushw	x
2124       00000000      OFST:	set	0
2127                     ; 399   assert_param(IS_ADC_ANALOGWATCHDOG_SELECTION(ADC_AnalogWatchdogSelection));
2129                     ; 402   ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
2131  0001 e602          	ld	a,(2,x)
2132  0003 a4e0          	and	a,#224
2133  0005 e702          	ld	(2,x),a
2134                     ; 405   ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
2136  0007 e602          	ld	a,(2,x)
2137  0009 1a05          	or	a,(OFST+5,sp)
2138  000b e702          	ld	(2,x),a
2139                     ; 406 }
2142  000d 85            	popw	x
2143  000e 81            	ret	
2199                     ; 417 void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx,
2199                     ; 418                                         uint16_t HighThreshold,
2199                     ; 419                                         uint16_t LowThreshold)
2199                     ; 420 {
2200                     .text:	section	.text,new
2201  0000               _ADC_AnalogWatchdogThresholdsConfig:
2203  0000 89            	pushw	x
2204       00000000      OFST:	set	0
2207                     ; 422   assert_param(IS_ADC_THRESHOLD(HighThreshold));
2209                     ; 423   assert_param(IS_ADC_THRESHOLD(LowThreshold));
2211                     ; 426   ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
2213  0001 1e01          	ldw	x,(OFST+1,sp)
2214  0003 7b05          	ld	a,(OFST+5,sp)
2215  0005 e706          	ld	(6,x),a
2216                     ; 427   ADCx->HTRL = (uint8_t)(HighThreshold);
2218  0007 7b06          	ld	a,(OFST+6,sp)
2219  0009 e707          	ld	(7,x),a
2220                     ; 430   ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
2222  000b 7b07          	ld	a,(OFST+7,sp)
2223  000d e708          	ld	(8,x),a
2224                     ; 431   ADCx->LTRL = (uint8_t)(LowThreshold);
2226  000f 7b08          	ld	a,(OFST+8,sp)
2227  0011 e709          	ld	(9,x),a
2228                     ; 432 }
2231  0013 85            	popw	x
2232  0014 81            	ret	
2299                     ; 446 void ADC_AnalogWatchdogConfig(ADC_TypeDef* ADCx,
2299                     ; 447                               ADC_AnalogWatchdogSelection_TypeDef ADC_AnalogWatchdogSelection,
2299                     ; 448                               uint16_t HighThreshold,
2299                     ; 449                               uint16_t LowThreshold)
2299                     ; 450 {
2300                     .text:	section	.text,new
2301  0000               _ADC_AnalogWatchdogConfig:
2303  0000 89            	pushw	x
2304       00000000      OFST:	set	0
2307                     ; 452   assert_param(IS_ADC_ANALOGWATCHDOG_SELECTION(ADC_AnalogWatchdogSelection));
2309                     ; 453   assert_param(IS_ADC_THRESHOLD(HighThreshold));
2311                     ; 454   assert_param(IS_ADC_THRESHOLD(LowThreshold));
2313                     ; 457   ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
2315  0001 e602          	ld	a,(2,x)
2316  0003 a4e0          	and	a,#224
2317  0005 e702          	ld	(2,x),a
2318                     ; 460   ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
2320  0007 e602          	ld	a,(2,x)
2321  0009 1a05          	or	a,(OFST+5,sp)
2322  000b e702          	ld	(2,x),a
2323                     ; 463   ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
2325  000d 1e01          	ldw	x,(OFST+1,sp)
2326  000f 7b06          	ld	a,(OFST+6,sp)
2327  0011 e706          	ld	(6,x),a
2328                     ; 464   ADCx->HTRL = (uint8_t)(HighThreshold);
2330  0013 7b07          	ld	a,(OFST+7,sp)
2331  0015 e707          	ld	(7,x),a
2332                     ; 467   ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
2334  0017 7b08          	ld	a,(OFST+8,sp)
2335  0019 e708          	ld	(8,x),a
2336                     ; 468   ADCx->LTRL = (uint8_t)LowThreshold;
2338  001b 7b09          	ld	a,(OFST+9,sp)
2339  001d e709          	ld	(9,x),a
2340                     ; 469 }
2343  001f 85            	popw	x
2344  0020 81            	ret	
2449                     ; 478 FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, ADC_FLAG_TypeDef ADC_FLAG)
2449                     ; 479 {
2450                     .text:	section	.text,new
2451  0000               _ADC_GetFlagStatus:
2453  0000 89            	pushw	x
2454  0001 88            	push	a
2455       00000001      OFST:	set	1
2458                     ; 480   FlagStatus flagstatus = RESET;
2460                     ; 483   assert_param(IS_ADC_GET_FLAG(ADC_FLAG));
2462                     ; 486   if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
2464  0002 e603          	ld	a,(3,x)
2465  0004 1506          	bcp	a,(OFST+5,sp)
2466  0006 2704          	jreq	L3131
2467                     ; 489     flagstatus = SET;
2469  0008 a601          	ld	a,#1
2471  000a 2001          	jra	L5131
2472  000c               L3131:
2473                     ; 494     flagstatus = RESET;
2475  000c 4f            	clr	a
2476  000d               L5131:
2477                     ; 498   return  flagstatus;
2481  000d 5b03          	addw	sp,#3
2482  000f 81            	ret	
2529                     ; 508 void ADC_ClearFlag(ADC_TypeDef* ADCx,
2529                     ; 509                    ADC_FLAG_TypeDef ADC_FLAG)
2529                     ; 510 {
2530                     .text:	section	.text,new
2531  0000               _ADC_ClearFlag:
2533  0000 89            	pushw	x
2534       00000000      OFST:	set	0
2537                     ; 512   assert_param(IS_ADC_CLEAR_FLAG(ADC_FLAG));
2539                     ; 515   ADCx->SR = (uint8_t)~ADC_FLAG;
2541  0001 7b05          	ld	a,(OFST+5,sp)
2542  0003 1e01          	ldw	x,(OFST+1,sp)
2543  0005 43            	cpl	a
2544  0006 e703          	ld	(3,x),a
2545                     ; 516 }
2548  0008 85            	popw	x
2549  0009 81            	ret	
2625                     ; 526 ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx,
2625                     ; 527                          ADC_IT_TypeDef ADC_IT)
2625                     ; 528 {
2626                     .text:	section	.text,new
2627  0000               _ADC_GetITStatus:
2629  0000 89            	pushw	x
2630  0001 5203          	subw	sp,#3
2631       00000003      OFST:	set	3
2634                     ; 529   ITStatus itstatus = RESET;
2636                     ; 530   uint8_t itmask = 0, enablestatus = 0;
2640                     ; 533   assert_param(IS_ADC_GET_IT(ADC_IT));
2642                     ; 536   itmask = (uint8_t)(ADC_IT >> 3);
2644  0003 7b08          	ld	a,(OFST+5,sp)
2645  0005 44            	srl	a
2646  0006 44            	srl	a
2647  0007 44            	srl	a
2648  0008 6b03          	ld	(OFST+0,sp),a
2649                     ; 537   itmask =  (uint8_t)((uint8_t)((uint8_t)(itmask & (uint8_t)0x10) >> 2) | (uint8_t)(itmask & (uint8_t)0x03));
2651  000a a403          	and	a,#3
2652  000c 6b01          	ld	(OFST-2,sp),a
2653  000e 7b03          	ld	a,(OFST+0,sp)
2654  0010 a410          	and	a,#16
2655  0012 44            	srl	a
2656  0013 44            	srl	a
2657  0014 1a01          	or	a,(OFST-2,sp)
2658  0016 6b03          	ld	(OFST+0,sp),a
2659                     ; 540   enablestatus = (uint8_t)(ADCx->CR1 & (uint8_t)ADC_IT) ;
2661  0018 f6            	ld	a,(x)
2662  0019 1408          	and	a,(OFST+5,sp)
2663  001b 6b02          	ld	(OFST-1,sp),a
2664                     ; 543   if (((ADCx->SR & itmask) != (uint8_t)RESET) && enablestatus)
2666  001d e603          	ld	a,(3,x)
2667  001f 1503          	bcp	a,(OFST+0,sp)
2668  0021 2708          	jreq	L3041
2670  0023 7b02          	ld	a,(OFST-1,sp)
2671  0025 2704          	jreq	L3041
2672                     ; 546     itstatus = SET;
2674  0027 a601          	ld	a,#1
2676  0029 2001          	jra	L5041
2677  002b               L3041:
2678                     ; 551     itstatus = RESET;
2680  002b 4f            	clr	a
2681  002c               L5041:
2682                     ; 555   return  itstatus;
2686  002c 5b05          	addw	sp,#5
2687  002e 81            	ret	
2744                     ; 565 void ADC_ClearITPendingBit(ADC_TypeDef* ADCx,
2744                     ; 566                            ADC_IT_TypeDef ADC_IT)
2744                     ; 567 {
2745                     .text:	section	.text,new
2746  0000               _ADC_ClearITPendingBit:
2748  0000 89            	pushw	x
2749  0001 89            	pushw	x
2750       00000002      OFST:	set	2
2753                     ; 568   uint8_t itmask = 0;
2755                     ; 571   assert_param(IS_ADC_IT(ADC_IT));
2757                     ; 574   itmask = (uint8_t)(ADC_IT >> 3);
2759  0002 7b07          	ld	a,(OFST+5,sp)
2760  0004 44            	srl	a
2761  0005 44            	srl	a
2762  0006 44            	srl	a
2763  0007 6b02          	ld	(OFST+0,sp),a
2764                     ; 575   itmask =  (uint8_t)((uint8_t)(((uint8_t)(itmask & (uint8_t)0x10)) >> 2) | (uint8_t)(itmask & (uint8_t)0x03));
2766  0009 a403          	and	a,#3
2767  000b 6b01          	ld	(OFST-1,sp),a
2768  000d 7b02          	ld	a,(OFST+0,sp)
2769  000f a410          	and	a,#16
2770  0011 44            	srl	a
2771  0012 44            	srl	a
2772  0013 1a01          	or	a,(OFST-1,sp)
2773  0015 6b02          	ld	(OFST+0,sp),a
2774                     ; 578   ADCx->SR = (uint8_t)~itmask;
2776  0017 1e03          	ldw	x,(OFST+1,sp)
2777  0019 43            	cpl	a
2778  001a e703          	ld	(3,x),a
2779                     ; 579 }
2782  001c 5b04          	addw	sp,#4
2783  001e 81            	ret	
2796                     	xdef	_ADC_ClearITPendingBit
2797                     	xdef	_ADC_GetITStatus
2798                     	xdef	_ADC_ClearFlag
2799                     	xdef	_ADC_GetFlagStatus
2800                     	xdef	_ADC_AnalogWatchdogConfig
2801                     	xdef	_ADC_AnalogWatchdogThresholdsConfig
2802                     	xdef	_ADC_AnalogWatchdogChannelSelect
2803                     	xdef	_ADC_GetConversionValue
2804                     	xdef	_ADC_ExternalTrigConfig
2805                     	xdef	_ADC_SchmittTriggerConfig
2806                     	xdef	_ADC_SamplingTimeConfig
2807                     	xdef	_ADC_SoftwareStartConv
2808                     	xdef	_ADC_VrefintCmd
2809                     	xdef	_ADC_TempSensorCmd
2810                     	xdef	_ADC_DMACmd
2811                     	xdef	_ADC_ITConfig
2812                     	xdef	_ADC_Cmd
2813                     	xdef	_ADC_ChannelCmd
2814                     	xdef	_ADC_Init
2815                     	xdef	_ADC_DeInit
2834                     	end
