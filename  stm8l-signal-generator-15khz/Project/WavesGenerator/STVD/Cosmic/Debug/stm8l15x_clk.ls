   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  19                     .const:	section	.text
  20  0000               _SYSDivFactor:
  21  0000 01            	dc.b	1
  22  0001 02            	dc.b	2
  23  0002 04            	dc.b	4
  24  0003 08            	dc.b	8
  25  0004 10            	dc.b	16
  54                     ; 60 void CLK_DeInit(void)
  54                     ; 61 {
  56                     .text:	section	.text,new
  57  0000               _CLK_DeInit:
  61                     ; 62   CLK->ICKCR = CLK_ICKCR_RESET_VALUE;
  63  0000 351150c2      	mov	20674,#17
  64                     ; 63   CLK->ECKCR = CLK_ECKCR_RESET_VALUE;
  66  0004 725f50c6      	clr	20678
  67                     ; 64   CLK->CRTCR = CLK_CRTCR_RESET_VALUE;
  69  0008 725f50c1      	clr	20673
  70                     ; 65   CLK->CBEEPR = CLK_CBEEPR_RESET_VALUE;
  72  000c 725f50cb      	clr	20683
  73                     ; 66   CLK->SWR  = CLK_SWR_RESET_VALUE;
  75  0010 350150c8      	mov	20680,#1
  76                     ; 67   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  78  0014 725f50c9      	clr	20681
  79                     ; 68   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  81  0018 350350c0      	mov	20672,#3
  82                     ; 69   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  84  001c 725f50c3      	clr	20675
  85                     ; 70   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  87  0020 358050c4      	mov	20676,#128
  88                     ; 71   CLK->PCKENR3 = CLK_PCKENR3_RESET_VALUE;
  90  0024 725f50d0      	clr	20688
  91                     ; 72   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  93  0028 725f50ca      	clr	20682
  94                     ; 73   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  96  002c 725f50c5      	clr	20677
  97                     ; 74   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
  99  0030 725f50cd      	clr	20685
 100                     ; 75   CLK->HSICALR = CLK_HSICALR_RESET_VALUE;
 102  0034 725f50cc      	clr	20684
 103                     ; 76   CLK->HSIUNLCKR = CLK_HSIUNLCKR_RESET_VALUE;
 105  0038 725f50ce      	clr	20686
 106                     ; 77   CLK->REGCSR = CLK_REGCSR_RESET_VALUE;
 108  003c 35b950cf      	mov	20687,#185
 109                     ; 78 }
 112  0040 81            	ret	
 167                     ; 85 void CLK_HSICmd(FunctionalState NewState)
 167                     ; 86 {
 168                     .text:	section	.text,new
 169  0000               _CLK_HSICmd:
 173                     ; 89   assert_param(IS_FUNCTIONAL_STATE(NewState));
 175                     ; 91   if (NewState != DISABLE)
 177  0000 4d            	tnz	a
 178  0001 2705          	jreq	L74
 179                     ; 94     CLK->ICKCR |= CLK_ICKCR_HSION;
 181  0003 721050c2      	bset	20674,#0
 184  0007 81            	ret	
 185  0008               L74:
 186                     ; 99     CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_HSION);
 188  0008 721150c2      	bres	20674,#0
 189                     ; 101 }
 192  000c 81            	ret	
 228                     ; 108 void CLK_AdjustHSICalibrationValue(uint8_t CLK_HSICalibrationValue)
 228                     ; 109 {
 229                     .text:	section	.text,new
 230  0000               _CLK_AdjustHSICalibrationValue:
 234                     ; 111   CLK->HSIUNLCKR = 0xAC;
 236  0000 35ac50ce      	mov	20686,#172
 237                     ; 112   CLK->HSIUNLCKR = 0x35;
 239  0004 353550ce      	mov	20686,#53
 240                     ; 115   CLK->HSITRIMR = (uint8_t)CLK_HSICalibrationValue;
 242  0008 c750cd        	ld	20685,a
 243                     ; 116 }
 246  000b 81            	ret	
 281                     ; 123 void CLK_LSICmd(FunctionalState NewState)
 281                     ; 124 {
 282                     .text:	section	.text,new
 283  0000               _CLK_LSICmd:
 287                     ; 127   assert_param(IS_FUNCTIONAL_STATE(NewState));
 289                     ; 129   if (NewState != DISABLE)
 291  0000 4d            	tnz	a
 292  0001 2705          	jreq	L701
 293                     ; 132     CLK->ICKCR |= CLK_ICKCR_LSION;
 295  0003 721450c2      	bset	20674,#2
 298  0007 81            	ret	
 299  0008               L701:
 300                     ; 137     CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_LSION);
 302  0008 721550c2      	bres	20674,#2
 303                     ; 139 }
 306  000c 81            	ret	
 368                     ; 149 void CLK_HSEConfig(CLK_HSE_TypeDef CLK_HSE)
 368                     ; 150 {
 369                     .text:	section	.text,new
 370  0000               _CLK_HSEConfig:
 374                     ; 152   assert_param(IS_CLK_HSE(CLK_HSE));
 376                     ; 156   CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEON;
 378  0000 721150c6      	bres	20678,#0
 379                     ; 159   CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEBYP;
 381  0004 721950c6      	bres	20678,#4
 382                     ; 162   CLK->ECKCR |= (uint8_t)CLK_HSE;
 384  0008 ca50c6        	or	a,20678
 385  000b c750c6        	ld	20678,a
 386                     ; 163 }
 389  000e 81            	ret	
 451                     ; 173 void CLK_LSEConfig(CLK_LSE_TypeDef CLK_LSE)
 451                     ; 174 {
 452                     .text:	section	.text,new
 453  0000               _CLK_LSEConfig:
 457                     ; 176   assert_param(IS_CLK_LSE(CLK_LSE));
 459                     ; 180   CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEON;
 461  0000 721550c6      	bres	20678,#2
 462                     ; 183   CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEBYP;
 464  0004 721b50c6      	bres	20678,#5
 465                     ; 186   CLK->ECKCR |= (uint8_t)CLK_LSE;
 467  0008 ca50c6        	or	a,20678
 468  000b c750c6        	ld	20678,a
 469                     ; 188 }
 472  000e 81            	ret	
 546                     ; 196 void CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_TypeDef CLK_SYSCLKSource)
 546                     ; 197 {
 547                     .text:	section	.text,new
 548  0000               _CLK_SYSCLKSourceConfig:
 552                     ; 199   assert_param(IS_CLK_SOURCE(CLK_SYSCLKSource));
 554                     ; 202   CLK->SWR = (uint8_t)CLK_SYSCLKSource;
 556  0000 c750c8        	ld	20680,a
 557                     ; 203 }
 560  0003 81            	ret	
 658                     ; 211 void CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_TypeDef CLK_SYSCLKDiv)
 658                     ; 212 {
 659                     .text:	section	.text,new
 660  0000               _CLK_SYSCLKDivConfig:
 664                     ; 214   assert_param(IS_CLK_SYSTEM_DIVIDER(CLK_SYSCLKDiv));
 666                     ; 216   CLK->CKDIVR = (uint8_t)(CLK_SYSCLKDiv);
 668  0000 c750c0        	ld	20672,a
 669                     ; 217 }
 672  0003 81            	ret	
 708                     ; 223 void CLK_SYSCLKSourceSwitchCmd(FunctionalState NewState)
 708                     ; 224 {
 709                     .text:	section	.text,new
 710  0000               _CLK_SYSCLKSourceSwitchCmd:
 714                     ; 226   assert_param(IS_FUNCTIONAL_STATE(NewState));
 716                     ; 228   if (NewState != DISABLE)
 718  0000 4d            	tnz	a
 719  0001 2705          	jreq	L503
 720                     ; 231     CLK->SWCR |= CLK_SWCR_SWEN;
 722  0003 721250c9      	bset	20681,#1
 725  0007 81            	ret	
 726  0008               L503:
 727                     ; 236     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 729  0008 721350c9      	bres	20681,#1
 730                     ; 238 }
 733  000c 81            	ret	
 758                     ; 250 CLK_SYSCLKSource_TypeDef CLK_GetSYSCLKSource(void)
 758                     ; 251 {
 759                     .text:	section	.text,new
 760  0000               _CLK_GetSYSCLKSource:
 764                     ; 252   return ((CLK_SYSCLKSource_TypeDef)(CLK->SCSR));
 766  0000 c650c7        	ld	a,20679
 769  0003 81            	ret	
 793                     ; 261 void CLK_ClockSecuritySystemEnable(void)
 793                     ; 262 {
 794                     .text:	section	.text,new
 795  0000               _CLK_ClockSecuritySystemEnable:
 799                     ; 264   CLK->CSSR |= CLK_CSSR_CSSEN;
 801  0000 721050ca      	bset	20682,#0
 802                     ; 265 }
 805  0004 81            	ret	
 841                     ; 272 void CLK_ClockSecuritySytemDeglitchCmd(FunctionalState NewState)
 841                     ; 273 {
 842                     .text:	section	.text,new
 843  0000               _CLK_ClockSecuritySytemDeglitchCmd:
 847                     ; 275   assert_param(IS_FUNCTIONAL_STATE(NewState));
 849                     ; 277   if (NewState != DISABLE)
 851  0000 4d            	tnz	a
 852  0001 2705          	jreq	L743
 853                     ; 280     CLK->CSSR |= CLK_CSSR_CSSDGON;
 855  0003 721850ca      	bset	20682,#4
 858  0007 81            	ret	
 859  0008               L743:
 860                     ; 285     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDGON);
 862  0008 721950ca      	bres	20682,#4
 863                     ; 287 }
 866  000c 81            	ret	
 938                     ; 293 uint32_t CLK_GetClockFreq(void)
 938                     ; 294 {
 939                     .text:	section	.text,new
 940  0000               _CLK_GetClockFreq:
 942  0000 5209          	subw	sp,#9
 943       00000009      OFST:	set	9
 946                     ; 295   uint32_t clockfrequency = 0;
 948                     ; 296   uint32_t sourcefrequency = 0;
 950  0002 5f            	clrw	x
 951  0003 1f07          	ldw	(OFST-2,sp),x
 952  0005 1f05          	ldw	(OFST-4,sp),x
 953                     ; 297   CLK_SYSCLKSource_TypeDef clocksource = CLK_SYSCLKSource_HSI;
 955                     ; 298   uint8_t tmp = 0, presc = 0;
 959                     ; 301   clocksource = (CLK_SYSCLKSource_TypeDef)CLK->SCSR;
 961  0007 c650c7        	ld	a,20679
 962  000a 6b09          	ld	(OFST+0,sp),a
 963                     ; 303   if ( clocksource == CLK_SYSCLKSource_HSI)
 965  000c a101          	cp	a,#1
 966                     ; 305     sourcefrequency = HSI_VALUE;
 968  000e 2710          	jreq	LC002
 969                     ; 307   else if ( clocksource == CLK_SYSCLKSource_LSI)
 971  0010 a102          	cp	a,#2
 972  0012 2608          	jrne	L514
 973                     ; 309     sourcefrequency = LSI_VALUE;
 975  0014 ae9470        	ldw	x,#38000
 976  0017 1f07          	ldw	(OFST-2,sp),x
 977  0019 5f            	clrw	x
 979  001a 200c          	jp	LC001
 980  001c               L514:
 981                     ; 311   else if ( clocksource == CLK_SYSCLKSource_HSE)
 983  001c a104          	cp	a,#4
 984  001e 260a          	jrne	L124
 985                     ; 313     sourcefrequency = HSE_VALUE;
 987  0020               LC002:
 989  0020 ae2400        	ldw	x,#9216
 990  0023 1f07          	ldw	(OFST-2,sp),x
 991  0025 ae00f4        	ldw	x,#244
 992  0028               LC001:
 993  0028 1f05          	ldw	(OFST-4,sp),x
 995  002a               L124:
 996                     ; 317     clockfrequency = LSE_VALUE;
 998                     ; 321   tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_CKM);
