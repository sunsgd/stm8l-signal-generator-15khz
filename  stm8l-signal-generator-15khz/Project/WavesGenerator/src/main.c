/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @version V2.0.2
  * @date    02/12/2010
  * @brief   Main program body
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
#include "stm8l15x.h"
#include "stm8l_discovery_lcd.h"
#include "main.h"

void DMA_ReInit(void);
/* Define to prevent recursive inclusion -------------------------------------*/

/** @addtogroup STM8L15x_StdPeriph_Examples
  * @{
  */

/** @addtogroup DAC_SignalsGeneration
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
__CONST uint16_t SinCard12bit[130] = {892, 886, 864, 828, 780, 726, 670, 617, 574, 545, 532,
                                      539, 565, 608, 664, 729, 797, 860, 913, 950, 966, 959,
                                      928, 876, 807, 726, 641, 560, 492, 444, 421, 428, 466,
                                      532, 622, 729, 843, 954, 1050, 1120, 1156, 1152, 1104,
                                      1013, 884, 726, 551, 376, 216, 90, 13, 0, 61, 204, 428,
                                      729, 1097, 1517, 1968, 2428, 2872, 3276, 3618, 3877,
                                      4039, 4094, 4039, 3877, 3618, 3276, 2872, 2428, 1968,
                                      1517, 1097, 729, 428, 204, 61, 0, 13, 90, 216, 376, 551,
                                      726, 884, 1013, 1104, 1152, 1156, 1120, 1050, 954, 843,
                                      729, 622, 532, 466, 428, 421, 444, 492, 560, 641, 726,
                                      807, 876, 928, 959, 966, 950, 913, 860, 797, 729, 664,
                                      608, 565, 539, 532, 545, 574, 617, 670, 726, 780, 828,
                                      864, 886 };

__CONST uint16_t Triang12bit[130] = {0, 60, 120, 180, 240, 300, 360, 420, 480, 540, 600, 660,
                                     720, 780, 840, 900, 960, 1020, 1080, 1140, 1200, 1260,
                                     1320, 1380, 1440, 1500, 1560, 1620, 1680, 1740, 1800,
                                     1860, 1920, 1980, 2040, 2100, 2160, 2220, 2280, 2340,
                                     2400, 2460, 2520, 2580, 2640, 2700, 2760, 2820, 2880,
                                     2940, 3000, 3060, 3120, 3180, 3240, 3300, 3360, 3420,
                                     3480, 3540, 3600, 3660, 3720, 3780, 3840, 3900, 3840,
                                     3780, 3720, 3660, 3600, 3540, 3480, 3420, 3360, 3300,
                                     3240, 3180, 3120, 3060, 3000, 2940, 2880, 2820, 2760,
                                     2700, 2640, 2580, 2520, 2460, 2400, 2340, 2280, 2220,
                                     2160, 2100, 2040, 1980, 1920, 1860, 1800, 1740, 1680,
                                     1620, 1560, 1500, 1440, 1380, 1320, 1260, 1200, 1140,
                                     1080, 1020, 960, 900, 840, 780, 720, 660, 600, 540, 480,
                                     420, 360, 300, 240, 180, 120, 60};

__CONST uint16_t Sinus12bit[130] = {1800, 1887, 1974, 2060, 2146, 2231, 2315, 2397, 2479,
                                    2559, 2637, 2713, 2786, 2858, 2927, 2994, 3057, 3118,
                                    3176, 3230, 3281, 3329, 3373, 3414, 3450, 3483, 3512,
                                    3537, 3558, 3574, 3587, 3595, 3599, 3599, 3595, 3587,
                                    3574, 3558, 3537, 3512, 3483, 3450, 3414, 3373, 3329,
                                    3281, 3230, 3176, 3118, 3057, 2994, 2927, 2858, 2786,
                                    2713, 2637, 2559, 2479, 2397, 2315, 2231, 2146, 2060,
                                    1974, 1887, 1800, 1713, 1626, 1540, 1454, 1369, 1285,
                                    1203, 1121, 1041, 963, 887, 814, 742, 673, 606, 543, 482,
                                    424, 370, 319, 271, 227, 186, 150, 117, 88, 63, 42, 26, 13,
                                    5, 1, 1, 5, 13, 26, 42, 63, 88, 117, 150, 186, 227, 271, 319,
                                    370, 424, 482, 543, 606, 673, 742, 814, 887, 963, 1041,
                                    1121, 1203, 1285, 1369, 1454, 1540, 1626, 1713};

__CONST uint16_t Square12bit[130] = {4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

__CONST uint16_t SawTooth12bit[130] = {0, 31, 63, 95, 126, 158, 190, 222, 253, 285, 317, 349,
                                       380, 412, 444, 476, 507, 539, 571, 603, 634, 666, 698,
                                       730, 761, 793, 825, 857, 888, 920, 952, 984, 1015, 1047,
                                       1079, 1111, 1142, 1174, 1206, 1238, 1269, 1301, 1333,
                                       1365, 1396, 1428, 1460, 1491, 1523, 1555, 1587, 1618,
                                       1650, 1682, 1714, 1745, 1777, 1809, 1841, 1872, 1904,
                                       1936, 1968, 1999, 2031, 2063, 2095, 2126, 2158, 2190,
                                       2222, 2253, 2285, 2317, 2349, 2380, 2412, 2444, 2476,
                                       2507, 2539, 2571, 2603, 2634, 2666, 2698, 2730, 2761,
                                       2793, 2825, 2856, 2888, 2920, 2952, 2983, 3015, 3047,
                                       3079, 3110, 3142, 3174, 3206, 3237, 3269, 3301, 3333,
                                       3364, 3396, 3428, 3460, 3491, 3523, 3555, 3587, 3618,
                                       3650, 3682, 3714, 3745, 3777, 3809, 3841, 3872, 3904,
                                       3936, 3968, 3999, 4031, 4063, 4095};

__CONST uint16_t SinCard12bit2[65] = {1032, 1056, 1019, 931, 825, 741, 715, 762, 868, 996, 1096, 1125, 
                                      1065, 931, 771, 645, 610, 690, 868, 1084, 1257, 1307, 1194, 
                                      931, 597, 312, 207, 381, 868, 1613, 2485, 3302, 3883, 4095, 
                                      3883, 3302, 2485, 1613, 868, 381, 207, 312, 597, 931, 1194, 
                                      1307, 1257, 1084, 868, 690, 610, 645, 771, 931, 1065, 1125,
                                      1096, 996, 868, 762, 715, 741, 825, 931, 1019};

__CONST uint16_t Triang12bit2[65] = {0, 120, 240, 360, 480, 600, 720, 840, 960, 1080, 1200, 
                                     1320, 1440, 1560, 1680, 1800, 1920, 2040, 2160, 2280, 2400,
                                     2520,  2640,  2760,  2880, 3000, 3120, 3240, 3360, 
                                     3480, 3600, 3720, 3840, 3720, 3600, 3480, 3360, 3240, 3120, 
                                     3000, 2880, 2760, 2640, 2520, 2400, 2280, 2160, 2040, 1920, 
                                     1800, 1680, 1560, 1440, 1320, 1200, 1080, 960, 840, 720, 600,
                                     480, 360, 240, 120, 60};

__CONST uint16_t Sinus12bit2[65] = {2047, 2241, 2431, 2619, 2801, 2977, 3143, 3299, 3445,
                                    3575, 3693, 3795, 3881, 3949, 3999, 4033, 4047, 4041, 
                                    4019, 3977, 3917, 3839, 3745, 3637, 3511, 3373, 3223, 
                                    3061, 2889, 2711, 2525, 2335, 2143, 1951, 1759, 1569, 
                                    1383, 1205, 1033, 871, 721, 583, 457, 349, 255, 177, 
                                    117, 75, 53, 47, 61, 95, 145, 213, 299, 401, 519, 649, 
                                    795, 951, 1117, 1293, 1475, 1663, 1853};

__CONST uint16_t Square12bit2[65] = {4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095, 4095,
                                     4095, 4095, 4095, 4095, 4095,0, 0, 0, 0, 0, 0, 0, 0,
                                     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                     0, 0, 0, 0, 0, 0};

__CONST uint16_t SawTooth12bit2[65] = {0, 63, 126, 190, 253, 317, 380, 444, 507, 571, 634,
                                       698, 761, 825, 888, 952, 1015, 1079, 1142, 1206, 1269,
                                       1333, 1396, 1460, 1523, 1587, 1650, 1714, 1777, 1841,
                                       1904, 1968, 2031, 2095, 2158, 2222, 2285, 2349, 2412,
                                       2476, 2539, 2603, 2666, 2730, 2793, 2856, 2920, 2983,
                                       3047, 3110, 3174, 3237, 3301, 3364, 3428, 3491, 3555,
                                       3618, 3682, 3745, 3809, 3872, 3936, 3999, 4063};

__CONST uint16_t Square12p5percent[8] = {4095, 0, 0, 0, 0, 0, 0, 0};                         /* Square Wave 12,5% Duty Cycle */
__CONST uint16_t Square25percent[8] = {4095, 4095, 0, 0, 0, 0, 0, 0};                        /* Square Wave 25% Duty Cycle */
__CONST uint16_t Square37p5percent[8] = {4095, 4095, 4095, 0, 0, 0, 0, 0};                   /* Square Wave 37,5% Duty Cycle */
__CONST uint16_t Square50percent[8] = {4095, 4095, 4095, 4095, 0, 0, 0, 0};                  /* Square Wave 50% Duty Cycle */
__CONST uint16_t Square62p5percent[8] = {4095, 4095, 4095, 4095, 4095, 0, 0, 0};             /* Square Wave 62,5% Duty Cycle */
__CONST uint16_t Square75percent[8] = {4095, 4095, 4095, 4095, 4095, 4095, 0, 0};            /* Square Wave 75% Duty Cycle */
__CONST uint16_t Square87p5percent[8] = {4095, 4095, 4095, 4095, 4095, 4095, 4095, 0};       /* Square Wave 87,5% Duty Cycle */

