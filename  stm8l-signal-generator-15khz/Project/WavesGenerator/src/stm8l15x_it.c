/**
  ******************************************************************************
  * @file    Project/Template/stm8l15x_it.c
  * @author  MCD Tools Team
  * @version V1.1.0
  * @date    08/2010
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all peripherals interrupt service routine.
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2010 STMicroelectronics</center></h2>
  */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8l15x_it.h"
#include "main.h"
#include "stm8l_discovery_lcd.h"
#include "stm8l15x_lcd.h"
#include "stm8l15x_tim2.h"
/* Define to prevent recursive inclusion -------------------------------------*/

/** @addtogroup STM8L15x_StdPeriph_Examples
  * @{
  */

/** @addtogroup DAC_SignalsGeneration
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define BTN_DELAY     (uint8_t)70                  /* when button is continuously pressed, button code is executed oce every 140ms  */
#define BTN_FREQ_DUTY_DELAY  (uint8_t)140          /* when button is continuously pressed, button code is executed oce every 500ms  */
#define BTN_CHG_WAVE_DELAY   (uint8_t)140          /* when button is continuously pressed, button code is executed oce every 500ms  */
#define BTN_DEBOUNCE  (uint8_t)15                  /* 30ms button debounce time */
#define ADC_NR_SAMP_TO_DISCARD 3
#define TRIGGER_FLAG_60MS_DELAY  30
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
uint8_t temp_AD_H = 0;
uint8_t temp_AD_L = 0;
uint16_t temp_AD16 = 0;
uint8_t ad_samples_cnt = 0;
uint8_t ADSampRdy = FALSE;   
uint16_t adc_IntREF_ACCU = 0;
uint16_t adc_IntREF = 0;
uint16_t adc_GenSigMax_ACCU = 0;
uint16_t adc_GenSigMax = 0;
uint16_t adc_extVoltage_ACCU = 0;
uint16_t adc_extVoltage = 0;
uint8_t adc_measurement_selector = INTREF_MEASURE;  
uint8_t adc_nr_samp_discarded = 0;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/
uint8_t btn_freq_duty_0_cnt = 0;
uint8_t btn_freq_duty_1_cnt = 0;
uint8_t btn_freq_inc_0_cnt =  0;
uint8_t btn_freq_inc_1_cnt =  0;
uint8_t btn_freq_dec_0_cnt =  0;
uint8_t btn_freq_dec_1_cnt =  0;
uint8_t btn_chg_wave_0_cnt =  0;
uint8_t btn_chg_wave_1_cnt =  0;
uint8_t btn_freq_duty_state =   BTN_DEPRESSED;
uint8_t btn_freq_inc_state =    BTN_DEPRESSED;
uint8_t btn_freq_dec_state =    BTN_DEPRESSED;
uint8_t btn_chg_wave_state =    BTN_DEPRESSED;
uint16_t btn_freq_duty_press_tmr = 0;
uint16_t btn_freq_inc_press_tmr =  0;
uint16_t btn_freq_dec_press_tmr =  0;
uint16_t btn_chg_wave_press_tmr =  0;
uint8_t btn_freq_duty_delay_flag = 1;
uint8_t btn_freq_inc_delay_flag =  1;
uint8_t btn_freq_dec_delay_flag =  1;
uint8_t btn_chg_wave_delay_flag =  1;
uint8_t btn_freq_duty_delay_cnt =  0;
uint8_t btn_freq_inc_delay_cnt =   0;
uint8_t btn_freq_dec_delay_cnt =   0;
uint8_t btn_chg_wave_delay_cnt =   0;
uint8_t trigger_flag_60ms = FALSE;
uint8_t trigger_flag_60ms_cnt = 0;
/** @addtogroup IT_Functions
  * @{
  */
INTERRUPT_HANDLER(NonHandledInterrupt,0)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief TRAP interrupt routine
  * @par Parameters:
  * None
  * @retval 
  * None
*/
INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief FLASH Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(FLASH_IRQHandler,1)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief DMA1 channel0 and channel1 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(DMA1_CHANNEL0_1_IRQHandler,2)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief DMA1 channel2 and channel3 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(DMA1_CHANNEL2_3_IRQHandler,3)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief RTC Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */

INTERRUPT_HANDLER(RTC_IRQHandler,4)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief External IT PORTE/F and PVD Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTIE_F_PVD_IRQHandler,5)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PORTB Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTIB_IRQHandler,6)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PORTD Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTID_IRQHandler,7)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PIN0 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */

INTERRUPT_HANDLER(EXTI0_IRQHandler,8)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}
/**
  * @brief External IT PIN1 Interrupt routine.
  *   On User button pressed:
  *   Check if button presse a long time (4-5 sec.) if yes --> Set Autotest
  *   Else update status_machine to pass to next measuremetn.
  *   Update the LCD bar graph
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
{
  while (1);
}

/**
  * @brief External IT PIN2 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */

