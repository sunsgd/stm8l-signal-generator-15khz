   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  58                     ; 45 void LCD_DeInit(void)
  58                     ; 46 {
  60                     .text:	section	.text,new
  61  0000               _LCD_DeInit:
  63  0000 88            	push	a
  64       00000001      OFST:	set	1
  67                     ; 47   uint8_t counter = 0;
  69                     ; 49   LCD->CR1 = LCD_CR1_RESET_VALUE;
  71  0001 725f5400      	clr	21504
  72                     ; 50   LCD->CR2 = LCD_CR2_RESET_VALUE;
  74  0005 725f5401      	clr	21505
  75                     ; 51   LCD->CR3 = LCD_CR3_RESET_VALUE;
  77  0009 725f5402      	clr	21506
  78                     ; 52   LCD->FRQ = LCD_FRQ_RESET_VALUE;
  80  000d 725f5403      	clr	21507
  81                     ; 54   for (counter = 0;counter < 0x05; counter++)
  83  0011 4f            	clr	a
  84  0012 6b01          	ld	(OFST+0,sp),a
  85  0014               L72:
  86                     ; 56     LCD->PM[counter] = LCD_PM_RESET_VALUE;
  88  0014 5f            	clrw	x
  89  0015 97            	ld	xl,a
  90  0016 724f5404      	clr	(21508,x)
  91                     ; 54   for (counter = 0;counter < 0x05; counter++)
  93  001a 0c01          	inc	(OFST+0,sp)
  96  001c 7b01          	ld	a,(OFST+0,sp)
  97  001e a105          	cp	a,#5
  98  0020 25f2          	jrult	L72
  99                     ; 59   for (counter = 0;counter < 0x16; counter++)
 101  0022 4f            	clr	a
 102  0023 6b01          	ld	(OFST+0,sp),a
 103  0025               L53:
 104                     ; 61     LCD->RAM[counter] =  LCD_RAM_RESET_VALUE;
 106  0025 5f            	clrw	x
 107  0026 97            	ld	xl,a
 108  0027 724f540c      	clr	(21516,x)
 109                     ; 59   for (counter = 0;counter < 0x16; counter++)
 111  002b 0c01          	inc	(OFST+0,sp)
 114  002d 7b01          	ld	a,(OFST+0,sp)
 115  002f a116          	cp	a,#22
 116  0031 25f2          	jrult	L53
 117                     ; 64   LCD->CR4 = LCD_CR4_RESET_VALUE;
 119  0033 725f542f      	clr	21551
 120                     ; 66 }
 123  0037 84            	pop	a
 124  0038 81            	ret	
 527                     ; 77 void LCD_Init(LCD_Prescaler_TypeDef LCD_Prescaler, LCD_Divider_TypeDef LCD_Divider,
 527                     ; 78               LCD_Duty_TypeDef LCD_Duty, LCD_Bias_TypeDef LCD_Bias,
 527                     ; 79               LCD_VoltageSource_TypeDef LCD_VoltageSource)
 527                     ; 80 {
 528                     .text:	section	.text,new
 529  0000               _LCD_Init:
 531  0000 89            	pushw	x
 532       00000000      OFST:	set	0
 535                     ; 82   assert_param(IS_LCD_CLOCK_PRESCALER(LCD_Prescaler));
 537                     ; 83   assert_param(IS_LCD_CLOCK_DIVIDER(LCD_Divider));
 539                     ; 84   assert_param(IS_LCD_DUTY(LCD_Duty));
 541                     ; 85   assert_param(IS_LCD_BIAS(LCD_Bias));
 543                     ; 86   assert_param(IS_LCD_VOLTAGE_SOURCE(LCD_VoltageSource));
 545                     ; 88   LCD->FRQ &= (uint8_t)(~LCD_FRQ_PS);     /* Clear the prescaler bits */
 547  0001 c65403        	ld	a,21507
 548  0004 a40f          	and	a,#15
 549  0006 c75403        	ld	21507,a
 550                     ; 89   LCD->FRQ |= LCD_Prescaler;
 552  0009 9e            	ld	a,xh
 553  000a ca5403        	or	a,21507
 554  000d c75403        	ld	21507,a
 555                     ; 91   LCD->FRQ &= (uint8_t)(~LCD_FRQ_DIV);     /* Clear the divider bits */
 557  0010 c65403        	ld	a,21507
 558  0013 a4f0          	and	a,#240
 559  0015 c75403        	ld	21507,a
 560                     ; 92   LCD->FRQ |= LCD_Divider;
 562  0018 9f            	ld	a,xl
 563  0019 ca5403        	or	a,21507
 564  001c c75403        	ld	21507,a
 565                     ; 95   LCD->CR1 &= (uint8_t)(~LCD_CR1_DUTY);    /* Clear the duty bits */
 567  001f c65400        	ld	a,21504
 568  0022 a4f9          	and	a,#249
 569  0024 c75400        	ld	21504,a
 570                     ; 96   LCD->CR4 &= (uint8_t)(~LCD_CR4_DUTY8);   /* Clear the DUTY8 bit */
 572  0027 7213542f      	bres	21551,#1
 573                     ; 98   if (LCD_Duty == LCD_Duty_1_8)
 575  002b 7b05          	ld	a,(OFST+5,sp)
 576  002d a120          	cp	a,#32
 577  002f 260b          	jrne	L152
 578                     ; 100     LCD->CR4 |= (uint8_t)((uint8_t)((uint8_t)LCD_Duty & (uint8_t)0xF0) >> 4);
 580  0031 4e            	swap	a
 581  0032 a40f          	and	a,#15
 582  0034 ca542f        	or	a,21551
 583  0037 c7542f        	ld	21551,a
 585  003a 2008          	jra	L352
 586  003c               L152:
 587                     ; 104     LCD->CR1 |= (uint8_t)((uint8_t)LCD_Duty & (uint8_t)0x0F);
 589  003c a40f          	and	a,#15
 590  003e ca5400        	or	a,21504
 591  0041 c75400        	ld	21504,a
 592  0044               L352:
 593                     ; 108   LCD->CR1 &= (uint8_t)(~LCD_CR1_B2);      /* Clear the B2 bit */
 595  0044 72115400      	bres	21504,#0
 596                     ; 109   LCD->CR4 &= (uint8_t)(~LCD_CR4_B4);      /* Clear the B4 bit */
 598  0048 7211542f      	bres	21551,#0
 599                     ; 111   if (LCD_Bias == LCD_Bias_1_4)
 601  004c 7b06          	ld	a,(OFST+6,sp)
 602  004e a110          	cp	a,#16
 603  0050 2615          	jrne	L552
 604                     ; 113     LCD->CR1 |= (uint8_t)((uint8_t)LCD_Bias & (uint8_t)0x0F);
 606  0052 a40f          	and	a,#15
 607  0054 ca5400        	or	a,21504
 608  0057 c75400        	ld	21504,a
 609                     ; 114     LCD->CR4 |= (uint8_t)((uint8_t)((uint8_t)LCD_Bias & (uint8_t)0xF0) >> 4);
 611  005a 7b06          	ld	a,(OFST+6,sp)
 612  005c 4e            	swap	a
 613  005d a40f          	and	a,#15
 614  005f ca542f        	or	a,21551
 615  0062 c7542f        	ld	21551,a
 617  0065 2008          	jra	L752
 618  0067               L552:
 619                     ; 118     LCD->CR1 |= (uint8_t)((uint8_t)LCD_Bias & (uint8_t)0x0F);
 621  0067 a40f          	and	a,#15
 622  0069 ca5400        	or	a,21504
 623  006c c75400        	ld	21504,a
 624  006f               L752:
 625                     ; 121   LCD->CR2 &= (uint8_t)(~LCD_CR2_VSEL);    /* Clear the voltage source bit */
 627  006f 72115401      	bres	21505,#0
 628                     ; 122   LCD->CR2 |= LCD_VoltageSource;
 630  0073 c65401        	ld	a,21505
 631  0076 1a07          	or	a,(OFST+7,sp)
 632  0078 c75401        	ld	21505,a
 633                     ; 124 }
 636  007b 85            	popw	x
 637  007c 81            	ret	
 692                     ; 132 void LCD_Cmd(FunctionalState NewState)
 692                     ; 133 {
 693                     .text:	section	.text,new
 694  0000               _LCD_Cmd:
 698                     ; 135   assert_param(IS_FUNCTIONAL_STATE(NewState));
 700                     ; 137   if (NewState != DISABLE)
 702  0000 4d            	tnz	a
 703  0001 2705          	jreq	L703
 704                     ; 139     LCD->CR3 |= LCD_CR3_LCDEN; /* Enable the LCD peripheral*/
 706  0003 721c5402      	bset	21506,#6
 709  0007 81            	ret	
 710  0008               L703:
 711                     ; 143     LCD->CR3 &= (uint8_t)(~LCD_CR3_LCDEN); /* Disable the LCD peripheral*/
 713  0008 721d5402      	bres	21506,#6
 714                     ; 146 }
 717  000c 81            	ret	
 752                     ; 154 void LCD_ITConfig(FunctionalState NewState)
 752                     ; 155 {
 753                     .text:	section	.text,new
 754  0000               _LCD_ITConfig:
 758                     ; 157   assert_param(IS_FUNCTIONAL_STATE(NewState));
 760                     ; 159   if (NewState != DISABLE)
 762  0000 4d            	tnz	a
 763  0001 2705          	jreq	L133
 764                     ; 161     LCD->CR3 |= LCD_CR3_SOFIE; /* Enable interrupt*/
 766  0003 721a5402      	bset	21506,#5
 769  0007 81            	ret	
 770  0008               L133:
 771                     ; 165     LCD->CR3 &= (uint8_t)(~LCD_CR3_SOFIE); /* Disable interrupt*/
 773  0008 721b5402      	bres	21506,#5
 774                     ; 168 }
 777  000c 81            	ret	
 812                     ; 175 void LCD_HighDriveCmd(FunctionalState NewState)
 812                     ; 176 {
 813                     .text:	section	.text,new
 814  0000               _LCD_HighDriveCmd:
 818                     ; 178   assert_param(IS_FUNCTIONAL_STATE(NewState));
 820                     ; 180   if (NewState != DISABLE)
 822  0000 4d            	tnz	a
 823  0001 2705          	jreq	L353
 824                     ; 182     LCD->CR2 |= LCD_CR2_HD; /* Permanently enable low resistance divider */
 826  0003 72185401      	bset	21505,#4
 829  0007 81            	ret	
 830  0008               L353:
 831                     ; 186     LCD->CR2 &= (uint8_t)(~LCD_CR2_HD); /* Permanently disable low resistance divider */
 833  0008 72195401      	bres	21505,#4
 834                     ; 189 }
 837  000c 81            	ret	
 944                     ; 197 void LCD_PulseOnDurationConfig(LCD_PulseOnDuration_TypeDef LCD_PulseOnDuration)
 944                     ; 198 {
 945                     .text:	section	.text,new
 946  0000               _LCD_PulseOnDurationConfig:
 948  0000 88            	push	a
 949       00000000      OFST:	set	0
 952                     ; 200   assert_param(IS_LCD_PULSE_DURATION(LCD_PulseOnDuration));
 954                     ; 202   LCD->CR2 &= (uint8_t)(~LCD_CR2_PON); /* Clear the pulses on duration bits */
 956  0001 c65401        	ld	a,21505
 957  0004 a41f          	and	a,#31
 958  0006 c75401        	ld	21505,a
 959                     ; 203   LCD->CR2 |= LCD_PulseOnDuration;
 961  0009 c65401        	ld	a,21505
 962  000c 1a01          	or	a,(OFST+1,sp)
 963  000e c75401        	ld	21505,a
 964                     ; 205 }
 967  0011 84            	pop	a
 968  0012 81            	ret	