__CONST uint8_t PWMTabSize[7] = {8, 4, 8, 2, 8, 4, 8};          /* Lenght of arrays in WavesTabPWM */
__CONST uint8_t PWMTabDiv[7] = {3, 2, 3, 1, 3, 2, 3};           /* Shift values for the division by the power of two lengths of 
                                                                   duty cycle arrays used in Frequency calculation */
__CONST uint8_t PWMTabVal[7] = {12, 25, 37, 50, 62, 75, 87};    /* PWM value of corresponding array in WavesTabPWM */

__CONST uint16_t WavesTabPWM[7] = { (uint16_t)&Square12p5percent,
                                    (uint16_t)&Square25percent,
                                    (uint16_t)&Square37p5percent,
                                    (uint16_t)&Square50percent,
                                    (uint16_t)&Square62p5percent,
                                    (uint16_t)&Square75percent,
                                    (uint16_t)&Square87p5percent};

__CONST uint16_t WavesTab65[WAVES_TAB_SIZE] = {(uint16_t)&Triang12bit2,
                                               (uint16_t)&Square12bit2,
                                               (uint16_t)&SinCard12bit2,
                                               (uint16_t)&Sinus12bit2,
                                               (uint16_t)&SawTooth12bit2};

__CONST uint16_t WavesTab130[WAVES_TAB_SIZE] = {(uint16_t)&Triang12bit,
                                                (uint16_t)&Square12bit,
                                                (uint16_t)&SinCard12bit,
                                                (uint16_t)&Sinus12bit,
                                                (uint16_t)&SawTooth12bit};

