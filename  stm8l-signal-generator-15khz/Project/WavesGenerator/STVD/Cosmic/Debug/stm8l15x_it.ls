   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  19                     	bsct
  20  0000               _temp_AD_H:
  21  0000 00            	dc.b	0
  22  0001               _temp_AD_L:
  23  0001 00            	dc.b	0
  24  0002               _temp_AD16:
  25  0002 0000          	dc.w	0
  26  0004               _ad_samples_cnt:
  27  0004 00            	dc.b	0
  28  0005               _ADSampRdy:
  29  0005 00            	dc.b	0
  30  0006               _adc_IntREF_ACCU:
  31  0006 0000          	dc.w	0
  32  0008               _adc_IntREF:
  33  0008 0000          	dc.w	0
  34  000a               _adc_GenSigMax_ACCU:
  35  000a 0000          	dc.w	0
  36  000c               _adc_GenSigMax:
  37  000c 0000          	dc.w	0
  38  000e               _adc_extVoltage_ACCU:
  39  000e 0000          	dc.w	0
  40  0010               _adc_extVoltage:
  41  0010 0000          	dc.w	0
  42  0012               _adc_measurement_selector:
  43  0012 00            	dc.b	0
  44  0013               _adc_nr_samp_discarded:
  45  0013 00            	dc.b	0
  46  0014               _btn_freq_duty_0_cnt:
  47  0014 00            	dc.b	0
  48  0015               _btn_freq_duty_1_cnt:
  49  0015 00            	dc.b	0
  50  0016               _btn_freq_inc_0_cnt:
  51  0016 00            	dc.b	0
  52  0017               _btn_freq_inc_1_cnt:
  53  0017 00            	dc.b	0
  54  0018               _btn_freq_dec_0_cnt:
  55  0018 00            	dc.b	0
  56  0019               _btn_freq_dec_1_cnt:
  57  0019 00            	dc.b	0
  58  001a               _btn_chg_wave_0_cnt:
  59  001a 00            	dc.b	0
  60  001b               _btn_chg_wave_1_cnt:
  61  001b 00            	dc.b	0
  62  001c               _btn_freq_duty_state:
  63  001c 00            	dc.b	0
  64  001d               _btn_freq_inc_state:
  65  001d 00            	dc.b	0
  66  001e               _btn_freq_dec_state:
  67  001e 00            	dc.b	0
  68  001f               _btn_chg_wave_state:
  69  001f 00            	dc.b	0
  70  0020               _btn_freq_duty_press_tmr:
  71  0020 0000          	dc.w	0
  72  0022               _btn_freq_inc_press_tmr:
  73  0022 0000          	dc.w	0
  74  0024               _btn_freq_dec_press_tmr:
  75  0024 0000          	dc.w	0
  76  0026               _btn_chg_wave_press_tmr:
  77  0026 0000          	dc.w	0
  78  0028               _btn_freq_duty_delay_flag:
  79  0028 01            	dc.b	1
  80  0029               _btn_freq_inc_delay_flag:
  81  0029 01            	dc.b	1
  82  002a               _btn_freq_dec_delay_flag:
  83  002a 01            	dc.b	1
  84  002b               _btn_chg_wave_delay_flag:
  85  002b 01            	dc.b	1
  86  002c               _btn_freq_duty_delay_cnt:
  87  002c 00            	dc.b	0
  88  002d               _btn_freq_inc_delay_cnt:
  89  002d 00            	dc.b	0
  90  002e               _btn_freq_dec_delay_cnt:
  91  002e 00            	dc.b	0
  92  002f               _btn_chg_wave_delay_cnt:
  93  002f 00            	dc.b	0
  94  0030               _trigger_flag_60ms:
  95  0030 00            	dc.b	0
  96  0031               _trigger_flag_60ms_cnt:
  97  0031 00            	dc.b	0
 127                     ; 93 INTERRUPT_HANDLER(NonHandledInterrupt,0)
 127                     ; 94 {
 128                     .text:	section	.text,new
 129  0000               f_NonHandledInterrupt:
 133  0000               L12:
 134                     ; 98   while (1);
 136  0000 20fe          	jra	L12
 158                     ; 107 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
 158                     ; 108 {
 159                     .text:	section	.text,new
 160  0000               f_TRAP_IRQHandler:
 164  0000               L53:
 165                     ; 112   while (1);
 167  0000 20fe          	jra	L53
 189                     ; 121 INTERRUPT_HANDLER(FLASH_IRQHandler,1)
 189                     ; 122 {
 190                     .text:	section	.text,new
 191  0000               f_FLASH_IRQHandler:
 195  0000               L15:
 196                     ; 126   while (1);
 198  0000 20fe          	jra	L15
 221                     ; 135 INTERRUPT_HANDLER(DMA1_CHANNEL0_1_IRQHandler,2)
 221                     ; 136 {
 222                     .text:	section	.text,new
 223  0000               f_DMA1_CHANNEL0_1_IRQHandler:
 227  0000               L56:
 228                     ; 140   while (1);
 230  0000 20fe          	jra	L56
 253                     ; 149 INTERRUPT_HANDLER(DMA1_CHANNEL2_3_IRQHandler,3)
 253                     ; 150 {
 254                     .text:	section	.text,new
 255  0000               f_DMA1_CHANNEL2_3_IRQHandler:
 259  0000               L101:
 260                     ; 154   while (1);
 262  0000 20fe          	jra	L101
 284                     ; 164 INTERRUPT_HANDLER(RTC_IRQHandler,4)
 284                     ; 165 {
 285                     .text:	section	.text,new
 286  0000               f_RTC_IRQHandler:
 290  0000               L511:
 291                     ; 169   while (1);
 293  0000 20fe          	jra	L511
 316                     ; 178 INTERRUPT_HANDLER(EXTIE_F_PVD_IRQHandler,5)
 316                     ; 179 {
 317                     .text:	section	.text,new
 318  0000               f_EXTIE_F_PVD_IRQHandler:
 322  0000               L131:
 323                     ; 183   while (1);
 325  0000 20fe          	jra	L131
 347                     ; 193 INTERRUPT_HANDLER(EXTIB_IRQHandler,6)
 347                     ; 194 {
 348                     .text:	section	.text,new
 349  0000               f_EXTIB_IRQHandler:
 353  0000               L541:
 354                     ; 198   while (1);
 356  0000 20fe          	jra	L541
 378                     ; 208 INTERRUPT_HANDLER(EXTID_IRQHandler,7)
 378                     ; 209 {
 379                     .text:	section	.text,new
 380  0000               f_EXTID_IRQHandler:
 384  0000               L161:
 385                     ; 213   while (1);
 387  0000 20fe          	jra	L161
 409                     ; 224 INTERRUPT_HANDLER(EXTI0_IRQHandler,8)
 409                     ; 225 {
 410                     .text:	section	.text,new
 411  0000               f_EXTI0_IRQHandler:
 415  0000               L571:
 416                     ; 229   while (1);
 418  0000 20fe          	jra	L571
 440                     ; 242 INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
 440                     ; 243 {
 441                     .text:	section	.text,new
 442  0000               f_EXTI1_IRQHandler:
 446  0000               L112:
 447                     ; 244   while (1);
 449  0000 20fe          	jra	L112
 471                     ; 255 INTERRUPT_HANDLER(EXTI2_IRQHandler,10)
 471                     ; 256 {
 472                     .text:	section	.text,new
 473  0000               f_EXTI2_IRQHandler:
 477  0000               L522:
 478                     ; 260   while (1);
 480  0000 20fe          	jra	L522
 502                     ; 270 INTERRUPT_HANDLER(EXTI3_IRQHandler,11)
 502                     ; 271 {
 503                     .text:	section	.text,new
 504  0000               f_EXTI3_IRQHandler:
 508  0000               L142:
 509                     ; 275   while (1);
 511  0000 20fe          	jra	L142
 533                     ; 285 INTERRUPT_HANDLER(EXTI4_IRQHandler,12)
 533                     ; 286 {
 534                     .text:	section	.text,new
 535  0000               f_EXTI4_IRQHandler:
 539  0000               L552:
 540                     ; 290   while (1);
 542  0000 20fe          	jra	L552
 564                     ; 300 INTERRUPT_HANDLER(EXTI5_IRQHandler,13)
 564                     ; 301 {
 565                     .text:	section	.text,new
 566  0000               f_EXTI5_IRQHandler:
 570  0000               L172:
 571                     ; 305   while (1);
 573  0000 20fe          	jra	L172
 595                     ; 315 INTERRUPT_HANDLER(EXTI6_IRQHandler,14)
 595                     ; 316 {
 596                     .text:	section	.text,new
 597  0000               f_EXTI6_IRQHandler:
 601  0000               L503:
 602                     ; 317  while (1);
 604  0000 20fe          	jra	L503
 626                     ; 327 INTERRUPT_HANDLER(EXTI7_IRQHandler,15)
 626                     ; 328 {
 627                     .text:	section	.text,new
 628  0000               f_EXTI7_IRQHandler:
 632  0000               L123:
 633                     ; 333   while (1);
 635  0000 20fe          	jra	L123
 657                     ; 343 INTERRUPT_HANDLER(LCD_IRQHandler,16)
 657                     ; 344 {
 658                     .text:	section	.text,new
 659  0000               f_LCD_IRQHandler:
 663  0000               L533:
 664                     ; 348   while (1);
 666  0000 20fe          	jra	L533
 689                     ; 358 INTERRUPT_HANDLER(SWITCH_CSS_BREAK_DAC_IRQHandler,17)
 689                     ; 359 {
 690                     .text:	section	.text,new
 691  0000               f_SWITCH_CSS_BREAK_DAC_IRQHandler:
 695  0000               L153:
 696                     ; 363   while (1);
 698  0000 20fe          	jra	L153
 736                     ; 374 INTERRUPT_HANDLER(ADC1_COMP_IRQHandler,18)
 736                     ; 375 {
 737                     .text:	section	.text,new
 738  0000               f_ADC1_COMP_IRQHandler:
 740  0000 8a            	push	cc
 741  0001 84            	pop	a
 742  0002 a4bf          	and	a,#191
 743  0004 88            	push	a
 744  0005 86            	pop	cc
 745  0006 3b0002        	push	c_x+2
 746  0009 be00          	ldw	x,c_x
 747  000b 89            	pushw	x
 748  000c 3b0002        	push	c_y+2
 749  000f be00          	ldw	x,c_y
 750  0011 89            	pushw	x
 753                     ; 379   if(ADSampRdy == FALSE)
 755  0012 b605          	ld	a,_ADSampRdy
 756  0014 2704ac090109  	jrne	L563
 757                     ; 381     adc_nr_samp_discarded++;
 759  001a 3c13          	inc	_adc_nr_samp_discarded
 760                     ; 382     temp_AD_H = ADC1->DRH;    /* read conversion result (MSB first!) */
 762  001c 5553440000    	mov	_temp_AD_H,21316
 763                     ; 383     temp_AD_L = ADC1->DRL;    /* and store it to AD samples field  */
 765  0021 5553450001    	mov	_temp_AD_L,21317
 766                     ; 384     temp_AD16 = ((uint16_t)(temp_AD_H) << 8) | (temp_AD_L);
 768  0026 b600          	ld	a,_temp_AD_H
 769  0028 97            	ld	xl,a
 770  0029 b601          	ld	a,_temp_AD_L
 771  002b 02            	rlwa	x,a
 772  002c bf02          	ldw	_temp_AD16,x
 773                     ; 385     if(adc_nr_samp_discarded > ADC_NR_SAMP_TO_DISCARD)
 775  002e b613          	ld	a,_adc_nr_samp_discarded
 776  0030 a104          	cp	a,#4
 777  0032 252a          	jrult	L763
 778                     ; 387       if(adc_measurement_selector == INTREF_MEASURE)
 780  0034 b612          	ld	a,_adc_measurement_selector
 781  0036 260a          	jrne	L173
 782                     ; 389         adc_IntREF_ACCU += temp_AD16;
 784  0038 be06          	ldw	x,_adc_IntREF_ACCU
 785  003a 72bb0002      	addw	x,_temp_AD16
 786  003e bf06          	ldw	_adc_IntREF_ACCU,x
 788  0040 201a          	jra	L373
 789  0042               L173:
 790                     ; 391     else if(adc_measurement_selector == GENSIGMAX_MEASURE)
 792  0042 a101          	cp	a,#1
 793  0044 260a          	jrne	L573
 794                     ; 393       adc_GenSigMax_ACCU += temp_AD16;
 796  0046 be0a          	ldw	x,_adc_GenSigMax_ACCU
 797  0048 72bb0002      	addw	x,_temp_AD16
 798  004c bf0a          	ldw	_adc_GenSigMax_ACCU,x
 800  004e 200c          	jra	L373
 801  0050               L573:
 802                     ; 395     else if(adc_measurement_selector == EXTVOLTAGE_MEASURE)
 804  0050 a102          	cp	a,#2
 805  0052 2608          	jrne	L373
 806                     ; 397       adc_extVoltage_ACCU += temp_AD16;
 808  0054 be0e          	ldw	x,_adc_extVoltage_ACCU
 809  0056 72bb0002      	addw	x,_temp_AD16
 810  005a bf0e          	ldw	_adc_extVoltage_ACCU,x
 811  005c               L373:
 812                     ; 399     ad_samples_cnt++;
 814  005c 3c04          	inc	_ad_samples_cnt
 815  005e               L763:
 816                     ; 405     if(ad_samples_cnt >= NUM_SAMP)
 818  005e b604          	ld	a,_ad_samples_cnt
 819  0060 a110          	cp	a,#16
 820  0062 25b2          	jrult	L563
 821                     ; 407       if(adc_measurement_selector == INTREF_MEASURE)
 823  0064 b612          	ld	a,_adc_measurement_selector
 824  0066 262e          	jrne	L504
 825                     ; 409         adc_IntREF = adc_IntREF_ACCU >> 4;      /* calculate media - divide by 16 (NUM_SAMP)*/
 827  0068 be06          	ldw	x,_adc_IntREF_ACCU
 828  006a 54            	srlw	x
 829  006b 54            	srlw	x
 830  006c 54            	srlw	x
 831  006d 54            	srlw	x
 832  006e bf08          	ldw	_adc_IntREF,x
 833                     ; 410         adc_IntREF_ACCU = 0;
 835  0070 5f            	clrw	x
 836  0071 bf06          	ldw	_adc_IntREF_ACCU,x
 837                     ; 411         ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, DISABLE);
 839  0073 4b00          	push	#0
 840  0075 ae0010        	ldw	x,#16
 841  0078 89            	pushw	x
 842  0079 ae5340        	ldw	x,#21312
 843  007c cd0000        	call	_ADC_ChannelCmd
 845  007f 5b03          	addw	sp,#3
 846                     ; 412         ADC_ChannelCmd(ADC1, ADC_Channel_3, DISABLE);
 848  0081 4b00          	push	#0
 849  0083 ae0308        	ldw	x,#776
 850  0086 89            	pushw	x
 851  0087 ae5340        	ldw	x,#21312
 852  008a cd0000        	call	_ADC_ChannelCmd
 854  008d 5b03          	addw	sp,#3
 855                     ; 413         ADC_ChannelCmd(ADC1, ADC_Channel_4, ENABLE);
 857  008f 4b01          	push	#1
 858  0091 ae0310        	ldw	x,#784
 861  0094 2062          	jpf	LC001
 862  0096               L504:
 863                     ; 415       else if(adc_measurement_selector == GENSIGMAX_MEASURE)
 865  0096 a101          	cp	a,#1
 866  0098 262e          	jrne	L114
 867                     ; 417         adc_GenSigMax = adc_GenSigMax_ACCU >> 4;    /* calculate media - divide by 16 (NUM_SAMP)*/
 869  009a be0a          	ldw	x,_adc_GenSigMax_ACCU
 870  009c 54            	srlw	x
 871  009d 54            	srlw	x
 872  009e 54            	srlw	x
 873  009f 54            	srlw	x
 874  00a0 bf0c          	ldw	_adc_GenSigMax,x
 875                     ; 418         adc_GenSigMax_ACCU = 0;
 877  00a2 5f            	clrw	x
 878  00a3 bf0a          	ldw	_adc_GenSigMax_ACCU,x
 879                     ; 419         ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, DISABLE);
 881  00a5 4b00          	push	#0
 882  00a7 ae0010        	ldw	x,#16
 883  00aa 89            	pushw	x
 884  00ab ae5340        	ldw	x,#21312
 885  00ae cd0000        	call	_ADC_ChannelCmd
 887  00b1 5b03          	addw	sp,#3
 888                     ; 420         ADC_ChannelCmd(ADC1, ADC_Channel_4, DISABLE);
 890  00b3 4b00          	push	#0
 891  00b5 ae0310        	ldw	x,#784
 892  00b8 89            	pushw	x
 893  00b9 ae5340        	ldw	x,#21312
 894  00bc cd0000        	call	_ADC_ChannelCmd
 896  00bf 5b03          	addw	sp,#3
 897                     ; 421         ADC_ChannelCmd(ADC1, ADC_Channel_3, ENABLE);
 899  00c1 4b01          	push	#1
 900  00c3 ae0308        	ldw	x,#776
 903  00c6 2030          	jpf	LC001
 904  00c8               L114:
 905                     ; 423       else if(adc_measurement_selector == EXTVOLTAGE_MEASURE)
 907  00c8 a102          	cp	a,#2
 908  00ca 2635          	jrne	L704
 909                     ; 425         adc_extVoltage = adc_extVoltage_ACCU >> 4;    /* calculate media - divide by 16 (NUM_SAMP)*/
 911  00cc be0e          	ldw	x,_adc_extVoltage_ACCU
 912  00ce 54            	srlw	x
 913  00cf 54            	srlw	x
 914  00d0 54            	srlw	x
 915  00d1 54            	srlw	x
 916  00d2 bf10          	ldw	_adc_extVoltage,x
 917                     ; 426         adc_extVoltage_ACCU = 0;
 919  00d4 5f            	clrw	x
 920  00d5 bf0e          	ldw	_adc_extVoltage_ACCU,x
 921                     ; 427         ADC_ChannelCmd(ADC1, ADC_Channel_3, DISABLE);
 923  00d7 4b00          	push	#0
 924  00d9 ae0308        	ldw	x,#776
 925  00dc 89            	pushw	x
 926  00dd ae5340        	ldw	x,#21312
 927  00e0 cd0000        	call	_ADC_ChannelCmd
 929  00e3 5b03          	addw	sp,#3
 930                     ; 428         ADC_ChannelCmd(ADC1, ADC_Channel_4, DISABLE);
 932  00e5 4b00          	push	#0
 933  00e7 ae0310        	ldw	x,#784
 934  00ea 89            	pushw	x
 935  00eb ae5340        	ldw	x,#21312
 936  00ee cd0000        	call	_ADC_ChannelCmd
 938  00f1 5b03          	addw	sp,#3
 939                     ; 429         ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE);
 941  00f3 4b01          	push	#1
 942  00f5 ae0010        	ldw	x,#16
 944  00f8               LC001:
 945  00f8 89            	pushw	x
 946  00f9 ae5340        	ldw	x,#21312
 947  00fc cd0000        	call	_ADC_ChannelCmd
 948  00ff 5b03          	addw	sp,#3
 949  0101               L704:
 950                     ; 431       ad_samples_cnt = 0;
 952  0101 3f04          	clr	_ad_samples_cnt
 953                     ; 432       adc_nr_samp_discarded = 0;
 955  0103 3f13          	clr	_adc_nr_samp_discarded
 956                     ; 433       ADSampRdy = TRUE;
 958  0105 35010005      	mov	_ADSampRdy,#1
 959  0109               L563:
 960                     ; 436   ADC_ClearITPendingBit(ADC1, ADC_IT_EOC);      /* clear end of conversion flag	*/             
 962  0109 4b08          	push	#8
 963  010b ae5340        	ldw	x,#21312
 964  010e cd0000        	call	_ADC_ClearITPendingBit
 966  0111 84            	pop	a
 967                     ; 437 }
 970  0112 85            	popw	x
 971  0113 bf00          	ldw	c_y,x
 972  0115 320002        	pop	c_y+2
 973  0118 85            	popw	x
 974  0119 bf00          	ldw	c_x,x
 975  011b 320002        	pop	c_x+2
 976  011e 80            	iret	
 999                     ; 446 INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_IRQHandler,19)
 999                     ; 447 {
1000                     .text:	section	.text,new
1001  0000               f_TIM2_UPD_OVF_TRG_BRK_IRQHandler:
1005  0000               L724:
1006                     ; 451   while (1);
1008  0000 20fe          	jra	L724
1031                     ; 461 INTERRUPT_HANDLER(TIM2_CAP_IRQHandler,20)
1031                     ; 462 {
1032                     .text:	section	.text,new
1033  0000               f_TIM2_CAP_IRQHandler:
1037  0000               L344:
1038                     ; 466   while (1);
1040  0000 20fe          	jra	L344
1090                     ; 477 INTERRUPT_HANDLER(TIM3_UPD_OVF_TRG_BRK_IRQHandler,21)   /* 500Hz - 2ms */
1090                     ; 478 {
1091                     .text:	section	.text,new
1092  0000               f_TIM3_UPD_OVF_TRG_BRK_IRQHandler:
1094  0000 8a            	push	cc
1095  0001 84            	pop	a
1096  0002 a4bf          	and	a,#191
1097  0004 88            	push	a
1098  0005 86            	pop	cc
1099  0006 3b0002        	push	c_x+2
1100  0009 be00          	ldw	x,c_x
1101  000b 89            	pushw	x
1102  000c 3b0002        	push	c_y+2
1103  000f be00          	ldw	x,c_y
1106                     ; 480   trigger_flag_60ms_cnt++;
1108  0011 3c31          	inc	_trigger_flag_60ms_cnt
1109  0013 89            	pushw	x
1110                     ; 481   if(trigger_flag_60ms_cnt >= TRIGGER_FLAG_60MS_DELAY)
1112  0014 b631          	ld	a,_trigger_flag_60ms_cnt
1113  0016 a11e          	cp	a,#30
1114  0018 2506          	jrult	L754
1115                     ; 483     trigger_flag_60ms = TRUE;
1117  001a 35010030      	mov	_trigger_flag_60ms,#1
1118                     ; 484     trigger_flag_60ms_cnt = 0;
1120  001e 3f31          	clr	_trigger_flag_60ms_cnt
1121  0020               L754:
1122                     ; 487   if(BTN_FREQ_DUTY_DELAY_FLAG == 0)
1124  0020 b628          	ld	a,_btn_freq_duty_delay_flag
1125  0022 260e          	jrne	L164
1126                     ; 489     btn_freq_duty_delay_cnt++;
1128  0024 3c2c          	inc	_btn_freq_duty_delay_cnt
1129                     ; 490     if(btn_freq_duty_delay_cnt == BTN_FREQ_DUTY_DELAY)
1131  0026 b62c          	ld	a,_btn_freq_duty_delay_cnt
1132  0028 a18c          	cp	a,#140
1133  002a 2606          	jrne	L164
1134                     ; 492       btn_freq_duty_delay_cnt = 0;
1136  002c 3f2c          	clr	_btn_freq_duty_delay_cnt
1137                     ; 493       BTN_FREQ_DUTY_DELAY_FLAG = 1;
1139  002e 35010028      	mov	_btn_freq_duty_delay_flag,#1
1140  0032               L164:
1141                     ; 496   if(BTN_FREQ_INC_DELAY_FLAG == 0)
1143  0032 b629          	ld	a,_btn_freq_inc_delay_flag
1144  0034 260e          	jrne	L564
1145                     ; 498     btn_freq_inc_delay_cnt++;
1147  0036 3c2d          	inc	_btn_freq_inc_delay_cnt
1148                     ; 499     if(btn_freq_inc_delay_cnt == BTN_DELAY)
1150  0038 b62d          	ld	a,_btn_freq_inc_delay_cnt
1151  003a a146          	cp	a,#70
1152  003c 2606          	jrne	L564
1153                     ; 501       btn_freq_inc_delay_cnt = 0;
1155  003e 3f2d          	clr	_btn_freq_inc_delay_cnt
1156                     ; 502       BTN_FREQ_INC_DELAY_FLAG = 1;
1158  0040 35010029      	mov	_btn_freq_inc_delay_flag,#1
1159  0044               L564:
1160                     ; 505   if(BTN_FREQ_DEC_DELAY_FLAG == 0)
1162  0044 b62a          	ld	a,_btn_freq_dec_delay_flag
1163  0046 260e          	jrne	L174
1164                     ; 507     btn_freq_dec_delay_cnt++;
1166  0048 3c2e          	inc	_btn_freq_dec_delay_cnt
1167                     ; 508     if(btn_freq_dec_delay_cnt == BTN_DELAY)
1169  004a b62e          	ld	a,_btn_freq_dec_delay_cnt
1170  004c a146          	cp	a,#70
1171  004e 2606          	jrne	L174
1172                     ; 510       btn_freq_dec_delay_cnt = 0;
1174  0050 3f2e          	clr	_btn_freq_dec_delay_cnt
1175                     ; 511       BTN_FREQ_DEC_DELAY_FLAG = 1;
1177  0052 3501002a      	mov	_btn_freq_dec_delay_flag,#1
1178  0056               L174:
1179                     ; 514   if(BTN_CHG_WAVE_DELAY_FLAG == 0)
1181  0056 b62b          	ld	a,_btn_chg_wave_delay_flag
1182  0058 260e          	jrne	L574
1183                     ; 516     btn_chg_wave_delay_cnt++;
1185  005a 3c2f          	inc	_btn_chg_wave_delay_cnt
1186                     ; 517     if(btn_chg_wave_delay_cnt == BTN_CHG_WAVE_DELAY)
1188  005c b62f          	ld	a,_btn_chg_wave_delay_cnt
1189  005e a18c          	cp	a,#140
1190  0060 2606          	jrne	L574
1191                     ; 519       btn_chg_wave_delay_cnt = 0;
1193  0062 3f2f          	clr	_btn_chg_wave_delay_cnt
1194                     ; 520       BTN_CHG_WAVE_DELAY_FLAG = 1;
1196  0064 3501002b      	mov	_btn_chg_wave_delay_flag,#1
1197  0068               L574:
1198                     ; 525   if(BTN_FREQ_INC_STATE == BTN_PRESSED)
1200  0068 b61d          	ld	a,_btn_freq_inc_state
1201  006a 4a            	dec	a
1202  006b 2605          	jrne	L105
1203                     ; 527     BTN_FREQ_INC_PRESS_TIMER++;
1205  006d be22          	ldw	x,_btn_freq_inc_press_tmr
1206  006f 5c            	incw	x
1207  0070 bf22          	ldw	_btn_freq_inc_press_tmr,x
1208  0072               L105:
1209                     ; 529   if(BTN_FREQ_DEC_STATE == BTN_PRESSED)
1211  0072 b61e          	ld	a,_btn_freq_dec_state
1212  0074 4a            	dec	a
1213  0075 2605          	jrne	L305
1214                     ; 531     BTN_FREQ_DEC_PRESS_TIMER++;
1216  0077 be24          	ldw	x,_btn_freq_dec_press_tmr
1217  0079 5c            	incw	x
1218  007a bf24          	ldw	_btn_freq_dec_press_tmr,x
1219  007c               L305:
1220                     ; 535   if(BTN_FREQ_DUTY)
1222  007c 720e501516    	btjt	20501,#7,L505
1223                     ; 537     if(btn_freq_duty_0_cnt < 255) btn_freq_duty_0_cnt++;
1225  0081 b614          	ld	a,_btn_freq_duty_0_cnt
1226  0083 a1ff          	cp	a,#255
1227  0085 2402          	jruge	L705
1230  0087 3c14          	inc	_btn_freq_duty_0_cnt
1231  0089               L705:
1232                     ; 538     btn_freq_duty_1_cnt = 0;
1234  0089 3f15          	clr	_btn_freq_duty_1_cnt
1235                     ; 539     if(btn_freq_duty_0_cnt >= BTN_DEBOUNCE)
1237  008b b614          	ld	a,_btn_freq_duty_0_cnt
1238  008d a10f          	cp	a,#15
1239  008f 251b          	jrult	L315
1240                     ; 541       BTN_FREQ_DUTY_STATE = BTN_PRESSED;
1242  0091 3501001c      	mov	_btn_freq_duty_state,#1
1243  0095 2015          	jra	L315
1244  0097               L505:
1245                     ; 546     if(btn_freq_duty_1_cnt < 255) btn_freq_duty_1_cnt++;
1247  0097 b615          	ld	a,_btn_freq_duty_1_cnt
1248  0099 a1ff          	cp	a,#255
1249  009b 2402          	jruge	L515
1252  009d 3c15          	inc	_btn_freq_duty_1_cnt
1253  009f               L515:
1254                     ; 547     btn_freq_duty_0_cnt = 0;
1256  009f 3f14          	clr	_btn_freq_duty_0_cnt
1257                     ; 548     if(btn_freq_duty_1_cnt >= BTN_DEBOUNCE)
1259  00a1 b615          	ld	a,_btn_freq_duty_1_cnt
1260  00a3 a10f          	cp	a,#15
1261  00a5 2505          	jrult	L315
1262                     ; 550       BTN_FREQ_DUTY_STATE = BTN_DEPRESSED;
1264  00a7 3f1c          	clr	_btn_freq_duty_state
1265                     ; 551       BTN_FREQ_DUTY_PRESS_TIMER = 0;
1267  00a9 5f            	clrw	x
1268  00aa bf20          	ldw	_btn_freq_duty_press_tmr,x
1269  00ac               L315:
1270                     ; 554   if(BTN_FREQ_INC)
1272  00ac 7204500116    	btjt	20481,#2,L125
1273                     ; 556     if(btn_freq_inc_0_cnt < 255) btn_freq_inc_0_cnt++;
1275  00b1 b616          	ld	a,_btn_freq_inc_0_cnt
1276  00b3 a1ff          	cp	a,#255
1277  00b5 2402          	jruge	L325
1280  00b7 3c16          	inc	_btn_freq_inc_0_cnt
1281  00b9               L325:
1282                     ; 557     btn_freq_inc_1_cnt = 0;
1284  00b9 3f17          	clr	_btn_freq_inc_1_cnt
1285                     ; 558     if(btn_freq_inc_0_cnt >= BTN_DEBOUNCE)
1287  00bb b616          	ld	a,_btn_freq_inc_0_cnt
1288  00bd a10f          	cp	a,#15
1289  00bf 251b          	jrult	L725
1290                     ; 560       BTN_FREQ_INC_STATE = BTN_PRESSED;
1292  00c1 3501001d      	mov	_btn_freq_inc_state,#1
1293  00c5 2015          	jra	L725
1294  00c7               L125:
1295                     ; 565     if(btn_freq_inc_1_cnt < 255) btn_freq_inc_1_cnt++;
1297  00c7 b617          	ld	a,_btn_freq_inc_1_cnt
1298  00c9 a1ff          	cp	a,#255
1299  00cb 2402          	jruge	L135
1302  00cd 3c17          	inc	_btn_freq_inc_1_cnt
1303  00cf               L135:
1304                     ; 566     btn_freq_inc_0_cnt = 0;
1306  00cf 3f16          	clr	_btn_freq_inc_0_cnt
1307                     ; 567     if(btn_freq_inc_1_cnt >= BTN_DEBOUNCE)
1309  00d1 b617          	ld	a,_btn_freq_inc_1_cnt
1310  00d3 a10f          	cp	a,#15
1311  00d5 2505          	jrult	L725
1312                     ; 569       BTN_FREQ_INC_STATE = BTN_DEPRESSED;
1314  00d7 3f1d          	clr	_btn_freq_inc_state
1315                     ; 570       BTN_FREQ_INC_PRESS_TIMER = 0;
1317  00d9 5f            	clrw	x
1318  00da bf22          	ldw	_btn_freq_inc_press_tmr,x
1319  00dc               L725:
1320                     ; 573   if(BTN_FREQ_DEC)
1322  00dc 7206500116    	btjt	20481,#3,L535
1323                     ; 575     if(btn_freq_dec_0_cnt < 255) btn_freq_dec_0_cnt++;
1325  00e1 b618          	ld	a,_btn_freq_dec_0_cnt
1326  00e3 a1ff          	cp	a,#255
1327  00e5 2402          	jruge	L735
1330  00e7 3c18          	inc	_btn_freq_dec_0_cnt
1331  00e9               L735:
1332                     ; 576     btn_freq_dec_1_cnt = 0;
1334  00e9 3f19          	clr	_btn_freq_dec_1_cnt
1335                     ; 577     if(btn_freq_dec_0_cnt >= BTN_DEBOUNCE)
1337  00eb b618          	ld	a,_btn_freq_dec_0_cnt
1338  00ed a10f          	cp	a,#15
1339  00ef 251b          	jrult	L345
1340                     ; 579       BTN_FREQ_DEC_STATE = BTN_PRESSED;
1342  00f1 3501001e      	mov	_btn_freq_dec_state,#1
1343  00f5 2015          	jra	L345
1344  00f7               L535:
1345                     ; 584     if(btn_freq_dec_1_cnt < 255) btn_freq_dec_1_cnt++;
1347  00f7 b619          	ld	a,_btn_freq_dec_1_cnt
1348  00f9 a1ff          	cp	a,#255
1349  00fb 2402          	jruge	L545
1352  00fd 3c19          	inc	_btn_freq_dec_1_cnt
1353  00ff               L545:
1354                     ; 585     btn_freq_dec_0_cnt = 0;
1356  00ff 3f18          	clr	_btn_freq_dec_0_cnt
1357                     ; 586     if(btn_freq_dec_1_cnt >= BTN_DEBOUNCE)
1359  0101 b619          	ld	a,_btn_freq_dec_1_cnt
1360  0103 a10f          	cp	a,#15
1361  0105 2505          	jrult	L345
1362                     ; 588       BTN_FREQ_DEC_STATE = BTN_DEPRESSED;
1364  0107 3f1e          	clr	_btn_freq_dec_state
1365                     ; 589       BTN_FREQ_DEC_PRESS_TIMER = 0;
1367  0109 5f            	clrw	x
1368  010a bf24          	ldw	_btn_freq_dec_press_tmr,x
1369  010c               L345:
1370                     ; 592   if(BTN_CHG_WAVE)
1372  010c 720c501516    	btjt	20501,#6,L155
1373                     ; 594     if(btn_chg_wave_0_cnt < 255) btn_chg_wave_0_cnt++;
1375  0111 b61a          	ld	a,_btn_chg_wave_0_cnt
1376  0113 a1ff          	cp	a,#255
1377  0115 2402          	jruge	L355
1380  0117 3c1a          	inc	_btn_chg_wave_0_cnt
1381  0119               L355:
1382                     ; 595     btn_chg_wave_1_cnt = 0;
1384  0119 3f1b          	clr	_btn_chg_wave_1_cnt
1385                     ; 596     if(btn_chg_wave_0_cnt >= BTN_DEBOUNCE)
1387  011b b61a          	ld	a,_btn_chg_wave_0_cnt
1388  011d a10f          	cp	a,#15
1389  011f 251b          	jrult	L755
1390                     ; 598       BTN_CHG_WAVE_STATE = BTN_PRESSED;
1392  0121 3501001f      	mov	_btn_chg_wave_state,#1
1393  0125 2015          	jra	L755
1394  0127               L155:
1395                     ; 603     if(btn_chg_wave_1_cnt < 255) btn_chg_wave_1_cnt++;
1397  0127 b61b          	ld	a,_btn_chg_wave_1_cnt
1398  0129 a1ff          	cp	a,#255
1399  012b 2402          	jruge	L165
1402  012d 3c1b          	inc	_btn_chg_wave_1_cnt
1403  012f               L165:
1404                     ; 604     btn_chg_wave_0_cnt = 0;
1406  012f 3f1a          	clr	_btn_chg_wave_0_cnt
1407                     ; 605     if(btn_chg_wave_1_cnt >= BTN_DEBOUNCE)
1409  0131 b61b          	ld	a,_btn_chg_wave_1_cnt
1410  0133 a10f          	cp	a,#15
1411  0135 2505          	jrult	L755
1412                     ; 607       BTN_CHG_WAVE_STATE = BTN_DEPRESSED;
1414  0137 3f1f          	clr	_btn_chg_wave_state
1415                     ; 608       BTN_CHG_WAVE_PRESS_TIMER = 0;
1417  0139 5f            	clrw	x
1418  013a bf26          	ldw	_btn_chg_wave_press_tmr,x
1419  013c               L755:
1420                     ; 612   TIM3_ClearITPendingBit(TIM3_IT_Update);
1422  013c a601          	ld	a,#1
1423  013e cd0000        	call	_TIM3_ClearITPendingBit
1425                     ; 613 }
1428  0141 85            	popw	x
1429  0142 bf00          	ldw	c_y,x
1430  0144 320002        	pop	c_y+2
1431  0147 85            	popw	x
1432  0148 bf00          	ldw	c_x,x
1433  014a 320002        	pop	c_x+2
1434  014d 80            	iret	
1457                     ; 621 INTERRUPT_HANDLER(TIM3_CAP_IRQHandler,22)
1457                     ; 622 {
1458                     .text:	section	.text,new
1459  0000               f_TIM3_CAP_IRQHandler:
1463  0000               L575:
1464                     ; 626   while (1);
1466  0000 20fe          	jra	L575
1491                     ; 636 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_COM_IRQHandler,23)
1491                     ; 637 {
1492                     .text:	section	.text,new
1493  0000               f_TIM1_UPD_OVF_TRG_COM_IRQHandler:
1495  0000 8a            	push	cc
1496  0001 84            	pop	a
1497  0002 a4bf          	and	a,#191
1498  0004 88            	push	a
1499  0005 86            	pop	cc
1500  0006 3b0002        	push	c_x+2
1501  0009 be00          	ldw	x,c_x
1502  000b 89            	pushw	x
1503  000c 3b0002        	push	c_y+2
1504  000f be00          	ldw	x,c_y
1505  0011 89            	pushw	x
1508                     ; 641   ADC_SoftwareStartConv(ADC1);
1510  0012 ae5340        	ldw	x,#21312
1511  0015 cd0000        	call	_ADC_SoftwareStartConv
1513                     ; 642   TIM1_ClearITPendingBit(TIM1_IT_Update);        
1515  0018 a601          	ld	a,#1
1516  001a cd0000        	call	_TIM1_ClearITPendingBit
1518                     ; 644 }
1521  001d 85            	popw	x
1522  001e bf00          	ldw	c_y,x
1523  0020 320002        	pop	c_y+2
1524  0023 85            	popw	x
1525  0024 bf00          	ldw	c_x,x
1526  0026 320002        	pop	c_x+2
1527  0029 80            	iret	
1552                     ; 652 INTERRUPT_HANDLER(TIM1_CAP_IRQHandler,24)
1552                     ; 653 {
1553                     .text:	section	.text,new
1554  0000               f_TIM1_CAP_IRQHandler:
1556  0000 8a            	push	cc
1557  0001 84            	pop	a
1558  0002 a4bf          	and	a,#191
1559  0004 88            	push	a
1560  0005 86            	pop	cc
1561  0006 3b0002        	push	c_x+2
1562  0009 be00          	ldw	x,c_x
1563  000b 89            	pushw	x
1564  000c 3b0002        	push	c_y+2
1565  000f be00          	ldw	x,c_y
1566  0011 89            	pushw	x
1569                     ; 658   ADC_Cmd(ADC1, ENABLE);  
1571  0012 4b01          	push	#1
1572  0014 ae5340        	ldw	x,#21312
1573  0017 cd0000        	call	_ADC_Cmd
1575  001a 84            	pop	a
1576                     ; 659   TIM1_ClearITPendingBit(TIM1_IT_CC1);           /* clear compare flag */
1578  001b a602          	ld	a,#2
1579  001d cd0000        	call	_TIM1_ClearITPendingBit
1581                     ; 660 }
1584  0020 85            	popw	x
1585  0021 bf00          	ldw	c_y,x
1586  0023 320002        	pop	c_y+2
1587  0026 85            	popw	x
1588  0027 bf00          	ldw	c_x,x
1589  0029 320002        	pop	c_x+2
1590  002c 80            	iret	
1613                     ; 669 INTERRUPT_HANDLER(TIM4_UPD_OVF_TRG_IRQHandler,25)
1613                     ; 670 {
1614                     .text:	section	.text,new
1615  0000               f_TIM4_UPD_OVF_TRG_IRQHandler:
1619  0000               L136:
1620                     ; 674   while (1);
1622  0000 20fe          	jra	L136
1644                     ; 684 INTERRUPT_HANDLER(SPI1_IRQHandler,26)
1644                     ; 685 {
1645                     .text:	section	.text,new
1646  0000               f_SPI1_IRQHandler:
1650  0000               L546:
1651                     ; 689   while (1);
1653  0000 20fe          	jra	L546
1676                     ; 700 INTERRUPT_HANDLER(USART1_TX_IRQHandler,27)
1676                     ; 701 {
1677                     .text:	section	.text,new
1678  0000               f_USART1_TX_IRQHandler:
1682  0000               L166:
1683                     ; 705   while (1);
1685  0000 20fe          	jra	L166
1708                     ; 716 INTERRUPT_HANDLER(USART1_RX_IRQHandler,28)
1708                     ; 717 {
1709                     .text:	section	.text,new
1710  0000               f_USART1_RX_IRQHandler:
1714  0000               L576:
1715                     ; 721   while (1);
1717  0000 20fe          	jra	L576
1739                     ; 732 INTERRUPT_HANDLER(I2C1_IRQHandler,29)
1739                     ; 733 {
1740                     .text:	section	.text,new
1741  0000               f_I2C1_IRQHandler:
1745  0000               L117:
1746                     ; 737   while (1);
1748  0000 20fe          	jra	L117
2132                     	xdef	_trigger_flag_60ms_cnt
2133                     	xdef	_trigger_flag_60ms
2134                     	xdef	_btn_chg_wave_delay_cnt
2135                     	xdef	_btn_freq_dec_delay_cnt
2136                     	xdef	_btn_freq_inc_delay_cnt
2137                     	xdef	_btn_freq_duty_delay_cnt
2138                     	xdef	_btn_chg_wave_delay_flag
2139                     	xdef	_btn_freq_dec_delay_flag
2140                     	xdef	_btn_freq_inc_delay_flag
2141                     	xdef	_btn_freq_duty_delay_flag
2142                     	xdef	_btn_chg_wave_press_tmr
2143                     	xdef	_btn_freq_dec_press_tmr
2144                     	xdef	_btn_freq_inc_press_tmr
2145                     	xdef	_btn_freq_duty_press_tmr
2146                     	xdef	_btn_chg_wave_state
2147                     	xdef	_btn_freq_dec_state
2148                     	xdef	_btn_freq_inc_state
2149                     	xdef	_btn_freq_duty_state
2150                     	xdef	_btn_chg_wave_1_cnt
2151                     	xdef	_btn_chg_wave_0_cnt
2152                     	xdef	_btn_freq_dec_1_cnt
2153                     	xdef	_btn_freq_dec_0_cnt
2154                     	xdef	_btn_freq_inc_1_cnt
2155                     	xdef	_btn_freq_inc_0_cnt
2156                     	xdef	_btn_freq_duty_1_cnt
2157                     	xdef	_btn_freq_duty_0_cnt
2158                     	xdef	_adc_nr_samp_discarded
2159                     	xdef	_adc_measurement_selector
2160                     	xdef	_adc_extVoltage
2161                     	xdef	_adc_extVoltage_ACCU
2162                     	xdef	_adc_GenSigMax
2163                     	xdef	_adc_GenSigMax_ACCU
2164                     	xdef	_adc_IntREF
2165                     	xdef	_adc_IntREF_ACCU
2166                     	xdef	_ADSampRdy
2167                     	xdef	_ad_samples_cnt
2168                     	xdef	_temp_AD16
2169                     	xdef	_temp_AD_L
2170                     	xdef	_temp_AD_H
2171                     	xdef	f_I2C1_IRQHandler
2172                     	xdef	f_USART1_RX_IRQHandler
2173                     	xdef	f_USART1_TX_IRQHandler
2174                     	xdef	f_SPI1_IRQHandler
2175                     	xdef	f_TIM4_UPD_OVF_TRG_IRQHandler
2176                     	xdef	f_TIM1_CAP_IRQHandler
2177                     	xdef	f_TIM1_UPD_OVF_TRG_COM_IRQHandler
2178                     	xdef	f_TIM3_CAP_IRQHandler
2179                     	xdef	f_TIM3_UPD_OVF_TRG_BRK_IRQHandler
2180                     	xdef	f_TIM2_CAP_IRQHandler
2181                     	xdef	f_TIM2_UPD_OVF_TRG_BRK_IRQHandler
2182                     	xdef	f_ADC1_COMP_IRQHandler
2183                     	xdef	f_SWITCH_CSS_BREAK_DAC_IRQHandler
2184                     	xdef	f_LCD_IRQHandler
2185                     	xdef	f_EXTI7_IRQHandler
2186                     	xdef	f_EXTI6_IRQHandler
2187                     	xdef	f_EXTI5_IRQHandler
2188                     	xdef	f_EXTI4_IRQHandler
2189                     	xdef	f_EXTI3_IRQHandler
2190                     	xdef	f_EXTI2_IRQHandler
2191                     	xdef	f_EXTI1_IRQHandler
2192                     	xdef	f_EXTI0_IRQHandler
2193                     	xdef	f_EXTID_IRQHandler
2194                     	xdef	f_EXTIB_IRQHandler
2195                     	xdef	f_EXTIE_F_PVD_IRQHandler
2196                     	xdef	f_RTC_IRQHandler
2197                     	xdef	f_DMA1_CHANNEL2_3_IRQHandler
2198                     	xdef	f_DMA1_CHANNEL0_1_IRQHandler
2199                     	xdef	f_FLASH_IRQHandler
2200                     	xdef	f_TRAP_IRQHandler
2201                     	xdef	f_NonHandledInterrupt
2202                     	xref	_TIM3_ClearITPendingBit
2203                     	xref	_TIM1_ClearITPendingBit
2204                     	xref	_ADC_ClearITPendingBit
2205                     	xref	_ADC_SoftwareStartConv
2206                     	xref	_ADC_Cmd
2207                     	xref	_ADC_ChannelCmd
2208                     	xref.b	c_x
2209                     	xref.b	c_y
2228                     	end
