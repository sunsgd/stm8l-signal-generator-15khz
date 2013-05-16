   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  19                     	bsct
  20  0000               _KeyPressed:
  21  0000 00            	dc.b	0
  22  0001               _t_bar:
  23  0001 00            	dc.b	0
  24  0002 00            	dc.b	0
  25                     .const:	section	.text
  26  0000               _CapLetterMap:
  27  0000 fe00          	dc.w	-512
  28  0002 6711          	dc.w	26385
  29  0004 1d00          	dc.w	7424
  30  0006 4711          	dc.w	18193
  31  0008 9d00          	dc.w	-25344
  32  000a 9c00          	dc.w	-25600
  33  000c 3f00          	dc.w	16128
  34  000e fa00          	dc.w	-1536
  35  0010 0011          	dc.w	17
  36  0012 5300          	dc.w	21248
  37  0014 9844          	dc.w	-26556
  38  0016 1900          	dc.w	6400
  39  0018 5a42          	dc.w	23106
  40  001a 5a06          	dc.w	23046
  41  001c 5f00          	dc.w	24320
  42  001e fc00          	dc.w	-1024
  43  0020 5f04          	dc.w	24324
  44  0022 fc04          	dc.w	-1020
  45  0024 af00          	dc.w	-20736
  46  0026 0411          	dc.w	1041
  47  0028 5b00          	dc.w	23296
  48  002a 18c0          	dc.w	6336
  49  002c 5a84          	dc.w	23172
  50  002e 00c6          	dc.w	198
  51  0030 0052          	dc.w	82
  52  0032 05c0          	dc.w	1472
  53  0034               _NumberMap:
  54  0034 5f00          	dc.w	24320
  55  0036 4200          	dc.w	16896
  56  0038 f500          	dc.w	-2816
  57  003a 6700          	dc.w	26368
  58  003c ea00          	dc.w	-5632
  59  003e af00          	dc.w	-20736
  60  0040 bf00          	dc.w	-16640
  61  0042 4600          	dc.w	17920
  62  0044 ff00          	dc.w	-256
  63  0046 ef00          	dc.w	-4352
 101                     ; 90 void LCD_GLASS_Init(void)
 101                     ; 91 {
 103                     .text:	section	.text,new
 104  0000               _LCD_GLASS_Init:
 108                     ; 94   CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);
 110  0000 ae1201        	ldw	x,#4609
 111  0003 cd0000        	call	_CLK_PeripheralClockConfig
 113                     ; 95   CLK_PeripheralClockConfig(CLK_Peripheral_LCD, ENABLE);
 115  0006 ae1301        	ldw	x,#4865
 116  0009 cd0000        	call	_CLK_PeripheralClockConfig
 118                     ; 100     CLK_RTCClockConfig(CLK_RTCCLKSource_LSI, CLK_RTCCLKDiv_1);
 120  000c ae0400        	ldw	x,#1024
 121  000f cd0000        	call	_CLK_RTCClockConfig
 123                     ; 104   LCD_Init(LCD_Prescaler_1, LCD_Divider_31, LCD_Duty_1_4, 
 123                     ; 105                                    LCD_Bias_1_3, LCD_VoltageSource_Internal);
 125  0012 4b00          	push	#0
 126  0014 4b00          	push	#0
 127  0016 4b06          	push	#6
 128  0018 ae000f        	ldw	x,#15
 129  001b cd0000        	call	_LCD_Init
 131  001e 5b03          	addw	sp,#3
 132                     ; 110   LCD_PortMaskConfig(LCD_PortMaskRegister_0, 0xFF);
 134  0020 ae00ff        	ldw	x,#255
 135  0023 cd0000        	call	_LCD_PortMaskConfig
 137                     ; 111   LCD_PortMaskConfig(LCD_PortMaskRegister_1, 0xFF);
 139  0026 ae01ff        	ldw	x,#511
 140  0029 cd0000        	call	_LCD_PortMaskConfig
 142                     ; 112   LCD_PortMaskConfig(LCD_PortMaskRegister_2, 0xff);
 144  002c ae02ff        	ldw	x,#767
 145  002f cd0000        	call	_LCD_PortMaskConfig
 147                     ; 115   LCD_ContrastConfig(LCD_Contrast_3V0);
 149  0032 a608          	ld	a,#8
 150  0034 cd0000        	call	_LCD_ContrastConfig
 152                     ; 117   LCD_DeadTimeConfig(LCD_DeadTime_0);
 154  0037 4f            	clr	a
 155  0038 cd0000        	call	_LCD_DeadTimeConfig
 157                     ; 118   LCD_PulseOnDurationConfig(LCD_PulseOnDuration_1);
 159  003b a620          	ld	a,#32
 160  003d cd0000        	call	_LCD_PulseOnDurationConfig
 162                     ; 121   LCD_Cmd(ENABLE);
 164  0040 a601          	ld	a,#1
 166                     ; 122 }
 169  0042 cc0000        	jp	_LCD_Cmd
 266                     ; 129 void LCD_contrast()
 266                     ; 130 {
 267                     .text:	section	.text,new
 268  0000               _LCD_contrast:
 270       00000001      OFST:	set	1
 273                     ; 134   contrast = (LCD_Contrast_TypeDef) (LCD->CR2 & LCD_Contrast_3V3);
 275  0000 c65401        	ld	a,21505
 276  0003 a40e          	and	a,#14
 277                     ; 145 }
 280  0005 81            	ret	
 304                     ; 152 void LCD_bar()
 304                     ; 153 {
 305                     .text:	section	.text,new
 306  0000               _LCD_bar:
 310                     ; 155   LCD->RAM[LCD_RAMRegister_11] &= 0x5f;
 312  0000 c65417        	ld	a,21527
 313  0003 a45f          	and	a,#95
 314  0005 c75417        	ld	21527,a
 315                     ; 156   LCD->RAM[LCD_RAMRegister_11] |= t_bar[0]&0xa0;
 317  0008 b601          	ld	a,_t_bar
 318  000a a4a0          	and	a,#160
 319  000c ca5417        	or	a,21527
 320  000f c75417        	ld	21527,a
 321                     ; 159   LCD->RAM[LCD_RAMRegister_8] &= 0xf5;
 323  0012 c65414        	ld	a,21524
 324  0015 a4f5          	and	a,#245
 325  0017 c75414        	ld	21524,a
 326                     ; 160   LCD->RAM[LCD_RAMRegister_8] |= t_bar[1]&0x0a;
 328  001a b602          	ld	a,_t_bar+1
 329  001c a40a          	and	a,#10
 330  001e ca5414        	or	a,21524
 331  0021 c75414        	ld	21524,a
 332                     ; 161 }
 335  0024 81            	ret	
 449                     	switch	.const
 450  0048               L44:
 451  0048 0042          	dc.w	L701
 452  004a 0055          	dc.w	L311
 453  004c 0055          	dc.w	L311
 454  004e 0047          	dc.w	L111
 455  0050 0047          	dc.w	L111
 456  0052 0047          	dc.w	L111
 457  0054 0047          	dc.w	L111
 458  0056 0047          	dc.w	L111
 459  0058 0047          	dc.w	L111
 460  005a 0047          	dc.w	L111
 461  005c 0047          	dc.w	L111
 462  005e 0047          	dc.w	L111
 463  0060 0047          	dc.w	L111
 464                     ; 174 static void LCD_Conv_Char_Seg(uint8_t* c,bool point,bool column, uint8_t* digit)
 464                     ; 175 {
 465                     .text:	section	.text,new
 466  0000               L3_LCD_Conv_Char_Seg:
 468  0000 89            	pushw	x
 469  0001 5204          	subw	sp,#4
 470       00000004      OFST:	set	4
 473                     ; 176   uint16_t ch = 0 ;
 475  0003 5f            	clrw	x
 476  0004 1f03          	ldw	(OFST-1,sp),x
 477                     ; 179   switch (*c)
 479  0006 1e05          	ldw	x,(OFST+1,sp)
 480  0008 f6            	ld	a,(x)
 482                     ; 229       break;
 483  0009 a02d          	sub	a,#45
 484  000b a10d          	cp	a,#13
 485  000d 2407          	jruge	L24
 486  000f 5f            	clrw	x
 487  0010 97            	ld	xl,a
 488  0011 58            	sllw	x
 489  0012 de0048        	ldw	x,(L44,x)
 490  0015 fc            	jp	(x)
 491  0016               L24:
 492  0016 a0f3          	sub	a,#-13
 493  0018 2711          	jreq	L57
 494  001a a00a          	sub	a,#10
 495  001c 2710          	jreq	L77
 496  001e a043          	sub	a,#67
 497  0020 2716          	jreq	L301
 498  0022 4a            	dec	a
 499  0023 2718          	jreq	L501
 500  0025 a047          	sub	a,#71
 501  0027 270a          	jreq	L101
 502  0029 202a          	jra	L311
 503  002b               L57:
 504                     ; 181     case ' ' : 
 504                     ; 182       ch = 0x00;
 506  002b 5f            	clrw	x
 507                     ; 183       break;
 509  002c 2051          	jp	LC001
 510  002e               L77:
 511                     ; 185     case '*':
 511                     ; 186       ch = star;
 513  002e aea0d7        	ldw	x,#41175
 514                     ; 187       break;
 516  0031 204c          	jp	LC001
 517  0033               L101:
 518                     ; 189     case 'µ' :
 518                     ; 190       ch = C_UMAP;
 520  0033 ae6081        	ldw	x,#24705
 521                     ; 191       break;
 523  0036 2047          	jp	LC001
 524  0038               L301:
 525                     ; 193     case 'm' :
 525                     ; 194       ch = C_mMap;
 527  0038 aeb210        	ldw	x,#45584
 528                     ; 195       break;
 530  003b 2042          	jp	LC001
 531  003d               L501:
 532                     ; 197     case 'n' :
 532                     ; 198       ch = C_nMap;
 534  003d ae2210        	ldw	x,#8720
 535                     ; 199       break;					
 537  0040 203d          	jp	LC001
 538  0042               L701:
 539                     ; 201     case '-' :
 539                     ; 202       ch = C_minus;
 541  0042 aea000        	ldw	x,#40960
 542                     ; 203       break;
 544  0045 2038          	jp	LC001
 545  0047               L111:
 546                     ; 205     case '0':
 546                     ; 206     case '1':
 546                     ; 207     case '2':
 546                     ; 208     case '3':
 546                     ; 209     case '4':
 546                     ; 210     case '5':
 546                     ; 211     case '6':
 546                     ; 212     case '7':
 546                     ; 213     case '8':
 546                     ; 214     case '9':			
 546                     ; 215       ch = NumberMap[*c-0x30];		
 548  0047 1e05          	ldw	x,(OFST+1,sp)
 549  0049 f6            	ld	a,(x)
 550  004a 5f            	clrw	x
 551  004b 97            	ld	xl,a
 552  004c 58            	sllw	x
 553  004d 1d0060        	subw	x,#96
 554  0050 de0034        	ldw	x,(_NumberMap,x)
 555                     ; 216       break;
 557  0053 202a          	jp	LC001
 558  0055               L311:
 559                     ; 218     default:
 559                     ; 219       /* The character c is one letter in upper case*/
 559                     ; 220       if ( (*c < 0x5b) && (*c > 0x40) )
 561  0055 1e05          	ldw	x,(OFST+1,sp)
 562  0057 f6            	ld	a,(x)
 563  0058 a15b          	cp	a,#91
 564  005a 2412          	jruge	L771
 566  005c a141          	cp	a,#65
 567  005e 250e          	jrult	L771
 568                     ; 222         ch = CapLetterMap[*c-'A'];
 570  0060 5f            	clrw	x
 571  0061 97            	ld	xl,a
 572  0062 58            	sllw	x
 573  0063 1d0082        	subw	x,#130
 574  0066 de0000        	ldw	x,(_CapLetterMap,x)
 575  0069 1f03          	ldw	(OFST-1,sp),x
 576  006b 1e05          	ldw	x,(OFST+1,sp)
 577  006d f6            	ld	a,(x)
 578  006e               L771:
 579                     ; 225       if ( (*c <0x7b) && ( *c> 0x60) )
 581  006e a17b          	cp	a,#123
 582  0070 240f          	jruge	L571
 584  0072 a161          	cp	a,#97
 585  0074 250b          	jrult	L571
 586                     ; 227         ch = CapLetterMap[*c-'a'];
 588  0076 5f            	clrw	x
 589  0077 97            	ld	xl,a
 590  0078 58            	sllw	x
 591  0079 1d00c2        	subw	x,#194
 592  007c de0000        	ldw	x,(_CapLetterMap,x)
 593  007f               LC001:
 594  007f 1f03          	ldw	(OFST-1,sp),x
 595  0081               L571:
 596                     ; 233   if (point)
 598  0081 7b09          	ld	a,(OFST+5,sp)
 599  0083 2706          	jreq	L302
 600                     ; 235     ch |= 0x0008;
 602  0085 7b04          	ld	a,(OFST+0,sp)
 603  0087 aa08          	or	a,#8
 604  0089 6b04          	ld	(OFST+0,sp),a
 605  008b               L302:
 606                     ; 239   if (column)
 608  008b 7b0a          	ld	a,(OFST+6,sp)
 609  008d 2706          	jreq	L502
 610                     ; 241     ch |= 0x0020;
 612  008f 7b04          	ld	a,(OFST+0,sp)
 613  0091 aa20          	or	a,#32
 614  0093 6b04          	ld	(OFST+0,sp),a
 615  0095               L502:
 616                     ; 244   for (i = 12,j=0 ;j<4; i-=4,j++)
 618  0095 a60c          	ld	a,#12
 619  0097 6b01          	ld	(OFST-3,sp),a
 620  0099 0f02          	clr	(OFST-2,sp)
 621  009b               L702:
 622                     ; 246     digit[j] = (ch >> i) & 0x0f; //To isolate the less signifiant dibit
 624  009b 7b0b          	ld	a,(OFST+7,sp)
 625  009d 97            	ld	xl,a
 626  009e 7b0c          	ld	a,(OFST+8,sp)
 627  00a0 1b02          	add	a,(OFST-2,sp)
 628  00a2 2401          	jrnc	L64
 629  00a4 5c            	incw	x
 630  00a5               L64:
 631  00a5 02            	rlwa	x,a
 632  00a6 89            	pushw	x
 633  00a7 1e05          	ldw	x,(OFST+1,sp)
 634  00a9 7b03          	ld	a,(OFST-1,sp)
 635  00ab 2704          	jreq	L05
 636  00ad               L25:
 637  00ad 54            	srlw	x
 638  00ae 4a            	dec	a
 639  00af 26fc          	jrne	L25
 640  00b1               L05:
 641  00b1 01            	rrwa	x,a
 642  00b2 85            	popw	x
 643  00b3 a40f          	and	a,#15
 644  00b5 f7            	ld	(x),a
 645                     ; 244   for (i = 12,j=0 ;j<4; i-=4,j++)
 647  00b6 7b01          	ld	a,(OFST-3,sp)
 648  00b8 a004          	sub	a,#4
 649  00ba 6b01          	ld	(OFST-3,sp),a
 650  00bc 0c02          	inc	(OFST-2,sp)
 653  00be 7b02          	ld	a,(OFST-2,sp)
 654  00c0 a104          	cp	a,#4
 655  00c2 25d7          	jrult	L702
 656                     ; 248 }
 659  00c4 5b06          	addw	sp,#6
 660  00c6 81            	ret	
 737                     ; 263 void LCD_GLASS_WriteChar(uint8_t* ch, bool point, bool column, uint8_t position)
 737                     ; 264 {
 738                     .text:	section	.text,new
 739  0000               _LCD_GLASS_WriteChar:
 741  0000 89            	pushw	x
 742  0001 5204          	subw	sp,#4
 743       00000004      OFST:	set	4
 746                     ; 268   LCD_Conv_Char_Seg(ch,point,column,digit);
 748  0003 96            	ldw	x,sp
 749  0004 5c            	incw	x
 750  0005 89            	pushw	x
 751  0006 7b0c          	ld	a,(OFST+8,sp)
 752  0008 88            	push	a
 753  0009 7b0c          	ld	a,(OFST+8,sp)
 754  000b 88            	push	a
 755  000c 1e09          	ldw	x,(OFST+5,sp)
 756  000e cd0000        	call	L3_LCD_Conv_Char_Seg
 758  0011 5b04          	addw	sp,#4
 759                     ; 270   switch (position)
 761  0013 7b0b          	ld	a,(OFST+7,sp)
 763                     ; 437       default:
 763                     ; 438               break;
 764  0015 4a            	dec	a
 765  0016 2721          	jreq	L512
 766  0018 4a            	dec	a
 767  0019 2603cc00d9    	jreq	L712
 768  001e 4a            	dec	a
 769  001f 2603cc0180    	jreq	L122
 770  0024 4a            	dec	a
 771  0025 2603cc0223    	jreq	L322
 772  002a 4a            	dec	a
 773  002b 2603cc02c7    	jreq	L522
 774  0030 4a            	dec	a
 775  0031 2603cc035f    	jreq	L722
 776  0036 cc03fb        	jra	L372
 777  0039               L512:
 778                     ; 273     case 1:
 778                     ; 274       LCD->RAM[LCD_RAMRegister_0] &= 0x0fc;
 780  0039 c6540c        	ld	a,21516
 781  003c a4fc          	and	a,#252
 782  003e c7540c        	ld	21516,a
 783                     ; 275       LCD->RAM[LCD_RAMRegister_0] |= (uint8_t)(digit[0]& 0x03); // 1M 1E	
 785  0041 7b01          	ld	a,(OFST-3,sp)
 786  0043 a403          	and	a,#3
 787  0045 ca540c        	or	a,21516
 788  0048 c7540c        	ld	21516,a
 789                     ; 277       LCD->RAM[LCD_RAMRegister_2] &= 0x3f;
 791  004b c6540e        	ld	a,21518
 792  004e a43f          	and	a,#63
 793  0050 c7540e        	ld	21518,a
 794                     ; 278       LCD->RAM[LCD_RAMRegister_2] |= (uint8_t)((digit[0]<<4) & 0xc0); // 1G 1B
 796  0053 7b01          	ld	a,(OFST-3,sp)
 797  0055 97            	ld	xl,a
 798  0056 a610          	ld	a,#16
 799  0058 42            	mul	x,a
 800  0059 9f            	ld	a,xl
 801  005a a4c0          	and	a,#192
 802  005c ca540e        	or	a,21518
 803  005f c7540e        	ld	21518,a
 804                     ; 280       LCD->RAM[LCD_RAMRegister_3] &= 0x0cf;
 806  0062 c6540f        	ld	a,21519
 807  0065 a4cf          	and	a,#207
 808  0067 c7540f        	ld	21519,a
 809                     ; 281       LCD->RAM[LCD_RAMRegister_3] |= (uint8_t)(digit[1]<<4 & 0x30); // 1C 1D
 811  006a 7b02          	ld	a,(OFST-2,sp)
 812  006c 97            	ld	xl,a
 813  006d a610          	ld	a,#16
 814  006f 42            	mul	x,a
 815  0070 9f            	ld	a,xl
 816  0071 a430          	and	a,#48
 817  0073 ca540f        	or	a,21519
 818  0076 c7540f        	ld	21519,a
 819                     ; 283       LCD->RAM[LCD_RAMRegister_6] &= 0xf3;
 821  0079 c65412        	ld	a,21522
 822  007c a4f3          	and	a,#243
 823  007e c75412        	ld	21522,a
 824                     ; 284       LCD->RAM[LCD_RAMRegister_6] |= (uint8_t)(digit[1]&0x0c); // 1F 1A
 826  0081 7b02          	ld	a,(OFST-2,sp)
 827  0083 a40c          	and	a,#12
 828  0085 ca5412        	or	a,21522
 829  0088 c75412        	ld	21522,a
 830                     ; 286       LCD->RAM[LCD_RAMRegister_7] &= 0x0fc;
 832  008b c65413        	ld	a,21523
 833  008e a4fc          	and	a,#252
 834  0090 c75413        	ld	21523,a
 835                     ; 287       LCD->RAM[LCD_RAMRegister_7] |= (uint8_t)(digit[2]&0x03); // 1Col 1P		
 837  0093 7b03          	ld	a,(OFST-1,sp)
 838  0095 a403          	and	a,#3
 839  0097 ca5413        	or	a,21523
 840  009a c75413        	ld	21523,a
 841                     ; 289       LCD->RAM[LCD_RAMRegister_9] &= 0x3f;
 843  009d c65415        	ld	a,21525
 844  00a0 a43f          	and	a,#63
 845  00a2 c75415        	ld	21525,a
 846                     ; 290       LCD->RAM[LCD_RAMRegister_9] |= (uint8_t)((digit[2]<<4) & 0xc0); // 1Q 1K										
 848  00a5 7b03          	ld	a,(OFST-1,sp)
 849  00a7 97            	ld	xl,a
 850  00a8 a610          	ld	a,#16
 851  00aa 42            	mul	x,a
 852  00ab 9f            	ld	a,xl
 853  00ac a4c0          	and	a,#192
 854  00ae ca5415        	or	a,21525
 855  00b1 c75415        	ld	21525,a
 856                     ; 292       LCD->RAM[LCD_RAMRegister_10] &= 0xcf;
 858  00b4 c65416        	ld	a,21526
 859  00b7 a4cf          	and	a,#207
 860  00b9 c75416        	ld	21526,a
 861                     ; 293       LCD->RAM[LCD_RAMRegister_10] |= (uint8_t)((digit[3]<<2)& 0x30); // 1DP 1N	
 863  00bc 7b04          	ld	a,(OFST+0,sp)
 864  00be 48            	sll	a
 865  00bf 48            	sll	a
 866  00c0 a430          	and	a,#48
 867  00c2 ca5416        	or	a,21526
 868  00c5 c75416        	ld	21526,a
 869                     ; 295       LCD->RAM[LCD_RAMRegister_13] &= 0xf3;
 871  00c8 c65419        	ld	a,21529
 872  00cb a4f3          	and	a,#243
 873  00cd c75419        	ld	21529,a
 874                     ; 296       LCD->RAM[LCD_RAMRegister_13] |= (uint8_t)((digit[3]<<2) & 0x0c); // 1H 1J
 876  00d0 7b04          	ld	a,(OFST+0,sp)
 877  00d2 48            	sll	a
 878  00d3 48            	sll	a
 879  00d4 a40c          	and	a,#12
 880                     ; 297       break;
 882  00d6 cc0177        	jp	LC003
 883  00d9               L712:
 884                     ; 300     case 2:
 884                     ; 301       LCD->RAM[LCD_RAMRegister_0] &= 0x0f3;
 886  00d9 c6540c        	ld	a,21516
 887  00dc a4f3          	and	a,#243
 888  00de c7540c        	ld	21516,a
 889                     ; 302       LCD->RAM[LCD_RAMRegister_0] |= (uint8_t)((digit[0]<<2)&0x0c); // 2M 2E	
 891  00e1 7b01          	ld	a,(OFST-3,sp)
 892  00e3 48            	sll	a
 893  00e4 48            	sll	a
 894  00e5 a40c          	and	a,#12
 895  00e7 ca540c        	or	a,21516
 896  00ea c7540c        	ld	21516,a
 897                     ; 304       LCD->RAM[LCD_RAMRegister_2] &= 0xcf;
 899  00ed c6540e        	ld	a,21518
 900  00f0 a4cf          	and	a,#207
 901  00f2 c7540e        	ld	21518,a
 902                     ; 305       LCD->RAM[LCD_RAMRegister_2] |= (uint8_t)((digit[0]<<2)&0x30); // 2G 2B
 904  00f5 7b01          	ld	a,(OFST-3,sp)
 905  00f7 48            	sll	a
 906  00f8 48            	sll	a
 907  00f9 a430          	and	a,#48
 908  00fb ca540e        	or	a,21518
 909  00fe c7540e        	ld	21518,a
 910                     ; 307       LCD->RAM[LCD_RAMRegister_3] &= 0x3f;
 912  0101 c6540f        	ld	a,21519
 913  0104 a43f          	and	a,#63
 914  0106 c7540f        	ld	21519,a
 915                     ; 308       LCD->RAM[LCD_RAMRegister_3] |= (uint8_t)((digit[1]<<6) & 0xc0); // 2C 2D
 917  0109 7b02          	ld	a,(OFST-2,sp)
 918  010b 97            	ld	xl,a
 919  010c a640          	ld	a,#64
 920  010e 42            	mul	x,a
 921  010f 9f            	ld	a,xl
 922  0110 a4c0          	and	a,#192
 923  0112 ca540f        	or	a,21519
 924  0115 c7540f        	ld	21519,a
 925                     ; 310       LCD->RAM[LCD_RAMRegister_6] &= 0xfc;
 927  0118 c65412        	ld	a,21522
 928  011b a4fc          	and	a,#252
 929  011d c75412        	ld	21522,a
 930                     ; 311       LCD->RAM[LCD_RAMRegister_6] |= (uint8_t)((digit[1]>>2)&0x03); // 2F 2A
 932  0120 7b02          	ld	a,(OFST-2,sp)
 933  0122 a40c          	and	a,#12
 934  0124 44            	srl	a
 935  0125 44            	srl	a
 936  0126 ca5412        	or	a,21522
 937  0129 c75412        	ld	21522,a
 938                     ; 313       LCD->RAM[LCD_RAMRegister_7] &= 0xf3;
 940  012c c65413        	ld	a,21523
 941  012f a4f3          	and	a,#243
 942  0131 c75413        	ld	21523,a
 943                     ; 314       LCD->RAM[LCD_RAMRegister_7] |= (uint8_t)((digit[2]<<2)& 0x0c); // 2Col 2P		
 945  0134 7b03          	ld	a,(OFST-1,sp)
 946  0136 48            	sll	a
 947  0137 48            	sll	a
 948  0138 a40c          	and	a,#12
 949  013a ca5413        	or	a,21523
 950  013d c75413        	ld	21523,a
 951                     ; 316       LCD->RAM[LCD_RAMRegister_9] &= 0xcf;
 953  0140 c65415        	ld	a,21525
 954  0143 a4cf          	and	a,#207
 955  0145 c75415        	ld	21525,a
 956                     ; 317       LCD->RAM[LCD_RAMRegister_9] |= (uint8_t)((digit[2]<<2)&0x30); // 2Q 2K										
 958  0148 7b03          	ld	a,(OFST-1,sp)
 959  014a 48            	sll	a
 960  014b 48            	sll	a
 961  014c a430          	and	a,#48
 962  014e ca5415        	or	a,21525
 963  0151 c75415        	ld	21525,a
 964                     ; 319       LCD->RAM[LCD_RAMRegister_10] &= 0x3f;
 966  0154 c65416        	ld	a,21526
 967  0157 a43f          	and	a,#63
 968  0159 c75416        	ld	21526,a
 969                     ; 320       LCD->RAM[LCD_RAMRegister_10] |= (uint8_t)((digit[3]<<4)& 0xC0); // 2DP 2N	
 971  015c 7b04          	ld	a,(OFST+0,sp)
 972  015e 97            	ld	xl,a
 973  015f a610          	ld	a,#16
 974  0161 42            	mul	x,a
 975  0162 9f            	ld	a,xl
 976  0163 a4c0          	and	a,#192
 977  0165 ca5416        	or	a,21526
 978  0168 c75416        	ld	21526,a
 979                     ; 322       LCD->RAM[LCD_RAMRegister_13] &= 0xfc;
 981  016b c65419        	ld	a,21529
 982  016e a4fc          	and	a,#252
 983  0170 c75419        	ld	21529,a
 984                     ; 323       LCD->RAM[LCD_RAMRegister_13] |= (uint8_t)((digit[3])& 0x03); // 2H 2J
 986  0173 7b04          	ld	a,(OFST+0,sp)
 987  0175 a403          	and	a,#3
 988  0177               LC003:
 989  0177 ca5419        	or	a,21529
 990  017a c75419        	ld	21529,a
 991                     ; 324       break;
 993  017d cc03fb        	jra	L372
 994  0180               L122:
 995                     ; 327     case 3:
 995                     ; 328       LCD->RAM[LCD_RAMRegister_0] &= 0xcf;
 997  0180 c6540c        	ld	a,21516
 998  0183 a4cf          	and	a,#207
 999  0185 c7540c        	ld	21516,a
1000                     ; 329       LCD->RAM[LCD_RAMRegister_0] |= (uint8_t)(digit[0]<<4) & 0x30; // 3M 3E	
1002  0188 7b01          	ld	a,(OFST-3,sp)
1003  018a 97            	ld	xl,a
1004  018b a610          	ld	a,#16
1005  018d 42            	mul	x,a
1006  018e 9f            	ld	a,xl
1007  018f a430          	and	a,#48
1008  0191 ca540c        	or	a,21516
1009  0194 c7540c        	ld	21516,a
1010                     ; 331       LCD->RAM[LCD_RAMRegister_2] &= 0xf3;
1012  0197 c6540e        	ld	a,21518
1013  019a a4f3          	and	a,#243
1014  019c c7540e        	ld	21518,a
1015                     ; 332       LCD->RAM[LCD_RAMRegister_2] |= (uint8_t)(digit[0]) & 0x0c; // 3G 3B
1017  019f 7b01          	ld	a,(OFST-3,sp)
1018  01a1 a40c          	and	a,#12
1019  01a3 ca540e        	or	a,21518
1020  01a6 c7540e        	ld	21518,a
1021                     ; 334       LCD->RAM[LCD_RAMRegister_4] &= 0xfc;
1023  01a9 c65410        	ld	a,21520
1024  01ac a4fc          	and	a,#252
1025  01ae c75410        	ld	21520,a
1026                     ; 335       LCD->RAM[LCD_RAMRegister_4] |= (uint8_t)(digit[1]) & 0x03; // 3C 3D
1028  01b1 7b02          	ld	a,(OFST-2,sp)
1029  01b3 a403          	and	a,#3
1030  01b5 ca5410        	or	a,21520
1031  01b8 c75410        	ld	21520,a
1032                     ; 337       LCD->RAM[LCD_RAMRegister_5] &= 0x3f;
1034  01bb c65411        	ld	a,21521
1035  01be a43f          	and	a,#63
1036  01c0 c75411        	ld	21521,a
1037                     ; 338       LCD->RAM[LCD_RAMRegister_5] |= (uint8_t)(digit[1]<<4) & 0xc0; // 3F 3A
1039  01c3 7b02          	ld	a,(OFST-2,sp)
1040  01c5 97            	ld	xl,a
1041  01c6 a610          	ld	a,#16
1042  01c8 42            	mul	x,a
1043  01c9 9f            	ld	a,xl
1044  01ca a4c0          	and	a,#192
1045  01cc ca5411        	or	a,21521
1046  01cf c75411        	ld	21521,a
1047                     ; 340       LCD->RAM[LCD_RAMRegister_7] &= 0xcf;
1049  01d2 c65413        	ld	a,21523
1050  01d5 a4cf          	and	a,#207
1051  01d7 c75413        	ld	21523,a
1052                     ; 341       LCD->RAM[LCD_RAMRegister_7] |= (uint8_t)(digit[2]<<4)&0x30; // 3Col 3P		
1054  01da 7b03          	ld	a,(OFST-1,sp)
1055  01dc 97            	ld	xl,a
1056  01dd a610          	ld	a,#16
1057  01df 42            	mul	x,a
1058  01e0 9f            	ld	a,xl
1059  01e1 a430          	and	a,#48
1060  01e3 ca5413        	or	a,21523
1061  01e6 c75413        	ld	21523,a
1062                     ; 343       LCD->RAM[LCD_RAMRegister_9] &= 0xf3;
1064  01e9 c65415        	ld	a,21525
1065  01ec a4f3          	and	a,#243
1066  01ee c75415        	ld	21525,a
1067                     ; 344       LCD->RAM[LCD_RAMRegister_9] |= (uint8_t)(digit[2]) & 0x0C;  // 3Q 3K										
1069  01f1 7b03          	ld	a,(OFST-1,sp)
1070  01f3 a40c          	and	a,#12
1071  01f5 ca5415        	or	a,21525
1072  01f8 c75415        	ld	21525,a
1073                     ; 346       LCD->RAM[LCD_RAMRegister_11] &= 0xfc;
1075  01fb c65417        	ld	a,21527
1076  01fe a4fc          	and	a,#252
1077  0200 c75417        	ld	21527,a
1078                     ; 347       LCD->RAM[LCD_RAMRegister_11] |= (uint8_t)(digit[3]>>2) & 0x03 ; // 3DP 3N	
1080  0203 7b04          	ld	a,(OFST+0,sp)
1081  0205 a40c          	and	a,#12
1082  0207 44            	srl	a
1083  0208 44            	srl	a
1084  0209 ca5417        	or	a,21527
1085  020c c75417        	ld	21527,a
1086                     ; 349       LCD->RAM[LCD_RAMRegister_12] &= 0x3f;
1088  020f c65418        	ld	a,21528
1089  0212 a43f          	and	a,#63
1090  0214 c75418        	ld	21528,a
1091                     ; 350       LCD->RAM[LCD_RAMRegister_12] |= (uint8_t)(digit[3]<<6) & 0xc0; // 3H 3J
1093  0217 7b04          	ld	a,(OFST+0,sp)
1094  0219 97            	ld	xl,a
1095  021a a640          	ld	a,#64
1096  021c 42            	mul	x,a
1097  021d 9f            	ld	a,xl
1098  021e a4c0          	and	a,#192
1099                     ; 351       break;
1101  0220 cc03f5        	jp	LC002
1102  0223               L322:
1103                     ; 354     case 4:
1103                     ; 355       LCD->RAM[LCD_RAMRegister_0] &= 0x3f;
1105  0223 c6540c        	ld	a,21516
1106  0226 a43f          	and	a,#63
1107  0228 c7540c        	ld	21516,a
1108                     ; 356       LCD->RAM[LCD_RAMRegister_0] |= (uint8_t)(digit[0]<<6) & 0xc0; // 4M 4E	
1110  022b 7b01          	ld	a,(OFST-3,sp)
1111  022d 97            	ld	xl,a
1112  022e a640          	ld	a,#64
1113  0230 42            	mul	x,a
1114  0231 9f            	ld	a,xl
1115  0232 a4c0          	and	a,#192
1116  0234 ca540c        	or	a,21516
1117  0237 c7540c        	ld	21516,a
1118                     ; 358       LCD->RAM[LCD_RAMRegister_2] &= 0xfc;
1120  023a c6540e        	ld	a,21518
1121  023d a4fc          	and	a,#252
1122  023f c7540e        	ld	21518,a
1123                     ; 359       LCD->RAM[LCD_RAMRegister_2] |= (uint8_t)(digit[0]>>2) & 0x03; // 4G 4B
1125  0242 7b01          	ld	a,(OFST-3,sp)
1126  0244 a40c          	and	a,#12
1127  0246 44            	srl	a
1128  0247 44            	srl	a
1129  0248 ca540e        	or	a,21518
1130  024b c7540e        	ld	21518,a
1131                     ; 361       LCD->RAM[LCD_RAMRegister_4] &= 0xf3;
1133  024e c65410        	ld	a,21520
1134  0251 a4f3          	and	a,#243
1135  0253 c75410        	ld	21520,a
1136                     ; 362       LCD->RAM[LCD_RAMRegister_4] |= (uint8_t)(digit[1]<<2) & 0x0C; // 4C 4D
1138  0256 7b02          	ld	a,(OFST-2,sp)
1139  0258 48            	sll	a
1140  0259 48            	sll	a
1141  025a a40c          	and	a,#12
1142  025c ca5410        	or	a,21520
1143  025f c75410        	ld	21520,a
1144                     ; 364       LCD->RAM[LCD_RAMRegister_5] &= 0xcf;
1146  0262 c65411        	ld	a,21521
1147  0265 a4cf          	and	a,#207
1148  0267 c75411        	ld	21521,a
1149                     ; 365       LCD->RAM[LCD_RAMRegister_5] |= (uint8_t)(digit[1]<<2) & 0x30; // 4F 4A
1151  026a 7b02          	ld	a,(OFST-2,sp)
1152  026c 48            	sll	a
1153  026d 48            	sll	a
1154  026e a430          	and	a,#48
1155  0270 ca5411        	or	a,21521
1156  0273 c75411        	ld	21521,a
1157                     ; 367       LCD->RAM[LCD_RAMRegister_7] &= 0x3f;
1159  0276 c65413        	ld	a,21523
1160  0279 a43f          	and	a,#63
1161  027b c75413        	ld	21523,a
1162                     ; 368       LCD->RAM[LCD_RAMRegister_7] |= (uint8_t)(digit[2]<<6) & 0xC0; // 4Col 4P		
1164  027e 7b03          	ld	a,(OFST-1,sp)
1165  0280 97            	ld	xl,a
1166  0281 a640          	ld	a,#64
1167  0283 42            	mul	x,a
1168  0284 9f            	ld	a,xl
1169  0285 a4c0          	and	a,#192
1170  0287 ca5413        	or	a,21523
1171  028a c75413        	ld	21523,a
1172                     ; 370       LCD->RAM[LCD_RAMRegister_9] &= 0xfc;				
1174  028d c65415        	ld	a,21525
1175  0290 a4fc          	and	a,#252
1176  0292 c75415        	ld	21525,a
1177                     ; 371       LCD->RAM[LCD_RAMRegister_9] |= (uint8_t)(digit[2]>>2) & 0x03 ; // 4Q 4K										
1179  0295 7b03          	ld	a,(OFST-1,sp)
1180  0297 a40c          	and	a,#12
1181  0299 44            	srl	a
1182  029a 44            	srl	a
1183  029b ca5415        	or	a,21525
1184  029e c75415        	ld	21525,a
1185                     ; 373       LCD->RAM[LCD_RAMRegister_11] &= 0xf3;				
1187  02a1 c65417        	ld	a,21527
1188  02a4 a4f3          	and	a,#243
1189  02a6 c75417        	ld	21527,a
1190                     ; 374       LCD->RAM[LCD_RAMRegister_11] |= (uint8_t)(digit[3]) & 0x0C; // 4DP 4N	
1192  02a9 7b04          	ld	a,(OFST+0,sp)
1193  02ab a40c          	and	a,#12
1194  02ad ca5417        	or	a,21527
1195  02b0 c75417        	ld	21527,a
1196                     ; 376       LCD->RAM[LCD_RAMRegister_12] &= 0xcf;				
1198  02b3 c65418        	ld	a,21528
1199  02b6 a4cf          	and	a,#207
1200  02b8 c75418        	ld	21528,a
1201                     ; 377       LCD->RAM[LCD_RAMRegister_12] |= (uint8_t)(digit[3]<<4) & 0x30; // 4H 4J
1203  02bb 7b04          	ld	a,(OFST+0,sp)
1204  02bd 97            	ld	xl,a
1205  02be a610          	ld	a,#16
1206  02c0 42            	mul	x,a
1207  02c1 9f            	ld	a,xl
1208  02c2 a430          	and	a,#48
1209                     ; 378       break;
1211  02c4 cc03f5        	jp	LC002
1212  02c7               L522:
1213                     ; 381     case 5:
1213                     ; 382       LCD->RAM[LCD_RAMRegister_1] &= 0xfc;
1215  02c7 c6540d        	ld	a,21517
1216  02ca a4fc          	and	a,#252
1217  02cc c7540d        	ld	21517,a
1218                     ; 383       LCD->RAM[LCD_RAMRegister_1] |=  (uint8_t)(digit[0]) & 0x03; // 5M 5E	
1220  02cf 7b01          	ld	a,(OFST-3,sp)
1221  02d1 a403          	and	a,#3
1222  02d3 ca540d        	or	a,21517
1223  02d6 c7540d        	ld	21517,a
1224                     ; 385       LCD->RAM[LCD_RAMRegister_1] &= 0x3f;
1226  02d9 c6540d        	ld	a,21517
1227  02dc a43f          	and	a,#63
1228  02de c7540d        	ld	21517,a
1229                     ; 386       LCD->RAM[LCD_RAMRegister_1] |=  (uint8_t)(digit[0]<<4) & 0xc0; // 5G 5B
1231  02e1 7b01          	ld	a,(OFST-3,sp)
1232  02e3 97            	ld	xl,a
1233  02e4 a610          	ld	a,#16
1234  02e6 42            	mul	x,a
1235  02e7 9f            	ld	a,xl
1236  02e8 a4c0          	and	a,#192
1237  02ea ca540d        	or	a,21517
1238  02ed c7540d        	ld	21517,a
1239                     ; 388       LCD->RAM[LCD_RAMRegister_4] &= 0xcf;				
1241  02f0 c65410        	ld	a,21520
1242  02f3 a4cf          	and	a,#207
1243  02f5 c75410        	ld	21520,a
1244                     ; 389       LCD->RAM[LCD_RAMRegister_4] |= (uint8_t)(digit[1]<<4) & 0x30; // 5C 5D
1246  02f8 7b02          	ld	a,(OFST-2,sp)
1247  02fa 97            	ld	xl,a
1248  02fb a610          	ld	a,#16
1249  02fd 42            	mul	x,a
1250  02fe 9f            	ld	a,xl
1251  02ff a430          	and	a,#48
1252  0301 ca5410        	or	a,21520
1253  0304 c75410        	ld	21520,a
1254                     ; 391       LCD->RAM[LCD_RAMRegister_5] &= 0xf3;				
1256  0307 c65411        	ld	a,21521
1257  030a a4f3          	and	a,#243
1258  030c c75411        	ld	21521,a
1259                     ; 392       LCD->RAM[LCD_RAMRegister_5] |=  (uint8_t)(digit[1]) & 0x0c; // 5F 5A
1261  030f 7b02          	ld	a,(OFST-2,sp)
1262  0311 a40c          	and	a,#12
1263  0313 ca5411        	or	a,21521
1264  0316 c75411        	ld	21521,a
1265                     ; 396       LCD->RAM[LCD_RAMRegister_8] &= 0xfe;
1267  0319 72115414      	bres	21524,#0
1268                     ; 397       LCD->RAM[LCD_RAMRegister_8] |=  (uint8_t)(digit[2]) & 0x01; //  5P	
1270  031d 7b03          	ld	a,(OFST-1,sp)
1271  031f a401          	and	a,#1
1272  0321 ca5414        	or	a,21524
1273  0324 c75414        	ld	21524,a
1274                     ; 399       LCD->RAM[LCD_RAMRegister_8] &= 0x3f;					
1276  0327 c65414        	ld	a,21524
1277  032a a43f          	and	a,#63
1278  032c c75414        	ld	21524,a
1279                     ; 400       LCD->RAM[LCD_RAMRegister_8] |=  (uint8_t)(digit[2]<<4) & 0xc0; // 5Q 5K										
1281  032f 7b03          	ld	a,(OFST-1,sp)
1282  0331 97            	ld	xl,a
1283  0332 a610          	ld	a,#16
1284  0334 42            	mul	x,a
1285  0335 9f            	ld	a,xl
1286  0336 a4c0          	and	a,#192
1287  0338 ca5414        	or	a,21524
1288  033b c75414        	ld	21524,a
1289                     ; 402       LCD->RAM[LCD_RAMRegister_11] &= 0xef;				
1291  033e 72195417      	bres	21527,#4
1292                     ; 403       LCD->RAM[LCD_RAMRegister_11] |=  (uint8_t)(digit[3]<<2) & 0x10; // 5N	
1294  0342 7b04          	ld	a,(OFST+0,sp)
1295  0344 48            	sll	a
1296  0345 48            	sll	a
1297  0346 a410          	and	a,#16
1298  0348 ca5417        	or	a,21527
1299  034b c75417        	ld	21527,a
1300                     ; 405       LCD->RAM[LCD_RAMRegister_12] &= 0xf3;				
1302  034e c65418        	ld	a,21528
1303  0351 a4f3          	and	a,#243
1304  0353 c75418        	ld	21528,a
1305                     ; 406       LCD->RAM[LCD_RAMRegister_12] |=  (uint8_t)(digit[3]<<2) & 0x0C; // 5H 5J
1307  0356 7b04          	ld	a,(OFST+0,sp)
1308  0358 48            	sll	a
1309  0359 48            	sll	a
1310  035a a40c          	and	a,#12
1311                     ; 407       break;
1313  035c cc03f5        	jp	LC002
1314  035f               L722:
1315                     ; 410     case 6:
1315                     ; 411       LCD->RAM[LCD_RAMRegister_1] &= 0xf3;
1317  035f c6540d        	ld	a,21517
1318  0362 a4f3          	and	a,#243
1319  0364 c7540d        	ld	21517,a
1320                     ; 412       LCD->RAM[LCD_RAMRegister_1] |=  (uint8_t)(digit[0]<<2) & 0x0C; // 6M 6E	
1322  0367 7b01          	ld	a,(OFST-3,sp)
1323  0369 48            	sll	a
1324  036a 48            	sll	a
1325  036b a40c          	and	a,#12
1326  036d ca540d        	or	a,21517
1327  0370 c7540d        	ld	21517,a
1328                     ; 414       LCD->RAM[LCD_RAMRegister_1] &= 0xcf;				
1330  0373 c6540d        	ld	a,21517
1331  0376 a4cf          	and	a,#207
1332  0378 c7540d        	ld	21517,a
1333                     ; 415       LCD->RAM[LCD_RAMRegister_1] |=  (uint8_t)(digit[0]<<2) & 0x30; // 6G 6B
1335  037b 7b01          	ld	a,(OFST-3,sp)
1336  037d 48            	sll	a
1337  037e 48            	sll	a
1338  037f a430          	and	a,#48
1339  0381 ca540d        	or	a,21517
1340  0384 c7540d        	ld	21517,a
1341                     ; 417       LCD->RAM[LCD_RAMRegister_4] &= 0x3f;				
1343  0387 c65410        	ld	a,21520
1344  038a a43f          	and	a,#63
1345  038c c75410        	ld	21520,a
1346                     ; 418       LCD->RAM[LCD_RAMRegister_4] |= (uint8_t)(digit[1]<<6) & 0xc0; // 6C 6D
1348  038f 7b02          	ld	a,(OFST-2,sp)
1349  0391 97            	ld	xl,a
1350  0392 a640          	ld	a,#64
1351  0394 42            	mul	x,a
1352  0395 9f            	ld	a,xl
1353  0396 a4c0          	and	a,#192
1354  0398 ca5410        	or	a,21520
1355  039b c75410        	ld	21520,a
1356                     ; 420       LCD->RAM[LCD_RAMRegister_5] &= 0xfc;				
1358  039e c65411        	ld	a,21521
1359  03a1 a4fc          	and	a,#252
1360  03a3 c75411        	ld	21521,a
1361                     ; 421       LCD->RAM[LCD_RAMRegister_5] |=  (uint8_t)(digit[1]>>2) & 0x03; // 6F 6A
1363  03a6 7b02          	ld	a,(OFST-2,sp)
1364  03a8 a40c          	and	a,#12
1365  03aa 44            	srl	a
1366  03ab 44            	srl	a
1367  03ac ca5411        	or	a,21521
1368  03af c75411        	ld	21521,a
1369                     ; 423       LCD->RAM[LCD_RAMRegister_8] &= 0xfb;
1371  03b2 72155414      	bres	21524,#2
1372                     ; 424       LCD->RAM[LCD_RAMRegister_8] |=  (uint8_t)(digit[2]<<2) & 0x04; //  6P	
1374  03b6 7b03          	ld	a,(OFST-1,sp)
1375  03b8 48            	sll	a
1376  03b9 48            	sll	a
1377  03ba a404          	and	a,#4
1378  03bc ca5414        	or	a,21524
1379  03bf c75414        	ld	21524,a
1380                     ; 427       LCD->RAM[LCD_RAMRegister_8] &= 0xcf;					
1382  03c2 c65414        	ld	a,21524
1383  03c5 a4cf          	and	a,#207
1384  03c7 c75414        	ld	21524,a
1385                     ; 428       LCD->RAM[LCD_RAMRegister_8] |=  (uint8_t)(digit[2]<<2) & 0x30; // 6Q 6K	
1387  03ca 7b03          	ld	a,(OFST-1,sp)
1388  03cc 48            	sll	a
1389  03cd 48            	sll	a
1390  03ce a430          	and	a,#48
1391  03d0 ca5414        	or	a,21524
1392  03d3 c75414        	ld	21524,a
1393                     ; 430       LCD->RAM[LCD_RAMRegister_11] &= 0xbf;				
1395  03d6 721d5417      	bres	21527,#6
1396                     ; 431       LCD->RAM[LCD_RAMRegister_11] |=  (uint8_t)(digit[3]<<4) & 0x40; // 6N	
1398  03da 7b04          	ld	a,(OFST+0,sp)
1399  03dc 97            	ld	xl,a
1400  03dd a610          	ld	a,#16
1401  03df 42            	mul	x,a
1402  03e0 9f            	ld	a,xl
1403  03e1 a440          	and	a,#64
1404  03e3 ca5417        	or	a,21527
1405  03e6 c75417        	ld	21527,a
1406                     ; 433       LCD->RAM[LCD_RAMRegister_12] &= 0xfc;				
1408  03e9 c65418        	ld	a,21528
1409  03ec a4fc          	and	a,#252
1410  03ee c75418        	ld	21528,a
1411                     ; 434       LCD->RAM[LCD_RAMRegister_12] |= (uint8_t)(digit[3]) & 0x03; // 6H	6J
1413  03f1 7b04          	ld	a,(OFST+0,sp)
1414  03f3 a403          	and	a,#3
1415  03f5               LC002:
1416  03f5 ca5418        	or	a,21528
1417  03f8 c75418        	ld	21528,a
1418                     ; 435       break;
1420                     ; 437       default:
1420                     ; 438               break;
1422  03fb               L372:
1423                     ; 442 	LCD_bar();
1425  03fb cd0000        	call	_LCD_bar
1427                     ; 443 }
1430  03fe 5b06          	addw	sp,#6
1431  0400 81            	ret	
1478                     ; 450 void LCD_GLASS_DisplayString(uint8_t* ptr)
1478                     ; 451 {
1479                     .text:	section	.text,new
1480  0000               _LCD_GLASS_DisplayString:
1482  0000 89            	pushw	x
1483  0001 88            	push	a
1484       00000001      OFST:	set	1
1487                     ; 452   uint8_t i = 0x01;
1489  0002 a601          	ld	a,#1
1490  0004 6b01          	ld	(OFST+0,sp),a
1491                     ; 454 	LCD_GLASS_Clear();
1493  0006 cd0000        	call	_LCD_GLASS_Clear
1496  0009 2013          	jra	L123
1497  000b               L713:
1498                     ; 459     LCD_GLASS_WriteChar(ptr, FALSE, FALSE, i);
1500  000b 88            	push	a
1501  000c 4b00          	push	#0
1502  000e 4b00          	push	#0
1503  0010 1e05          	ldw	x,(OFST+4,sp)
1504  0012 cd0000        	call	_LCD_GLASS_WriteChar
1506  0015 5b03          	addw	sp,#3
1507                     ; 462     ptr++;
1509  0017 1e02          	ldw	x,(OFST+1,sp)
1510  0019 5c            	incw	x
1511  001a 1f02          	ldw	(OFST+1,sp),x
1512                     ; 465     i++;
1514  001c 0c01          	inc	(OFST+0,sp)
1515  001e               L123:
1516                     ; 456   while ((*ptr != 0) & (i < 8))
1518  001e 1e02          	ldw	x,(OFST+1,sp)
1519  0020 f6            	ld	a,(x)
1520  0021 2706          	jreq	L523
1522  0023 7b01          	ld	a,(OFST+0,sp)
1523  0025 a108          	cp	a,#8
1524  0027 25e2          	jrult	L713
1525  0029               L523:
1526                     ; 467 }
1529  0029 5b03          	addw	sp,#3
1530  002b 81            	ret	
1564                     ; 474 void LCD_GLASS_Clear(void)
1564                     ; 475 {
1565                     .text:	section	.text,new
1566  0000               _LCD_GLASS_Clear:
1568  0000 88            	push	a
1569       00000001      OFST:	set	1
1572                     ; 476   uint8_t counter = 0;
1574                     ; 478   for (counter = 0; counter <= LCD_RAMRegister_13; counter++)
1576  0001 4f            	clr	a
1577  0002 6b01          	ld	(OFST+0,sp),a
1578  0004               L543:
1579                     ; 480     LCD->RAM[counter] = LCD_RAM_RESET_VALUE;
1581  0004 5f            	clrw	x
1582  0005 97            	ld	xl,a
1583  0006 724f540c      	clr	(21516,x)
1584                     ; 478   for (counter = 0; counter <= LCD_RAMRegister_13; counter++)
1586  000a 0c01          	inc	(OFST+0,sp)
1589  000c 7b01          	ld	a,(OFST+0,sp)
1590  000e a10e          	cp	a,#14
1591  0010 25f2          	jrult	L543
1592                     ; 482 }
1595  0012 84            	pop	a
1596  0013 81            	ret	
1599                     	switch	.const
1600  0062               L353_str:
1601  0062 00            	dc.b	0
1602  0063 000000000000  	ds.b	6
1705                     ; 494 void LCD_GLASS_ScrollSentence(uint8_t* ptr, uint16_t nScroll, uint16_t ScrollSpeed)
1705                     ; 495 {
1706                     .text:	section	.text,new
1707  0000               _LCD_GLASS_ScrollSentence:
1709  0000 89            	pushw	x
1710  0001 520c          	subw	sp,#12
1711       0000000c      OFST:	set	12
1714                     ; 499   uint8_t str[7]="";
1716  0003 96            	ldw	x,sp
1717  0004 1c0002        	addw	x,#OFST-10
1718  0007 90ae0062      	ldw	y,#L353_str
1719  000b a607          	ld	a,#7
1720  000d cd0000        	call	c_xymvx
1722                     ; 502   if (ptr == 0) return;
1724  0010 1e0d          	ldw	x,(OFST+1,sp)
1725  0012 2603cc00cf    	jreq	L601
1728                     ; 505   for (ptr1=ptr,Str_size = 0 ; *ptr1 != 0; Str_size++,ptr1++) ;
1730  0017 1f09          	ldw	(OFST-3,sp),x
1731  0019 0f0b          	clr	(OFST-1,sp)
1733  001b 2005          	jra	L534
1734  001d               L134:
1738  001d 0c0b          	inc	(OFST-1,sp)
1739  001f 5c            	incw	x
1740  0020 1f09          	ldw	(OFST-3,sp),x
1741  0022               L534:
1744  0022 f6            	ld	a,(x)
1745  0023 26f8          	jrne	L134
1746                     ; 507   ptr1 = ptr;
1748  0025 1e0d          	ldw	x,(OFST+1,sp)
1749  0027 1f09          	ldw	(OFST-3,sp),x
1750                     ; 509   LCD_GLASS_DisplayString(ptr);
1752  0029 cd0000        	call	_LCD_GLASS_DisplayString
1754                     ; 510   delay_ms(ScrollSpeed);
1756  002c 1e13          	ldw	x,(OFST+7,sp)
1757  002e cd0000        	call	_delay_ms
1759                     ; 513   for (Repetition=0; Repetition<nScroll; Repetition++)
1761  0031 0f01          	clr	(OFST-11,sp)
1763  0033 cc00e4        	jra	L544
1764  0036               L144:
1765                     ; 515     for (Char_Nb=0; Char_Nb<Str_size; Char_Nb++)
1767  0036 0f0c          	clr	(OFST+0,sp)
1769  0038 cc00d9        	jra	L554
1770  003b               L154:
1771                     ; 517       *(str) =* (ptr1+((Char_Nb+1)%Str_size));
1773  003b 5f            	clrw	x
1774  003c 97            	ld	xl,a
1775  003d 5c            	incw	x
1776  003e 7b0b          	ld	a,(OFST-1,sp)
1777  0040 905f          	clrw	y
1778  0042 9097          	ld	yl,a
1779  0044 cd0000        	call	c_idiv
1781  0047 93            	ldw	x,y
1782  0048 72fb09        	addw	x,(OFST-3,sp)
1783  004b f6            	ld	a,(x)
1784  004c 6b02          	ld	(OFST-10,sp),a
1785                     ; 518       *(str+1) =* (ptr1+((Char_Nb+2)%Str_size));
1787  004e 5f            	clrw	x
1788  004f 7b0c          	ld	a,(OFST+0,sp)
1789  0051 97            	ld	xl,a
1790  0052 1c0002        	addw	x,#2
1791  0055 7b0b          	ld	a,(OFST-1,sp)
1792  0057 905f          	clrw	y
1793  0059 9097          	ld	yl,a
1794  005b cd0000        	call	c_idiv
1796  005e 93            	ldw	x,y
1797  005f 72fb09        	addw	x,(OFST-3,sp)
1798  0062 f6            	ld	a,(x)
1799  0063 6b03          	ld	(OFST-9,sp),a
1800                     ; 519       *(str+2) =* (ptr1+((Char_Nb+3)%Str_size));
1802  0065 5f            	clrw	x
1803  0066 7b0c          	ld	a,(OFST+0,sp)
1804  0068 97            	ld	xl,a
1805  0069 1c0003        	addw	x,#3
1806  006c 7b0b          	ld	a,(OFST-1,sp)
1807  006e 905f          	clrw	y
1808  0070 9097          	ld	yl,a
1809  0072 cd0000        	call	c_idiv
1811  0075 93            	ldw	x,y
1812  0076 72fb09        	addw	x,(OFST-3,sp)
1813  0079 f6            	ld	a,(x)
1814  007a 6b04          	ld	(OFST-8,sp),a
1815                     ; 520       *(str+3) =* (ptr1+((Char_Nb+4)%Str_size));
1817  007c 5f            	clrw	x
1818  007d 7b0c          	ld	a,(OFST+0,sp)
1819  007f 97            	ld	xl,a
1820  0080 1c0004        	addw	x,#4
1821  0083 7b0b          	ld	a,(OFST-1,sp)
1822  0085 905f          	clrw	y
1823  0087 9097          	ld	yl,a
1824  0089 cd0000        	call	c_idiv
1826  008c 93            	ldw	x,y
1827  008d 72fb09        	addw	x,(OFST-3,sp)
1828  0090 f6            	ld	a,(x)
1829  0091 6b05          	ld	(OFST-7,sp),a
1830                     ; 521       *(str+4) =* (ptr1+((Char_Nb+5)%Str_size));
1832  0093 5f            	clrw	x
1833  0094 7b0c          	ld	a,(OFST+0,sp)
1834  0096 97            	ld	xl,a
1835  0097 1c0005        	addw	x,#5
1836  009a 7b0b          	ld	a,(OFST-1,sp)
1837  009c 905f          	clrw	y
1838  009e 9097          	ld	yl,a
1839  00a0 cd0000        	call	c_idiv
1841  00a3 93            	ldw	x,y
1842  00a4 72fb09        	addw	x,(OFST-3,sp)
1843  00a7 f6            	ld	a,(x)
1844  00a8 6b06          	ld	(OFST-6,sp),a
1845                     ; 522       *(str+5) =* (ptr1+((Char_Nb+6)%Str_size));
1847  00aa 5f            	clrw	x
1848  00ab 7b0c          	ld	a,(OFST+0,sp)
1849  00ad 97            	ld	xl,a
1850  00ae 1c0006        	addw	x,#6
1851  00b1 7b0b          	ld	a,(OFST-1,sp)
1852  00b3 905f          	clrw	y
1853  00b5 9097          	ld	yl,a
1854  00b7 cd0000        	call	c_idiv
1856  00ba 93            	ldw	x,y
1857  00bb 72fb09        	addw	x,(OFST-3,sp)
1858  00be f6            	ld	a,(x)
1859  00bf 6b07          	ld	(OFST-5,sp),a
1860                     ; 523       LCD_GLASS_Clear();
1862  00c1 cd0000        	call	_LCD_GLASS_Clear
1864                     ; 524       LCD_GLASS_DisplayString(str);
1866  00c4 96            	ldw	x,sp
1867  00c5 1c0002        	addw	x,#OFST-10
1868  00c8 cd0000        	call	_LCD_GLASS_DisplayString
1870                     ; 527       if (KeyPressed)
1872  00cb b600          	ld	a,_KeyPressed
1873  00cd 2703          	jreq	L164
1874                     ; 528               return;   		
1875  00cf               L601:
1878  00cf 5b0e          	addw	sp,#14
1879  00d1 81            	ret	
1880  00d2               L164:
1881                     ; 529       delay_ms(ScrollSpeed);
1883  00d2 1e13          	ldw	x,(OFST+7,sp)
1884  00d4 cd0000        	call	_delay_ms
1886                     ; 515     for (Char_Nb=0; Char_Nb<Str_size; Char_Nb++)
1888  00d7 0c0c          	inc	(OFST+0,sp)
1889  00d9               L554:
1892  00d9 7b0c          	ld	a,(OFST+0,sp)
1893  00db 110b          	cp	a,(OFST-1,sp)
1894  00dd 2403cc003b    	jrult	L154
1895                     ; 513   for (Repetition=0; Repetition<nScroll; Repetition++)
1897  00e2 0c01          	inc	(OFST-11,sp)
1898  00e4               L544:
1901  00e4 7b01          	ld	a,(OFST-11,sp)
1902  00e6 5f            	clrw	x
1903  00e7 97            	ld	xl,a
1904  00e8 1311          	cpw	x,(OFST+5,sp)
1905  00ea 2403cc0036    	jrult	L144
1906                     ; 533 }
1908  00ef 20de          	jra	L601
1963                     	xdef	_LCD_contrast
1964                     	xdef	_NumberMap
1965                     	xdef	_CapLetterMap
1966                     	xdef	_t_bar
1967                     	xdef	_KeyPressed
1968                     	xref	_delay_ms
1969                     	xdef	_LCD_GLASS_ScrollSentence
1970                     	xdef	_LCD_GLASS_Clear
1971                     	xdef	_LCD_GLASS_DisplayString
1972                     	xdef	_LCD_GLASS_WriteChar
1973                     	xdef	_LCD_GLASS_Init
1974                     	xdef	_LCD_bar
1975                     	xref	_LCD_PortMaskConfig
1976                     	xref	_LCD_ContrastConfig
1977                     	xref	_LCD_DeadTimeConfig
1978                     	xref	_LCD_PulseOnDurationConfig
1979                     	xref	_LCD_Cmd
1980                     	xref	_LCD_Init
1981                     	xref	_CLK_PeripheralClockConfig
1982                     	xref	_CLK_RTCClockConfig
1983                     	xref.b	c_x
2002                     	xref	c_idiv
2003                     	xref	c_xymvx
2004                     	end