__CONST uint8_t PSCTab[220] = {7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 
                               5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 
                               4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 
                               4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 
                               3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
                               3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
                               3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
                               3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
                               2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2};

                /* Last frequency = 240Hz - PSC=2(divide by 4),ARR=128 */ 
__CONST uint8_t ARRTab[220] = {240, 192, 160, 137, 240, 214, 192, 175, 160, 148, 
                               137, 128, 240, 226, 214, 202, 192, 183, 175, 167, 
                               160, 154, 148, 142, 137, 133, 128, 248, 240, 233, 
                               226, 220, 214, 208, 202, 197, 192, 188, 183, 179, 
                               175, 171, 167, 164, 160, 157, 154, 151, 148, 145, 
                               142, 140, 137, 135, 133, 130, 128, 252, 248, 244, 
                               240, 237, 233, 230, 226, 223, 220, 217, 214, 211, 
                               208, 205, 202, 200, 197, 195, 192, 190, 188, 185, 
                               183, 181, 179, 177, 175, 173, 171, 169, 167, 165, 
                               164, 162, 160, 159, 157, 155, 154, 152, 151, 149, 
                               148, 147, 145, 144, 142, 141, 140, 139, 137, 136, 
                               135, 134, 133, 131, 130, 129, 128, 254, 252, 250, 
                               248, 246, 244, 242, 240, 239, 237, 235, 233, 231, 
                               230, 228, 226, 225, 223, 221, 220, 218, 217, 215, 
                               214, 212, 211, 209, 208, 207, 205, 204, 202, 201, 
                               200, 199, 197, 196, 195, 194, 192, 191, 190, 189, 
                               188, 186, 185, 184, 183, 182, 181, 180, 179, 178, 
                               177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 
                               167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 
                               157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 
                               147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 
                               137, 136, 135, 134, 133, 132, 131, 130, 129, 128};

__CONST uint8_t FreqTab[220] = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 
                                18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
                                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                                42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 
                                54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
                                66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 
                                78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
                                90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 
                                102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 
                                112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
                                122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 
                                132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 
                                142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
                                152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 
                                162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 
                                172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 
                                182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 
                                194, 195, 196, 197, 199, 200, 201, 202, 204, 205, 
                                207, 208, 209, 211, 212, 214, 215, 217, 218, 220, 
                                221, 223, 225, 226, 228, 230, 231, 233, 235, 237, 
                                239, 240};
__CONST uint32_t IntREF_const = 5012280;
/* Global variables ---------------------------------------------------------*/
uint8_t wave_type = 0;
uint8_t wave_type_old = 0;
uint8_t display_loop = 0;
uint8_t sample_size = 130;
uint8_t btn_delay_start = FALSE;
uint16_t req_freq = 219;       /* corresponding to 240Hz */
uint16_t req_freq_PWM = 518;   /* corresponding to 1000Hz */
uint16_t req_duty_PWM = 1;     /* corresponding to 25% */
uint32_t calc_freq = 0;
uint8_t button_pressed = TRUE;
uint8_t frequency_duty_sel = FREQ;
uint8_t frequency_duty_sel_old = FREQ;
uint16_t calc_freq16 = 0;
uint16_t VDD = 0;
uint16_t GenSignal = 0;
uint16_t GenSignal_old = 0;
uint16_t ExtVoltage = 0;
extern uint16_t adc_IntREF;
extern uint16_t adc_GenSigMax;
extern uint16_t adc_extVoltage;
extern uint8_t trigger_flag_60ms;
unsigned char str[7];
extern uint8_t adc_measurement_selector;
/* Button debounce */
extern uint8_t btn_freq_duty_state;
extern uint8_t btn_freq_inc_state;
extern uint8_t btn_freq_dec_state;
extern uint8_t btn_chg_wave_state;
extern uint16_t btn_freq_duty_press_tmr;
extern uint16_t btn_freq_inc_press_tmr;
extern uint16_t btn_freq_dec_press_tmr;
extern uint16_t btn_chg_wave_press_tmr;
extern uint8_t btn_freq_duty_delay_flag;
extern uint8_t btn_freq_inc_delay_flag;
extern uint8_t btn_freq_dec_delay_flag;
extern uint8_t btn_chg_wave_delay_flag;
/* Imported variables ------------------------------------*/
extern uint8_t ADSampRdy;
extern uint8_t flag_intref_read;
/* Private function prototypes ---------------------------*/

