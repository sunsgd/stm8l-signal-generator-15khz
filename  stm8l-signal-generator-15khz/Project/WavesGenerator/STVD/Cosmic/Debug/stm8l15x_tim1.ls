   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  47                     ; 52 void TIM1_DeInit(void)
  47                     ; 53 {
  49                     .text:	section	.text,new
  50  0000               _TIM1_DeInit:
  54                     ; 54   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  56  0000 725f52b0      	clr	21168
  57                     ; 55   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  59  0004 725f52b1      	clr	21169
  60                     ; 56   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  62  0008 725f52b2      	clr	21170
  63                     ; 57   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  65  000c 725f52b3      	clr	21171
  66                     ; 58   TIM1->IER  = TIM1_IER_RESET_VALUE;
  68  0010 725f52b5      	clr	21173
  69                     ; 61   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  71  0014 725f52bd      	clr	21181
  72                     ; 62   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  74  0018 725f52be      	clr	21182
  75                     ; 64   TIM1->CCMR1 = 0x01;
  77  001c 350152b9      	mov	21177,#1
  78                     ; 65   TIM1->CCMR2 = 0x01;
  80  0020 350152ba      	mov	21178,#1
  81                     ; 66   TIM1->CCMR3 = 0x01;
  83  0024 350152bb      	mov	21179,#1
  84                     ; 67   TIM1->CCMR4 = 0x01;
  86  0028 350152bc      	mov	21180,#1
  87                     ; 69   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  89  002c 725f52bd      	clr	21181
  90                     ; 70   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  92  0030 725f52be      	clr	21182
  93                     ; 71   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  95  0034 725f52b9      	clr	21177
  96                     ; 72   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  98  0038 725f52ba      	clr	21178
  99                     ; 73   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 101  003c 725f52bb      	clr	21179
 102                     ; 74   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 104  0040 725f52bc      	clr	21180
 105                     ; 75   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 107  0044 725f52bf      	clr	21183
 108                     ; 76   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 110  0048 725f52c0      	clr	21184
 111                     ; 77   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 113  004c 725f52c1      	clr	21185
 114                     ; 78   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 116  0050 725f52c2      	clr	21186
 117                     ; 79   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 119  0054 35ff52c3      	mov	21187,#255
 120                     ; 80   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 122  0058 35ff52c4      	mov	21188,#255
 123                     ; 81   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 125  005c 725f52c6      	clr	21190
 126                     ; 82   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 128  0060 725f52c7      	clr	21191
 129                     ; 83   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 131  0064 725f52c8      	clr	21192
 132                     ; 84   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 134  0068 725f52c9      	clr	21193
 135                     ; 85   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 137  006c 725f52ca      	clr	21194
 138                     ; 86   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 140  0070 725f52cb      	clr	21195
 141                     ; 87   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 143  0074 725f52cc      	clr	21196
 144                     ; 88   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 146  0078 725f52cd      	clr	21197
 147                     ; 89   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 149  007c 725f52d0      	clr	21200
 150                     ; 90   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 152  0080 350152b8      	mov	21176,#1
 153                     ; 91   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 155  0084 725f52cf      	clr	21199
 156                     ; 92   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 158  0088 725f52ce      	clr	21198
 159                     ; 93   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 161  008c 725f52c5      	clr	21189
 162                     ; 94   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 164  0090 725f52b6      	clr	21174
 165                     ; 95   TIM1->SR2   = TIM1_SR2_RESET_VALUE;
 167  0094 725f52b7      	clr	21175
 168                     ; 96 }
 171  0098 81            	ret	
 280                     ; 107 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 280                     ; 108                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 280                     ; 109                        uint16_t TIM1_Period,
 280                     ; 110                        uint8_t TIM1_RepetitionCounter)
 280                     ; 111 {
 281                     .text:	section	.text,new
 282  0000               _TIM1_TimeBaseInit:
 284  0000 89            	pushw	x
 285       00000000      OFST:	set	0
 288                     ; 113   assert_param(IS_TIM1_COUNTER_MODE(TIM1_CounterMode));
 290                     ; 117   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 292  0001 7b06          	ld	a,(OFST+6,sp)
 293  0003 c752c3        	ld	21187,a
 294                     ; 118   TIM1->ARRL = (uint8_t)(TIM1_Period);
 296  0006 7b07          	ld	a,(OFST+7,sp)
 297  0008 c752c4        	ld	21188,a
 298                     ; 121   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 300  000b 9e            	ld	a,xh
 301  000c c752c1        	ld	21185,a
 302                     ; 122   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 304  000f 9f            	ld	a,xl
 305  0010 c752c2        	ld	21186,a
 306                     ; 125   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 306                     ; 126                         | (uint8_t)(TIM1_CounterMode));
 308  0013 c652b0        	ld	a,21168
 309  0016 a48f          	and	a,#143
 310  0018 1a05          	or	a,(OFST+5,sp)
 311  001a c752b0        	ld	21168,a
 312                     ; 129   TIM1->RCR = TIM1_RepetitionCounter;
 314  001d 7b08          	ld	a,(OFST+8,sp)
 315  001f c752c5        	ld	21189,a
 316                     ; 133 }
 319  0022 85            	popw	x
 320  0023 81            	ret	
 605                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 605                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 605                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 605                     ; 157                   uint16_t TIM1_Pulse,
 605                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 605                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 605                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 605                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 605                     ; 162 {
 606                     .text:	section	.text,new
 607  0000               _TIM1_OC1Init:
 609  0000 89            	pushw	x
 610  0001 5203          	subw	sp,#3
 611       00000003      OFST:	set	3
 614                     ; 164   assert_param(IS_TIM1_OC_MODE(TIM1_OCMode));
 616                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE(TIM1_OutputState));
 618                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE(TIM1_OutputNState));
 620                     ; 167   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
 622                     ; 168   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
 624                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE(TIM1_OCIdleState));
 626                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE(TIM1_OCNIdleState));
 628                     ; 174   TIM1->CCER1 &= (uint8_t)(~(TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE
 628                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 630  0003 c652bd        	ld	a,21181
 631  0006 a4f0          	and	a,#240
 632  0008 c752bd        	ld	21181,a
 633                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 633                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 633                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 633                     ; 181                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 635  000b 7b0c          	ld	a,(OFST+9,sp)
 636  000d a408          	and	a,#8
 637  000f 6b03          	ld	(OFST+0,sp),a
 638  0011 7b0b          	ld	a,(OFST+8,sp)
 639  0013 a402          	and	a,#2
 640  0015 1a03          	or	a,(OFST+0,sp)
 641  0017 6b02          	ld	(OFST-1,sp),a
 642  0019 7b08          	ld	a,(OFST+5,sp)
 643  001b a404          	and	a,#4
 644  001d 6b01          	ld	(OFST-2,sp),a
 645  001f 9f            	ld	a,xl
 646  0020 a401          	and	a,#1
 647  0022 1a01          	or	a,(OFST-2,sp)
 648  0024 1a02          	or	a,(OFST-1,sp)
 649  0026 ca52bd        	or	a,21181
 650  0029 c752bd        	ld	21181,a
 651                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))
 651                     ; 185                           | (uint8_t)TIM1_OCMode);
 653  002c c652b9        	ld	a,21177
 654  002f a48f          	and	a,#143
 655  0031 1a04          	or	a,(OFST+1,sp)
 656  0033 c752b9        	ld	21177,a
 657                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 659  0036 c652d0        	ld	a,21200
 660  0039 a4fc          	and	a,#252
 661  003b c752d0        	ld	21200,a
 662                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OCIdleState & TIM1_OISR_OIS1)
 662                     ; 191                           | (uint8_t)(TIM1_OCNIdleState & TIM1_OISR_OIS1N));
 664  003e 7b0e          	ld	a,(OFST+11,sp)
 665  0040 a402          	and	a,#2
 666  0042 6b03          	ld	(OFST+0,sp),a
 667  0044 7b0d          	ld	a,(OFST+10,sp)
 668  0046 a401          	and	a,#1
 669  0048 1a03          	or	a,(OFST+0,sp)
 670  004a ca52d0        	or	a,21200
 671  004d c752d0        	ld	21200,a
 672                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 674  0050 7b09          	ld	a,(OFST+6,sp)
 675  0052 c752c6        	ld	21190,a
 676                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 678  0055 7b0a          	ld	a,(OFST+7,sp)
 679  0057 c752c7        	ld	21191,a
 680                     ; 196 }
 683  005a 5b05          	addw	sp,#5
 684  005c 81            	ret	
 788                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 788                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 788                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 788                     ; 220                   uint16_t TIM1_Pulse,
 788                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 788                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 788                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 788                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 788                     ; 225 {
 789                     .text:	section	.text,new
 790  0000               _TIM1_OC2Init:
 792  0000 89            	pushw	x
 793  0001 5203          	subw	sp,#3
 794       00000003      OFST:	set	3
 797                     ; 228   assert_param(IS_TIM1_OC_MODE(TIM1_OCMode));
 799                     ; 229   assert_param(IS_TIM1_OUTPUT_STATE(TIM1_OutputState));
 801                     ; 230   assert_param(IS_TIM1_OUTPUTN_STATE(TIM1_OutputNState));
 803                     ; 231   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
 805                     ; 232   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
 807                     ; 233   assert_param(IS_TIM1_OCIDLE_STATE(TIM1_OCIdleState));
 809                     ; 234   assert_param(IS_TIM1_OCNIDLE_STATE(TIM1_OCNIdleState));
 811                     ; 238   TIM1->CCER1 &= (uint8_t)(~(TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 813  0003 c652bd        	ld	a,21181
 814  0006 a40f          	and	a,#15
 815  0008 c752bd        	ld	21181,a
 816                     ; 241   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E) | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE))
 816                     ; 242                            | (uint8_t) ((uint8_t)(TIM1_OCPolarity & TIM1_CCER1_CC2P) | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP)));
 818  000b 7b0c          	ld	a,(OFST+9,sp)
 819  000d a480          	and	a,#128
 820  000f 6b03          	ld	(OFST+0,sp),a
 821  0011 7b0b          	ld	a,(OFST+8,sp)
 822  0013 a420          	and	a,#32
 823  0015 1a03          	or	a,(OFST+0,sp)
 824  0017 6b02          	ld	(OFST-1,sp),a
 825  0019 7b08          	ld	a,(OFST+5,sp)
 826  001b a440          	and	a,#64
 827  001d 6b01          	ld	(OFST-2,sp),a
 828  001f 9f            	ld	a,xl
 829  0020 a410          	and	a,#16
 830  0022 1a01          	or	a,(OFST-2,sp)
 831  0024 1a02          	or	a,(OFST-1,sp)
 832  0026 ca52bd        	or	a,21181
 833  0029 c752bd        	ld	21181,a
 834                     ; 245   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_OCMode);
 836  002c c652ba        	ld	a,21178
 837  002f a48f          	and	a,#143
 838  0031 1a04          	or	a,(OFST+1,sp)
 839  0033 c752ba        	ld	21178,a
 840                     ; 248   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 842  0036 c652d0        	ld	a,21200
 843  0039 a4f3          	and	a,#243
 844  003b c752d0        	ld	21200,a
 845                     ; 250   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 847  003e 7b0e          	ld	a,(OFST+11,sp)
 848  0040 a408          	and	a,#8
 849  0042 6b03          	ld	(OFST+0,sp),a
 850  0044 7b0d          	ld	a,(OFST+10,sp)
 851  0046 a404          	and	a,#4
 852  0048 1a03          	or	a,(OFST+0,sp)
 853  004a ca52d0        	or	a,21200
 854  004d c752d0        	ld	21200,a
 855                     ; 253   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 857  0050 7b09          	ld	a,(OFST+6,sp)
 858  0052 c752c8        	ld	21192,a
 859                     ; 254   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 861  0055 7b0a          	ld	a,(OFST+7,sp)
 862  0057 c752c9        	ld	21193,a
 863                     ; 255 }
 866  005a 5b05          	addw	sp,#5
 867  005c 81            	ret	
 971                     ; 274 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 971                     ; 275                   TIM1_OutputState_TypeDef TIM1_OutputState,
 971                     ; 276                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 971                     ; 277                   uint16_t TIM1_Pulse,
 971                     ; 278                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 971                     ; 279                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 971                     ; 280                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 971                     ; 281                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 971                     ; 282 {
 972                     .text:	section	.text,new
 973  0000               _TIM1_OC3Init:
 975  0000 89            	pushw	x
 976  0001 5203          	subw	sp,#3
 977       00000003      OFST:	set	3
 980                     ; 285   assert_param(IS_TIM1_OC_MODE(TIM1_OCMode));
 982                     ; 286   assert_param(IS_TIM1_OUTPUT_STATE(TIM1_OutputState));
 984                     ; 287   assert_param(IS_TIM1_OUTPUTN_STATE(TIM1_OutputNState));
 986                     ; 288   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
 988                     ; 289   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
 990                     ; 290   assert_param(IS_TIM1_OCIDLE_STATE(TIM1_OCIdleState));
 992                     ; 291   assert_param(IS_TIM1_OCNIDLE_STATE(TIM1_OCNIdleState));
 994                     ; 295   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 996  0003 c652be        	ld	a,21182
 997  0006 a4f0          	and	a,#240
 998  0008 c752be        	ld	21182,a
 999                     ; 298   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC3E) | (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE))
 999                     ; 299                            | (uint8_t)((uint8_t)(TIM1_OCPolarity & TIM1_CCER2_CC3P) | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER2_CC3NP)));