1000  002a c650c0        	ld	a,20672
1001  002d a407          	and	a,#7
1002                     ; 322   presc = SYSDivFactor[tmp];
1004  002f 5f            	clrw	x
1005  0030 97            	ld	xl,a
1006  0031 d60000        	ld	a,(_SYSDivFactor,x)
1007  0034 6b09          	ld	(OFST+0,sp),a
1008                     ; 325   clockfrequency = sourcefrequency / presc;
1010  0036 b703          	ld	c_lreg+3,a
1011  0038 3f02          	clr	c_lreg+2
1012  003a 3f01          	clr	c_lreg+1
1013  003c 3f00          	clr	c_lreg
1014  003e 96            	ldw	x,sp
1015  003f 5c            	incw	x
1016  0040 cd0000        	call	c_rtol
1018  0043 96            	ldw	x,sp
1019  0044 1c0005        	addw	x,#OFST-4
1020  0047 cd0000        	call	c_ltor
1022  004a 96            	ldw	x,sp
1023  004b 5c            	incw	x
1024  004c cd0000        	call	c_ludv
1026  004f 96            	ldw	x,sp
1027  0050 1c0005        	addw	x,#OFST-4
1028  0053 cd0000        	call	c_rtol
1030                     ; 327   return((uint32_t)clockfrequency);
1032  0056 96            	ldw	x,sp
1033  0057 1c0005        	addw	x,#OFST-4
1034  005a cd0000        	call	c_ltor
1038  005d 5b09          	addw	sp,#9
1039  005f 81            	ret	
1111                     ; 338 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1111                     ; 339 {
1112                     .text:	section	.text,new
1113  0000               _CLK_ITConfig:
1115  0000 89            	pushw	x
1116       00000000      OFST:	set	0
1119                     ; 342   assert_param(IS_CLK_IT(CLK_IT));
1121                     ; 343   assert_param(IS_FUNCTIONAL_STATE(NewState));
1123                     ; 345   if (NewState != DISABLE)
1125  0001 9f            	ld	a,xl
1126  0002 4d            	tnz	a
1127  0003 271d          	jreq	L164
1128                     ; 347     if (CLK_IT == CLK_IT_SWIF)
1130  0005 9e            	ld	a,xh
1131  0006 a11c          	cp	a,#28
1132  0008 2606          	jrne	L364
1133                     ; 350       CLK->SWCR |= CLK_SWCR_SWIEN;
1135  000a 721450c9      	bset	20681,#2
1137  000e 202c          	jra	L374
1138  0010               L364:
1139                     ; 352     else if (CLK_IT == CLK_IT_LSECSSF)
1141  0010 7b01          	ld	a,(OFST+1,sp)
1142  0012 a12c          	cp	a,#44
1143  0014 2606          	jrne	L764
1144                     ; 355       CSSLSE->CSR |= CSSLSE_CSR_CSSIE;
1146  0016 72145190      	bset	20880,#2
1148  001a 2020          	jra	L374
1149  001c               L764:
1150                     ; 360       CLK->CSSR |= CLK_CSSR_CSSDIE;
1152  001c 721450ca      	bset	20682,#2
1153  0020 201a          	jra	L374
1154  0022               L164:
1155                     ; 365     if (CLK_IT == CLK_IT_SWIF)
1157  0022 7b01          	ld	a,(OFST+1,sp)
1158  0024 a11c          	cp	a,#28
1159  0026 2606          	jrne	L574
1160                     ; 368       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1162  0028 721550c9      	bres	20681,#2
1164  002c 200e          	jra	L374
1165  002e               L574:
1166                     ; 370     else if (CLK_IT == CLK_IT_LSECSSF)
1168  002e a12c          	cp	a,#44
1169  0030 2606          	jrne	L105
1170                     ; 373       CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSIE);
1172  0032 72155190      	bres	20880,#2
1174  0036 2004          	jra	L374
1175  0038               L105:
1176                     ; 378       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1178  0038 721550ca      	bres	20682,#2
1179  003c               L374:
1180                     ; 381 }
1183  003c 85            	popw	x
1184  003d 81            	ret	
1325                     ; 391 void CLK_CCOConfig(CLK_CCOSource_TypeDef CLK_CCOSource, CLK_CCODiv_TypeDef CLK_CCODiv)
1325                     ; 392 {
1326                     .text:	section	.text,new
1327  0000               _CLK_CCOConfig:
1329  0000 89            	pushw	x
1330       00000000      OFST:	set	0
1333                     ; 394   assert_param(IS_CLK_OUTPUT(CLK_CCOSource));
1335                     ; 395   assert_param(IS_CLK_OUTPUT_DIVIDER(CLK_CCODiv));
1337                     ; 398   CLK->CCOR = (uint8_t)((uint8_t)CLK_CCOSource | (uint8_t)CLK_CCODiv);
1339  0001 9f            	ld	a,xl
1340  0002 1a01          	or	a,(OFST+1,sp)
1341  0004 c750c5        	ld	20677,a
1342                     ; 399 }
1345  0007 85            	popw	x
1346  0008 81            	ret	
1492                     ; 409 void CLK_RTCClockConfig(CLK_RTCCLKSource_TypeDef CLK_RTCCLKSource, CLK_RTCCLKDiv_TypeDef CLK_RTCCLKDiv)
1492                     ; 410 {
1493                     .text:	section	.text,new
1494  0000               _CLK_RTCClockConfig:
1496  0000 89            	pushw	x
1497       00000000      OFST:	set	0
1500                     ; 412   assert_param(IS_CLK_CLOCK_RTC(CLK_RTCCLKSource));
1502                     ; 413   assert_param(IS_CLK_CLOCK_RTC_DIV(CLK_RTCCLKDiv));
1504                     ; 416   CLK->CRTCR = (uint8_t)((uint8_t)CLK_RTCCLKSource | (uint8_t)CLK_RTCCLKDiv);
1506  0001 9f            	ld	a,xl
1507  0002 1a01          	or	a,(OFST+1,sp)
1508  0004 c750c1        	ld	20673,a
1509                     ; 417 }
1512  0007 85            	popw	x
1513  0008 81            	ret	
1579                     ; 425 void CLK_BEEPClockConfig(CLK_BEEPCLKSource_TypeDef CLK_BEEPCLKSource)
1579                     ; 426 {
1580                     .text:	section	.text,new
1581  0000               _CLK_BEEPClockConfig:
1585                     ; 428   assert_param(IS_CLK_CLOCK_BEEP(CLK_BEEPCLKSource));
1587                     ; 431   CLK->CBEEPR = (uint8_t)(CLK_BEEPCLKSource);
1589  0000 c750cb        	ld	20683,a
1590                     ; 433 }
1593  0003 81            	ret	
1818                     ; 443 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
1818                     ; 444 {
1819                     .text:	section	.text,new
1820  0000               _CLK_PeripheralClockConfig:
1822  0000 89            	pushw	x
1823  0001 88            	push	a
1824       00000001      OFST:	set	1
1827                     ; 445   uint8_t reg = 0;
1829                     ; 448   assert_param(IS_CLK_PERIPHERAL(CLK_Peripheral));
1831                     ; 449   assert_param(IS_FUNCTIONAL_STATE(NewState));
1833                     ; 452   reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);
1835  0002 9e            	ld	a,xh
1836  0003 a4f0          	and	a,#240
1837  0005 6b01          	ld	(OFST+0,sp),a
1838                     ; 454   if ( reg == 0x00)
1840  0007 2633          	jrne	L5001
1841                     ; 456     if (NewState != DISABLE)
1843  0009 7b03          	ld	a,(OFST+2,sp)
1844  000b 2717          	jreq	L7001
1845                     ; 459       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
1847  000d 7b02          	ld	a,(OFST+1,sp)
1848  000f a40f          	and	a,#15
1849  0011 5f            	clrw	x
1850  0012 97            	ld	xl,a
1851  0013 a601          	ld	a,#1
1852  0015 5d            	tnzw	x
1853  0016 2704          	jreq	L05
1854  0018               L25:
1855  0018 48            	sll	a
1856  0019 5a            	decw	x
1857  001a 26fc          	jrne	L25
1858  001c               L05:
1859  001c ca50c3        	or	a,20675
1860  001f c750c3        	ld	20675,a
1862  0022 207a          	jra	L3101
1863  0024               L7001:
1864                     ; 464       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1866  0024 7b02          	ld	a,(OFST+1,sp)
1867  0026 a40f          	and	a,#15
1868  0028 5f            	clrw	x
1869  0029 97            	ld	xl,a
1870  002a a601          	ld	a,#1
1871  002c 5d            	tnzw	x
1872  002d 2704          	jreq	L45
1873  002f               L65:
1874  002f 48            	sll	a
1875  0030 5a            	decw	x
1876  0031 26fc          	jrne	L65
1877  0033               L45:
1878  0033 43            	cpl	a
1879  0034 c450c3        	and	a,20675
1880  0037 c750c3        	ld	20675,a
1881  003a 2062          	jra	L3101
1882  003c               L5001:
1883                     ; 467   else if (reg == 0x10)
1885  003c a110          	cp	a,#16
1886  003e 2630          	jrne	L5101
1887                     ; 469     if (NewState != DISABLE)
1889  0040 7b03          	ld	a,(OFST+2,sp)
1890  0042 2714          	jreq	L7101
1891                     ; 472       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
1893  0044 7b02          	ld	a,(OFST+1,sp)
1894  0046 a40f          	and	a,#15
1895  0048 5f            	clrw	x
1896  0049 97            	ld	xl,a
1897  004a a601          	ld	a,#1
1898  004c 5d            	tnzw	x
1899  004d 2704          	jreq	L06
1900  004f               L26:
1901  004f 48            	sll	a
1902  0050 5a            	decw	x
1903  0051 26fc          	jrne	L26
1904  0053               L06:
1905  0053 ca50c4        	or	a,20676
1907  0056 2013          	jp	LC004
1908  0058               L7101:
1909                     ; 477       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1911  0058 7b02          	ld	a,(OFST+1,sp)
1912  005a a40f          	and	a,#15
1913  005c 5f            	clrw	x
1914  005d 97            	ld	xl,a
1915  005e a601          	ld	a,#1
1916  0060 5d            	tnzw	x
1917  0061 2704          	jreq	L46
1918  0063               L66:
1919  0063 48            	sll	a
1920  0064 5a            	decw	x
1921  0065 26fc          	jrne	L66
1922  0067               L46:
1923  0067 43            	cpl	a
1924  0068 c450c4        	and	a,20676
1925  006b               LC004:
1926  006b c750c4        	ld	20676,a
1927  006e 202e          	jra	L3101
1928  0070               L5101:
1929                     ; 482     if (NewState != DISABLE)
1931  0070 7b03          	ld	a,(OFST+2,sp)
1932  0072 2714          	jreq	L5201
1933                     ; 485       CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
1935  0074 7b02          	ld	a,(OFST+1,sp)
1936  0076 a40f          	and	a,#15
1937  0078 5f            	clrw	x
1938  0079 97            	ld	xl,a
1939  007a a601          	ld	a,#1
1940  007c 5d            	tnzw	x
1941  007d 2704          	jreq	L07
1942  007f               L27:
1943  007f 48            	sll	a
1944  0080 5a            	decw	x
1945  0081 26fc          	jrne	L27
1946  0083               L07:
1947  0083 ca50d0        	or	a,20688
1949  0086 2013          	jp	LC003
1950  0088               L5201:
1951                     ; 490       CLK->PCKENR3 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1953  0088 7b02          	ld	a,(OFST+1,sp)
1954  008a a40f          	and	a,#15
1955  008c 5f            	clrw	x
1956  008d 97            	ld	xl,a
1957  008e a601          	ld	a,#1
1958  0090 5d            	tnzw	x
1959  0091 2704          	jreq	L47
1960  0093               L67:
1961  0093 48            	sll	a
1962  0094 5a            	decw	x
1963  0095 26fc          	jrne	L67
1964  0097               L47:
1965  0097 43            	cpl	a
1966  0098 c450d0        	and	a,20688
1967  009b               LC003:
1968  009b c750d0        	ld	20688,a
1969  009e               L3101:
1970                     ; 493 }
1973  009e 5b03          	addw	sp,#3
1974  00a0 81            	ret	
2049                     ; 503 void CLK_HaltConfig(CLK_Halt_TypeDef CLK_Halt, FunctionalState NewState)
2049                     ; 504 {
2050                     .text:	section	.text,new
2051  0000               _CLK_HaltConfig:
2053  0000 89            	pushw	x
2054       00000000      OFST:	set	0
2057                     ; 506   assert_param(IS_CLK_HALT(CLK_Halt));
2059                     ; 507   assert_param(IS_FUNCTIONAL_STATE(NewState));
2061                     ; 509   if (NewState != DISABLE)
2063  0001 9f            	ld	a,xl
2064  0002 4d            	tnz	a
2065  0003 2706          	jreq	L5601
2066                     ; 511     CLK->ICKCR |= (uint8_t)(CLK_Halt);
2068  0005 9e            	ld	a,xh
2069  0006 ca50c2        	or	a,20674
2071  0009 2006          	jra	L7601
2072  000b               L5601:
2073                     ; 515     CLK->ICKCR &= (uint8_t)(~CLK_Halt);
2075  000b 7b01          	ld	a,(OFST+1,sp)
2076  000d 43            	cpl	a
2077  000e c450c2        	and	a,20674
2078  0011               L7601:
2079  0011 c750c2        	ld	20674,a
2080                     ; 517 }
2083  0014 85            	popw	x
2084  0015 81            	ret	
2120                     ; 527 void CLK_MainRegulatorCmd(FunctionalState NewState)
2120                     ; 528 {
2121                     .text:	section	.text,new
2122  0000               _CLK_MainRegulatorCmd:
2126                     ; 530   assert_param(IS_FUNCTIONAL_STATE(NewState));
2128                     ; 532   if (NewState != DISABLE)
2130  0000 4d            	tnz	a
2131  0001 2705          	jreq	L7011
2132                     ; 535     CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
2134  0003 721350cf      	bres	20687,#1
2137  0007 81            	ret	
2138  0008               L7011:
2139                     ; 540     CLK->REGCSR |= CLK_REGCSR_REGOFF;
2141  0008 721250cf      	bset	20687,#1
2142                     ; 542 }
2145  000c 81            	ret	
2368                     ; 549 FlagStatus CLK_GetFlagStatus(CLK_FLAG_TypeDef CLK_FLAG)
2368                     ; 550 {
2369                     .text:	section	.text,new
2370  0000               _CLK_GetFlagStatus:
2372  0000 88            	push	a
2373  0001 89            	pushw	x
2374       00000002      OFST:	set	2
2377                     ; 551   uint8_t reg = 0;
2379                     ; 552   uint8_t pos = 0;
2381                     ; 553   FlagStatus bitstatus = RESET;
2383                     ; 556   assert_param(IS_CLK_FLAGS(CLK_FLAG));
2385                     ; 559   reg = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0xF0);
2387  0002 a4f0          	and	a,#240
2388  0004 6b02          	ld	(OFST+0,sp),a
2389                     ; 562   pos = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0x0F);
2391  0006 7b03          	ld	a,(OFST+1,sp)
2392  0008 a40f          	and	a,#15
2393  000a 6b01          	ld	(OFST-1,sp),a
2394                     ; 564   if (reg == 0x00) /* The flag to check is in CRTC Rregister */
2396  000c 7b02          	ld	a,(OFST+0,sp)
2397  000e 2605          	jrne	L7221
2398                     ; 566     reg = CLK->CRTCR;
2400  0010 c650c1        	ld	a,20673
2402  0013 2042          	jra	L1321
2403  0015               L7221:
2404                     ; 568   else if (reg == 0x10) /* The flag to check is in ICKCR register */
2406  0015 a110          	cp	a,#16
2407  0017 2605          	jrne	L3321
2408                     ; 570     reg = CLK->ICKCR;
2410  0019 c650c2        	ld	a,20674
2412  001c 2039          	jra	L1321
2413  001e               L3321:
2414                     ; 572   else if (reg == 0x20) /* The flag to check is in CCOR register */
2416  001e a120          	cp	a,#32
2417  0020 2605          	jrne	L7321
2418                     ; 574     reg = CLK->CCOR;
2420  0022 c650c5        	ld	a,20677
2422  0025 2030          	jra	L1321
2423  0027               L7321:
2424                     ; 576   else if (reg == 0x30) /* The flag to check is in ECKCR register */
2426  0027 a130          	cp	a,#48
2427  0029 2605          	jrne	L3421
2428                     ; 578     reg = CLK->ECKCR;
2430  002b c650c6        	ld	a,20678
2432  002e 2027          	jra	L1321
2433  0030               L3421:
2434                     ; 580   else if (reg == 0x40) /* The flag to check is in SWCR register */
2436  0030 a140          	cp	a,#64
2437  0032 2605          	jrne	L7421
2438                     ; 582     reg = CLK->SWCR;
2440  0034 c650c9        	ld	a,20681
2442  0037 201e          	jra	L1321
2443  0039               L7421:
2444                     ; 584   else if (reg == 0x50) /* The flag to check is in CSSR register */
2446  0039 a150          	cp	a,#80
2447  003b 2605          	jrne	L3521
2448                     ; 586     reg = CLK->CSSR;
2450  003d c650ca        	ld	a,20682
2452  0040 2015          	jra	L1321
2453  0042               L3521:
2454                     ; 588   else if (reg == 0x70) /* The flag to check is in REGCSR register */
2456  0042 a170          	cp	a,#112
2457  0044 2605          	jrne	L7521
2458                     ; 590     reg = CLK->REGCSR;
2460  0046 c650cf        	ld	a,20687
2462  0049 200c          	jra	L1321
2463  004b               L7521:
2464                     ; 592   else if (reg == 0x80) /* The flag to check is in CSSLSE_CSRregister */
2466  004b a180          	cp	a,#128
2467  004d 2605          	jrne	L3621
2468                     ; 594     reg = CSSLSE->CSR;
2470  004f c65190        	ld	a,20880
2472  0052 2003          	jra	L1321
2473  0054               L3621:
2474                     ; 598     reg = CLK->CBEEPR;
2476  0054 c650cb        	ld	a,20683
2477  0057               L1321:
2478  0057 6b02          	ld	(OFST+0,sp),a
2479                     ; 602   if ((reg & (uint8_t)((uint8_t)1 << (uint8_t)pos)) != (uint8_t)RESET)
2481  0059 5f            	clrw	x
2482  005a 7b01          	ld	a,(OFST-1,sp)
2483  005c 97            	ld	xl,a
2484  005d a601          	ld	a,#1
2485  005f 5d            	tnzw	x
2486  0060 2704          	jreq	L601
2487  0062               L011:
2488  0062 48            	sll	a
2489  0063 5a            	decw	x
2490  0064 26fc          	jrne	L011
2491  0066               L601:
2492  0066 1402          	and	a,(OFST+0,sp)
2493  0068 2702          	jreq	L7621
2494                     ; 604     bitstatus = SET;
2496  006a a601          	ld	a,#1
2498  006c               L7621:
2499                     ; 608     bitstatus = RESET;
2501                     ; 612   return((FlagStatus)bitstatus);
2505  006c 5b03          	addw	sp,#3
2506  006e 81            	ret	
2529                     ; 620 void CLK_ClearFlag(void)
2529                     ; 621 {
2530                     .text:	section	.text,new
2531  0000               _CLK_ClearFlag:
2535                     ; 624   CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
2537  0000 72175190      	bres	20880,#3
2538                     ; 625 }
2541  0004 81            	ret	
2587                     ; 633 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2587                     ; 634 {
2588                     .text:	section	.text,new
2589  0000               _CLK_GetITStatus:
2591  0000 88            	push	a
2592  0001 88            	push	a
2593       00000001      OFST:	set	1
2596                     ; 636   ITStatus bitstatus = RESET;
2598                     ; 639   assert_param(IS_CLK_IT(CLK_IT));
2600                     ; 641   if (CLK_IT == CLK_IT_SWIF)
2602  0002 a11c          	cp	a,#28
2603  0004 2605          	jrne	L5231
2604                     ; 644     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2606  0006 c450c9        	and	a,20681
2607                     ; 646       bitstatus = SET;
2609  0009 200b          	jp	LC007
2610                     ; 650       bitstatus = RESET;
2611  000b               L5231:
2612                     ; 653   else if (CLK_IT == CLK_IT_LSECSSF)
2614  000b 7b02          	ld	a,(OFST+1,sp)
2615  000d a12c          	cp	a,#44
2616  000f 260d          	jrne	L5331
2617                     ; 656     if ((CSSLSE->CSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2619  0011 c65190        	ld	a,20880
2620  0014 1402          	and	a,(OFST+1,sp)
2621  0016               LC007:
2622  0016 a10c          	cp	a,#12
2623  0018 260d          	jrne	L5431
2624                     ; 658       bitstatus = SET;
2626  001a               LC006:
2629  001a a601          	ld	a,#1
2631  001c 200a          	jra	L3331
2632                     ; 662       bitstatus = RESET;
2633  001e               L5331:
2634                     ; 668     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2636  001e c650ca        	ld	a,20682
2637  0021 1402          	and	a,(OFST+1,sp)
2638  0023 a10c          	cp	a,#12
2639                     ; 670       bitstatus = SET;
2641  0025 27f3          	jreq	LC006
2642  0027               L5431:
2643                     ; 674       bitstatus = RESET;
2647  0027 4f            	clr	a
2648  0028               L3331:
2649                     ; 679   return bitstatus;
2653  0028 85            	popw	x
2654  0029 81            	ret	
2690                     ; 689 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2690                     ; 690 {
2691                     .text:	section	.text,new
2692  0000               _CLK_ClearITPendingBit:
2696                     ; 693   assert_param(IS_CLK_CLEAR_IT(CLK_IT));
2698                     ; 695   if ((uint8_t)((uint8_t)CLK_IT & (uint8_t)0xF0) == (uint8_t)0x20)
2700  0000 a4f0          	and	a,#240
2701  0002 a120          	cp	a,#32
2702  0004 2605          	jrne	L7631
2703                     ; 698     CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
2705  0006 72175190      	bres	20880,#3
2708  000a 81            	ret	
2709  000b               L7631:
2710                     ; 703     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2712  000b 721750c9      	bres	20681,#3
2713                     ; 705 }
2716  000f 81            	ret	
2740                     ; 713 void CLK_LSEClockSecuritySystemEnable(void)
2740                     ; 714 {
2741                     .text:	section	.text,new
2742  0000               _CLK_LSEClockSecuritySystemEnable:
2746                     ; 716   CSSLSE->CSR |= CSSLSE_CSR_CSSEN;
2748  0000 72105190      	bset	20880,#0
2749                     ; 717 }
2752  0004 81            	ret	
2776                     ; 725 void CLK_RTCCLKSwitchOnLSEFailureEnable(void)
2776                     ; 726 {
2777                     .text:	section	.text,new
2778  0000               _CLK_RTCCLKSwitchOnLSEFailureEnable:
2782                     ; 728   CSSLSE->CSR |= CSSLSE_CSR_SWITCHEN;
2784  0000 72125190      	bset	20880,#1
2785                     ; 729 }
2788  0004 81            	ret	
2813                     	xdef	_SYSDivFactor
2814                     	xdef	_CLK_RTCCLKSwitchOnLSEFailureEnable
2815                     	xdef	_CLK_LSEClockSecuritySystemEnable
2816                     	xdef	_CLK_ClearITPendingBit
2817                     	xdef	_CLK_GetITStatus
2818                     	xdef	_CLK_ClearFlag
2819                     	xdef	_CLK_GetFlagStatus
2820                     	xdef	_CLK_MainRegulatorCmd
2821                     	xdef	_CLK_HaltConfig
2822                     	xdef	_CLK_PeripheralClockConfig
2823                     	xdef	_CLK_BEEPClockConfig
2824                     	xdef	_CLK_RTCClockConfig
2825                     	xdef	_CLK_CCOConfig
2826                     	xdef	_CLK_ITConfig
2827                     	xdef	_CLK_GetClockFreq
2828                     	xdef	_CLK_ClockSecuritySytemDeglitchCmd
2829                     	xdef	_CLK_ClockSecuritySystemEnable
2830                     	xdef	_CLK_GetSYSCLKSource
2831                     	xdef	_CLK_SYSCLKSourceSwitchCmd
2832                     	xdef	_CLK_SYSCLKDivConfig
2833                     	xdef	_CLK_SYSCLKSourceConfig
2834                     	xdef	_CLK_LSEConfig
2835                     	xdef	_CLK_HSEConfig
2836                     	xdef	_CLK_LSICmd
2837                     	xdef	_CLK_AdjustHSICalibrationValue
2838                     	xdef	_CLK_HSICmd
2839                     	xdef	_CLK_DeInit
2840                     	xref.b	c_lreg
2841                     	xref.b	c_x
2860                     	xref	c_ludv
2861                     	xref	c_rtol
2862                     	xref	c_ltor
2863                     	end