/* Private functions -------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* variables */
  uint8_t tmpreg1 = 0;   
  
  /* Set System Clock divider to 1 */
  CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);
  /* Enable Clocks of DAC, TIM4, DMA1 */
  /* DAC */
  CLK_PeripheralClockConfig(CLK_Peripheral_DAC, ENABLE);
  /* TIM4 */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);
  /* TIM2*/
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  /* DMA1 */
  CLK_PeripheralClockConfig(CLK_Peripheral_DMA1, ENABLE);
  /* TIM3*/
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
  /* ADC1 */
  CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
  /* TIM1*/
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);
  
  /* Init GPIO Port C PC1 output pin Push-pull - Signal limit warning LED lamp */
  GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_Out_OD_Low_Slow);
  /* Init GPIO Port C PE6 input pull-up up Waveform Selection */
  GPIO_Init(GPIOE, GPIO_Pin_6, GPIO_Mode_In_PU_No_IT);
  /* Init GPIO Port E PE7 input pull-up Frequency/Duty Cycle Selection */
  GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_In_PU_No_IT);
  /* Init GPIO Port A PA2 input pin pull-up Increase Frequency */
  GPIO_Init(GPIOA, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);
  /* Init GPIO Port A PA3 input pin pull-up Decrease Frequency */
  GPIO_Init(GPIOA, GPIO_Pin_3, GPIO_Mode_In_PU_No_IT);
  /* Init GPIO Port C PC4 input pin floating ADC input - Generated Signal maximum */
  GPIO_Init(GPIOC, GPIO_Pin_4, GPIO_Mode_In_FL_No_IT);
  /* Init GPIO Port C PC7 input pin floating ADC input - External Voltage level */
  GPIO_Init(GPIOC, GPIO_Pin_7, GPIO_Mode_In_FL_No_IT);
  
  GPIO_ResetBits(GPIOC, GPIO_Pin_1);
  
  /* Initialization of LCD */
  LCD_GLASS_Init();
  /* Set standard contrast */
  LCD_ContrastConfig(LCD_Contrast_3V0);
  
  /* DMA Init */
  /* Disable the selected DMA Channelx */
  DMA1_Channel3->CCR &= (uint8_t)~(DMA_CCR_CE);
  /* Reset DMA Channelx control register */
  DMA1_Channel3->CCR  = DMA_CCR_RESET_VALUE;
  /* Set DMA direction & Mode & Incremantal Memory mode */
  DMA1_Channel3->CCR |= ((uint8_t)DMA_DIR_MemoryToPeripheral | (uint8_t)DMA_Mode_Circular |(uint8_t) DMA_MemoryIncMode_Inc);
  /*Clear old priority and memory data size  option */
  DMA1_Channel3->CSPR &= (uint8_t)~(DMA_CSPR_PL | DMA_CSPR_16BM);
  /* Set old priority and memory data size  option */
  DMA1_Channel3->CSPR |= ((uint8_t)DMA_Priority_VeryHigh |(uint8_t)DMA_MemoryDataSize_HalfWord);
  /* Write to DMA Channelx CNBTR */
  DMA1_Channel3->CNBTR = (uint8_t)sample_size;
  /*--------------------------- DMA Channel3 CPAR Configuration ----------------*/
  DMA1_Channel3->CPARH = (uint8_t)(DAC_CH1RDHRH_ADDRESS >> (uint8_t)8);
  DMA1_Channel3->CPARL = (uint8_t)(DAC_CH1RDHRH_ADDRESS);
  /*--------------------------- DMA Channel3 CMAR Configuration ----------------*/
  DMA1_Channel3->CM0ARH = (uint8_t)(WavesTab130[wave_type] >> (uint8_t)8);
  DMA1_Channel3->CM0ARL = (uint8_t)(WavesTab130[wave_type]);
  /* DMA1 Channel 3 enable */
  DMA1_Channel3->CCR |= DMA_CCR_CE;
  /* Enable the  DMA      */
  DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;

  /* DAC Channel1 Config: 12bit right-----------------------------------------------------*/
  /* Fill DAC Init param DAC_Trigger_T4_TRGO* and  DAC Channel1 Init */
  /* DAC CR1 Config */
  tmpreg1 = DAC->CH1CR1;
  /* Clear TENx, TSELx bits */
  tmpreg1 &= (uint8_t)~(DAC_CR1_TEN | DAC_CR1_TSEL );
  /* Configure for the selected DAC channel: buffer output, trigger*/
  /* Set BOFFx bit Output Buffer disable */
  tmpreg1 &= (uint8_t)~(DAC_CR1_BOFF);
  /* Set TSELx and TEN  bits according to DAC_Trigger value */
  tmpreg1 |= (uint8_t)(DAC_CR1_TEN | DAC_Trigger_T4_TRGO) ;
  /* Write to DAC CR1 */
  DAC->CH1CR1 = tmpreg1;
  /* Enable DAC Channel1 */
  DAC->CH1CR1 |= DAC_CR1_EN;
  DAC->CH1CR2 |= DAC_CR2_DMAEN;

  /********* TIM4 Config ********/
  TIM4_TimeBaseInit((TIM4_Prescaler_TypeDef)(PSCTab[req_freq]), (uint8_t)(ARRTab[req_freq]));
  //TIM4->ARR = (uint8_t)(ARRTab[req_freq]);
  /* Set the Prescaler value */
  //TIM4->PSCR = (uint8_t)(PSCTab[req_freq]);

  /* TIM4 TRGO selection */
  tmpreg1 = TIM4->CR2;
  /* Reset the MMS Bits */
  tmpreg1 &= (uint8_t)(~TIM4_CR2_MMS);
  /* Select the TRGO source */
  tmpreg1 |=  (uint8_t)TIM4_TRGOSource_Update;
  TIM4->CR2 = tmpreg1;

  /* TIM4 enable counter */
  TIM4_Cmd(ENABLE);

  /********* TIM3 Config (Used for button debouncing) ********/
  TIM3_DeInit();
  TIM3_TimeBaseInit(TIM3_Prescaler_128, TIM3_CounterMode_Up, 0x00FA);  /* 500Hz - 2ms*/
  TIM3_ITConfig(TIM3_IT_Update, ENABLE);
  TIM3_Cmd(ENABLE);
  

  /********* TIM1 Config (Used for ADC init and triggering) ********/
  TIM1_DeInit();
  TIM1_TimeBaseInit(TMR1_PSC, TIM1_CounterMode_Up, TMR1_PER, 0x00);     
  TIM1_OC1Init(TIM1_OCMode_Timing, 
                TIM1_OutputState_Disable, 
                TIM1_OutputNState_Disable, 
                TMR1_CMP, 
                TIM1_OCPolarity_High,
                TIM1_OCNPolarity_High,
                TIM1_OCIdleState_Reset,
                TIM1_OCNIdleState_Reset);
  TIM1_SelectOutputTrigger(TIM1_TRGOSource_Update/*TIM1_TRGOSource_OC1REF*/);
  TIM1_ITConfig(TIM1_IT_CC1, ENABLE);

  /* ADC1 Config */
  ADC_DeInit(ADC1);
  ADC_Init(ADC1, ADC_ConversionMode_Single, ADC_Resolution_12Bit, ADC_Prescaler_1);
  ADC_DMACmd(ADC1, DISABLE);
  //ADC_TempSensorCmd(ENABLE);
  ADC_VrefintCmd(ENABLE);
  ADC_SchmittTriggerConfig(ADC1, ADC_Channel_4, ENABLE);
  ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE);        /* Read first internal voltage reference */
  ADC_ITConfig(ADC1, ADC_IT_EOC, ENABLE);
  ADC_ExternalTrigConfig(ADC1, ADC_ExtEventSelection_Trigger2, ADC_ExtTRGSensitivity_Rising);   /* The trigger is performed directly from Timer 1 trigger output (TIM1_TRGO) */
  TIM1_Cmd(ENABLE);

  enableInterrupts();

  //CLIP_LED_OFF;

  /* Infinite loop */
  while (1)
  {
    if (BTN_CHG_WAVE_STATE == BTN_PRESSED && BTN_CHG_WAVE_DELAY_FLAG)
    {
      BTN_CHG_WAVE_DELAY_FLAG = 0;
      /* Change waveform */
      wave_type++;
      if (wave_type == PWM+1) wave_type = 0;
      button_pressed = TRUE;
    }
    else if(BTN_FREQ_INC_STATE == BTN_PRESSED && BTN_FREQ_INC_DELAY_FLAG)
    {
      BTN_FREQ_INC_DELAY_FLAG = 0;
      /* Increase frequency */
      if(wave_type == PWM)
      {
        if(frequency_duty_sel == DUTY)
        {
          if(req_duty_PWM  < 6) req_duty_PWM++;    /* req_duty_PWM = [0:6] */
        }
        else   /* frequency_duty_sel = FREQ && wave_type = PWM */
        {
          if(BTN_FREQ_INC_PRESS_TIMER < BTN_DELAY_1_SEC)
          {
            /* fine increment */
            if(req_freq_PWM < 1022) req_freq_PWM++;  /* max 15384Hz - DAC limitation */
          }
          else if(BTN_FREQ_INC_PRESS_TIMER < BTN_DELAY_2_5_SEC)
          {
            /* gross increment */
            if(req_freq_PWM + 10 <= 1022) req_freq_PWM += 10;
            else req_freq_PWM = 1022;
          }
          else   /*  if(BTN_FREQ_INC_PRESS_TIMER >= BTN_DELAY_2_5_SEC) */
          {
             /* grosser increment */
             if(req_freq_PWM + 20 <= 1022) req_freq_PWM += 20;
             else req_freq_PWM = 1022;
          }
        }
      }
      else    /* wave_type != PWM */
      {
        if(BTN_FREQ_INC_PRESS_TIMER < BTN_DELAY_1_SEC)
        {
          /* fine increment */
          if(req_freq < 603) req_freq++;
        }
        else if(BTN_FREQ_INC_PRESS_TIMER < BTN_DELAY_2_5_SEC)
        {
          /* gross increment */
          if(req_freq + 10 <= 603) req_freq += 10;
          else req_freq = 603;
        }
        else   /* if(BTN_FREQ_INC_PRESS_TIMER >= BTN_DELAY_2_5_SEC) */
        {
          /* grosser increment */
          if(req_freq + 20 <= 603) req_freq += 20;
          else req_freq = 603;
        }
      }
      button_pressed = TRUE;
    }
    else if(BTN_FREQ_DEC_STATE == BTN_PRESSED && BTN_FREQ_DEC_DELAY_FLAG)
    {
      BTN_FREQ_DEC_DELAY_FLAG = 0;
      /* Decrease frequency */
      if(wave_type == PWM)
      {
        if(frequency_duty_sel == DUTY)
        {
          if(req_duty_PWM  > 0) req_duty_PWM--;    /* req_duty_PWM = [0:6] */
        }
        else   /* frequency_duty_sel = FREQ && wave_type = PWM */
        {
          if(BTN_FREQ_DEC_PRESS_TIMER < BTN_DELAY_1_SEC)
          {
            /* fine increment */
            if(req_freq_PWM > 1) req_freq_PWM--;
          }
          else if(BTN_FREQ_DEC_PRESS_TIMER < BTN_DELAY_2_5_SEC)
          {
            /* gross increment */
            if(req_freq_PWM > 10) req_freq_PWM -= 10;
            else req_freq_PWM = 1;
          }
          else    /* if(BTN_FREQ_DEC_PRESS_TIMER >= BTN_DELAY_2_5_SEC) */
          {
            /* grosser increment */
            if(req_freq_PWM > 20) req_freq_PWM -= 20;
            else req_freq_PWM = 1;
          }
        }
      }
      else    /* wave_type != PWM */
      {
        if(BTN_FREQ_DEC_PRESS_TIMER < BTN_DELAY_1_SEC)
        {      
          /* fine increment */
          if(req_freq > 0) req_freq--;
        }
        else if(BTN_FREQ_DEC_PRESS_TIMER < BTN_DELAY_2_5_SEC)
        {
          /* gross increment */
          if(req_freq >= 10) req_freq -= 10;
          else req_freq = 0;
        }
        else    /* if(BTN_FREQ_DEC_PRESS_TIMER >= BTN_DELAY_2_5_SEC) */
        {
          /* grosser increment */
          if(req_freq >= 20) req_freq -= 20;
          else req_freq = 0;
        }
      }
      button_pressed = TRUE;
    }
    else if(BTN_FREQ_DUTY_STATE == BTN_PRESSED && BTN_FREQ_DUTY_DELAY_FLAG && wave_type == PWM)
    {
      BTN_FREQ_DUTY_DELAY_FLAG = 0;
      /* Frequency/Duty Cycle Selection */
      if(frequency_duty_sel == FREQ) 
      {
        frequency_duty_sel = DUTY;
        //BAR3_ON;
      }
      else
      {
        frequency_duty_sel = FREQ;
        //BAR3_OFF;
      }
      button_pressed = TRUE;
    }
    else {}
    if(button_pressed)
    {
      /* TIM4 disable counter */
      TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
      LCD_GLASS_Clear();
      if(wave_type == PWM)
      {
        uint16_t tmp_req_freq_PWM = req_freq_PWM;
        /* set sample_size corresponding to duty cycle */
        sample_size = 8;
        if(req_freq_PWM <= 896)
        {
          /* calculate prescaler value */
          uint8_t multi128 = 0;
          while(tmp_req_freq_PWM > 128)
          {
            tmp_req_freq_PWM -= 128;
            multi128++;
          }
          /* TIM4 set timer new values */
          TIM4->PSCR = (uint8_t)((uint8_t)7 - multi128);
        }
        else   /* req_freq_PWM > 896 & <= 1022*/
        {
          tmp_req_freq_PWM -= 896;
          /* TIM4 set timer new values */
          TIM4->PSCR = (uint8_t)(TIM4_Prescaler_1);
        }
        /* Frequency calculation */
        calc_freq = (uint32_t)16000000;                                          /* System Clock */
        calc_freq >>= (uint8_t)(TIM4->PSCR);                                     /* divide by PSC */
        calc_freq >>= (uint8_t)3;                                                /* divide by sample size - length of duty cycle array*/
        calc_freq /= (uint32_t)((uint8_t)255 - tmp_req_freq_PWM + (uint8_t)1);   /* divide by ARR */
        calc_freq16 = (uint16_t)calc_freq;
        /* TIM4 set timer new values */
        TIM4->ARR = (uint8_t)((uint8_t)255 - tmp_req_freq_PWM + (uint8_t)1);
      }
      else    /* wave_type != PWM */
      {
        uint16_t tmp_req_freq = req_freq;
        if(req_freq <= 219)   /* up to 240Hz - values in lookup tables */
        {
          /* set sample_size corresponding to frequency */
          sample_size = 130;
          /* Frequency calculation */
          calc_freq16 = (uint16_t)FreqTab[req_freq];
          /* TIM4 set timer new values */
          TIM4_TimeBaseInit((TIM4_Prescaler_TypeDef)(PSCTab[req_freq]), (uint8_t)(ARRTab[req_freq]));
        }
        else if(req_freq <= 347)    /* up to 480Hz */
        {
          /* set sample_size corresponding to frequency*/
          sample_size = 130;
          tmp_req_freq -= 219;
          /* Frequency calculation */
          calc_freq = (uint32_t)16000000;
          calc_freq >>= 1;            /* divide by 2 (PSC = 2) */
          calc_freq /= (uint32_t)((uint8_t)255 - tmp_req_freq + (uint8_t)1);
          calc_freq /= sample_size;
          calc_freq16 = (uint16_t)calc_freq;
          /* TIM4 set timer new values */
          TIM4_TimeBaseInit(TIM4_Prescaler_2, (uint8_t)(255 - tmp_req_freq + (uint8_t)1));
        }
        else if(req_freq <= 587)   /* up to 7239Hz */
        {
          /* set sample_size corresponding to frequency*/
          sample_size = 130;
          tmp_req_freq -= 347;
          /* Frequency calculation */
          calc_freq = (uint32_t)16000000;
          calc_freq /= (uint32_t)((uint8_t)255 - tmp_req_freq + (uint8_t)1);
          calc_freq /= sample_size;
          calc_freq16 = (uint16_t)calc_freq;
          /* TIM4 set timer new values */
          TIM4_TimeBaseInit(TIM4_Prescaler_1, (uint8_t)(255 - tmp_req_freq + (uint8_t)1));
        }
        else if(req_freq <= 603)   /* up to 14479Hz */
        {
          /* set sample_size corresponding to frequency*/
          sample_size = 65;
          tmp_req_freq -= 587;
          /* Frequency calculation */
          calc_freq = (uint32_t)16000000;
          calc_freq /= (uint32_t)((uint8_t)32 - tmp_req_freq);
          calc_freq /= sample_size;
          calc_freq16 = (uint16_t)calc_freq;
          /* TIM4 set timer new values */
          TIM4_TimeBaseInit(TIM4_Prescaler_1, (uint8_t)((uint8_t)32 - tmp_req_freq));
        }
        else {}
      }
      
      /* Convert frequency value to ASCII characters */
      if(wave_type == PWM && frequency_duty_sel == DUTY)
      {
        str[0] = 'D';
        str[1] = 'T';
        str[2] = 'Y';
        str[3] = ' ';  
        str[5] = (unsigned char)((PWMTabVal[req_duty_PWM] % 10) + 48);
        str[4] = (unsigned char)((PWMTabVal[req_duty_PWM] / 10) + 48);
        str[6] = 0;
        LCD_GLASS_DisplayString(str);
      }
      else if(wave_type < 6)
      {
        uint8_t i, pos, dec_place, pos_cnt, pos_cnt_flag, tmp_char;
        LCD_GLASS_Clear();
        for(i = 0; i < 5; i++)
        {
          str[4-i] = (unsigned char)((calc_freq16 % 10)+48);
          calc_freq16 /= 10;
        }
        calc_freq16 = (uint16_t)calc_freq;
        i = 0;
        while(str[i] == '0')
        {
          i++;
        }
        pos = 1;
        if(calc_freq16 < 1000)          /* if generated signal frequency is < 1000 HZ */
        {
          dec_place = 0;                /* place of the decimal dot */                            
        }
        else if(calc_freq16 < 10000)    /* if generated signal frequency is < 10000 HZ */
		    {
          dec_place = 1;		  
        }		  
        else                            /* if generated signal frequency is >= 10000 HZ */
		      dec_place = 2; 
        pos_cnt = 0;
		    pos_cnt_flag = FALSE;
        for(; i < 5; i++)
        {
          if(pos == dec_place && dec_place != 0) 
          {
		        LCD_GLASS_WriteChar(&(str[i]), TRUE, FALSE, pos++);
			      pos_cnt_flag = TRUE;
          }
          else LCD_GLASS_WriteChar(&(str[i]), FALSE, FALSE, pos++);
		      if(pos_cnt_flag == TRUE)
		      {
		        pos_cnt++;
		      }
		      if(pos_cnt == 3)
		      {
		        break;
		      }
        }
        if(calc_freq16 >= 1000)
        {
          tmp_char = ' ';
          LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);
          tmp_char = 'K';
          LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);
        }
        else
        {
          tmp_char = ' ';
          LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);
          tmp_char = 'H';
          LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);        /* append "HZ" measuring unit symbol*/
          tmp_char = 'Z';
		      LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);
        }
      }
      
      /* DMA Reinitialize */
      DMA_ReInit();
      /* TIM4 enable counter */
      TIM4->CR1 |= TIM4_CR1_CEN;

      if((wave_type!=wave_type_old) || ((frequency_duty_sel!=frequency_duty_sel_old) && (wave_type==PWM)))
      {
        if(wave_type < 6) LCD_GLASS_Clear();
        switch (wave_type)
        {
          case RAMP:
                     LCD_GLASS_DisplayString("RAMP");
                     break;
          case SQUARE:
                     LCD_GLASS_DisplayString("SQUARE");
                     break;
          case SINC: 
                     LCD_GLASS_DisplayString("SINC");
                     break;
          case SINE:
                     LCD_GLASS_DisplayString("SINE");
                     break;
          case SAW: 
                     LCD_GLASS_DisplayString("SAW");
                     break;
          case PWM:
                    if(frequency_duty_sel == FREQ)
                      LCD_GLASS_DisplayString("PWMFRQ");
                    else if(frequency_duty_sel == DUTY)
                      LCD_GLASS_DisplayString("PWMDTY");
                    else {}
                    break;
        }
      }
      button_pressed = FALSE;
    }
    
    if(ADSampRdy == TRUE && trigger_flag_60ms == TRUE)
    {
      if(adc_measurement_selector == INTREF_MEASURE)          /* new IntREF value available */
      {
        VDD = (uint16_t)(IntREF_const / (uint32_t)adc_IntREF);
        adc_measurement_selector = GENSIGMAX_MEASURE;
      }
      else if(adc_measurement_selector == GENSIGMAX_MEASURE)   /* new generated signal max value available */
      {
        int16_t delta_GenSignal;
        uint32_t temp_GenSignal;
        uint8_t i, pos, dec_place, tmp_char;
        GenSignal = (uint16_t)(((uint32_t)VDD * (uint32_t)adc_GenSigMax) >> 12);     /* division by 4096 */
        temp_GenSignal = (uint32_t)GenSignal * 419;     /* scale to */
        temp_GenSignal /= 1000;                         /* compensate for ADC input divider network, result ex: 842 -> 8,42V */
        GenSignal = (uint16_t)temp_GenSignal;
        delta_GenSignal = GenSignal_old - GenSignal;
        if(delta_GenSignal < 0) delta_GenSignal = -delta_GenSignal;
        if(delta_GenSignal > GEN_SIG_AMPL_DELTA)
        {
          
          calc_freq16 = GenSignal;
          LCD_GLASS_Clear();
          for(i = 0; i < 5; i++)
          {
            str[4-i] = (unsigned char)((calc_freq16 % 10)+48);
            calc_freq16 /= 10;
          }
          i = 0;
          while(str[i] == '0')
          {
            i++;
          }
          pos = 1;
          if(GenSignal < 100)
		      {
		        dec_place = 1;    
            tmp_char = '0';                                         /* place of the decimal dot */
            LCD_GLASS_WriteChar(&tmp_char, TRUE, FALSE, pos++);     /* if generated signal maximum is < 1V start with a 0 */
          }			
          else if(GenSignal < 1000)
            dec_place = 1;              
          else dec_place = 2; 
          for(; i < 5; i++)
          {
		        if(pos == dec_place) LCD_GLASS_WriteChar(&str[i], TRUE, FALSE, pos++);
			      else LCD_GLASS_WriteChar(&str[i], FALSE, FALSE, pos++);
          }
          tmp_char = ' ';
          LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos++);
          tmp_char = 'V';
		      LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, pos);        /* append "V" measuring unit symbol*/
          GenSignal_old = GenSignal;
        }
        adc_measurement_selector = EXTVOLTAGE_MEASURE;
      }
      else if(adc_measurement_selector == EXTVOLTAGE_MEASURE)      /* new external voltage value available */
      {
        int16_t l_delta_Voltage_Signal;
        uint32_t temp_ExtVoltage;
        ExtVoltage = (uint16_t)(((uint32_t)VDD * (uint32_t)adc_extVoltage) >> 12);
        temp_ExtVoltage = (uint32_t)ExtVoltage * 419;             /* scale to */
        temp_ExtVoltage /= 1000;                                  /* compensate for ADC input divider network, result ex: 842 -> 8,42V */
        ExtVoltage = (uint16_t)temp_ExtVoltage;
        l_delta_Voltage_Signal = ExtVoltage - GenSignal;
        if(l_delta_Voltage_Signal < 0)
        {
          unsigned char tmp_char;
          /* error! signal level > supply voltage level*/
          LCD_GLASS_Clear();
          tmp_char = 'E';
		      LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, 1);
          tmp_char = '1';
		      LCD_GLASS_WriteChar(&tmp_char, FALSE, FALSE, 2);
        }
        else if(l_delta_Voltage_Signal < DELTA_VOLTAGE_SIGNAL)
        {
          /* Turn on Signal Limit light */
          GPIO_ResetBits(GPIOC, GPIO_Pin_1);
        }
        else
        {
          /* Turn off Signal Limit light */
          GPIO_SetBits(GPIOC, GPIO_Pin_1);
        }
       adc_measurement_selector = INTREF_MEASURE;
      }
      ADSampRdy = FALSE;
      trigger_flag_60ms = FALSE;
    }
    wave_type_old = wave_type;
    frequency_duty_sel_old = frequency_duty_sel;
  }
}