1001  000b 7b0c          	ld	a,(OFST+9,sp)
1002  000d a408          	and	a,#8
1003  000f 6b03          	ld	(OFST+0,sp),a
1004  0011 7b0b          	ld	a,(OFST+8,sp)
1005  0013 a402          	and	a,#2
1006  0015 1a03          	or	a,(OFST+0,sp)
1007  0017 6b02          	ld	(OFST-1,sp),a
1008  0019 7b08          	ld	a,(OFST+5,sp)
1009  001b a404          	and	a,#4
1010  001d 6b01          	ld	(OFST-2,sp),a
1011  001f 9f            	ld	a,xl
1012  0020 a401          	and	a,#1
1013  0022 1a01          	or	a,(OFST-2,sp)
1014  0024 1a02          	or	a,(OFST-1,sp)
1015  0026 ca52be        	or	a,21182
1016  0029 c752be        	ld	21182,a
1017                     ; 302   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_OCMode);
1019  002c c652bb        	ld	a,21179
1020  002f a48f          	and	a,#143
1021  0031 1a04          	or	a,(OFST+1,sp)
1022  0033 c752bb        	ld	21179,a
1023                     ; 305   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1025  0036 c652d0        	ld	a,21200
1026  0039 a4cf          	and	a,#207
1027  003b c752d0        	ld	21200,a
1028                     ; 307   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | (uint8_t) (TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1030  003e 7b0e          	ld	a,(OFST+11,sp)
1031  0040 a420          	and	a,#32
1032  0042 6b03          	ld	(OFST+0,sp),a
1033  0044 7b0d          	ld	a,(OFST+10,sp)
1034  0046 a410          	and	a,#16
1035  0048 1a03          	or	a,(OFST+0,sp)
1036  004a ca52d0        	or	a,21200
1037  004d c752d0        	ld	21200,a
1038                     ; 310   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1040  0050 7b09          	ld	a,(OFST+6,sp)
1041  0052 c752ca        	ld	21194,a
1042                     ; 311   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1044  0055 7b0a          	ld	a,(OFST+7,sp)
1045  0057 c752cb        	ld	21195,a
1046                     ; 312 }
1049  005a 5b05          	addw	sp,#5
1050  005c 81            	ret	
1257                     ; 325 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1257                     ; 326                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1257                     ; 327                      uint8_t TIM1_DeadTime,
1257                     ; 328                      TIM1_BreakState_TypeDef TIM1_Break,
1257                     ; 329                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1257                     ; 330                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1257                     ; 331 {
1258                     .text:	section	.text,new
1259  0000               _TIM1_BDTRConfig:
1261  0000 89            	pushw	x
1262  0001 88            	push	a
1263       00000001      OFST:	set	1
1266                     ; 334   assert_param(IS_TIM1_OSSI_STATE(TIM1_OSSIState));
1268                     ; 335   assert_param(IS_TIM1_LOCK_LEVEL(TIM1_LockLevel));
1270                     ; 336   assert_param(IS_TIM1_BREAK_STATE(TIM1_Break));
1272                     ; 337   assert_param(IS_TIM1_BREAK_POLARITY(TIM1_BreakPolarity));
1274                     ; 338   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE(TIM1_AutomaticOutput));
1276                     ; 340   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1278  0002 7b06          	ld	a,(OFST+5,sp)
1279  0004 c752cf        	ld	21199,a
1280                     ; 344   TIM1->BKR  =  (uint8_t)((uint8_t)((uint8_t)TIM1_OSSIState | (uint8_t)TIM1_LockLevel)
1280                     ; 345                           | (uint8_t)((uint8_t)((uint8_t)TIM1_Break | (uint8_t)TIM1_BreakPolarity)
1280                     ; 346                                       | (uint8_t)TIM1_AutomaticOutput));
1282  0007 7b07          	ld	a,(OFST+6,sp)
1283  0009 1a08          	or	a,(OFST+7,sp)
1284  000b 1a09          	or	a,(OFST+8,sp)
1285  000d 6b01          	ld	(OFST+0,sp),a
1286  000f 9f            	ld	a,xl
1287  0010 1a02          	or	a,(OFST+1,sp)
1288  0012 1a01          	or	a,(OFST+0,sp)
1289  0014 c752ce        	ld	21198,a
1290                     ; 348 }
1293  0017 5b03          	addw	sp,#3
1294  0019 81            	ret	
1496                     ; 365 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1496                     ; 366                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1496                     ; 367                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1496                     ; 368                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1496                     ; 369                  uint8_t TIM1_ICFilter)
1496                     ; 370 {
1497                     .text:	section	.text,new
1498  0000               _TIM1_ICInit:
1500  0000 89            	pushw	x
1501       00000000      OFST:	set	0
1504                     ; 373   assert_param(IS_TIM1_CHANNEL(TIM1_Channel));
1506                     ; 374   assert_param(IS_TIM1_IC_POLARITY(TIM1_ICPolarity));
1508                     ; 375   assert_param(IS_TIM1_IC_SELECTION(TIM1_ICSelection));
1510                     ; 376   assert_param(IS_TIM1_IC_PRESCALER(TIM1_ICPrescaler));
1512                     ; 377   assert_param(IS_TIM1_IC_FILTER(TIM1_ICFilter));
1514                     ; 379   if (TIM1_Channel == TIM1_Channel_1)
1516  0001 9e            	ld	a,xh
1517  0002 4d            	tnz	a
1518  0003 2614          	jrne	L526
1519                     ; 382     TI1_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1521  0005 7b07          	ld	a,(OFST+7,sp)
1522  0007 88            	push	a
1523  0008 7b06          	ld	a,(OFST+6,sp)
1524  000a 97            	ld	xl,a
1525  000b 7b03          	ld	a,(OFST+3,sp)
1526  000d 95            	ld	xh,a
1527  000e cd0000        	call	L3_TI1_Config
1529  0011 84            	pop	a
1530                     ; 384     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1532  0012 7b06          	ld	a,(OFST+6,sp)
1533  0014 cd0000        	call	_TIM1_SetIC1Prescaler
1536  0017 2044          	jra	L726
1537  0019               L526:
1538                     ; 386   else if (TIM1_Channel == TIM1_Channel_2)
1540  0019 7b01          	ld	a,(OFST+1,sp)
1541  001b a101          	cp	a,#1
1542  001d 2614          	jrne	L136
1543                     ; 389     TI2_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1545  001f 7b07          	ld	a,(OFST+7,sp)
1546  0021 88            	push	a
1547  0022 7b06          	ld	a,(OFST+6,sp)
1548  0024 97            	ld	xl,a
1549  0025 7b03          	ld	a,(OFST+3,sp)
1550  0027 95            	ld	xh,a
1551  0028 cd0000        	call	L5_TI2_Config
1553  002b 84            	pop	a
1554                     ; 391     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1556  002c 7b06          	ld	a,(OFST+6,sp)
1557  002e cd0000        	call	_TIM1_SetIC2Prescaler
1560  0031 202a          	jra	L726
1561  0033               L136:
1562                     ; 393   else if (TIM1_Channel == TIM1_Channel_3)
1564  0033 a102          	cp	a,#2
1565  0035 2614          	jrne	L536
1566                     ; 396     TI3_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1568  0037 7b07          	ld	a,(OFST+7,sp)
1569  0039 88            	push	a
1570  003a 7b06          	ld	a,(OFST+6,sp)
1571  003c 97            	ld	xl,a
1572  003d 7b03          	ld	a,(OFST+3,sp)
1573  003f 95            	ld	xh,a
1574  0040 cd0000        	call	L7_TI3_Config
1576  0043 84            	pop	a
1577                     ; 398     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1579  0044 7b06          	ld	a,(OFST+6,sp)
1580  0046 cd0000        	call	_TIM1_SetIC3Prescaler
1583  0049 2012          	jra	L726
1584  004b               L536:
1585                     ; 403     TI4_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1587  004b 7b07          	ld	a,(OFST+7,sp)
1588  004d 88            	push	a
1589  004e 7b06          	ld	a,(OFST+6,sp)
1590  0050 97            	ld	xl,a
1591  0051 7b03          	ld	a,(OFST+3,sp)
1592  0053 95            	ld	xh,a
1593  0054 cd0000        	call	L11_TI4_Config
1595  0057 84            	pop	a
1596                     ; 405     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1598  0058 7b06          	ld	a,(OFST+6,sp)
1599  005a cd0000        	call	_TIM1_SetIC4Prescaler
1601  005d               L726:
1602                     ; 407 }
1605  005d 85            	popw	x
1606  005e 81            	ret	
1704                     ; 423 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1704                     ; 424                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1704                     ; 425                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1704                     ; 426                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1704                     ; 427                      uint8_t TIM1_ICFilter)
1704                     ; 428 {
1705                     .text:	section	.text,new
1706  0000               _TIM1_PWMIConfig:
1708  0000 89            	pushw	x
1709  0001 89            	pushw	x
1710       00000002      OFST:	set	2
1713                     ; 429   TIM1_ICPolarity_TypeDef icpolarity = TIM1_ICPolarity_Rising;
1715                     ; 430   TIM1_ICSelection_TypeDef icselection = TIM1_ICSelection_DirectTI;
1717                     ; 433   assert_param(IS_TIM1_PWMI_CHANNEL(TIM1_Channel));
1719                     ; 434   assert_param(IS_TIM1_IC_POLARITY(TIM1_ICPolarity));
1721                     ; 435   assert_param(IS_TIM1_IC_SELECTION(TIM1_ICSelection));
1723                     ; 436   assert_param(IS_TIM1_IC_PRESCALER(TIM1_ICPrescaler));
1725                     ; 439   if (TIM1_ICPolarity != TIM1_ICPolarity_Falling)
1727  0002 9f            	ld	a,xl
1728  0003 4a            	dec	a
1729  0004 2702          	jreq	L707
1730                     ; 441     icpolarity = TIM1_ICPolarity_Falling;
1732  0006 a601          	ld	a,#1
1734  0008               L707:
1735                     ; 445     icpolarity = TIM1_ICPolarity_Rising;
1737  0008 6b01          	ld	(OFST-1,sp),a
1738                     ; 449   if (TIM1_ICSelection == TIM1_ICSelection_DirectTI)
1740  000a 7b07          	ld	a,(OFST+5,sp)
1741  000c 4a            	dec	a
1742  000d 2604          	jrne	L317
1743                     ; 451     icselection = TIM1_ICSelection_IndirectTI;
1745  000f a602          	ld	a,#2
1747  0011 2002          	jra	L517
1748  0013               L317:
1749                     ; 455     icselection = TIM1_ICSelection_DirectTI;
1751  0013 a601          	ld	a,#1
1752  0015               L517:
1753  0015 6b02          	ld	(OFST+0,sp),a
1754                     ; 458   if (TIM1_Channel == TIM1_Channel_1)
1756  0017 7b03          	ld	a,(OFST+1,sp)
1757  0019 2626          	jrne	L717
1758                     ; 461     TI1_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1760  001b 7b09          	ld	a,(OFST+7,sp)
1761  001d 88            	push	a
1762  001e 7b08          	ld	a,(OFST+6,sp)
1763  0020 97            	ld	xl,a
1764  0021 7b05          	ld	a,(OFST+3,sp)
1765  0023 95            	ld	xh,a
1766  0024 cd0000        	call	L3_TI1_Config
1768  0027 84            	pop	a
1769                     ; 464     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1771  0028 7b08          	ld	a,(OFST+6,sp)
1772  002a cd0000        	call	_TIM1_SetIC1Prescaler
1774                     ; 467     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1776  002d 7b09          	ld	a,(OFST+7,sp)
1777  002f 88            	push	a
1778  0030 7b03          	ld	a,(OFST+1,sp)
1779  0032 97            	ld	xl,a
1780  0033 7b02          	ld	a,(OFST+0,sp)
1781  0035 95            	ld	xh,a
1782  0036 cd0000        	call	L5_TI2_Config
1784  0039 84            	pop	a
1785                     ; 470     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1787  003a 7b08          	ld	a,(OFST+6,sp)
1788  003c cd0000        	call	_TIM1_SetIC2Prescaler
1791  003f 2024          	jra	L127
1792  0041               L717:
1793                     ; 475     TI2_Config(TIM1_ICPolarity, TIM1_ICSelection, TIM1_ICFilter);
1795  0041 7b09          	ld	a,(OFST+7,sp)
1796  0043 88            	push	a
1797  0044 7b08          	ld	a,(OFST+6,sp)
1798  0046 97            	ld	xl,a
1799  0047 7b05          	ld	a,(OFST+3,sp)
1800  0049 95            	ld	xh,a
1801  004a cd0000        	call	L5_TI2_Config
1803  004d 84            	pop	a
1804                     ; 478     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1806  004e 7b08          	ld	a,(OFST+6,sp)
1807  0050 cd0000        	call	_TIM1_SetIC2Prescaler
1809                     ; 481     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1811  0053 7b09          	ld	a,(OFST+7,sp)
1812  0055 88            	push	a
1813  0056 7b03          	ld	a,(OFST+1,sp)
1814  0058 97            	ld	xl,a
1815  0059 7b02          	ld	a,(OFST+0,sp)
1816  005b 95            	ld	xh,a
1817  005c cd0000        	call	L3_TI1_Config
1819  005f 84            	pop	a
1820                     ; 484     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1822  0060 7b08          	ld	a,(OFST+6,sp)
1823  0062 cd0000        	call	_TIM1_SetIC1Prescaler
1825  0065               L127:
1826                     ; 486 }
1829  0065 5b04          	addw	sp,#4
1830  0067 81            	ret	
1885                     ; 494 void TIM1_Cmd(FunctionalState NewState)
1885                     ; 495 {
1886                     .text:	section	.text,new
1887  0000               _TIM1_Cmd:
1891                     ; 497   assert_param(IS_FUNCTIONAL_STATE(NewState));
1893                     ; 500   if (NewState != DISABLE)
1895  0000 4d            	tnz	a
1896  0001 2705          	jreq	L157
1897                     ; 502     TIM1->CR1 |= TIM1_CR1_CEN;
1899  0003 721052b0      	bset	21168,#0
1902  0007 81            	ret	
1903  0008               L157:
1904                     ; 506     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
1906  0008 721152b0      	bres	21168,#0
1907                     ; 508 }
1910  000c 81            	ret	
1946                     ; 516 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
1946                     ; 517 {
1947                     .text:	section	.text,new
1948  0000               _TIM1_CtrlPWMOutputs:
1952                     ; 519   assert_param(IS_FUNCTIONAL_STATE(NewState));
1954                     ; 523   if (NewState != DISABLE)
1956  0000 4d            	tnz	a
1957  0001 2705          	jreq	L377
1958                     ; 525     TIM1->BKR |= TIM1_BKR_MOE;
1960  0003 721e52ce      	bset	21198,#7
1963  0007 81            	ret	
1964  0008               L377:
1965                     ; 529     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
1967  0008 721f52ce      	bres	21198,#7
1968                     ; 531 }
1971  000c 81            	ret	
2078                     ; 543 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2078                     ; 544 {
2079                     .text:	section	.text,new
2080  0000               _TIM1_ITConfig:
2082  0000 89            	pushw	x
2083       00000000      OFST:	set	0
2086                     ; 546   assert_param(IS_TIM1_IT(TIM1_IT));
2088                     ; 547   assert_param(IS_FUNCTIONAL_STATE(NewState));
2090                     ; 549   if (NewState != DISABLE)
2092  0001 9f            	ld	a,xl
2093  0002 4d            	tnz	a
2094  0003 2706          	jreq	L5401
2095                     ; 552     TIM1->IER |= (uint8_t)TIM1_IT;
2097  0005 9e            	ld	a,xh
2098  0006 ca52b5        	or	a,21173
2100  0009 2006          	jra	L7401
2101  000b               L5401:
2102                     ; 557     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2104  000b 7b01          	ld	a,(OFST+1,sp)
2105  000d 43            	cpl	a
2106  000e c452b5        	and	a,21173
2107  0011               L7401:
2108  0011 c752b5        	ld	21173,a
2109                     ; 559 }
2112  0014 85            	popw	x
2113  0015 81            	ret	
2651                     ; 567 void TIM1_DMAConfig(TIM1_DMABase_TypeDef TIM1_DMABase,
2651                     ; 568                     TIM1_DMABurstLength_TypeDef TIM1_DMABurstLength)
2651                     ; 569 {
2652                     .text:	section	.text,new
2653  0000               _TIM1_DMAConfig:
2657                     ; 571   assert_param(IS_TIM1_DMABase(TIM1_DMABase));
2659                     ; 572   assert_param(IS_TIM1_DMABurstLength(TIM1_DMABurstLength));
2661                     ; 575   TIM1->DCR1 = (uint8_t)TIM1_DMABase;
2663  0000 9e            	ld	a,xh
2664  0001 c752d1        	ld	21201,a
2665                     ; 576   TIM1->DCR2 = (uint8_t)TIM1_DMABurstLength;
2667  0004 9f            	ld	a,xl
2668  0005 c752d2        	ld	21202,a
2669                     ; 577 }
2672  0008 81            	ret	
2766                     ; 589 void TIM1_DMACmd(TIM1_DMASource_TypeDef TIM1_DMASource, FunctionalState NewState)
2766                     ; 590 {
2767                     .text:	section	.text,new
2768  0000               _TIM1_DMACmd:
2770  0000 89            	pushw	x
2771       00000000      OFST:	set	0
2774                     ; 592   assert_param(IS_FUNCTIONAL_STATE(NewState));
2776                     ; 593   assert_param(IS_TIM1_DMA_SOURCE(TIM1_DMASource));
2778                     ; 595   if (NewState != DISABLE)
2780  0001 9f            	ld	a,xl
2781  0002 4d            	tnz	a
2782  0003 2706          	jreq	L5431
2783                     ; 598     TIM1->DER |= (uint8_t)TIM1_DMASource;
2785  0005 9e            	ld	a,xh
2786  0006 ca52b4        	or	a,21172
2788  0009 2006          	jra	L7431
2789  000b               L5431:
2790                     ; 603     TIM1->DER &= (uint8_t)(~TIM1_DMASource);
2792  000b 7b01          	ld	a,(OFST+1,sp)
2793  000d 43            	cpl	a
2794  000e c452b4        	and	a,21172
2795  0011               L7431:
2796  0011 c752b4        	ld	21172,a
2797                     ; 605 }
2800  0014 85            	popw	x
2801  0015 81            	ret	
2825                     ; 612 void TIM1_InternalClockConfig(void)
2825                     ; 613 {
2826                     .text:	section	.text,new
2827  0000               _TIM1_InternalClockConfig:
2831                     ; 615   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2833  0000 c652b2        	ld	a,21170
2834  0003 a4f8          	and	a,#248
2835  0005 c752b2        	ld	21170,a
2836                     ; 616 }
2839  0008 81            	ret	
2956                     ; 634 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2956                     ; 635                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2956                     ; 636                               uint8_t ExtTRGFilter)
2956                     ; 637 {
2957                     .text:	section	.text,new
2958  0000               _TIM1_ETRClockMode1Config:
2960  0000 89            	pushw	x
2961       00000000      OFST:	set	0
2964                     ; 639   assert_param(IS_TIM1_EXT_PRESCALER(TIM1_ExtTRGPrescaler));
2966                     ; 640   assert_param(IS_TIM1_EXT_POLARITY(TIM1_ExtTRGPolarity));
2968                     ; 641   assert_param(IS_TIM1_EXT_TRG_FILTER(ExtTRGFilter));
2970                     ; 644   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2972  0001 7b05          	ld	a,(OFST+5,sp)
2973  0003 88            	push	a
2974  0004 7b02          	ld	a,(OFST+2,sp)
2975  0006 95            	ld	xh,a
2976  0007 cd0000        	call	_TIM1_ETRConfig
2978  000a 84            	pop	a
2979                     ; 647   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(TIM1_SMCR_SMS | TIM1_SMCR_TS)))
2979                     ; 648                          | (uint8_t)((uint8_t)TIM1_SlaveMode_External1 | (uint8_t) TIM1_TRGSelection_ETRF));
2981  000b c652b2        	ld	a,21170
2982  000e aa77          	or	a,#119
2983  0010 c752b2        	ld	21170,a
2984                     ; 649 }
2987  0013 85            	popw	x
2988  0014 81            	ret	
3046                     ; 667 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3046                     ; 668                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3046                     ; 669                               uint8_t ExtTRGFilter)
3046                     ; 670 {
3047                     .text:	section	.text,new
3048  0000               _TIM1_ETRClockMode2Config:
3050  0000 89            	pushw	x
3051       00000000      OFST:	set	0
3054                     ; 672   assert_param(IS_TIM1_EXT_PRESCALER(TIM1_ExtTRGPrescaler));
3056                     ; 673   assert_param(IS_TIM1_EXT_POLARITY(TIM1_ExtTRGPolarity));
3058                     ; 676   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3060  0001 7b05          	ld	a,(OFST+5,sp)
3061  0003 88            	push	a
3062  0004 7b02          	ld	a,(OFST+2,sp)
3063  0006 95            	ld	xh,a
3064  0007 cd0000        	call	_TIM1_ETRConfig
3066  000a 721c52b3      	bset	21171,#6
3067  000e 84            	pop	a
3068                     ; 679   TIM1->ETR |= TIM1_ETR_ECE;
3070                     ; 680 }
3073  000f 85            	popw	x
3074  0010 81            	ret	
3130                     ; 699 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3130                     ; 700                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3130                     ; 701                     uint8_t ExtTRGFilter)
3130                     ; 702 {
3131                     .text:	section	.text,new
3132  0000               _TIM1_ETRConfig:
3134  0000 89            	pushw	x
3135       00000000      OFST:	set	0
3138                     ; 703   assert_param(IS_TIM1_EXT_TRG_FILTER(ExtTRGFilter));
3140                     ; 706   TIM1->ETR |= (uint8_t)((uint8_t)((uint8_t) TIM1_ExtTRGPrescaler
3140                     ; 707                                    | (uint8_t) TIM1_ExtTRGPolarity)
3140                     ; 708                          | (uint8_t) ExtTRGFilter);
3142  0001 9f            	ld	a,xl
3143  0002 1a01          	or	a,(OFST+1,sp)
3144  0004 1a05          	or	a,(OFST+5,sp)
3145  0006 ca52b3        	or	a,21171
3146  0009 c752b3        	ld	21171,a
3147                     ; 709 }
3150  000c 85            	popw	x
3151  000d 81            	ret	
3240                     ; 727 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3240                     ; 728                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3240                     ; 729                                  uint8_t ICFilter)
3240                     ; 730 {
3241                     .text:	section	.text,new
3242  0000               _TIM1_TIxExternalClockConfig:
3244  0000 89            	pushw	x
3245       00000000      OFST:	set	0
3248                     ; 732   assert_param(IS_TIM1_TIXCLK_SOURCE(TIM1_TIxExternalCLKSource));
3250                     ; 733   assert_param(IS_TIM1_IC_POLARITY(TIM1_ICPolarity));
3252                     ; 734   assert_param(IS_TIM1_IC_FILTER(ICFilter));
3254                     ; 737   if (TIM1_TIxExternalCLKSource == TIM1_TIxExternalCLK1Source_TI2)
3256  0001 9e            	ld	a,xh
3257  0002 a160          	cp	a,#96
3258  0004 260e          	jrne	L7451
3259                     ; 739     TI2_Config(TIM1_ICPolarity, TIM1_ICSelection_DirectTI, ICFilter);
3261  0006 7b05          	ld	a,(OFST+5,sp)
3262  0008 88            	push	a
3263  0009 ae0001        	ldw	x,#1
3264  000c 7b03          	ld	a,(OFST+3,sp)
3265  000e 95            	ld	xh,a
3266  000f cd0000        	call	L5_TI2_Config
3269  0012 200c          	jra	L1551
3270  0014               L7451:
3271                     ; 743     TI1_Config(TIM1_ICPolarity, TIM1_ICSelection_DirectTI, ICFilter);
3273  0014 7b05          	ld	a,(OFST+5,sp)
3274  0016 88            	push	a
3275  0017 ae0001        	ldw	x,#1
3276  001a 7b03          	ld	a,(OFST+3,sp)
3277  001c 95            	ld	xh,a
3278  001d cd0000        	call	L3_TI1_Config
3280  0020               L1551:
3281  0020 84            	pop	a
3282                     ; 747   TIM1_SelectInputTrigger((TIM1_TRGSelection_TypeDef)TIM1_TIxExternalCLKSource);
3284  0021 7b01          	ld	a,(OFST+1,sp)
3285  0023 cd0000        	call	_TIM1_SelectInputTrigger
3287                     ; 750   TIM1->SMCR |= (uint8_t)(TIM1_SlaveMode_External1);
3289  0026 c652b2        	ld	a,21170
3290  0029 aa07          	or	a,#7
3291  002b c752b2        	ld	21170,a
3292                     ; 751 }
3295  002e 85            	popw	x
3296  002f 81            	ret	
3403                     ; 766 void TIM1_SelectInputTrigger(TIM1_TRGSelection_TypeDef TIM1_InputTriggerSource)
3403                     ; 767 {
3404                     .text:	section	.text,new
3405  0000               _TIM1_SelectInputTrigger:
3407  0000 88            	push	a
3408       00000000      OFST:	set	0
3411                     ; 769   assert_param(IS_TIM1_TRIGGER_SELECTION(TIM1_InputTriggerSource));
3413                     ; 772   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3415  0001 c652b2        	ld	a,21170
3416  0004 a48f          	and	a,#143
3417  0006 1a01          	or	a,(OFST+1,sp)
3418  0008 c752b2        	ld	21170,a
3419                     ; 773 }
3422  000b 84            	pop	a
3423  000c 81            	ret	
3459                     ; 781 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3459                     ; 782 {
3460                     .text:	section	.text,new
3461  0000               _TIM1_UpdateDisableConfig:
3465                     ; 784   assert_param(IS_FUNCTIONAL_STATE(NewState));
3467                     ; 787   if (NewState != DISABLE)
3469  0000 4d            	tnz	a
3470  0001 2705          	jreq	L3361
3471                     ; 789     TIM1->CR1 |= TIM1_CR1_UDIS;
3473  0003 721252b0      	bset	21168,#1
3476  0007 81            	ret	
3477  0008               L3361:
3478                     ; 793     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3480  0008 721352b0      	bres	21168,#1
3481                     ; 795 }
3484  000c 81            	ret	
3542                     ; 805 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3542                     ; 806 {
3543                     .text:	section	.text,new
3544  0000               _TIM1_UpdateRequestConfig:
3548                     ; 808   assert_param(IS_TIM1_UPDATE_SOURCE(TIM1_UpdateSource));
3550                     ; 811   if (TIM1_UpdateSource != TIM1_UpdateSource_Global)
3552  0000 4d            	tnz	a
3553  0001 2705          	jreq	L5661
3554                     ; 813     TIM1->CR1 |= TIM1_CR1_URS;
3556  0003 721452b0      	bset	21168,#2
3559  0007 81            	ret	
3560  0008               L5661:
3561                     ; 817     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3563  0008 721552b0      	bres	21168,#2
3564                     ; 819 }
3567  000c 81            	ret	
3603                     ; 827 void TIM1_SelectHallSensor(FunctionalState NewState)
3603                     ; 828 {
3604                     .text:	section	.text,new
3605  0000               _TIM1_SelectHallSensor:
3609                     ; 830   assert_param(IS_FUNCTIONAL_STATE(NewState));
3611                     ; 833   if (NewState != DISABLE)
3613  0000 4d            	tnz	a
3614  0001 2705          	jreq	L7071
3615                     ; 835     TIM1->CR2 |= TIM1_CR2_TI1S;
3617  0003 721e52b1      	bset	21169,#7
3620  0007 81            	ret	
3621  0008               L7071:
3622                     ; 839     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3624  0008 721f52b1      	bres	21169,#7
3625                     ; 841 }
3628  000c 81            	ret	
3685                     ; 851 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3685                     ; 852 {
3686                     .text:	section	.text,new
3687  0000               _TIM1_SelectOnePulseMode:
3691                     ; 854   assert_param(IS_TIM1_OPM_MODE(TIM1_OPMode));
3693                     ; 857   if (TIM1_OPMode != TIM1_OPMode_Repetitive)
3695  0000 4d            	tnz	a
3696  0001 2705          	jreq	L1471
3697                     ; 859     TIM1->CR1 |= TIM1_CR1_OPM;
3699  0003 721652b0      	bset	21168,#3
3702  0007 81            	ret	
3703  0008               L1471:
3704                     ; 863     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3706  0008 721752b0      	bres	21168,#3
3707                     ; 865 }
3710  000c 81            	ret	
3816                     ; 881 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3816                     ; 882 {
3817                     .text:	section	.text,new
3818  0000               _TIM1_SelectOutputTrigger:
3820  0000 88            	push	a
3821       00000000      OFST:	set	0
3824                     ; 884   assert_param(IS_TIM1_TRGO_SOURCE(TIM1_TRGOSource));
3826                     ; 886   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | (uint8_t) TIM1_TRGOSource);
3828  0001 c652b1        	ld	a,21169
3829  0004 a48f          	and	a,#143
3830  0006 1a01          	or	a,(OFST+1,sp)
3831  0008 c752b1        	ld	21169,a
3832                     ; 887 }
3835  000b 84            	pop	a
3836  000c 81            	ret	
3910                     ; 899 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3910                     ; 900 {
3911                     .text:	section	.text,new
3912  0000               _TIM1_SelectSlaveMode:
3914  0000 88            	push	a
3915       00000000      OFST:	set	0
3918                     ; 902   assert_param(IS_TIM1_SLAVE_MODE(TIM1_SlaveMode));
3920                     ; 905   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) | (uint8_t)TIM1_SlaveMode);
3922  0001 c652b2        	ld	a,21170
3923  0004 a4f8          	and	a,#248
3924  0006 1a01          	or	a,(OFST+1,sp)
3925  0008 c752b2        	ld	21170,a
3926                     ; 907 }
3929  000b 84            	pop	a
3930  000c 81            	ret	
3966                     ; 915 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3966                     ; 916 {
3967                     .text:	section	.text,new
3968  0000               _TIM1_SelectMasterSlaveMode:
3972                     ; 918   assert_param(IS_FUNCTIONAL_STATE(NewState));
3974                     ; 921   if (NewState != DISABLE)
3976  0000 4d            	tnz	a
3977  0001 2705          	jreq	L7502
3978                     ; 923     TIM1->SMCR |= TIM1_SMCR_MSM;
3980  0003 721e52b2      	bset	21170,#7
3983  0007 81            	ret	
3984  0008               L7502:
3985                     ; 927     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3987  0008 721f52b2      	bres	21170,#7
3988                     ; 929 }
3991  000c 81            	ret	
4077                     ; 951 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4077                     ; 952                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4077                     ; 953                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4077                     ; 954 {
4078                     .text:	section	.text,new
4079  0000               _TIM1_EncoderInterfaceConfig:
4081  0000 89            	pushw	x
4082       00000000      OFST:	set	0
4085                     ; 956   assert_param(IS_TIM1_ENCODER_MODE(TIM1_EncoderMode));
4087                     ; 957   assert_param(IS_TIM1_IC_POLARITY(TIM1_IC1Polarity));
4089                     ; 958   assert_param(IS_TIM1_IC_POLARITY(TIM1_IC2Polarity));
4091                     ; 961   if (TIM1_IC1Polarity != TIM1_ICPolarity_Rising)
4093  0001 9f            	ld	a,xl
4094  0002 4d            	tnz	a
4095  0003 2706          	jreq	L3212
4096                     ; 963     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4098  0005 721252bd      	bset	21181,#1
4100  0009 2004          	jra	L5212
4101  000b               L3212:
4102                     ; 967     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4104  000b 721352bd      	bres	21181,#1
4105  000f               L5212:
4106                     ; 970   if (TIM1_IC2Polarity != TIM1_ICPolarity_Rising)
4108  000f 7b05          	ld	a,(OFST+5,sp)
4109  0011 2706          	jreq	L7212
4110                     ; 972     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4112  0013 721a52bd      	bset	21181,#5
4114  0017 2004          	jra	L1312
4115  0019               L7212:
4116                     ; 976     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4118  0019 721b52bd      	bres	21181,#5
4119  001d               L1312:
4120                     ; 979   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS)) | (uint8_t) TIM1_EncoderMode);
4122  001d c652b2        	ld	a,21170
4123  0020 a4f0          	and	a,#240
4124  0022 1a01          	or	a,(OFST+1,sp)
4125  0024 c752b2        	ld	21170,a
4126                     ; 982   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS))  | (uint8_t) CCMR_TIxDirect_Set);
4128  0027 c652b9        	ld	a,21177
4129  002a a4fc          	and	a,#252
4130  002c aa01          	or	a,#1
4131  002e c752b9        	ld	21177,a
4132                     ; 983   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS)) | (uint8_t) CCMR_TIxDirect_Set);
4134  0031 c652ba        	ld	a,21178
4135  0034 a4fc          	and	a,#252
4136  0036 aa01          	or	a,#1
4137  0038 c752ba        	ld	21178,a
4138                     ; 985 }
4141  003b 85            	popw	x
4142  003c 81            	ret	
4209                     ; 999 void TIM1_PrescalerConfig(uint16_t Prescaler,
4209                     ; 1000                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4209                     ; 1001 {
4210                     .text:	section	.text,new
4211  0000               _TIM1_PrescalerConfig:
4213  0000 89            	pushw	x
4214       00000000      OFST:	set	0
4217                     ; 1003   assert_param(IS_TIM1_PRESCALER_RELOAD(TIM1_PSCReloadMode));
4219                     ; 1006   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4221  0001 9e            	ld	a,xh
4222  0002 c752c1        	ld	21185,a
4223                     ; 1007   TIM1->PSCRL = (uint8_t)(Prescaler);
4225  0005 9f            	ld	a,xl
4226  0006 c752c2        	ld	21186,a
4227                     ; 1010   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4229  0009 7b05          	ld	a,(OFST+5,sp)
4230  000b c752b8        	ld	21176,a
4231                     ; 1011 }
4234  000e 85            	popw	x
4235  000f 81            	ret	
4271                     ; 1024 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4271                     ; 1025 {
4272                     .text:	section	.text,new
4273  0000               _TIM1_CounterModeConfig:
4275  0000 88            	push	a
4276       00000000      OFST:	set	0
4279                     ; 1027   assert_param(IS_TIM1_COUNTER_MODE(TIM1_CounterMode));
4281                     ; 1031   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4281                     ; 1032                         | (uint8_t)TIM1_CounterMode);
4283  0001 c652b0        	ld	a,21168
4284  0004 a48f          	and	a,#143
4285  0006 1a01          	or	a,(OFST+1,sp)
4286  0008 c752b0        	ld	21168,a
4287                     ; 1033 }
4290  000b 84            	pop	a
4291  000c 81            	ret	
4349                     ; 1044 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4349                     ; 1045 {
4350                     .text:	section	.text,new
4351  0000               _TIM1_ForcedOC1Config:
4353  0000 88            	push	a
4354       00000000      OFST:	set	0
4357                     ; 1047   assert_param(IS_TIM1_FORCED_ACTION(TIM1_ForcedAction));
4359                     ; 1050   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_ForcedAction);
4361  0001 c652b9        	ld	a,21177
4362  0004 a48f          	and	a,#143
4363  0006 1a01          	or	a,(OFST+1,sp)
4364  0008 c752b9        	ld	21177,a
4365                     ; 1051 }
4368  000b 84            	pop	a
4369  000c 81            	ret	
4405                     ; 1062 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4405                     ; 1063 {
4406                     .text:	section	.text,new
4407  0000               _TIM1_ForcedOC2Config:
4409  0000 88            	push	a
4410       00000000      OFST:	set	0
4413                     ; 1065   assert_param(IS_TIM1_FORCED_ACTION(TIM1_ForcedAction));
4415                     ; 1068   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_ForcedAction);
4417  0001 c652ba        	ld	a,21178
4418  0004 a48f          	and	a,#143
4419  0006 1a01          	or	a,(OFST+1,sp)
4420  0008 c752ba        	ld	21178,a
4421                     ; 1069 }
4424  000b 84            	pop	a
4425  000c 81            	ret	
4461                     ; 1080 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4461                     ; 1081 {
4462                     .text:	section	.text,new
4463  0000               _TIM1_ForcedOC3Config:
4465  0000 88            	push	a
4466       00000000      OFST:	set	0
4469                     ; 1083   assert_param(IS_TIM1_FORCED_ACTION(TIM1_ForcedAction));
4471                     ; 1086   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_ForcedAction);
4473  0001 c652bb        	ld	a,21179
4474  0004 a48f          	and	a,#143
4475  0006 1a01          	or	a,(OFST+1,sp)
4476  0008 c752bb        	ld	21179,a
4477                     ; 1087 }
4480  000b 84            	pop	a
4481  000c 81            	ret	
4517                     ; 1095 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4517                     ; 1096 {
4518                     .text:	section	.text,new
4519  0000               _TIM1_ARRPreloadConfig:
4523                     ; 1098   assert_param(IS_FUNCTIONAL_STATE(NewState));
4525                     ; 1101   if (NewState != DISABLE)
4527  0000 4d            	tnz	a
4528  0001 2705          	jreq	L3032
4529                     ; 1103     TIM1->CR1 |= TIM1_CR1_ARPE;
4531  0003 721e52b0      	bset	21168,#7
4534  0007 81            	ret	
4535  0008               L3032:
4536                     ; 1107     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4538  0008 721f52b0      	bres	21168,#7
4539                     ; 1109 }
4542  000c 81            	ret	
4577                     ; 1117 void TIM1_SelectCOM(FunctionalState NewState)
4577                     ; 1118 {
4578                     .text:	section	.text,new
4579  0000               _TIM1_SelectCOM:
4583                     ; 1120   assert_param(IS_FUNCTIONAL_STATE(NewState));
4585                     ; 1123   if (NewState != DISABLE)
4587  0000 4d            	tnz	a
4588  0001 2705          	jreq	L5232
4589                     ; 1125     TIM1->CR2 |= TIM1_CR2_CCUS;
4591  0003 721452b1      	bset	21169,#2
4594  0007 81            	ret	
4595  0008               L5232:
4596                     ; 1129     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCUS);
4598  0008 721552b1      	bres	21169,#2
4599                     ; 1131 }
4602  000c 81            	ret	
4638                     ; 1139 void TIM1_CCPreloadControl(FunctionalState NewState)
4638                     ; 1140 {
4639                     .text:	section	.text,new
4640  0000               _TIM1_CCPreloadControl:
4644                     ; 1142   assert_param(IS_FUNCTIONAL_STATE(NewState));
4646                     ; 1145   if (NewState != DISABLE)
4648  0000 4d            	tnz	a
4649  0001 2705          	jreq	L7432
4650                     ; 1147     TIM1->CR2 |= TIM1_CR2_CCPC;
4652  0003 721052b1      	bset	21169,#0
4655  0007 81            	ret	
4656  0008               L7432:
4657                     ; 1151     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4659  0008 721152b1      	bres	21169,#0
4660                     ; 1153 }
4663  000c 81            	ret	
4699                     ; 1161 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4699                     ; 1162 {
4700                     .text:	section	.text,new
4701  0000               _TIM1_OC1PreloadConfig:
4705                     ; 1164   assert_param(IS_FUNCTIONAL_STATE(NewState));
4707                     ; 1167   if (NewState != DISABLE)
4709  0000 4d            	tnz	a
4710  0001 2705          	jreq	L1732
4711                     ; 1169     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4713  0003 721652b9      	bset	21177,#3
4716  0007 81            	ret	
4717  0008               L1732:
4718                     ; 1173     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4720  0008 721752b9      	bres	21177,#3
4721                     ; 1175 }
4724  000c 81            	ret	
4760                     ; 1183 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4760                     ; 1184 {
4761                     .text:	section	.text,new
4762  0000               _TIM1_OC2PreloadConfig:
4766                     ; 1186   assert_param(IS_FUNCTIONAL_STATE(NewState));
4768                     ; 1189   if (NewState != DISABLE)
4770  0000 4d            	tnz	a
4771  0001 2705          	jreq	L3142
4772                     ; 1191     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4774  0003 721652ba      	bset	21178,#3
4777  0007 81            	ret	
4778  0008               L3142:
4779                     ; 1195     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4781  0008 721752ba      	bres	21178,#3
4782                     ; 1197 }
4785  000c 81            	ret	
4821                     ; 1205 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4821                     ; 1206 {
4822                     .text:	section	.text,new
4823  0000               _TIM1_OC3PreloadConfig:
4827                     ; 1208   assert_param(IS_FUNCTIONAL_STATE(NewState));
4829                     ; 1211   if (NewState != DISABLE)
4831  0000 4d            	tnz	a
4832  0001 2705          	jreq	L5342
4833                     ; 1213     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4835  0003 721652bb      	bset	21179,#3
4838  0007 81            	ret	
4839  0008               L5342:
4840                     ; 1217     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4842  0008 721752bb      	bres	21179,#3
4843                     ; 1219 }
4846  000c 81            	ret	
4882                     ; 1227 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4882                     ; 1228 {
4883                     .text:	section	.text,new
4884  0000               _TIM1_OC4PreloadConfig:
4888                     ; 1230   assert_param(IS_FUNCTIONAL_STATE(NewState));
4890                     ; 1233   if (NewState != DISABLE)
4892  0000 4d            	tnz	a
4893  0001 2705          	jreq	L7542
4894                     ; 1235     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4896  0003 721652bc      	bset	21180,#3
4899  0007 81            	ret	
4900  0008               L7542:
4901                     ; 1239     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4903  0008 721752bc      	bres	21180,#3
4904                     ; 1241 }
4907  000c 81            	ret	
4942                     ; 1249 void TIM1_OC1FastConfig(FunctionalState NewState)
4942                     ; 1250 {
4943                     .text:	section	.text,new
4944  0000               _TIM1_OC1FastConfig:
4948                     ; 1252   assert_param(IS_FUNCTIONAL_STATE(NewState));
4950                     ; 1255   if (NewState != DISABLE)
4952  0000 4d            	tnz	a
4953  0001 2705          	jreq	L1052
4954                     ; 1257     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4956  0003 721452b9      	bset	21177,#2
4959  0007 81            	ret	
4960  0008               L1052:
4961                     ; 1261     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4963  0008 721552b9      	bres	21177,#2
4964                     ; 1263 }
4967  000c 81            	ret	
5002                     ; 1271 void TIM1_OC2FastConfig(FunctionalState NewState)
5002                     ; 1272 {
5003                     .text:	section	.text,new
5004  0000               _TIM1_OC2FastConfig:
5008                     ; 1274   assert_param(IS_FUNCTIONAL_STATE(NewState));
5010                     ; 1277   if (NewState != DISABLE)
5012  0000 4d            	tnz	a
5013  0001 2705          	jreq	L3252
5014                     ; 1279     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5016  0003 721452ba      	bset	21178,#2
5019  0007 81            	ret	
5020  0008               L3252:
5021                     ; 1283     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5023  0008 721552ba      	bres	21178,#2
5024                     ; 1285 }
5027  000c 81            	ret	
5062                     ; 1293 void TIM1_OC3FastConfig(FunctionalState NewState)
5062                     ; 1294 {
5063                     .text:	section	.text,new
5064  0000               _TIM1_OC3FastConfig:
5068                     ; 1296   assert_param(IS_FUNCTIONAL_STATE(NewState));
5070                     ; 1299   if (NewState != DISABLE)
5072  0000 4d            	tnz	a
5073  0001 2705          	jreq	L5452
5074                     ; 1301     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5076  0003 721452bb      	bset	21179,#2
5079  0007 81            	ret	
5080  0008               L5452:
5081                     ; 1305     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5083  0008 721552bb      	bres	21179,#2
5084                     ; 1307 }
5087  000c 81            	ret	
5122                     ; 1315 void TIM1_ClearOC1Ref(FunctionalState NewState)
5122                     ; 1316 {
5123                     .text:	section	.text,new
5124  0000               _TIM1_ClearOC1Ref:
5128                     ; 1318   assert_param(IS_FUNCTIONAL_STATE(NewState));
5130                     ; 1321   if (NewState != DISABLE)
5132  0000 4d            	tnz	a
5133  0001 2705          	jreq	L7652
5134                     ; 1323     TIM1->CCMR1 |= TIM1_CCMR_OCxCE;
5136  0003 721e52b9      	bset	21177,#7
5139  0007 81            	ret	
5140  0008               L7652:
5141                     ; 1327     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxCE);
5143  0008 721f52b9      	bres	21177,#7
5144                     ; 1329 }
5147  000c 81            	ret	
5182                     ; 1337 void TIM1_ClearOC2Ref(FunctionalState NewState)
5182                     ; 1338 {
5183                     .text:	section	.text,new
5184  0000               _TIM1_ClearOC2Ref:
5188                     ; 1340   assert_param(IS_FUNCTIONAL_STATE(NewState));
5190                     ; 1343   if (NewState != DISABLE)
5192  0000 4d            	tnz	a
5193  0001 2705          	jreq	L1162
5194                     ; 1345     TIM1->CCMR2 |= TIM1_CCMR_OCxCE;
5196  0003 721e52ba      	bset	21178,#7
5199  0007 81            	ret	
5200  0008               L1162:
5201                     ; 1349     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxCE);
5203  0008 721f52ba      	bres	21178,#7
5204                     ; 1351 }
5207  000c 81            	ret	
5242                     ; 1359 void TIM1_ClearOC3Ref(FunctionalState NewState)
5242                     ; 1360 {
5243                     .text:	section	.text,new
5244  0000               _TIM1_ClearOC3Ref:
5248                     ; 1362   assert_param(IS_FUNCTIONAL_STATE(NewState));
5250                     ; 1365   if (NewState != DISABLE)
5252  0000 4d            	tnz	a
5253  0001 2705          	jreq	L3362
5254                     ; 1367     TIM1->CCMR3 |= TIM1_CCMR_OCxCE;
5256  0003 721e52bb      	bset	21179,#7
5259  0007 81            	ret	
5260  0008               L3362:
5261                     ; 1371     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxCE);
5263  0008 721f52bb      	bres	21179,#7
5264                     ; 1373 }
5267  000c 81            	ret	
5302                     ; 1381 void TIM1_ClearOC4Ref(FunctionalState NewState)
5302                     ; 1382 {
5303                     .text:	section	.text,new
5304  0000               _TIM1_ClearOC4Ref:
5308                     ; 1384   assert_param(IS_FUNCTIONAL_STATE(NewState));
5310                     ; 1387   if (NewState != DISABLE)
5312  0000 4d            	tnz	a
5313  0001 2705          	jreq	L5562
5314                     ; 1389     TIM1->CCMR4 |= TIM1_CCMR_OCxCE;
5316  0003 721e52bc      	bset	21180,#7
5319  0007 81            	ret	
5320  0008               L5562:
5321                     ; 1393     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxCE);
5323  0008 721f52bc      	bres	21180,#7
5324                     ; 1395 }
5327  000c 81            	ret	
5432                     ; 1403 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5432                     ; 1404 {
5433                     .text:	section	.text,new
5434  0000               _TIM1_GenerateEvent:
5438                     ; 1406   assert_param(IS_TIM1_EVENT_SOURCE(TIM1_EventSource));
5440                     ; 1409   TIM1->EGR = (uint8_t)TIM1_EventSource;
5442  0000 c752b8        	ld	21176,a
5443                     ; 1410 }
5446  0003 81            	ret	
5482                     ; 1420 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5482                     ; 1421 {
5483                     .text:	section	.text,new
5484  0000               _TIM1_OC1PolarityConfig:
5488                     ; 1423   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
5490                     ; 1426   if (TIM1_OCPolarity != TIM1_OCPolarity_High)
5492  0000 4d            	tnz	a
5493  0001 2705          	jreq	L1472
5494                     ; 1428     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5496  0003 721252bd      	bset	21181,#1
5499  0007 81            	ret	
5500  0008               L1472:
5501                     ; 1432     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5503  0008 721352bd      	bres	21181,#1
5504                     ; 1434 }
5507  000c 81            	ret	
5543                     ; 1444 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5543                     ; 1445 {
5544                     .text:	section	.text,new
5545  0000               _TIM1_OC1NPolarityConfig:
5549                     ; 1447   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
5551                     ; 1450   if (TIM1_OCNPolarity != TIM1_OCNPolarity_High)
5553  0000 4d            	tnz	a
5554  0001 2705          	jreq	L3672
5555                     ; 1452     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5557  0003 721652bd      	bset	21181,#3
5560  0007 81            	ret	
5561  0008               L3672:
5562                     ; 1456     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5564  0008 721752bd      	bres	21181,#3
5565                     ; 1458 }
5568  000c 81            	ret	
5604                     ; 1468 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5604                     ; 1469 {
5605                     .text:	section	.text,new
5606  0000               _TIM1_OC2PolarityConfig:
5610                     ; 1471   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
5612                     ; 1474   if (TIM1_OCPolarity != TIM1_OCPolarity_High)
5614  0000 4d            	tnz	a
5615  0001 2705          	jreq	L5003
5616                     ; 1476     TIM1->CCER1 |= TIM1_CCER1_CC2P;
5618  0003 721a52bd      	bset	21181,#5
5621  0007 81            	ret	
5622  0008               L5003:
5623                     ; 1480     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
5625  0008 721b52bd      	bres	21181,#5
5626                     ; 1482 }
5629  000c 81            	ret	
5665                     ; 1492 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5665                     ; 1493 {
5666                     .text:	section	.text,new
5667  0000               _TIM1_OC2NPolarityConfig:
5671                     ; 1495   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
5673                     ; 1498   if (TIM1_OCNPolarity != TIM1_OCNPolarity_High)
5675  0000 4d            	tnz	a
5676  0001 2705          	jreq	L7203
5677                     ; 1500     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
5679  0003 721e52bd      	bset	21181,#7
5682  0007 81            	ret	
5683  0008               L7203:
5684                     ; 1504     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
5686  0008 721f52bd      	bres	21181,#7
5687                     ; 1506 }
5690  000c 81            	ret	
5726                     ; 1516 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5726                     ; 1517 {
5727                     .text:	section	.text,new
5728  0000               _TIM1_OC3PolarityConfig:
5732                     ; 1519   assert_param(IS_TIM1_OC_POLARITY(TIM1_OCPolarity));
5734                     ; 1522   if (TIM1_OCPolarity != TIM1_OCPolarity_High)
5736  0000 4d            	tnz	a
5737  0001 2705          	jreq	L1503
5738                     ; 1524     TIM1->CCER2 |= TIM1_CCER2_CC3P;
5740  0003 721252be      	bset	21182,#1
5743  0007 81            	ret	
5744  0008               L1503:
5745                     ; 1528     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5747  0008 721352be      	bres	21182,#1
5748                     ; 1530 }
5751  000c 81            	ret	
5787                     ; 1540 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5787                     ; 1541 {
5788                     .text:	section	.text,new
5789  0000               _TIM1_OC3NPolarityConfig:
5793                     ; 1543   assert_param(IS_TIM1_OCN_POLARITY(TIM1_OCNPolarity));
5795                     ; 1546   if (TIM1_OCNPolarity != TIM1_OCNPolarity_High)
5797  0000 4d            	tnz	a
5798  0001 2705          	jreq	L3703
5799                     ; 1548     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5801  0003 721652be      	bset	21182,#3
5804  0007 81            	ret	
5805  0008               L3703:
5806                     ; 1552     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5808  0008 721752be      	bres	21182,#3
5809                     ; 1554 }
5812  000c 81            	ret	
5857                     ; 1568 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5857                     ; 1569 {
5858                     .text:	section	.text,new
5859  0000               _TIM1_CCxCmd:
5861  0000 89            	pushw	x
5862       00000000      OFST:	set	0
5865                     ; 1571   assert_param(IS_TIM1_CHANNEL(TIM1_Channel));
5867                     ; 1572   assert_param(IS_FUNCTIONAL_STATE(NewState));
5869                     ; 1574   if (TIM1_Channel == TIM1_Channel_1)
5871  0001 9e            	ld	a,xh
5872  0002 4d            	tnz	a
5873  0003 2610          	jrne	L1213
5874                     ; 1577     if (NewState != DISABLE)
5876  0005 9f            	ld	a,xl
5877  0006 4d            	tnz	a
5878  0007 2706          	jreq	L3213
5879                     ; 1579       TIM1->CCER1 |= TIM1_CCER1_CC1E;
5881  0009 721052bd      	bset	21181,#0
5883  000d 203e          	jra	L7213
5884  000f               L3213:
5885                     ; 1583       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5887  000f 721152bd      	bres	21181,#0
5888  0013 2038          	jra	L7213
5889  0015               L1213:
5890                     ; 1586   else if (TIM1_Channel == TIM1_Channel_2)
5892  0015 7b01          	ld	a,(OFST+1,sp)
5893  0017 a101          	cp	a,#1
5894  0019 2610          	jrne	L1313
5895                     ; 1589     if (NewState != DISABLE)
5897  001b 7b02          	ld	a,(OFST+2,sp)
5898  001d 2706          	jreq	L3313
5899                     ; 1591       TIM1->CCER1 |= TIM1_CCER1_CC2E;
5901  001f 721852bd      	bset	21181,#4
5903  0023 2028          	jra	L7213
5904  0025               L3313:
5905                     ; 1595       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5907  0025 721952bd      	bres	21181,#4
5908  0029 2022          	jra	L7213
5909  002b               L1313:
5910                     ; 1598   else if (TIM1_Channel == TIM1_Channel_3)
5912  002b a102          	cp	a,#2
5913  002d 2610          	jrne	L1413
5914                     ; 1601     if (NewState != DISABLE)
5916  002f 7b02          	ld	a,(OFST+2,sp)
5917  0031 2706          	jreq	L3413
5918                     ; 1603       TIM1->CCER2 |= TIM1_CCER2_CC3E;
5920  0033 721052be      	bset	21182,#0
5922  0037 2014          	jra	L7213
5923  0039               L3413:
5924                     ; 1607       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5926  0039 721152be      	bres	21182,#0
5927  003d 200e          	jra	L7213
5928  003f               L1413:
5929                     ; 1613     if (NewState != DISABLE)
5931  003f 7b02          	ld	a,(OFST+2,sp)
5932  0041 2706          	jreq	L1513
5933                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC4E;
5935  0043 721852be      	bset	21182,#4
5937  0047 2004          	jra	L7213
5938  0049               L1513:
5939                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5941  0049 721952be      	bres	21182,#4
5942  004d               L7213:
5943                     ; 1622 }
5946  004d 85            	popw	x
5947  004e 81            	ret	
5992                     ; 1635 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5992                     ; 1636 {
5993                     .text:	section	.text,new
5994  0000               _TIM1_CCxNCmd:
5996  0000 89            	pushw	x
5997       00000000      OFST:	set	0
6000                     ; 1638   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL(TIM1_Channel));
6002                     ; 1639   assert_param(IS_FUNCTIONAL_STATE(NewState));
6004                     ; 1641   if (TIM1_Channel == TIM1_Channel_1)
6006  0001 9e            	ld	a,xh
6007  0002 4d            	tnz	a
6008  0003 2610          	jrne	L7713
6009                     ; 1644     if (NewState != DISABLE)
6011  0005 9f            	ld	a,xl
6012  0006 4d            	tnz	a
6013  0007 2706          	jreq	L1023
6014                     ; 1646       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6016  0009 721452bd      	bset	21181,#2
6018  000d 2029          	jra	L5023
6019  000f               L1023:
6020                     ; 1650       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6022  000f 721552bd      	bres	21181,#2
6023  0013 2023          	jra	L5023
6024  0015               L7713:
6025                     ; 1653   else if (TIM1_Channel == TIM1_Channel_2)
6027  0015 7b01          	ld	a,(OFST+1,sp)
6028  0017 4a            	dec	a
6029  0018 2610          	jrne	L7023
6030                     ; 1656     if (NewState != DISABLE)
6032  001a 7b02          	ld	a,(OFST+2,sp)
6033  001c 2706          	jreq	L1123
6034                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6036  001e 721c52bd      	bset	21181,#6
6038  0022 2014          	jra	L5023
6039  0024               L1123:
6040                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6042  0024 721d52bd      	bres	21181,#6
6043  0028 200e          	jra	L5023
6044  002a               L7023:
6045                     ; 1668     if (NewState != DISABLE)
6047  002a 7b02          	ld	a,(OFST+2,sp)
6048  002c 2706          	jreq	L7123
6049                     ; 1670       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6051  002e 721452be      	bset	21182,#2
6053  0032 2004          	jra	L5023
6054  0034               L7123:
6055                     ; 1674       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6057  0034 721552be      	bres	21182,#2
6058  0038               L5023:
6059                     ; 1677 }
6062  0038 85            	popw	x
6063  0039 81            	ret	
6108                     ; 1699 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6108                     ; 1700 {
6109                     .text:	section	.text,new
6110  0000               _TIM1_SelectOCxM:
6112  0000 89            	pushw	x
6113       00000000      OFST:	set	0
6116                     ; 1702   assert_param(IS_TIM1_CHANNEL(TIM1_Channel));
6118                     ; 1703   assert_param(IS_TIM1_OCM(TIM1_OCMode));
6120                     ; 1705   if (TIM1_Channel == TIM1_Channel_1)
6122  0001 9e            	ld	a,xh
6123  0002 4d            	tnz	a
6124  0003 2610          	jrne	L5423
6125                     ; 1708     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6127  0005 721152bd      	bres	21181,#0
6128                     ; 1711     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_OCMode);
6130  0009 c652b9        	ld	a,21177
6131  000c a48f          	and	a,#143
6132  000e 1a02          	or	a,(OFST+2,sp)
6133  0010 c752b9        	ld	21177,a
6135  0013 2023          	jra	L7423
6136  0015               L5423:
6137                     ; 1713   else if (TIM1_Channel == TIM1_Channel_2)
6139  0015 7b01          	ld	a,(OFST+1,sp)
6140  0017 4a            	dec	a
6141  0018 2610          	jrne	L1523
6142                     ; 1716     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6144  001a 721952bd      	bres	21181,#4
6145                     ; 1719     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_OCMode);
6147  001e c652ba        	ld	a,21178
6148  0021 a48f          	and	a,#143
6149  0023 1a02          	or	a,(OFST+2,sp)
6150  0025 c752ba        	ld	21178,a
6152  0028 200e          	jra	L7423
6153  002a               L1523:
6154                     ; 1724     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6156  002a 721152be      	bres	21182,#0
6157                     ; 1727     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | (uint8_t)TIM1_OCMode);
6159  002e c652bb        	ld	a,21179
6160  0031 a48f          	and	a,#143
6161  0033 1a02          	or	a,(OFST+2,sp)
6162  0035 c752bb        	ld	21179,a
6163  0038               L7423:
6164                     ; 1737 }
6167  0038 85            	popw	x
6168  0039 81            	ret	
6202                     ; 1745 void TIM1_SetCounter(uint16_t Counter)
6202                     ; 1746 {
6203                     .text:	section	.text,new
6204  0000               _TIM1_SetCounter:
6208                     ; 1748   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6210  0000 9e            	ld	a,xh
6211  0001 c752bf        	ld	21183,a
6212                     ; 1749   TIM1->CNTRL = (uint8_t)(Counter);
6214  0004 9f            	ld	a,xl
6215  0005 c752c0        	ld	21184,a
6216                     ; 1751 }
6219  0008 81            	ret	
6253                     ; 1759 void TIM1_SetAutoreload(uint16_t Autoreload)
6253                     ; 1760 {
6254                     .text:	section	.text,new
6255  0000               _TIM1_SetAutoreload:
6259                     ; 1762   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6261  0000 9e            	ld	a,xh
6262  0001 c752c3        	ld	21187,a
6263                     ; 1763   TIM1->ARRL = (uint8_t)(Autoreload);
6265  0004 9f            	ld	a,xl
6266  0005 c752c4        	ld	21188,a
6267                     ; 1764 }
6270  0008 81            	ret	
6304                     ; 1772 void TIM1_SetCompare1(uint16_t Compare1)
6304                     ; 1773 {
6305                     .text:	section	.text,new
6306  0000               _TIM1_SetCompare1:
6310                     ; 1775   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6312  0000 9e            	ld	a,xh
6313  0001 c752c6        	ld	21190,a
6314                     ; 1776   TIM1->CCR1L = (uint8_t)(Compare1);
6316  0004 9f            	ld	a,xl
6317  0005 c752c7        	ld	21191,a
6318                     ; 1778 }
6321  0008 81            	ret	
6355                     ; 1786 void TIM1_SetCompare2(uint16_t Compare2)
6355                     ; 1787 {
6356                     .text:	section	.text,new
6357  0000               _TIM1_SetCompare2:
6361                     ; 1789   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
6363  0000 9e            	ld	a,xh
6364  0001 c752c8        	ld	21192,a
6365                     ; 1790   TIM1->CCR2L = (uint8_t)(Compare2);
6367  0004 9f            	ld	a,xl
6368  0005 c752c9        	ld	21193,a
6369                     ; 1791 }
6372  0008 81            	ret	
6406                     ; 1799 void TIM1_SetCompare3(uint16_t Compare3)
6406                     ; 1800 {
6407                     .text:	section	.text,new
6408  0000               _TIM1_SetCompare3:
6412                     ; 1802   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
6414  0000 9e            	ld	a,xh
6415  0001 c752ca        	ld	21194,a
6416                     ; 1803   TIM1->CCR3L = (uint8_t)(Compare3);
6418  0004 9f            	ld	a,xl
6419  0005 c752cb        	ld	21195,a
6420                     ; 1804 }
6423  0008 81            	ret	
6457                     ; 1812 void TIM1_SetCompare4(uint16_t Compare4)
6457                     ; 1813 {
6458                     .text:	section	.text,new
6459  0000               _TIM1_SetCompare4:
6463                     ; 1815   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
6465  0000 9e            	ld	a,xh
6466  0001 c752cc        	ld	21196,a
6467                     ; 1816   TIM1->CCR4L = (uint8_t)(Compare4);
6469  0004 9f            	ld	a,xl
6470  0005 c752cd        	ld	21197,a
6471                     ; 1817 }
6474  0008 81            	ret	
6510                     ; 1829 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
6510                     ; 1830 {
6511                     .text:	section	.text,new
6512  0000               _TIM1_SetIC1Prescaler:
6514  0000 88            	push	a
6515       00000000      OFST:	set	0
6518                     ; 1832   assert_param(IS_TIM1_IC_PRESCALER(TIM1_IC1Prescaler));
6520                     ; 1835   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC1Prescaler);
6522  0001 c652b9        	ld	a,21177
6523  0004 a4f3          	and	a,#243
6524  0006 1a01          	or	a,(OFST+1,sp)
6525  0008 c752b9        	ld	21177,a
6526                     ; 1836 }
6529  000b 84            	pop	a
6530  000c 81            	ret	
6566                     ; 1848 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
6566                     ; 1849 {
6567                     .text:	section	.text,new
6568  0000               _TIM1_SetIC2Prescaler:
6570  0000 88            	push	a
6571       00000000      OFST:	set	0
6574                     ; 1851   assert_param(IS_TIM1_IC_PRESCALER(TIM1_IC2Prescaler));
6576                     ; 1854   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC2Prescaler);
6578  0001 c652ba        	ld	a,21178
6579  0004 a4f3          	and	a,#243
6580  0006 1a01          	or	a,(OFST+1,sp)
6581  0008 c752ba        	ld	21178,a
6582                     ; 1855 }
6585  000b 84            	pop	a
6586  000c 81            	ret	
6622                     ; 1867 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6622                     ; 1868 {
6623                     .text:	section	.text,new
6624  0000               _TIM1_SetIC3Prescaler:
6626  0000 88            	push	a
6627       00000000      OFST:	set	0
6630                     ; 1871   assert_param(IS_TIM1_IC_PRESCALER(TIM1_IC3Prescaler));
6632                     ; 1874   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC3Prescaler);
6634  0001 c652bb        	ld	a,21179
6635  0004 a4f3          	and	a,#243
6636  0006 1a01          	or	a,(OFST+1,sp)
6637  0008 c752bb        	ld	21179,a
6638                     ; 1875 }
6641  000b 84            	pop	a
6642  000c 81            	ret	
6678                     ; 1887 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6678                     ; 1888 {
6679                     .text:	section	.text,new
6680  0000               _TIM1_SetIC4Prescaler:
6682  0000 88            	push	a
6683       00000000      OFST:	set	0
6686                     ; 1891   assert_param(IS_TIM1_IC_PRESCALER(TIM1_IC4Prescaler));
6688                     ; 1894   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC4Prescaler);
6690  0001 c652bc        	ld	a,21180
6691  0004 a4f3          	and	a,#243
6692  0006 1a01          	or	a,(OFST+1,sp)
6693  0008 c752bc        	ld	21180,a
6694                     ; 1895 }
6697  000b 84            	pop	a
6698  000c 81            	ret	
6750                     ; 1902 uint16_t TIM1_GetCapture1(void)
6750                     ; 1903 {
6751                     .text:	section	.text,new
6752  0000               _TIM1_GetCapture1:
6754  0000 5204          	subw	sp,#4
6755       00000004      OFST:	set	4
6758                     ; 1906   uint16_t tmpccr1 = 0;
6760                     ; 1907   uint8_t tmpccr1l = 0, tmpccr1h = 0;
6764                     ; 1909   tmpccr1h = TIM1->CCR1H;
6766  0002 c652c6        	ld	a,21190
6767  0005 6b02          	ld	(OFST-2,sp),a
6768                     ; 1910   tmpccr1l = TIM1->CCR1L;
6770  0007 c652c7        	ld	a,21191
6771  000a 6b01          	ld	(OFST-3,sp),a
6772                     ; 1912   tmpccr1 = (uint16_t)(tmpccr1l);
6774  000c 5f            	clrw	x
6775  000d 97            	ld	xl,a
6776  000e 1f03          	ldw	(OFST-1,sp),x
6777                     ; 1913   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6779  0010 5f            	clrw	x
6780  0011 7b02          	ld	a,(OFST-2,sp)
6781  0013 97            	ld	xl,a
6782  0014 7b04          	ld	a,(OFST+0,sp)
6783  0016 01            	rrwa	x,a
6784  0017 1a03          	or	a,(OFST-1,sp)
6785  0019 01            	rrwa	x,a
6786                     ; 1915   return (uint16_t)tmpccr1;
6790  001a 5b04          	addw	sp,#4
6791  001c 81            	ret	
6843                     ; 1923 uint16_t TIM1_GetCapture2(void)
6843                     ; 1924 {
6844                     .text:	section	.text,new
6845  0000               _TIM1_GetCapture2:
6847  0000 5204          	subw	sp,#4
6848       00000004      OFST:	set	4
6851                     ; 1927   uint16_t tmpccr2 = 0;
6853                     ; 1928   uint8_t tmpccr2l = 0, tmpccr2h = 0;
6857                     ; 1930   tmpccr2h = TIM1->CCR2H;
6859  0002 c652c8        	ld	a,21192
6860  0005 6b02          	ld	(OFST-2,sp),a
6861                     ; 1931   tmpccr2l = TIM1->CCR2L;
6863  0007 c652c9        	ld	a,21193
6864  000a 6b01          	ld	(OFST-3,sp),a
6865                     ; 1933   tmpccr2 = (uint16_t)(tmpccr2l);
6867  000c 5f            	clrw	x
6868  000d 97            	ld	xl,a
6869  000e 1f03          	ldw	(OFST-1,sp),x
6870                     ; 1934   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6872  0010 5f            	clrw	x
6873  0011 7b02          	ld	a,(OFST-2,sp)
6874  0013 97            	ld	xl,a
6875  0014 7b04          	ld	a,(OFST+0,sp)
6876  0016 01            	rrwa	x,a
6877  0017 1a03          	or	a,(OFST-1,sp)
6878  0019 01            	rrwa	x,a
6879                     ; 1936   return (uint16_t)tmpccr2;
6883  001a 5b04          	addw	sp,#4
6884  001c 81            	ret	
6936                     ; 1944 uint16_t TIM1_GetCapture3(void)
6936                     ; 1945 {
6937                     .text:	section	.text,new
6938  0000               _TIM1_GetCapture3:
6940  0000 5204          	subw	sp,#4
6941       00000004      OFST:	set	4
6944                     ; 1947   uint16_t tmpccr3 = 0;
6946                     ; 1948   uint8_t tmpccr3l = 0, tmpccr3h = 0;
6950                     ; 1950   tmpccr3h = TIM1->CCR3H;
6952  0002 c652ca        	ld	a,21194
6953  0005 6b02          	ld	(OFST-2,sp),a
6954                     ; 1951   tmpccr3l = TIM1->CCR3L;
6956  0007 c652cb        	ld	a,21195
6957  000a 6b01          	ld	(OFST-3,sp),a
6958                     ; 1953   tmpccr3 = (uint16_t)(tmpccr3l);
6960  000c 5f            	clrw	x
6961  000d 97            	ld	xl,a
6962  000e 1f03          	ldw	(OFST-1,sp),x
6963                     ; 1954   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6965  0010 5f            	clrw	x
6966  0011 7b02          	ld	a,(OFST-2,sp)
6967  0013 97            	ld	xl,a
6968  0014 7b04          	ld	a,(OFST+0,sp)
6969  0016 01            	rrwa	x,a
6970  0017 1a03          	or	a,(OFST-1,sp)
6971  0019 01            	rrwa	x,a
6972                     ; 1956   return (uint16_t)tmpccr3;
6976  001a 5b04          	addw	sp,#4
6977  001c 81            	ret	
7029                     ; 1964 uint16_t TIM1_GetCapture4(void)
7029                     ; 1965 {
7030                     .text:	section	.text,new
7031  0000               _TIM1_GetCapture4:
7033  0000 5204          	subw	sp,#4
7034       00000004      OFST:	set	4
7037                     ; 1967   uint16_t tmpccr4 = 0;
7039                     ; 1968   uint8_t tmpccr4l = 0, tmpccr4h = 0;
7043                     ; 1970   tmpccr4h = TIM1->CCR4H;
7045  0002 c652cc        	ld	a,21196
7046  0005 6b02          	ld	(OFST-2,sp),a
7047                     ; 1971   tmpccr4l = TIM1->CCR4L;
7049  0007 c652cd        	ld	a,21197
7050  000a 6b01          	ld	(OFST-3,sp),a
7051                     ; 1973   tmpccr4 = (uint16_t)(tmpccr4l);
7053  000c 5f            	clrw	x
7054  000d 97            	ld	xl,a
7055  000e 1f03          	ldw	(OFST-1,sp),x
7056                     ; 1974   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7058  0010 5f            	clrw	x
7059  0011 7b02          	ld	a,(OFST-2,sp)
7060  0013 97            	ld	xl,a
7061  0014 7b04          	ld	a,(OFST+0,sp)
7062  0016 01            	rrwa	x,a
7063  0017 1a03          	or	a,(OFST-1,sp)
7064  0019 01            	rrwa	x,a
7065                     ; 1976   return (uint16_t)tmpccr4;
7069  001a 5b04          	addw	sp,#4
7070  001c 81            	ret	
7122                     ; 1984 uint16_t TIM1_GetCounter(void)
7122                     ; 1985 {
7123                     .text:	section	.text,new
7124  0000               _TIM1_GetCounter:
7126  0000 5204          	subw	sp,#4
7127       00000004      OFST:	set	4
7130                     ; 1987   uint16_t tmpcntr = 0;
7132                     ; 1988   uint8_t tmpcntrl = 0, tmpcntrh = 0;
7136                     ; 1990   tmpcntrh = TIM1->CNTRH;
7138  0002 c652bf        	ld	a,21183
7139  0005 6b02          	ld	(OFST-2,sp),a
7140                     ; 1991   tmpcntrl = TIM1->CNTRL;
7142  0007 c652c0        	ld	a,21184
7143  000a 6b01          	ld	(OFST-3,sp),a
7144                     ; 1993   tmpcntr  = (uint16_t)(tmpcntrl);
7146  000c 5f            	clrw	x
7147  000d 97            	ld	xl,a
7148  000e 1f03          	ldw	(OFST-1,sp),x
7149                     ; 1994   tmpcntr |= (uint16_t)((uint16_t)tmpcntrh << 8);
7151  0010 5f            	clrw	x
7152  0011 7b02          	ld	a,(OFST-2,sp)
7153  0013 97            	ld	xl,a
7154  0014 7b04          	ld	a,(OFST+0,sp)
7155  0016 01            	rrwa	x,a
7156  0017 1a03          	or	a,(OFST-1,sp)
7157  0019 01            	rrwa	x,a
7158                     ; 1997   return (uint16_t)tmpcntr;
7162  001a 5b04          	addw	sp,#4
7163  001c 81            	ret	
7197                     ; 2006 uint16_t TIM1_GetPrescaler(void)
7197                     ; 2007 {
7198                     .text:	section	.text,new
7199  0000               _TIM1_GetPrescaler:
7201  0000 89            	pushw	x
7202       00000002      OFST:	set	2
7205                     ; 2008   uint16_t tmpreg = 0;
7207                     ; 2009   tmpreg = (uint16_t)((uint16_t)TIM1->PSCRH << 8);
7209  0001 c652c1        	ld	a,21185
7210  0004 97            	ld	xl,a
7211  0005 4f            	clr	a
7212  0006 02            	rlwa	x,a
7213  0007 1f01          	ldw	(OFST-1,sp),x
7214                     ; 2011   return (uint16_t)(tmpreg | TIM1->PSCRL);
7216  0009 5f            	clrw	x
7217  000a c652c2        	ld	a,21186
7218  000d 97            	ld	xl,a
7219  000e 01            	rrwa	x,a
7220  000f 1a02          	or	a,(OFST+0,sp)
7221  0011 01            	rrwa	x,a
7222  0012 1a01          	or	a,(OFST-1,sp)
7223  0014 01            	rrwa	x,a
7226  0015 5b02          	addw	sp,#2
7227  0017 81            	ret	
7286                     ; 2022 void TIM1_SelectOCREFClear(TIM1_OCReferenceClear_TypeDef TIM1_OCReferenceClear)
7286                     ; 2023 {
7287                     .text:	section	.text,new
7288  0000               _TIM1_SelectOCREFClear:
7292                     ; 2025   assert_param(IS_TIM1_OCREFERENCECECLEAR_SOURCE(TIM1_OCReferenceClear));
7294                     ; 2028   TIM1->SMCR &=  (uint8_t) (~TIM1_SMCR_OCCS);
7296  0000 721752b2      	bres	21170,#3
7297                     ; 2029   TIM1->SMCR |=  (uint8_t) TIM1_OCReferenceClear;
7299  0004 ca52b2        	or	a,21170
7300  0007 c752b2        	ld	21170,a
7301                     ; 2030 }
7304  000a 81            	ret	
7339                     ; 2037 void TIM1_SelectCCDMA(FunctionalState NewState)
7339                     ; 2038 {
7340                     .text:	section	.text,new
7341  0000               _TIM1_SelectCCDMA:
7345                     ; 2040   assert_param(IS_FUNCTIONAL_STATE(NewState));
7347                     ; 2042   if (NewState != DISABLE)
7349  0000 4d            	tnz	a
7350  0001 2705          	jreq	L1373
7351                     ; 2045     TIM1->CR2 |= TIM1_CR2_CCDS;
7353  0003 721652b1      	bset	21169,#3
7356  0007 81            	ret	
7357  0008               L1373:
7358                     ; 2050     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCDS);
7360  0008 721752b1      	bres	21169,#3
7361                     ; 2052 }
7364  000c 81            	ret	
7538                     ; 2072 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
7538                     ; 2073 {
7539                     .text:	section	.text,new
7540  0000               _TIM1_GetFlagStatus:
7542  0000 89            	pushw	x
7543  0001 89            	pushw	x
7544       00000002      OFST:	set	2
7547                     ; 2074   FlagStatus bitstatus = RESET;
7549                     ; 2075   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
7553                     ; 2078   assert_param(IS_TIM1_GET_FLAG(TIM1_FLAG));
7555                     ; 2080   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
7557  0002 9f            	ld	a,xl
7558  0003 c452b6        	and	a,21174
7559  0006 6b01          	ld	(OFST-1,sp),a
7560                     ; 2081   tim1_flag_h = (uint8_t)(TIM1->SR2 & (uint8_t)((uint16_t)TIM1_FLAG >> 8));
7562  0008 c652b7        	ld	a,21175
7563  000b 1403          	and	a,(OFST+1,sp)
7564  000d 6b02          	ld	(OFST+0,sp),a
7565                     ; 2083   if ((uint8_t)((uint8_t)tim1_flag_l | (uint8_t)tim1_flag_h) != 0)
7567  000f 1a01          	or	a,(OFST-1,sp)
7568  0011 2702          	jreq	L3304
7569                     ; 2085     bitstatus = SET;
7571  0013 a601          	ld	a,#1
7573  0015               L3304:
7574                     ; 2089     bitstatus = RESET;
7576                     ; 2091   return (FlagStatus)(bitstatus);
7580  0015 5b04          	addw	sp,#4
7581  0017 81            	ret	
7616                     ; 2112 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
7616                     ; 2113 {
7617                     .text:	section	.text,new
7618  0000               _TIM1_ClearFlag:
7620  0000 89            	pushw	x
7621       00000000      OFST:	set	0
7624                     ; 2115   assert_param(IS_TIM1_CLEAR_FLAG(TIM1_FLAG));
7626                     ; 2118   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
7628  0001 9f            	ld	a,xl
7629  0002 43            	cpl	a
7630  0003 c752b6        	ld	21174,a
7631                     ; 2119   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & (uint8_t)0x1E);
7633  0006 7b01          	ld	a,(OFST+1,sp)
7634  0008 43            	cpl	a
7635  0009 a41e          	and	a,#30
7636  000b c752b7        	ld	21175,a
7637                     ; 2120 }
7640  000e 85            	popw	x
7641  000f 81            	ret	
7705                     ; 2129 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
7705                     ; 2130 {
7706                     .text:	section	.text,new
7707  0000               _TIM1_GetITStatus:
7709  0000 88            	push	a
7710  0001 89            	pushw	x
7711       00000002      OFST:	set	2
7714                     ; 2131   ITStatus bitstatus = RESET;
7716                     ; 2133   uint8_t TIM1_itStatus = 0x0, TIM1_itEnable = 0x0;
7720                     ; 2136   assert_param(IS_TIM1_GET_IT(TIM1_IT));
7722                     ; 2138   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
7724  0002 c452b6        	and	a,21174
7725  0005 6b01          	ld	(OFST-1,sp),a
7726                     ; 2140   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
7728  0007 c652b5        	ld	a,21173
7729  000a 1403          	and	a,(OFST+1,sp)
7730  000c 6b02          	ld	(OFST+0,sp),a
7731                     ; 2142   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
7733  000e 7b01          	ld	a,(OFST-1,sp)
7734  0010 2708          	jreq	L7014
7736  0012 7b02          	ld	a,(OFST+0,sp)
7737  0014 2704          	jreq	L7014
7738                     ; 2144     bitstatus = SET;
7740  0016 a601          	ld	a,#1
7742  0018 2001          	jra	L1114
7743  001a               L7014:
7744                     ; 2148     bitstatus = RESET;
7746  001a 4f            	clr	a
7747  001b               L1114:
7748                     ; 2150   return (ITStatus)(bitstatus);
7752  001b 5b03          	addw	sp,#3
7753  001d 81            	ret	
7789                     ; 2159 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7789                     ; 2160 {
7790                     .text:	section	.text,new
7791  0000               _TIM1_ClearITPendingBit:
7795                     ; 2162   assert_param(IS_TIM1_IT(TIM1_IT));
7797                     ; 2165   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7799  0000 43            	cpl	a
7800  0001 c752b6        	ld	21174,a
7801                     ; 2166 }
7804  0004 81            	ret	
7856                     ; 2184 static void TI1_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection, uint8_t TIM1_ICFilter)
7856                     ; 2185 {
7857                     .text:	section	.text,new
7858  0000               L3_TI1_Config:
7860  0000 89            	pushw	x
7861       00000001      OFST:	set	1
7864                     ; 2188   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7866  0001 721152bd      	bres	21181,#0
7867  0005 88            	push	a
7868                     ; 2191   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF)))
7868                     ; 2192                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7870  0006 7b06          	ld	a,(OFST+5,sp)
7871  0008 97            	ld	xl,a
7872  0009 a610          	ld	a,#16
7873  000b 42            	mul	x,a
7874  000c 9f            	ld	a,xl
7875  000d 1a03          	or	a,(OFST+2,sp)
7876  000f 6b01          	ld	(OFST+0,sp),a
7877  0011 c652b9        	ld	a,21177
7878  0014 a40c          	and	a,#12
7879  0016 1a01          	or	a,(OFST+0,sp)
7880  0018 c752b9        	ld	21177,a
7881                     ; 2197   if (TIM1_ICPolarity != TIM1_ICPolarity_Rising)
7883  001b 7b02          	ld	a,(OFST+1,sp)
7884  001d 2706          	jreq	L7514
7885                     ; 2199     TIM1->CCER1 |= TIM1_CCER1_CC1P;
7887  001f 721252bd      	bset	21181,#1
7889  0023 2004          	jra	L1614
7890  0025               L7514:
7891                     ; 2203     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7893  0025 721352bd      	bres	21181,#1
7894  0029               L1614:
7895                     ; 2207   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7897  0029 721052bd      	bset	21181,#0
7898                     ; 2208 }
7901  002d 5b03          	addw	sp,#3
7902  002f 81            	ret	
7954                     ; 2226 static void TI2_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection, uint8_t TIM1_ICFilter)
7954                     ; 2227 {
7955                     .text:	section	.text,new
7956  0000               L5_TI2_Config:
7958  0000 89            	pushw	x
7959       00000001      OFST:	set	1
7962                     ; 2229   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7964  0001 721952bd      	bres	21181,#4
7965  0005 88            	push	a
7966                     ; 2232   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF)))
7966                     ; 2233                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7968  0006 7b06          	ld	a,(OFST+5,sp)
7969  0008 97            	ld	xl,a
7970  0009 a610          	ld	a,#16
7971  000b 42            	mul	x,a
7972  000c 9f            	ld	a,xl
7973  000d 1a03          	or	a,(OFST+2,sp)
7974  000f 6b01          	ld	(OFST+0,sp),a
7975  0011 c652ba        	ld	a,21178
7976  0014 a40c          	and	a,#12
7977  0016 1a01          	or	a,(OFST+0,sp)
7978  0018 c752ba        	ld	21178,a
7979                     ; 2235   if (TIM1_ICPolarity != TIM1_ICPolarity_Rising)
7981  001b 7b02          	ld	a,(OFST+1,sp)
7982  001d 2706          	jreq	L1124
7983                     ; 2237     TIM1->CCER1 |= TIM1_CCER1_CC2P;
7985  001f 721a52bd      	bset	21181,#5
7987  0023 2004          	jra	L3124
7988  0025               L1124:
7989                     ; 2241     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7991  0025 721b52bd      	bres	21181,#5
7992  0029               L3124:
7993                     ; 2244   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7995  0029 721852bd      	bset	21181,#4
7996                     ; 2245 }
7999  002d 5b03          	addw	sp,#3
8000  002f 81            	ret	
8052                     ; 2261 static void TI3_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection, uint8_t TIM1_ICFilter)
8052                     ; 2262 {
8053                     .text:	section	.text,new
8054  0000               L7_TI3_Config:
8056  0000 89            	pushw	x
8057       00000001      OFST:	set	1
8060                     ; 2264   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8062  0001 721152be      	bres	21182,#0
8063  0005 88            	push	a
8064                     ; 2267   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF)))
8064                     ; 2268                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8066  0006 7b06          	ld	a,(OFST+5,sp)
8067  0008 97            	ld	xl,a
8068  0009 a610          	ld	a,#16
8069  000b 42            	mul	x,a
8070  000c 9f            	ld	a,xl
8071  000d 1a03          	or	a,(OFST+2,sp)
8072  000f 6b01          	ld	(OFST+0,sp),a
8073  0011 c652bb        	ld	a,21179
8074  0014 a40c          	and	a,#12
8075  0016 1a01          	or	a,(OFST+0,sp)
8076  0018 c752bb        	ld	21179,a
8077                     ; 2271   if (TIM1_ICPolarity != TIM1_ICPolarity_Rising)
8079  001b 7b02          	ld	a,(OFST+1,sp)
8080  001d 2706          	jreq	L3424
8081                     ; 2273     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8083  001f 721252be      	bset	21182,#1
8085  0023 2004          	jra	L5424
8086  0025               L3424:
8087                     ; 2277     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8089  0025 721352be      	bres	21182,#1
8090  0029               L5424:
8091                     ; 2280   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8093  0029 721052be      	bset	21182,#0
8094                     ; 2281 }
8097  002d 5b03          	addw	sp,#3
8098  002f 81            	ret	
8150                     ; 2297 static void TI4_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection, uint8_t TIM1_ICFilter)
8150                     ; 2298 {
8151                     .text:	section	.text,new
8152  0000               L11_TI4_Config:
8154  0000 89            	pushw	x
8155       00000001      OFST:	set	1
8158                     ; 2301   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8160  0001 721952be      	bres	21182,#4
8161  0005 88            	push	a
8162                     ; 2304   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF)))
8162                     ; 2305                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8164  0006 7b06          	ld	a,(OFST+5,sp)
8165  0008 97            	ld	xl,a
8166  0009 a610          	ld	a,#16
8167  000b 42            	mul	x,a
8168  000c 9f            	ld	a,xl
8169  000d 1a03          	or	a,(OFST+2,sp)
8170  000f 6b01          	ld	(OFST+0,sp),a
8171  0011 c652bc        	ld	a,21180
8172  0014 a40c          	and	a,#12
8173  0016 1a01          	or	a,(OFST+0,sp)
8174  0018 c752bc        	ld	21180,a
8175                     ; 2308   if (TIM1_ICPolarity != TIM1_ICPolarity_Rising)
8177  001b 7b02          	ld	a,(OFST+1,sp)
8178  001d 2706          	jreq	L5724
8179                     ; 2310     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8181  001f 721a52be      	bset	21182,#5
8183  0023 2004          	jra	L7724
8184  0025               L5724:
8185                     ; 2314     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8187  0025 721b52be      	bres	21182,#5
8188  0029               L7724:
8189                     ; 2318   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8191  0029 721852be      	bset	21182,#4
8192                     ; 2319 }
8195  002d 5b03          	addw	sp,#3
8196  002f 81            	ret	
8209                     	xdef	_TIM1_ClearITPendingBit
8210                     	xdef	_TIM1_GetITStatus
8211                     	xdef	_TIM1_ClearFlag
8212                     	xdef	_TIM1_GetFlagStatus
8213                     	xdef	_TIM1_SelectCCDMA
8214                     	xdef	_TIM1_SelectOCREFClear
8215                     	xdef	_TIM1_GetPrescaler
8216                     	xdef	_TIM1_GetCounter
8217                     	xdef	_TIM1_GetCapture4
8218                     	xdef	_TIM1_GetCapture3
8219                     	xdef	_TIM1_GetCapture2
8220                     	xdef	_TIM1_GetCapture1
8221                     	xdef	_TIM1_SetIC4Prescaler
8222                     	xdef	_TIM1_SetIC3Prescaler
8223                     	xdef	_TIM1_SetIC2Prescaler
8224                     	xdef	_TIM1_SetIC1Prescaler
8225                     	xdef	_TIM1_SetCompare4
8226                     	xdef	_TIM1_SetCompare3
8227                     	xdef	_TIM1_SetCompare2
8228                     	xdef	_TIM1_SetCompare1
8229                     	xdef	_TIM1_SetAutoreload
8230                     	xdef	_TIM1_SetCounter
8231                     	xdef	_TIM1_SelectOCxM
8232                     	xdef	_TIM1_CCxNCmd
8233                     	xdef	_TIM1_CCxCmd
8234                     	xdef	_TIM1_OC3NPolarityConfig
8235                     	xdef	_TIM1_OC3PolarityConfig
8236                     	xdef	_TIM1_OC2NPolarityConfig
8237                     	xdef	_TIM1_OC2PolarityConfig
8238                     	xdef	_TIM1_OC1NPolarityConfig
8239                     	xdef	_TIM1_OC1PolarityConfig
8240                     	xdef	_TIM1_GenerateEvent
8241                     	xdef	_TIM1_ClearOC4Ref
8242                     	xdef	_TIM1_ClearOC3Ref
8243                     	xdef	_TIM1_ClearOC2Ref
8244                     	xdef	_TIM1_ClearOC1Ref
8245                     	xdef	_TIM1_OC3FastConfig
8246                     	xdef	_TIM1_OC2FastConfig
8247                     	xdef	_TIM1_OC1FastConfig
8248                     	xdef	_TIM1_OC4PreloadConfig
8249                     	xdef	_TIM1_OC3PreloadConfig
8250                     	xdef	_TIM1_OC2PreloadConfig
8251                     	xdef	_TIM1_OC1PreloadConfig
8252                     	xdef	_TIM1_CCPreloadControl
8253                     	xdef	_TIM1_SelectCOM
8254                     	xdef	_TIM1_ARRPreloadConfig
8255                     	xdef	_TIM1_ForcedOC3Config
8256                     	xdef	_TIM1_ForcedOC2Config
8257                     	xdef	_TIM1_ForcedOC1Config
8258                     	xdef	_TIM1_CounterModeConfig
8259                     	xdef	_TIM1_PrescalerConfig
8260                     	xdef	_TIM1_EncoderInterfaceConfig
8261                     	xdef	_TIM1_SelectMasterSlaveMode
8262                     	xdef	_TIM1_SelectSlaveMode
8263                     	xdef	_TIM1_SelectOutputTrigger
8264                     	xdef	_TIM1_SelectOnePulseMode
8265                     	xdef	_TIM1_SelectHallSensor
8266                     	xdef	_TIM1_UpdateRequestConfig
8267                     	xdef	_TIM1_UpdateDisableConfig
8268                     	xdef	_TIM1_SelectInputTrigger
8269                     	xdef	_TIM1_TIxExternalClockConfig
8270                     	xdef	_TIM1_ETRConfig
8271                     	xdef	_TIM1_ETRClockMode2Config
8272                     	xdef	_TIM1_ETRClockMode1Config
8273                     	xdef	_TIM1_InternalClockConfig
8274                     	xdef	_TIM1_DMACmd
8275                     	xdef	_TIM1_DMAConfig
8276                     	xdef	_TIM1_ITConfig
8277                     	xdef	_TIM1_CtrlPWMOutputs
8278                     	xdef	_TIM1_Cmd
8279                     	xdef	_TIM1_PWMIConfig
8280                     	xdef	_TIM1_ICInit
8281                     	xdef	_TIM1_BDTRConfig
8282                     	xdef	_TIM1_OC3Init
8283                     	xdef	_TIM1_OC2Init
8284                     	xdef	_TIM1_OC1Init
8285                     	xdef	_TIM1_TimeBaseInit
8286                     	xdef	_TIM1_DeInit
8305                     	end