INTERRUPT_HANDLER(EXTI2_IRQHandler,10)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PIN3 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI3_IRQHandler,11)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PIN4 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI4_IRQHandler,12)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PIN5 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI5_IRQHandler,13)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief External IT PIN6 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI6_IRQHandler,14)
{
 while (1);
}

/**
  * @brief External IT PIN7 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(EXTI7_IRQHandler,15)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  
  while (1);

}
/**
  * @brief LCD start of new frame Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(LCD_IRQHandler,16)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}
/**
  * @brief CLK switch/CSS/TIM1 break Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(SWITCH_CSS_BREAK_DAC_IRQHandler,17)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}

/**
  * @brief ADC1/Comparator Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(ADC1_COMP_IRQHandler,18)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  if(ADSampRdy == FALSE)
  {
    adc_nr_samp_discarded++;
    temp_AD_H = ADC1->DRH;    /* read conversion result (MSB first!) */
    temp_AD_L = ADC1->DRL;    /* and store it to AD samples field  */
    temp_AD16 = ((uint16_t)(temp_AD_H) << 8) | (temp_AD_L);
    if(adc_nr_samp_discarded > ADC_NR_SAMP_TO_DISCARD)
    {
      if(adc_measurement_selector == INTREF_MEASURE)
      {
        adc_IntREF_ACCU += temp_AD16;
      }
    else if(adc_measurement_selector == GENSIGMAX_MEASURE)
    {
      adc_GenSigMax_ACCU += temp_AD16;
    }
    else if(adc_measurement_selector == EXTVOLTAGE_MEASURE)
    {
      adc_extVoltage_ACCU += temp_AD16;
    }
    ad_samples_cnt++;
    } 
    /*INTREF_MEASURE      ADC_Channel_Vrefint 
    GENSIGMAX_MEASURE   ADC_Channel_3
    EXTVOLTAGE_MEASURE  ADC_Channel_4
    */
    if(ad_samples_cnt >= NUM_SAMP)
    {
      if(adc_measurement_selector == INTREF_MEASURE)
      {
        adc_IntREF = adc_IntREF_ACCU >> 4;      /* calculate media - divide by 16 (NUM_SAMP)*/
        adc_IntREF_ACCU = 0;
        ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_3, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_4, ENABLE);
      }
      else if(adc_measurement_selector == GENSIGMAX_MEASURE)
      {
        adc_GenSigMax = adc_GenSigMax_ACCU >> 4;    /* calculate media - divide by 16 (NUM_SAMP)*/
        adc_GenSigMax_ACCU = 0;
        ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_4, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_3, ENABLE);
      }
      else if(adc_measurement_selector == EXTVOLTAGE_MEASURE)
      {
        adc_extVoltage = adc_extVoltage_ACCU >> 4;    /* calculate media - divide by 16 (NUM_SAMP)*/
        adc_extVoltage_ACCU = 0;
        ADC_ChannelCmd(ADC1, ADC_Channel_3, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_4, DISABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE);
      }
      ad_samples_cnt = 0;
      adc_nr_samp_discarded = 0;
      ADSampRdy = TRUE;
    }
  }
  ADC_ClearITPendingBit(ADC1, ADC_IT_EOC);      /* clear end of conversion flag	*/             
}