void DMA_ReInit()
{
  /* Change waveform by re-initializing DMA data and addresses */
  DMA1->GCSR &= (uint8_t)(~DMA_GCSR_GE);
  /* Disable the selected DMA Channelx */
  DMA1_Channel3->CCR &= (uint8_t)(~DMA_CCR_CE);
  DMA1_Channel3->CCR &= (uint8_t)(~DMA_CCR_CE);
  /* Reset DMA Channelx control register */
  DMA1_Channel3->CCR  = DMA_CCR_RESET_VALUE;
  /* Set DMA direction & Mode & Incremantal Memory mode */
  DMA1_Channel3->CCR |= ((uint8_t)DMA_DIR_MemoryToPeripheral |(uint8_t) DMA_Mode_Circular |(uint8_t)DMA_MemoryIncMode_Inc);
  /*Clear old priority and memory data size  option */
  DMA1_Channel3->CSPR &= (uint8_t)~(DMA_CSPR_PL | DMA_CSPR_16BM);
  /* Set old priority and memory data size  option */
  DMA1_Channel3->CSPR |= ((uint8_t)DMA_Priority_VeryHigh |(uint8_t)DMA_MemoryDataSize_HalfWord);
  /*--------------------------- DMA Channelx CNDTR Configuration ---------------*/
  /* Write to DMA Channelx CNDTR */
  DMA1_Channel3->CNBTR = (uint8_t)sample_size;
  /*--------------------------- DMA Channelx CPAR Configuration ----------------*/
  /* Write to DMA Channelx (0, 1 or 2)  Peripheral address  */
  /* Write to DMA Channel 3 Memory 1 address  */
  DMA1_Channel3->CPARH = (uint8_t)(DAC_CH1RDHRH_ADDRESS >> (uint8_t)8);
  DMA1_Channel3->CPARL = (uint8_t)(DAC_CH1RDHRH_ADDRESS);
  /*--------------------------- DMA Channelx CMAR Configuration ----------------*/
  /* Write to DMA Channelx Memory address */
  if(sample_size == 65)
  {
    DMA1_Channel3->CM0ARH = (uint8_t)(WavesTab65[wave_type] >> (uint8_t)8);
    DMA1_Channel3->CM0ARL = (uint8_t)(WavesTab65[wave_type]);	
  }
  else if(sample_size == 130)
  {
    DMA1_Channel3->CM0ARH = (uint8_t)(WavesTab130[wave_type] >> (uint8_t)8);
    DMA1_Channel3->CM0ARL = (uint8_t)(WavesTab130[wave_type]);	
  }
  else   /* sample_size !=65 and !=130 */
  {
   DMA1_Channel3->CM0ARH = (uint8_t)(WavesTabPWM[req_duty_PWM] >> (uint8_t)8);
   DMA1_Channel3->CM0ARL = (uint8_t)(WavesTabPWM[req_duty_PWM]); 
  }
  /* DMA1 Channel 3 enable */
  DMA1_Channel3->CCR |= DMA_CCR_CE;
  /* Enable the  DMA      */
  DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;
}



#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {}
}
#endif



/**
  * @}
  */


/**
  * @}
  */
/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE****/
