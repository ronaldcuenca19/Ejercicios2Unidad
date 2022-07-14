/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ejercicios2U/registro4Bits.vhd";



static void work_a_1857169875_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1832U);
    t12 = *((char **)t4);
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t4 = (t12 + t16);
    t17 = *((unsigned char *)t4);
    t18 = (t17 == (unsigned char)2);
    if (t18 == 1)
        goto LAB14;

LAB15:    t11 = (unsigned char)0;

LAB16:    if (t11 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB20;

LAB21:    t1 = (unsigned char)0;

LAB22:    if (t1 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t2 = (t4 + t16);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB26;

LAB27:    t1 = (unsigned char)0;

LAB28:    if (t1 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB18:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(48, ng0);
    t27 = (t0 + 3552);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t27);
    goto LAB12;

LAB14:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t21 = (1 - 0);
    t22 = (t21 * 1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t26 = (t25 == (unsigned char)3);
    t11 = t26;
    goto LAB16;

LAB17:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 1032U);
    t19 = *((char **)t12);
    t12 = (t0 + 3616);
    t20 = (t12 + 56U);
    t27 = *((char **)t20);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB18;

LAB20:    t5 = (t0 + 1832U);
    t8 = *((char **)t5);
    t21 = (1 - 0);
    t22 = (t21 * 1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t8 + t24);
    t7 = *((unsigned char *)t5);
    t9 = (t7 == (unsigned char)2);
    t1 = t9;
    goto LAB22;

LAB23:    xsi_set_current_line(52, ng0);
    t12 = (t0 + 3680);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t27 = (t20 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB24;

LAB26:    t5 = (t0 + 1832U);
    t8 = *((char **)t5);
    t21 = (1 - 0);
    t22 = (t21 * 1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t8 + t24);
    t7 = *((unsigned char *)t5);
    t9 = (t7 == (unsigned char)2);
    t1 = t9;
    goto LAB28;

}


extern void work_a_1857169875_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1857169875_3212880686_p_0};
	xsi_register_didat("work_a_1857169875_3212880686", "isim/EjerciciosMemorias_isim_beh.exe.sim/work/a_1857169875_3212880686.didat");
	xsi_register_executes(pe);
}