/**
  * @brief TIM2 Update/Overflow/Trigger/Break Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_IRQHandler,19)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @brief Timer2 Capture/Compare Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM2_CAP_IRQHandler,20)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}


/**
  * @brief Timer3 Update/Overflow/Trigger/Break Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM3_UPD_OVF_TRG_BRK_IRQHandler,21)   /* 500Hz - 2ms */
{
  /* Set periodic trigger flags */
  trigger_flag_60ms_cnt++;
  if(trigger_flag_60ms_cnt >= TRIGGER_FLAG_60MS_DELAY)
  {
    trigger_flag_60ms = TRUE;
    trigger_flag_60ms_cnt = 0;
  }
  /* Process button repetition rate delays */
  if(BTN_FREQ_DUTY_DELAY_FLAG == 0)
  {
    btn_freq_duty_delay_cnt++;
    if(btn_freq_duty_delay_cnt == BTN_FREQ_DUTY_DELAY)
    {
      btn_freq_duty_delay_cnt = 0;
      BTN_FREQ_DUTY_DELAY_FLAG = 1;
    }
  }
  if(BTN_FREQ_INC_DELAY_FLAG == 0)
  {
    btn_freq_inc_delay_cnt++;
    if(btn_freq_inc_delay_cnt == BTN_DELAY)
    {
      btn_freq_inc_delay_cnt = 0;
      BTN_FREQ_INC_DELAY_FLAG = 1;
    }
  }
  if(BTN_FREQ_DEC_DELAY_FLAG == 0)
  {
    btn_freq_dec_delay_cnt++;
    if(btn_freq_dec_delay_cnt == BTN_DELAY)
    {
      btn_freq_dec_delay_cnt = 0;
      BTN_FREQ_DEC_DELAY_FLAG = 1;
    }
  }
  if(BTN_CHG_WAVE_DELAY_FLAG == 0)
  {
    btn_chg_wave_delay_cnt++;
    if(btn_chg_wave_delay_cnt == BTN_CHG_WAVE_DELAY)
    {
      btn_chg_wave_delay_cnt = 0;
      BTN_CHG_WAVE_DELAY_FLAG = 1;
    }
  }
  /* ----------------------------------------- */
  /* Record button press time */
  if(BTN_FREQ_INC_STATE == BTN_PRESSED)
  {
    BTN_FREQ_INC_PRESS_TIMER++;
  }
  if(BTN_FREQ_DEC_STATE == BTN_PRESSED)
  {
    BTN_FREQ_DEC_PRESS_TIMER++;
  }
  /* ------------------------------------------ */
  /* Debounce button */
  if(BTN_FREQ_DUTY)
  {
    if(btn_freq_duty_0_cnt < 255) btn_freq_duty_0_cnt++;
    btn_freq_duty_1_cnt = 0;
    if(btn_freq_duty_0_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_DUTY_STATE = BTN_PRESSED;
    }
  }
  else
  {
    if(btn_freq_duty_1_cnt < 255) btn_freq_duty_1_cnt++;
    btn_freq_duty_0_cnt = 0;
    if(btn_freq_duty_1_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_DUTY_STATE = BTN_DEPRESSED;
      BTN_FREQ_DUTY_PRESS_TIMER = 0;
    }
  }
  if(BTN_FREQ_INC)
  {
    if(btn_freq_inc_0_cnt < 255) btn_freq_inc_0_cnt++;
    btn_freq_inc_1_cnt = 0;
    if(btn_freq_inc_0_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_INC_STATE = BTN_PRESSED;
    }
  }
  else
  {
    if(btn_freq_inc_1_cnt < 255) btn_freq_inc_1_cnt++;
    btn_freq_inc_0_cnt = 0;
    if(btn_freq_inc_1_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_INC_STATE = BTN_DEPRESSED;
      BTN_FREQ_INC_PRESS_TIMER = 0;
    }
  }
  if(BTN_FREQ_DEC)
  {
    if(btn_freq_dec_0_cnt < 255) btn_freq_dec_0_cnt++;
    btn_freq_dec_1_cnt = 0;
    if(btn_freq_dec_0_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_DEC_STATE = BTN_PRESSED;
    }
  }
  else
  {
    if(btn_freq_dec_1_cnt < 255) btn_freq_dec_1_cnt++;
    btn_freq_dec_0_cnt = 0;
    if(btn_freq_dec_1_cnt >= BTN_DEBOUNCE)
    {
      BTN_FREQ_DEC_STATE = BTN_DEPRESSED;
      BTN_FREQ_DEC_PRESS_TIMER = 0;
    }
  }
  if(BTN_CHG_WAVE)
  {
    if(btn_chg_wave_0_cnt < 255) btn_chg_wave_0_cnt++;
    btn_chg_wave_1_cnt = 0;
    if(btn_chg_wave_0_cnt >= BTN_DEBOUNCE)
    {
      BTN_CHG_WAVE_STATE = BTN_PRESSED;
    }
  }
  else
  {
    if(btn_chg_wave_1_cnt < 255) btn_chg_wave_1_cnt++;
    btn_chg_wave_0_cnt = 0;
    if(btn_chg_wave_1_cnt >= BTN_DEBOUNCE)
    {
      BTN_CHG_WAVE_STATE = BTN_DEPRESSED;
      BTN_CHG_WAVE_PRESS_TIMER = 0;
    }
  }
  /* ------------------------------------------ */
  TIM3_ClearITPendingBit(TIM3_IT_Update);
}
/**
  * @brief Timer3 Capture/Compare Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM3_CAP_IRQHandler,22)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}
/**
  * @brief TIM1 Update/Overflow/Trigger/Commutation Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_COM_IRQHandler,23)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  ADC_SoftwareStartConv(ADC1);
  TIM1_ClearITPendingBit(TIM1_IT_Update);        

}
/**
  * @brief TIM1 Capture/Compare Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM1_CAP_IRQHandler,24)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  //while (1);	
  ADC_Cmd(ADC1, ENABLE);  
  TIM1_ClearITPendingBit(TIM1_IT_CC1);           /* clear compare flag */
}

/**
  * @brief TIM4 Update/Overflow/Trigger Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(TIM4_UPD_OVF_TRG_IRQHandler,25)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}
/**
  * @brief SPI1 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(SPI1_IRQHandler,26)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}

/**
  * @brief USART1 TX Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(USART1_TX_IRQHandler,27)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}

/**
  * @brief USART1 RX Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(USART1_RX_IRQHandler,28)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);

}

/**
  * @brief I2C1 Interrupt routine.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
INTERRUPT_HANDLER(I2C1_IRQHandler,29)
{
/* In order to detect unexpected events during development,
   it is recommended to set a breakpoint on the following instruction.
*/
  while (1);
}

/**
  * @}
  */
/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE****/

