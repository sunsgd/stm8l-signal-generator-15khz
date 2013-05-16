   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
 113                     ; 45 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 113                     ; 46 {
 115                     .text:	section	.text,new
 116  0000               _GPIO_DeInit:
 120                     ; 47   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 122  0000 6f04          	clr	(4,x)
 123                     ; 48   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 125  0002 7f            	clr	(x)
 126                     ; 49   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 128  0003 6f02          	clr	(2,x)
 129                     ; 50   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 131  0005 6f03          	clr	(3,x)
 132                     ; 51 }
 135  0007 81            	ret	
 291                     ; 63 void GPIO_Init(GPIO_TypeDef* GPIOx,
 291                     ; 64                uint8_t GPIO_Pin,
 291                     ; 65                GPIO_Mode_TypeDef GPIO_Mode)
 291                     ; 66 {
 292                     .text:	section	.text,new
 293  0000               _GPIO_Init:
 295  0000 89            	pushw	x
 296       00000000      OFST:	set	0
 299                     ; 71   assert_param(IS_GPIO_MODE(GPIO_Mode));
 301                     ; 72   assert_param(IS_GPIO_PIN(GPIO_Pin));
 303                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 305  0001 7b05          	ld	a,(OFST+5,sp)
 306  0003 43            	cpl	a
 307  0004 e404          	and	a,(4,x)
 308  0006 e704          	ld	(4,x),a
 309                     ; 81   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 311  0008 7b06          	ld	a,(OFST+6,sp)
 312  000a 2a18          	jrpl	L541
 313                     ; 83     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 315  000c a510          	bcp	a,#16
 316  000e 2705          	jreq	L741
 317                     ; 85       GPIOx->ODR |= GPIO_Pin;
 319  0010 f6            	ld	a,(x)
 320  0011 1a05          	or	a,(OFST+5,sp)
 322  0013 2006          	jra	L151
 323  0015               L741:
 324                     ; 88       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 326  0015 1e01          	ldw	x,(OFST+1,sp)
 327  0017 7b05          	ld	a,(OFST+5,sp)
 328  0019 43            	cpl	a
 329  001a f4            	and	a,(x)
 330  001b               L151:
 331  001b f7            	ld	(x),a
 332                     ; 91     GPIOx->DDR |= GPIO_Pin;
 334  001c 1e01          	ldw	x,(OFST+1,sp)
 335  001e e602          	ld	a,(2,x)
 336  0020 1a05          	or	a,(OFST+5,sp)
 338  0022 2007          	jra	L351
 339  0024               L541:
 340                     ; 95     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 342  0024 1e01          	ldw	x,(OFST+1,sp)
 343  0026 7b05          	ld	a,(OFST+5,sp)
 344  0028 43            	cpl	a
 345  0029 e402          	and	a,(2,x)
 346  002b               L351:
 347  002b e702          	ld	(2,x),a
 348                     ; 102   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 350  002d 7b06          	ld	a,(OFST+6,sp)
 351  002f a540          	bcp	a,#64
 352  0031 2706          	jreq	L551
 353                     ; 104     GPIOx->CR1 |= GPIO_Pin;
 355  0033 e603          	ld	a,(3,x)
 356  0035 1a05          	or	a,(OFST+5,sp)
 358  0037 2005          	jra	L751
 359  0039               L551:
 360                     ; 107     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 362  0039 7b05          	ld	a,(OFST+5,sp)
 363  003b 43            	cpl	a
 364  003c e403          	and	a,(3,x)
 365  003e               L751:
 366  003e e703          	ld	(3,x),a
 367                     ; 114   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 369  0040 7b06          	ld	a,(OFST+6,sp)
 370  0042 a520          	bcp	a,#32
 371  0044 2706          	jreq	L161
 372                     ; 116     GPIOx->CR2 |= GPIO_Pin;
 374  0046 e604          	ld	a,(4,x)
 375  0048 1a05          	or	a,(OFST+5,sp)
 377  004a 2005          	jra	L361
 378  004c               L161:
 379                     ; 119     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 381  004c 7b05          	ld	a,(OFST+5,sp)
 382  004e 43            	cpl	a
 383  004f e404          	and	a,(4,x)
 384  0051               L361:
 385  0051 e704          	ld	(4,x),a
 386                     ; 122 }
 389  0053 85            	popw	x
 390  0054 81            	ret	
 436                     ; 132 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
 436                     ; 133 {
 437                     .text:	section	.text,new
 438  0000               _GPIO_Write:
 440  0000 89            	pushw	x
 441       00000000      OFST:	set	0
 444                     ; 134   GPIOx->ODR = GPIO_PortVal;
 446  0001 1e01          	ldw	x,(OFST+1,sp)
 447  0003 7b05          	ld	a,(OFST+5,sp)
 448  0005 f7            	ld	(x),a
 449                     ; 135 }
 452  0006 85            	popw	x
 453  0007 81            	ret	
 613                     ; 146 void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
 613                     ; 147 {
 614                     .text:	section	.text,new
 615  0000               _GPIO_WriteBit:
 617  0000 89            	pushw	x
 618       00000000      OFST:	set	0
 621                     ; 149   assert_param(IS_GPIO_PIN(GPIO_Pin));
 623                     ; 150   assert_param(IS_STATE_VALUE(GPIO_BitVal));
 625                     ; 152   if (GPIO_BitVal != RESET)
 627  0001 7b06          	ld	a,(OFST+6,sp)
 628  0003 2705          	jreq	L303
 629                     ; 154     GPIOx->ODR |= GPIO_Pin;
 631  0005 f6            	ld	a,(x)
 632  0006 1a05          	or	a,(OFST+5,sp)
 634  0008 2006          	jra	L503
 635  000a               L303:
 636                     ; 159     GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
 638  000a 1e01          	ldw	x,(OFST+1,sp)
 639  000c 7b05          	ld	a,(OFST+5,sp)
 640  000e 43            	cpl	a
 641  000f f4            	and	a,(x)
 642  0010               L503:
 643  0010 f7            	ld	(x),a
 644                     ; 161 }
 647  0011 85            	popw	x
 648  0012 81            	ret	
 694                     ; 170 void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
 694                     ; 171 {
 695                     .text:	section	.text,new
 696  0000               _GPIO_SetBits:
 698  0000 89            	pushw	x
 699       00000000      OFST:	set	0
 702                     ; 172   GPIOx->ODR |= GPIO_Pin;
 704  0001 f6            	ld	a,(x)
 705  0002 1a05          	or	a,(OFST+5,sp)
 706  0004 f7            	ld	(x),a
 707                     ; 173 }
 710  0005 85            	popw	x
 711  0006 81            	ret	
 757                     ; 183 void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
 757                     ; 184 {
 758                     .text:	section	.text,new
 759  0000               _GPIO_ResetBits:
 761  0000 89            	pushw	x
 762       00000000      OFST:	set	0
 765                     ; 185   GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
 767  0001 7b05          	ld	a,(OFST+5,sp)
 768  0003 43            	cpl	a
 769  0004 f4            	and	a,(x)
 770  0005 f7            	ld	(x),a
 771                     ; 186 }
 774  0006 85            	popw	x
 775  0007 81            	ret	
 821                     ; 195 void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
 821                     ; 196 {
 822                     .text:	section	.text,new
 823  0000               _GPIO_ToggleBits:
 825  0000 89            	pushw	x
 826       00000000      OFST:	set	0
 829                     ; 197   GPIOx->ODR ^= GPIO_Pin;
 831  0001 f6            	ld	a,(x)
 832  0002 1805          	xor	a,(OFST+5,sp)
 833  0004 f7            	ld	(x),a
 834                     ; 198 }
 837  0005 85            	popw	x
 838  0006 81            	ret	
 875                     ; 206 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 875                     ; 207 {
 876                     .text:	section	.text,new
 877  0000               _GPIO_ReadInputData:
 881                     ; 208   return ((uint8_t)GPIOx->IDR);
 883  0000 e601          	ld	a,(1,x)
 886  0002 81            	ret	
 924                     ; 217 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 924                     ; 218 {
 925                     .text:	section	.text,new
 926  0000               _GPIO_ReadOutputData:
 930                     ; 219   return ((uint8_t)GPIOx->ODR);
 932  0000 f6            	ld	a,(x)
 935  0001 81            	ret	
 984                     ; 228 BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 984                     ; 229 {
 985                     .text:	section	.text,new
 986  0000               _GPIO_ReadInputDataBit:
 988  0000 89            	pushw	x
 989       00000000      OFST:	set	0
 992                     ; 230   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 994  0001 e601          	ld	a,(1,x)
 995  0003 1405          	and	a,(OFST+5,sp)
 998  0005 85            	popw	x
 999  0006 81            	ret	
1048                     ; 239 BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
1048                     ; 240 {
1049                     .text:	section	.text,new
1050  0000               _GPIO_ReadOutputDataBit:
1052  0000 89            	pushw	x
1053       00000000      OFST:	set	0
1056                     ; 241   return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
1058  0001 f6            	ld	a,(x)
1059  0002 1405          	and	a,(OFST+5,sp)
1062  0004 85            	popw	x
1063  0005 81            	ret	
1140                     ; 251 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
1140                     ; 252 {
1141                     .text:	section	.text,new
1142  0000               _GPIO_ExternalPullUpConfig:
1144  0000 89            	pushw	x
1145       00000000      OFST:	set	0
1148                     ; 254   assert_param(IS_GPIO_PIN(GPIO_Pin));
1150                     ; 255   assert_param(IS_FUNCTIONAL_STATE(NewState));
1152                     ; 257   if (NewState != DISABLE) /* External Pull-Up Set*/
1154  0001 7b06          	ld	a,(OFST+6,sp)
1155  0003 2706          	jreq	L355
1156                     ; 259     GPIOx->CR1 |= GPIO_Pin;
1158  0005 e603          	ld	a,(3,x)
1159  0007 1a05          	or	a,(OFST+5,sp)
1161  0009 2007          	jra	L555
1162  000b               L355:
1163                     ; 262     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1165  000b 1e01          	ldw	x,(OFST+1,sp)
1166  000d 7b05          	ld	a,(OFST+5,sp)
1167  000f 43            	cpl	a
1168  0010 e403          	and	a,(3,x)
1169  0012               L555:
1170  0012 e703          	ld	(3,x),a
1171                     ; 264 }
1174  0014 85            	popw	x
1175  0015 81            	ret	
1188                     	xdef	_GPIO_ExternalPullUpConfig
1189                     	xdef	_GPIO_ReadOutputDataBit
1190                     	xdef	_GPIO_ReadInputDataBit
1191                     	xdef	_GPIO_ReadOutputData
1192                     	xdef	_GPIO_ReadInputData
1193                     	xdef	_GPIO_ToggleBits
1194                     	xdef	_GPIO_ResetBits
1195                     	xdef	_GPIO_SetBits
1196                     	xdef	_GPIO_WriteBit
1197                     	xdef	_GPIO_Write
1198                     	xdef	_GPIO_Init
1199                     	xdef	_GPIO_DeInit
1218                     	end
