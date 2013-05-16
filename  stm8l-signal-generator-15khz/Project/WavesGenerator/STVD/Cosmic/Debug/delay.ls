   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
   4                     ; Optimizer V4.3.8 - 06 Dec 2012
  59                     ; 30 void delay_ms(u16 n_ms)
  59                     ; 31 {
  61                     .text:	section	.text,new
  62  0000               _delay_ms:
  64  0000 89            	pushw	x
  65       00000000      OFST:	set	0
  68                     ; 33   CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  70  0001 ae0001        	ldw	x,#1
  71  0004 cd0000        	call	_CLK_PeripheralClockConfig
  73                     ; 36   TIM2->PSCR = 6;
  75  0007 3506525e      	mov	21086,#6
  76                     ; 39   TIM2->ARRH = 0;
  78  000b 725f525f      	clr	21087
  79                     ; 40   TIM2->ARRL = 250;
  81  000f 35fa5260      	mov	21088,#250
  82                     ; 44   TIM2->CNTRH = 0;
  84  0013 725f525c      	clr	21084
  85                     ; 45   TIM2->CNTRL = 2;
  87  0017 3502525d      	mov	21085,#2
  88                     ; 48   TIM2->SR1 &= ~TIM_SR1_UIF;
  90  001b 72115256      	bres	21078,#0
  91                     ; 51   TIM2->CR1 |= TIM_CR1_CEN;
  93  001f 72105250      	bset	21072,#0
  95  0023 2009          	jra	L13
  96  0025               L73:
  97                     ; 55     while((TIM2->SR1 & TIM_SR1_UIF) == 0) ;
  99  0025 72015256fb    	btjf	21078,#0,L73
 100                     ; 56     TIM2->SR1 &= ~TIM_SR1_UIF;
 102  002a 72115256      	bres	21078,#0
 103  002e               L13:
 104                     ; 53   while(n_ms--)
 106  002e 1e01          	ldw	x,(OFST+1,sp)
 107  0030 5a            	decw	x
 108  0031 1f01          	ldw	(OFST+1,sp),x
 109  0033 5c            	incw	x
 110  0034 26ef          	jrne	L73
 111                     ; 60   TIM2->CR1 &= ~TIM_CR1_CEN;
 113  0036 72115250      	bres	21072,#0
 114                     ; 61 }
 117  003a 85            	popw	x
 118  003b 81            	ret	
 153                     ; 69 void delay_10us(u16 n_10us)
 153                     ; 70 {
 154                     .text:	section	.text,new
 155  0000               _delay_10us:
 157  0000 89            	pushw	x
 158       00000000      OFST:	set	0
 161                     ; 72   CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
 163  0001 ae0001        	ldw	x,#1
 164  0004 cd0000        	call	_CLK_PeripheralClockConfig
 166                     ; 75   TIM2->PSCR = 0;
 168  0007 725f525e      	clr	21086
 169                     ; 78   TIM2->ARRH = 0;
 171  000b 725f525f      	clr	21087
 172                     ; 79   TIM2->ARRL = 160;
 174  000f 35a05260      	mov	21088,#160
 175                     ; 82   TIM2->CNTRH = 0;
 177  0013 725f525c      	clr	21084
 178                     ; 83   TIM2->CNTRL = 10;
 180  0017 350a525d      	mov	21085,#10
 181                     ; 86   TIM2->SR1 &= ~TIM_SR1_UIF;
 183  001b 72115256      	bres	21078,#0
 184                     ; 89   TIM2->CR1 |= TIM_CR1_CEN;
 186  001f 72105250      	bset	21072,#0
 188  0023 2009          	jra	L36
 189  0025               L17:
 190                     ; 93     while((TIM2->SR1 & TIM_SR1_UIF) == 0) ;
 192  0025 72015256fb    	btjf	21078,#0,L17
 193                     ; 94     TIM2->SR1 &= ~TIM_SR1_UIF;
 195  002a 72115256      	bres	21078,#0
 196  002e               L36:
 197                     ; 91   while(n_10us--)
 199  002e 1e01          	ldw	x,(OFST+1,sp)
 200  0030 5a            	decw	x
 201  0031 1f01          	ldw	(OFST+1,sp),x
 202  0033 5c            	incw	x
 203  0034 26ef          	jrne	L17
 204                     ; 98   TIM2->CR1 &= ~TIM_CR1_CEN;
 206  0036 72115250      	bres	21072,#0
 207                     ; 99   CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, DISABLE);
 209  003a 5f            	clrw	x
 210  003b cd0000        	call	_CLK_PeripheralClockConfig
 212                     ; 101 }
 215  003e 85            	popw	x
 216  003f 81            	ret	
 229                     	xdef	_delay_10us
 230                     	xdef	_delay_ms
 231                     	xref	_CLK_PeripheralClockConfig
 250                     	end