1065                     ; 212 void LCD_DeadTimeConfig(LCD_DeadTime_TypeDef LCD_DeadTime)
1065                     ; 213 {
1066                     .text:	section	.text,new
1067  0000               _LCD_DeadTimeConfig:
1069  0000 88            	push	a
1070       00000000      OFST:	set	0
1073                     ; 215   assert_param(IS_LCD_DEAD_TIME(LCD_DeadTime));
1075                     ; 217   LCD->CR3 &= (uint8_t)(~LCD_CR3_DEAD);  /* Clear the dead time bits  */
1077  0001 c65402        	ld	a,21506
1078  0004 a4f8          	and	a,#248
1079  0006 c75402        	ld	21506,a
1080                     ; 219   LCD->CR3 |= LCD_DeadTime;
1082  0009 c65402        	ld	a,21506
1083  000c 1a01          	or	a,(OFST+1,sp)
1084  000e c75402        	ld	21506,a
1085                     ; 221 }
1088  0011 84            	pop	a
1089  0012 81            	ret	
1241                     ; 233 void LCD_BlinkConfig(LCD_BlinkMode_TypeDef LCD_BlinkMode,
1241                     ; 234                      LCD_BlinkFrequency_TypeDef LCD_BlinkFrequency)
1241                     ; 235 {
1242                     .text:	section	.text,new
1243  0000               _LCD_BlinkConfig:
1247                     ; 237   assert_param(IS_LCD_BLINK_MODE(LCD_BlinkMode));
1249                     ; 238   assert_param(IS_LCD_BLINK_FREQUENCY(LCD_BlinkFrequency));
1251                     ; 240   LCD->CR1 &= (uint8_t)(~LCD_CR1_BLINK); /* Clear the blink mode bits */
1253  0000 c65400        	ld	a,21504
1254  0003 a43f          	and	a,#63
1255  0005 c75400        	ld	21504,a
1256                     ; 241   LCD->CR1 |= LCD_BlinkMode; /* Config the LCD Blink Mode */
1258  0008 9e            	ld	a,xh
1259  0009 ca5400        	or	a,21504
1260  000c c75400        	ld	21504,a
1261                     ; 243   LCD->CR1 &= (uint8_t)(~LCD_CR1_BLINKF); /* Clear the blink frequency bits */
1263  000f c65400        	ld	a,21504
1264  0012 a4c7          	and	a,#199
1265  0014 c75400        	ld	21504,a
1266                     ; 244   LCD->CR1 |= LCD_BlinkFrequency; /* Config the LCD Blink Frequency */
1268  0017 9f            	ld	a,xl
1269  0018 ca5400        	or	a,21504
1270  001b c75400        	ld	21504,a
1271                     ; 246 }
1274  001e 81            	ret	
1371                     ; 254 void LCD_ContrastConfig(LCD_Contrast_TypeDef LCD_Contrast)
1371                     ; 255 {
1372                     .text:	section	.text,new
1373  0000               _LCD_ContrastConfig:
1375  0000 88            	push	a
1376       00000000      OFST:	set	0
1379                     ; 257   assert_param(IS_LCD_CONTRAST(LCD_Contrast));
1381                     ; 259   LCD->CR2 &= (uint8_t)(~LCD_CR2_CC); /* Clear the contrast bits  */
1383  0001 c65401        	ld	a,21505
1384  0004 a4f1          	and	a,#241
1385  0006 c75401        	ld	21505,a
1386                     ; 260   LCD->CR2 |= LCD_Contrast; /* Select the maximum voltage value Vlcd */
1388  0009 c65401        	ld	a,21505
1389  000c 1a01          	or	a,(OFST+1,sp)
1390  000e c75401        	ld	21505,a
1391                     ; 262 }
1394  0011 84            	pop	a
1395  0012 81            	ret	
1494                     ; 272 void LCD_PortMaskConfig(LCD_PortMaskRegister_TypeDef LCD_PortMaskRegister, uint8_t LCD_Mask)
1494                     ; 273 {
1495                     .text:	section	.text,new
1496  0000               _LCD_PortMaskConfig:
1498  0000 89            	pushw	x
1499       00000000      OFST:	set	0
1502                     ; 275   assert_param(IS_LCD_PORT_MASK(LCD_PortMaskRegister));
1504                     ; 278   LCD->PM[LCD_PortMaskRegister] =  LCD_Mask;
1506  0001 9e            	ld	a,xh
1507  0002 5f            	clrw	x
1508  0003 97            	ld	xl,a
1509  0004 7b02          	ld	a,(OFST+2,sp)
1510  0006 d75404        	ld	(21508,x),a
1511                     ; 280 }
1514  0009 85            	popw	x
1515  000a 81            	ret	
1719                     ; 290 void LCD_WriteRAM(LCD_RAMRegister_TypeDef LCD_RAMRegister, uint8_t LCD_Data)
1719                     ; 291 {
1720                     .text:	section	.text,new
1721  0000               _LCD_WriteRAM:
1723  0000 89            	pushw	x
1724       00000000      OFST:	set	0
1727                     ; 293   assert_param(IS_LCD_RAM_REGISTER(LCD_RAMRegister));
1729                     ; 296   LCD->RAM[LCD_RAMRegister] =  LCD_Data;
1731  0001 9e            	ld	a,xh
1732  0002 5f            	clrw	x
1733  0003 97            	ld	xl,a
1734  0004 7b02          	ld	a,(OFST+2,sp)
1735  0006 d7540c        	ld	(21516,x),a
1736                     ; 298 }
1739  0009 85            	popw	x
1740  000a 81            	ret	
1797                     ; 307 void LCD_PageSelect(LCD_PageSelection_TypeDef LCD_PageSelection)
1797                     ; 308 {
1798                     .text:	section	.text,new
1799  0000               _LCD_PageSelect:
1803                     ; 310   assert_param(IS_LCD_PAGE_SELECT(LCD_PageSelection));
1805                     ; 312   LCD->CR4 &= (uint8_t)(~LCD_CR4_PAGECOM); /* Clear the PAGE COM bit */
1807  0000 7215542f      	bres	21551,#2
1808                     ; 313   LCD->CR4 |= LCD_PageSelection; /* Select the LCD page */
1810  0004 ca542f        	or	a,21551
1811  0007 c7542f        	ld	21551,a
1812                     ; 315 }
1815  000a 81            	ret	
1871                     ; 321 FlagStatus LCD_GetFlagStatus(void)
1871                     ; 322 {
1872                     .text:	section	.text,new
1873  0000               _LCD_GetFlagStatus:
1875  0000 88            	push	a
1876       00000001      OFST:	set	1
1879                     ; 323   FlagStatus status = RESET;
1881                     ; 326   if ((LCD->CR3 & (uint8_t)LCD_CR3_SOF) != (uint8_t)RESET)
1883  0001 7209540204    	btjf	21506,#4,L7201
1884                     ; 328     status = SET; /* Flag is set */
1886  0006 a601          	ld	a,#1
1888  0008 2001          	jra	L1301
1889  000a               L7201:
1890                     ; 332     status = RESET; /* Flag is reset*/
1892  000a 4f            	clr	a
1893  000b               L1301:
1894                     ; 335   return status;
1898  000b 5b01          	addw	sp,#1
1899  000d 81            	ret	
1922                     ; 344 void LCD_ClearFlag(void)
1922                     ; 345 {
1923                     .text:	section	.text,new
1924  0000               _LCD_ClearFlag:
1928                     ; 347   LCD->CR3 |= (uint8_t)(LCD_CR3_SOFC);
1930  0000 72165402      	bset	21506,#3
1931                     ; 349 }
1934  0004 81            	ret	
1979                     ; 356 ITStatus LCD_GetITStatus(void)
1979                     ; 357 {
1980                     .text:	section	.text,new
1981  0000               _LCD_GetITStatus:
1983  0000 88            	push	a
1984       00000001      OFST:	set	1
1987                     ; 358   ITStatus pendingbitstatus = RESET;
1989                     ; 359   uint8_t enablestatus = 0;
1991                     ; 361   enablestatus = (uint8_t)((uint8_t)LCD->CR3 & LCD_CR3_SOFIE);
1993  0001 c65402        	ld	a,21506
1994  0004 a420          	and	a,#32
1995  0006 6b01          	ld	(OFST+0,sp),a
1996                     ; 363   if (((LCD->CR3 & LCD_CR3_SOF) != RESET) && enablestatus)
1998  0008 7209540206    	btjf	21506,#4,L5601
2000  000d 2704          	jreq	L5601
2001                     ; 366     pendingbitstatus = SET;
2003  000f a601          	ld	a,#1
2005  0011 2001          	jra	L7601
2006  0013               L5601:
2007                     ; 371     pendingbitstatus = RESET;
2009  0013 4f            	clr	a
2010  0014               L7601:
2011                     ; 374   return  pendingbitstatus;
2015  0014 5b01          	addw	sp,#1
2016  0016 81            	ret	
2040                     ; 383 void LCD_ClearITPendingBit(void)
2040                     ; 384 {
2041                     .text:	section	.text,new
2042  0000               _LCD_ClearITPendingBit:
2046                     ; 386   LCD->CR3 |= (uint8_t)(LCD_CR3_SOFC);
2048  0000 72165402      	bset	21506,#3
2049                     ; 388 }
2052  0004 81            	ret	
2065                     	xdef	_LCD_ClearITPendingBit
2066                     	xdef	_LCD_GetITStatus
2067                     	xdef	_LCD_ClearFlag
2068                     	xdef	_LCD_GetFlagStatus
2069                     	xdef	_LCD_PageSelect
2070                     	xdef	_LCD_WriteRAM
2071                     	xdef	_LCD_PortMaskConfig
2072                     	xdef	_LCD_BlinkConfig
2073                     	xdef	_LCD_ContrastConfig
2074                     	xdef	_LCD_DeadTimeConfig
2075                     	xdef	_LCD_PulseOnDurationConfig
2076                     	xdef	_LCD_HighDriveCmd
2077                     	xdef	_LCD_ITConfig
2078                     	xdef	_LCD_Cmd
2079                     	xdef	_LCD_Init
2080                     	xdef	_LCD_DeInit
2099                     	end
