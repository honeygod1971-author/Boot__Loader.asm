
AVRASM ver. 2.1.30  C:\cvavr\Examples\XMEGA\AVR1916 USB DFU Bootloader\Test Application Xmega128A4U\Release\List\test_app.asm Thu Apr 20 23:59:35 2023

                 
                 
                 ;CodeVisionAVR C Compiler V3.40 Advanced
                 ;(C) Copyright 1998-2020 Pavel Haiduc, HP InfoTech S.R.L.
                 ;http://www.hpinfotech.ro
                 
                 ;Build configuration    : Release
                 ;Chip type              : ATxmega128A4U
                 ;Program type           : Application
                 ;Clock frequency        : 2.000000 MHz
                 ;Memory model           : Small
                 ;Optimize for           : Speed
                 ;(s)printf features     : int, width
                 ;(s)scanf features      : int, width
                 ;External RAM size      : 0
                 ;Data Stack size        : 4096 byte(s)
                 ;Heap size              : 0 byte(s)
                 ;Promote 'char' to 'int': Yes
                 ;'char' is unsigned     : Yes
                 ;8 bit enums            : Yes
                 ;Global 'const' stored in FLASH: Yes
                 ;Enhanced function parameter passing: Mode 2
                 ;Enhanced core instructions: On
                 ;Automatic register allocation for global variables: On
                 ;Smart register allocation: On
                 
                 	#define _MODEL_SMALL_
                 
                 	#pragma AVRPART ADMIN PART_NAME ATxmega128A4U
                 	#pragma AVRPART MEMORY PROG_FLASH 139264
                 	#pragma AVRPART MEMORY EEPROM 2048
                 	#pragma AVRPART MEMORY INT_SRAM SIZE 8192
                 	#pragma AVRPART MEMORY INT_SRAM START_ADDR 0x2000
                 
                 	#define CALL_SUPPORTED 1
                 
                 	.LISTMAC
                 	.EQU CCP=0x34
                 	.EQU RAMPD=0x38
                 	.EQU RAMPX=0x39
                 	.EQU RAMPY=0x3A
                 	.EQU RAMPZ=0x3B
                 	.EQU EIND=0x3C
                 	.EQU WDT_CTRL=0x80
                 	.EQU PMIC_CTRL=0xA2
                 	.EQU NVM_ADDR0=0x01C0
                 	.EQU NVM_ADDR1=NVM_ADDR0+1
                 	.EQU NVM_ADDR2=NVM_ADDR1+1
                 	.EQU NVM_DATA0=NVM_ADDR0+4
                 	.EQU NVM_CMD=NVM_ADDR0+0xA
                 	.EQU NVM_CTRLA=NVM_ADDR0+0xB
                 	.EQU NVM_CTRLB=NVM_ADDR0+0xC
                 	.EQU NVM_STATUS=NVM_ADDR0+0xF
                 	.EQU SPL=0x3D
                 	.EQU SPH=0x3E
                 	.EQU SREG=0x3F
                 	.EQU GPIO0=0x00
                 	.EQU GPIO1=0x01
                 	.EQU GPIO2=0x02
                 	.EQU GPIO3=0x03
                 	.EQU GPIO4=0x04
                 	.EQU GPIO5=0x05
                 	.EQU GPIO6=0x06
                 	.EQU GPIO7=0x07
                 	.EQU GPIO8=0x08
                 	.EQU GPIO9=0x09
                 	.EQU GPIO10=0x0A
                 	.EQU GPIO11=0x0B
                 	.EQU GPIO12=0x0C
                 	.EQU GPIO13=0x0D
                 	.EQU GPIO14=0x0E
                 	.EQU GPIO15=0x0F
                 
                 	.DEF R0X0=R0
                 	.DEF R0X1=R1
                 	.DEF R0X2=R2
                 	.DEF R0X3=R3
                 	.DEF R0X4=R4
                 	.DEF R0X5=R5
                 	.DEF R0X6=R6
                 	.DEF R0X7=R7
                 	.DEF R0X8=R8
                 	.DEF R0X9=R9
                 	.DEF R0XA=R10
                 	.DEF R0XB=R11
                 	.DEF R0XC=R12
                 	.DEF R0XD=R13
                 	.DEF R0XE=R14
                 	.DEF R0XF=R15
                 	.DEF R0X10=R16
                 	.DEF R0X11=R17
                 	.DEF R0X12=R18
                 	.DEF R0X13=R19
                 	.DEF R0X14=R20
                 	.DEF R0X15=R21
                 	.DEF R0X16=R22
                 	.DEF R0X17=R23
                 	.DEF R0X18=R24
                 	.DEF R0X19=R25
                 	.DEF R0X1A=R26
                 	.DEF R0X1B=R27
                 	.DEF R0X1C=R28
                 	.DEF R0X1D=R29
                 	.DEF R0X1E=R30
                 	.DEF R0X1F=R31
                 
                 	.EQU __SRAM_START=0x2000
                 	.EQU __SRAM_END=0x3FFF
                 	.EQU __DSTACK_SIZE=0x1000
                 	.EQU __HEAP_SIZE=0x0000
                 	.EQU __CLEAR_SRAM_SIZE=__SRAM_END-__SRAM_START+1
                 
                 	.MACRO __CPD1N
                 	CPI  R30,LOW(@0)
                 	LDI  R26,HIGH(@0)
                 	CPC  R31,R26
                 	LDI  R26,BYTE3(@0)
                 	CPC  R22,R26
                 	LDI  R26,BYTE4(@0)
                 	CPC  R23,R26
                 	.ENDM
                 
                 	.MACRO __CPD2N
                 	CPI  R26,LOW(@0)
                 	LDI  R30,HIGH(@0)
                 	CPC  R27,R30
                 	LDI  R30,BYTE3(@0)
                 	CPC  R24,R30
                 	LDI  R30,BYTE4(@0)
                 	CPC  R25,R30
                 	.ENDM
                 
                 	.MACRO __CPWRR
                 	CP   R@0,R@2
                 	CPC  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __CPWRN
                 	CPI  R@0,LOW(@2)
                 	LDI  R30,HIGH(@2)
                 	CPC  R@1,R30
                 	.ENDM
                 
                 	.MACRO __ADDB1MN
                 	SUBI R30,LOW(-@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDB2MN
                 	SUBI R26,LOW(-@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDW1MN
                 	SUBI R30,LOW(-@0-(@1))
                 	SBCI R31,HIGH(-@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDW2MN
                 	SUBI R26,LOW(-@0-(@1))
                 	SBCI R27,HIGH(-@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDW1FN
                 	SUBI R30,LOW(-2*@0-(@1))
                 	SBCI R31,HIGH(-2*@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDD1FN
                 	SUBI R30,LOW(-2*@0-(@1))
                 	SBCI R31,HIGH(-2*@0-(@1))
                 	SBCI R22,BYTE3(-2*@0-(@1))
                 	.ENDM
                 
                 	.MACRO __ADDD1N
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	SBCI R22,BYTE3(-@0)
                 	SBCI R23,BYTE4(-@0)
                 	.ENDM
                 
                 	.MACRO __ADDD2N
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	SBCI R24,BYTE3(-@0)
                 	SBCI R25,BYTE4(-@0)
                 	.ENDM
                 
                 	.MACRO __SUBD1N
                 	SUBI R30,LOW(@0)
                 	SBCI R31,HIGH(@0)
                 	SBCI R22,BYTE3(@0)
                 	SBCI R23,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __SUBD2N
                 	SUBI R26,LOW(@0)
                 	SBCI R27,HIGH(@0)
                 	SBCI R24,BYTE3(@0)
                 	SBCI R25,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __ANDBMNN
                 	LDS  R30,@0+(@1)
                 	ANDI R30,LOW(@2)
                 	STS  @0+(@1),R30
                 	.ENDM
                 
                 	.MACRO __ANDWMNN
                 	LDS  R30,@0+(@1)
                 	ANDI R30,LOW(@2)
                 	STS  @0+(@1),R30
                 	LDS  R30,@0+(@1)+1
                 	ANDI R30,HIGH(@2)
                 	STS  @0+(@1)+1,R30
                 	.ENDM
                 
                 	.MACRO __ANDD1N
                 	ANDI R30,LOW(@0)
                 	ANDI R31,HIGH(@0)
                 	ANDI R22,BYTE3(@0)
                 	ANDI R23,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __ANDD2N
                 	ANDI R26,LOW(@0)
                 	ANDI R27,HIGH(@0)
                 	ANDI R24,BYTE3(@0)
                 	ANDI R25,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __ORBMNN
                 	LDS  R30,@0+(@1)
                 	ORI  R30,LOW(@2)
                 	STS  @0+(@1),R30
                 	.ENDM
                 
                 	.MACRO __ORWMNN
                 	LDS  R30,@0+(@1)
                 	ORI  R30,LOW(@2)
                 	STS  @0+(@1),R30
                 	LDS  R30,@0+(@1)+1
                 	ORI  R30,HIGH(@2)
                 	STS  @0+(@1)+1,R30
                 	.ENDM
                 
                 	.MACRO __ORD1N
                 	ORI  R30,LOW(@0)
                 	ORI  R31,HIGH(@0)
                 	ORI  R22,BYTE3(@0)
                 	ORI  R23,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __ORD2N
                 	ORI  R26,LOW(@0)
                 	ORI  R27,HIGH(@0)
                 	ORI  R24,BYTE3(@0)
                 	ORI  R25,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __DELAY_USB
                 	LDI  R24,LOW(@0)
                 __DELAY_USB_LOOP:
                 	DEC  R24
                 	BRNE __DELAY_USB_LOOP
                 	.ENDM
                 
                 	.MACRO __DELAY_USW
                 	LDI  R24,LOW(@0)
                 	LDI  R25,HIGH(@0)
                 __DELAY_USW_LOOP:
                 	SBIW R24,1
                 	BRNE __DELAY_USW_LOOP
                 	.ENDM
                 
                 	.MACRO __GETD1S
                 	LDD  R30,Y+@0
                 	LDD  R31,Y+@0+1
                 	LDD  R22,Y+@0+2
                 	LDD  R23,Y+@0+3
                 	.ENDM
                 
                 	.MACRO __GETD2S
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	LDD  R24,Y+@0+2
                 	LDD  R25,Y+@0+3
                 	.ENDM
                 
                 	.MACRO __PUTD1S
                 	STD  Y+@0,R30
                 	STD  Y+@0+1,R31
                 	STD  Y+@0+2,R22
                 	STD  Y+@0+3,R23
                 	.ENDM
                 
                 	.MACRO __PUTD2S
                 	STD  Y+@0,R26
                 	STD  Y+@0+1,R27
                 	STD  Y+@0+2,R24
                 	STD  Y+@0+3,R25
                 	.ENDM
                 
                 	.MACRO __PUTDZ2
                 	STD  Z+@0,R26
                 	STD  Z+@0+1,R27
                 	STD  Z+@0+2,R24
                 	STD  Z+@0+3,R25
                 	.ENDM
                 
                 	.MACRO __CLRD1S
                 	STD  Y+@0,R30
                 	STD  Y+@0+1,R30
                 	STD  Y+@0+2,R30
                 	STD  Y+@0+3,R30
                 	.ENDM
                 
                 	.MACRO __POINTB1MN
                 	LDI  R30,LOW(@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTW1MN
                 	LDI  R30,LOW(@0+(@1))
                 	LDI  R31,HIGH(@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTD1M
                 	LDI  R30,LOW(@0)
                 	LDI  R31,HIGH(@0)
                 	LDI  R22,BYTE3(@0)
                 	LDI  R23,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __POINTW1FN
                 	LDI  R30,LOW(2*@0+(@1))
                 	LDI  R31,HIGH(2*@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTD1FN
                 	LDI  R30,LOW(2*@0+(@1))
                 	LDI  R31,HIGH(2*@0+(@1))
                 	LDI  R22,BYTE3(2*@0+(@1))
                 	LDI  R23,BYTE4(2*@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTB2MN
                 	LDI  R26,LOW(@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTW2MN
                 	LDI  R26,LOW(@0+(@1))
                 	LDI  R27,HIGH(@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTD2M
                 	LDI  R26,LOW(@0)
                 	LDI  R27,HIGH(@0)
                 	LDI  R24,BYTE3(@0)
                 	LDI  R25,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __POINTW2FN
                 	LDI  R26,LOW(2*@0+(@1))
                 	LDI  R27,HIGH(2*@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTD2FN
                 	LDI  R26,LOW(2*@0+(@1))
                 	LDI  R27,HIGH(2*@0+(@1))
                 	LDI  R24,BYTE3(2*@0+(@1))
                 	LDI  R25,BYTE4(2*@0+(@1))
                 	.ENDM
                 
                 	.MACRO __POINTBRM
                 	LDI  R@0,LOW(@1)
                 	.ENDM
                 
                 	.MACRO __POINTWRM
                 	LDI  R@0,LOW(@2)
                 	LDI  R@1,HIGH(@2)
                 	.ENDM
                 
                 	.MACRO __POINTBRMN
                 	LDI  R@0,LOW(@1+(@2))
                 	.ENDM
                 
                 	.MACRO __POINTWRMN
                 	LDI  R@0,LOW(@2+(@3))
                 	LDI  R@1,HIGH(@2+(@3))
                 	.ENDM
                 
                 	.MACRO __POINTWRFN
                 	LDI  R@0,LOW(@2*2+(@3))
                 	LDI  R@1,HIGH(@2*2+(@3))
                 	.ENDM
                 
                 	.MACRO __GETD1N
                 	LDI  R30,LOW(@0)
                 	LDI  R31,HIGH(@0)
                 	LDI  R22,BYTE3(@0)
                 	LDI  R23,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __GETD2N
                 	LDI  R26,LOW(@0)
                 	LDI  R27,HIGH(@0)
                 	LDI  R24,BYTE3(@0)
                 	LDI  R25,BYTE4(@0)
                 	.ENDM
                 
                 	.MACRO __GETB1MN
                 	LDS  R30,@0+(@1)
                 	.ENDM
                 
                 	.MACRO __GETB1HMN
                 	LDS  R31,@0+(@1)
                 	.ENDM
                 
                 	.MACRO __GETW1MN
                 	LDS  R30,@0+(@1)
                 	LDS  R31,@0+(@1)+1
                 	.ENDM
                 
                 	.MACRO __GETD1MN
                 	LDS  R30,@0+(@1)
                 	LDS  R31,@0+(@1)+1
                 	LDS  R22,@0+(@1)+2
                 	LDS  R23,@0+(@1)+3
                 	.ENDM
                 
                 	.MACRO __GETBRMN
                 	LDS  R@0,@1+(@2)
                 	.ENDM
                 
                 	.MACRO __GETWRMN
                 	LDS  R@0,@2+(@3)
                 	LDS  R@1,@2+(@3)+1
                 	.ENDM
                 
                 	.MACRO __GETWRZ
                 	LDD  R@0,Z+@2
                 	LDD  R@1,Z+@2+1
                 	.ENDM
                 
                 	.MACRO __GETD2Z
                 	LDD  R26,Z+@0
                 	LDD  R27,Z+@0+1
                 	LDD  R24,Z+@0+2
                 	LDD  R25,Z+@0+3
                 	.ENDM
                 
                 	.MACRO __GETB2MN
                 	LDS  R26,@0+(@1)
                 	.ENDM
                 
                 	.MACRO __GETW2MN
                 	LDS  R26,@0+(@1)
                 	LDS  R27,@0+(@1)+1
                 	.ENDM
                 
                 	.MACRO __GETD2MN
                 	LDS  R26,@0+(@1)
                 	LDS  R27,@0+(@1)+1
                 	LDS  R24,@0+(@1)+2
                 	LDS  R25,@0+(@1)+3
                 	.ENDM
                 
                 	.MACRO __PUTB1MN
                 	STS  @0+(@1),R30
                 	.ENDM
                 
                 	.MACRO __PUTW1MN
                 	STS  @0+(@1),R30
                 	STS  @0+(@1)+1,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1MN
                 	STS  @0+(@1),R30
                 	STS  @0+(@1)+1,R31
                 	STS  @0+(@1)+2,R22
                 	STS  @0+(@1)+3,R23
                 	.ENDM
                 
                 	.MACRO __PUTB1EN
                 	LDI  R26,LOW(@0+(@1))
                 	LDI  R27,HIGH(@0+(@1))
                 	CALL __EEPROMWRB
                 	.ENDM
                 
                 	.MACRO __PUTW1EN
                 	LDI  R26,LOW(@0+(@1))
                 	LDI  R27,HIGH(@0+(@1))
                 	CALL __EEPROMWRW
                 	.ENDM
                 
                 	.MACRO __PUTD1EN
                 	LDI  R26,LOW(@0+(@1))
                 	LDI  R27,HIGH(@0+(@1))
                 	CALL __EEPROMWRD
                 	.ENDM
                 
                 	.MACRO __PUTBR0MN
                 	STS  @0+(@1),R0
                 	.ENDM
                 
                 	.MACRO __PUTBMRN
                 	STS  @0+(@1),R@2
                 	.ENDM
                 
                 	.MACRO __PUTWMRN
                 	STS  @0+(@1),R@2
                 	STS  @0+(@1)+1,R@3
                 	.ENDM
                 
                 	.MACRO __PUTBZR
                 	STD  Z+@1,R@0
                 	.ENDM
                 
                 	.MACRO __PUTWZR
                 	STD  Z+@2,R@0
                 	STD  Z+@2+1,R@1
                 	.ENDM
                 
                 	.MACRO __GETW1R
                 	MOV  R30,R@0
                 	MOV  R31,R@1
                 	.ENDM
                 
                 	.MACRO __GETW2R
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	.ENDM
                 
                 	.MACRO __GETWRN
                 	LDI  R@0,LOW(@2)
                 	LDI  R@1,HIGH(@2)
                 	.ENDM
                 
                 	.MACRO __PUTW1R
                 	MOV  R@0,R30
                 	MOV  R@1,R31
                 	.ENDM
                 
                 	.MACRO __PUTW2R
                 	MOV  R@0,R26
                 	MOV  R@1,R27
                 	.ENDM
                 
                 	.MACRO __ADDWRN
                 	SUBI R@0,LOW(-@2)
                 	SBCI R@1,HIGH(-@2)
                 	.ENDM
                 
                 	.MACRO __ADDWRR
                 	ADD  R@0,R@2
                 	ADC  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __SUBWRN
                 	SUBI R@0,LOW(@2)
                 	SBCI R@1,HIGH(@2)
                 	.ENDM
                 
                 	.MACRO __SUBWRR
                 	SUB  R@0,R@2
                 	SBC  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __ANDWRN
                 	ANDI R@0,LOW(@2)
                 	ANDI R@1,HIGH(@2)
                 	.ENDM
                 
                 	.MACRO __ANDWRR
                 	AND  R@0,R@2
                 	AND  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __ORWRN
                 	ORI  R@0,LOW(@2)
                 	ORI  R@1,HIGH(@2)
                 	.ENDM
                 
                 	.MACRO __ORWRR
                 	OR   R@0,R@2
                 	OR   R@1,R@3
                 	.ENDM
                 
                 	.MACRO __EORWRR
                 	EOR  R@0,R@2
                 	EOR  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __GETWRS
                 	LDD  R@0,Y+@2
                 	LDD  R@1,Y+@2+1
                 	.ENDM
                 
                 	.MACRO __PUTBSR
                 	STD  Y+@1,R@0
                 	.ENDM
                 
                 	.MACRO __PUTWSR
                 	STD  Y+@2,R@0
                 	STD  Y+@2+1,R@1
                 	.ENDM
                 
                 	.MACRO __MOVEWRR
                 	MOV  R@0,R@2
                 	MOV  R@1,R@3
                 	.ENDM
                 
                 	.MACRO __INWR
                 	IN   R@0,@2
                 	IN   R@1,@2+1
                 	.ENDM
                 
                 	.MACRO __OUTWR
                 	OUT  @2+1,R@1
                 	OUT  @2,R@0
                 	.ENDM
                 
                 	.MACRO __CALL1MN
                 	LDS  R30,@0+(@1)
                 	LDS  R31,@0+(@1)+1
                 	ICALL
                 	.ENDM
                 
                 	.MACRO __CALL1FN
                 	LDI  R30,LOW(2*@0+(@1))
                 	LDI  R31,HIGH(2*@0+(@1))
                 	CALL __GETW1PF
                 	ICALL
                 	.ENDM
                 
                 	.MACRO __CALL2EN
                 	PUSH R26
                 	PUSH R27
                 	LDI  R26,LOW(@0+(@1))
                 	LDI  R27,HIGH(@0+(@1))
                 	CALL __EEPROMRDW
                 	POP  R27
                 	POP  R26
                 	ICALL
                 	.ENDM
                 
                 	.MACRO __CALL2EX
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	CALL __EEPROMRDD
                 	ICALL
                 	.ENDM
                 
                 	.MACRO __GETW1STACK
                 	IN   R30,SPL
                 	IN   R31,SPH
                 	ADIW R30,@0+1
                 	LD   R0,Z+
                 	LD   R31,Z
                 	MOV  R30,R0
                 	.ENDM
                 
                 	.MACRO __GETD1STACK
                 	IN   R30,SPL
                 	IN   R31,SPH
                 	ADIW R30,@0+1
                 	LD   R0,Z+
                 	LD   R1,Z+
                 	LD   R22,Z
                 	MOVW R30,R0
                 	.ENDM
                 
                 	.MACRO __NBST
                 	BST  R@0,@1
                 	IN   R30,SREG
                 	LDI  R31,0x40
                 	EOR  R30,R31
                 	OUT  SREG,R30
                 	.ENDM
                 
                 
                 	.MACRO __PUTB1SN
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1SN
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1SN
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1SNS
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	ADIW R26,@1
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1SNS
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	ADIW R26,@1
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1SNS
                 	LDD  R26,Y+@0
                 	LDD  R27,Y+@0+1
                 	ADIW R26,@1
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1PMN
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1PMN
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1PMN
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1PMNS
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	ADIW R26,@1
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1PMNS
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	ADIW R26,@1
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1PMNS
                 	LDS  R26,@0
                 	LDS  R27,@0+1
                 	ADIW R26,@1
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1RN
                 	MOVW R26,R@0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1RN
                 	MOVW R26,R@0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1RN
                 	MOVW R26,R@0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1RNS
                 	MOVW R26,R@0
                 	ADIW R26,@1
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1RNS
                 	MOVW R26,R@0
                 	ADIW R26,@1
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1RNS
                 	MOVW R26,R@0
                 	ADIW R26,@1
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1RON
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	SUBI R26,LOW(-@2)
                 	SBCI R27,HIGH(-@2)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1RON
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	SUBI R26,LOW(-@2)
                 	SBCI R27,HIGH(-@2)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1RON
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	SUBI R26,LOW(-@2)
                 	SBCI R27,HIGH(-@2)
                 	CALL __PUTDP1
                 	.ENDM
                 
                 	.MACRO __PUTB1RONS
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	ADIW R26,@2
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1RONS
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	ADIW R26,@2
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1RONS
                 	MOV  R26,R@0
                 	MOV  R27,R@1
                 	ADIW R26,@2
                 	CALL __PUTDP1
                 	.ENDM
                 
                 
                 	.MACRO __GETB1SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	LD   R30,Z
                 	.ENDM
                 
                 	.MACRO __GETB1HSX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	LD   R31,Z
                 	.ENDM
                 
                 	.MACRO __GETW1SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	CALL __GETW1Z
                 	.ENDM
                 
                 	.MACRO __GETD1SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	CALL __GETD1Z
                 	.ENDM
                 
                 	.MACRO __GETB2SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	LD   R26,X
                 	.ENDM
                 
                 	.MACRO __GETW2SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	CALL __GETW2X
                 	.ENDM
                 
                 	.MACRO __GETD2SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	CALL __GETD2X
                 	.ENDM
                 
                 	.MACRO __GETBRSX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@1)
                 	SBCI R31,HIGH(-@1)
                 	LD   R@0,Z
                 	.ENDM
                 
                 	.MACRO __GETWRSX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@2)
                 	SBCI R31,HIGH(-@2)
                 	LD   R@0,Z+
                 	LD   R@1,Z
                 	.ENDM
                 
                 	.MACRO __GETBRSX2
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	LD   R@0,X
                 	.ENDM
                 
                 	.MACRO __GETWRSX2
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@2)
                 	SBCI R27,HIGH(-@2)
                 	LD   R@0,X+
                 	LD   R@1,X
                 	.ENDM
                 
                 	.MACRO __LSLW8SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	LD   R31,Z
                 	CLR  R30
                 	.ENDM
                 
                 	.MACRO __PUTB1SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	ST   X+,R30
                 	ST   X+,R31
                 	ST   X+,R22
                 	ST   X,R23
                 	.ENDM
                 
                 	.MACRO __CLRW1SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	ST   X+,R30
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __CLRD1SX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	ST   X+,R30
                 	ST   X+,R30
                 	ST   X+,R30
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTB2SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	ST   Z,R26
                 	.ENDM
                 
                 	.MACRO __PUTW2SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	ST   Z+,R26
                 	ST   Z,R27
                 	.ENDM
                 
                 	.MACRO __PUTD2SX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@0)
                 	SBCI R31,HIGH(-@0)
                 	ST   Z+,R26
                 	ST   Z+,R27
                 	ST   Z+,R24
                 	ST   Z,R25
                 	.ENDM
                 
                 	.MACRO __PUTBSRX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@1)
                 	SBCI R31,HIGH(-@1)
                 	ST   Z,R@0
                 	.ENDM
                 
                 	.MACRO __PUTWSRX
                 	MOVW R30,R28
                 	SUBI R30,LOW(-@2)
                 	SBCI R31,HIGH(-@2)
                 	ST   Z+,R@0
                 	ST   Z,R@1
                 	.ENDM
                 
                 	.MACRO __PUTB1SNX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	LD   R0,X+
                 	LD   R27,X
                 	MOV  R26,R0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X,R30
                 	.ENDM
                 
                 	.MACRO __PUTW1SNX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	LD   R0,X+
                 	LD   R27,X
                 	MOV  R26,R0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X+,R30
                 	ST   X,R31
                 	.ENDM
                 
                 	.MACRO __PUTD1SNX
                 	MOVW R26,R28
                 	SUBI R26,LOW(-@0)
                 	SBCI R27,HIGH(-@0)
                 	LD   R0,X+
                 	LD   R27,X
                 	MOV  R26,R0
                 	SUBI R26,LOW(-@1)
                 	SBCI R27,HIGH(-@1)
                 	ST   X+,R30
                 	ST   X+,R31
                 	ST   X+,R22
                 	ST   X,R23
                 	.ENDM
                 
                 	.MACRO __MULBRR
                 	MULS R@0,R@1
                 	MOVW R30,R0
                 	.ENDM
                 
                 	.MACRO __MULBRRU
                 	MUL  R@0,R@1
                 	MOVW R30,R0
                 	.ENDM
                 
                 	.MACRO __MULBRR0
                 	MULS R@0,R@1
                 	.ENDM
                 
                 	.MACRO __MULBRRU0
                 	MUL  R@0,R@1
                 	.ENDM
                 
                 	.MACRO __MULBNWRU
                 	LDI  R26,@2
                 	MUL  R26,R@0
                 	MOVW R30,R0
                 	MUL  R26,R@1
                 	ADD  R31,R0
                 	.ENDM
                 
                 ;GPIO0-GPIO15 INITIALIZATION VALUES
                 	.EQU __GPIO0_INIT=0x00
                 	.EQU __GPIO1_INIT=0x00
                 	.EQU __GPIO2_INIT=0x00
                 	.EQU __GPIO3_INIT=0x00
                 	.EQU __GPIO4_INIT=0x00
                 	.EQU __GPIO5_INIT=0x00
                 	.EQU __GPIO6_INIT=0x00
                 	.EQU __GPIO7_INIT=0x00
                 	.EQU __GPIO8_INIT=0x00
                 	.EQU __GPIO9_INIT=0x00
                 	.EQU __GPIO10_INIT=0x00
                 	.EQU __GPIO11_INIT=0x00
                 	.EQU __GPIO12_INIT=0x00
                 	.EQU __GPIO13_INIT=0x00
                 	.EQU __GPIO14_INIT=0x00
                 	.EQU __GPIO15_INIT=0x00
                 
                 ;GLOBAL REGISTER VARIABLES INITIALIZATION VALUES
                 	.EQU __R2_INIT=0x00
                 	.EQU __R3_INIT=0x00
                 	.EQU __R4_INIT=0x00
                 	.EQU __R5_INIT=0x00
                 	.EQU __R6_INIT=0x00
                 	.EQU __R7_INIT=0x00
                 	.EQU __R8_INIT=0x00
                 	.EQU __R9_INIT=0x00
                 	.EQU __R10_INIT=0x00
                 	.EQU __R11_INIT=0x00
                 	.EQU __R12_INIT=0x00
                 	.EQU __R13_INIT=0x00
                 	.EQU __R14_INIT=0x00
                 
                 	.CSEG
                 	.ORG 0x00
                 
                 ;START OF CODE MARKER
                 __START_OF_CODE:
                 
                 ;INTERRUPT VECTORS
000000 940c 00fe 	JMP  __RESET
000002 940c 0000 	JMP  0x00
000004 940c 0000 	JMP  0x00
000006 940c 0000 	JMP  0x00
000008 940c 0000 	JMP  0x00
00000a 940c 0000 	JMP  0x00
00000c 940c 0000 	JMP  0x00
00000e 940c 0000 	JMP  0x00
000010 940c 0000 	JMP  0x00
000012 940c 0000 	JMP  0x00
000014 940c 0000 	JMP  0x00
000016 940c 0000 	JMP  0x00
000018 940c 0000 	JMP  0x00
00001a 940c 0000 	JMP  0x00
00001c 940c 0000 	JMP  0x00
00001e 940c 0000 	JMP  0x00
000020 940c 0000 	JMP  0x00
000022 940c 0000 	JMP  0x00
000024 940c 0000 	JMP  0x00
000026 940c 0000 	JMP  0x00
000028 940c 0000 	JMP  0x00
00002a 940c 0000 	JMP  0x00
00002c 940c 0000 	JMP  0x00
00002e 940c 0000 	JMP  0x00
000030 940c 0000 	JMP  0x00
000032 940c 0000 	JMP  0x00
000034 940c 0000 	JMP  0x00
000036 940c 0000 	JMP  0x00
000038 940c 0000 	JMP  0x00
00003a 940c 0000 	JMP  0x00
00003c 940c 0000 	JMP  0x00
00003e 940c 0000 	JMP  0x00
000040 940c 0000 	JMP  0x00
000042 940c 0000 	JMP  0x00
000044 940c 0000 	JMP  0x00
000046 940c 0000 	JMP  0x00
000048 940c 0000 	JMP  0x00
00004a 940c 0000 	JMP  0x00
00004c 940c 0000 	JMP  0x00
00004e 940c 0000 	JMP  0x00
000050 940c 0000 	JMP  0x00
000052 940c 0000 	JMP  0x00
000054 940c 0000 	JMP  0x00
000056 940c 0000 	JMP  0x00
000058 940c 0000 	JMP  0x00
00005a 940c 0000 	JMP  0x00
00005c 940c 0000 	JMP  0x00
00005e 940c 0000 	JMP  0x00
000060 940c 0000 	JMP  0x00
000062 940c 0000 	JMP  0x00
000064 940c 0000 	JMP  0x00
000066 940c 0000 	JMP  0x00
000068 940c 0000 	JMP  0x00
00006a 940c 0000 	JMP  0x00
00006c 940c 0000 	JMP  0x00
00006e 940c 0000 	JMP  0x00
000070 940c 0000 	JMP  0x00
000072 940c 0000 	JMP  0x00
000074 940c 0000 	JMP  0x00
000076 940c 0000 	JMP  0x00
000078 940c 0000 	JMP  0x00
00007a 940c 0000 	JMP  0x00
00007c 940c 0000 	JMP  0x00
00007e 940c 0000 	JMP  0x00
000080 940c 0000 	JMP  0x00
000082 940c 0000 	JMP  0x00
000084 940c 0000 	JMP  0x00
000086 940c 0000 	JMP  0x00
000088 940c 0000 	JMP  0x00
00008a 940c 0000 	JMP  0x00
00008c 940c 0000 	JMP  0x00
00008e 940c 0000 	JMP  0x00
000090 940c 0000 	JMP  0x00
000092 940c 0000 	JMP  0x00
000094 940c 0000 	JMP  0x00
000096 940c 0000 	JMP  0x00
000098 940c 0000 	JMP  0x00
00009a 940c 0000 	JMP  0x00
00009c 940c 0000 	JMP  0x00
00009e 940c 0000 	JMP  0x00
0000a0 940c 0000 	JMP  0x00
0000a2 940c 0000 	JMP  0x00
0000a4 940c 0000 	JMP  0x00
0000a6 940c 0000 	JMP  0x00
0000a8 940c 0000 	JMP  0x00
0000aa 940c 0000 	JMP  0x00
0000ac 940c 0000 	JMP  0x00
0000ae 940c 0000 	JMP  0x00
0000b0 940c 0000 	JMP  0x00
0000b2 940c 0000 	JMP  0x00
0000b4 940c 0000 	JMP  0x00
0000b6 940c 0000 	JMP  0x00
0000b8 940c 0000 	JMP  0x00
0000ba 940c 0000 	JMP  0x00
0000bc 940c 0000 	JMP  0x00
0000be 940c 0000 	JMP  0x00
0000c0 940c 0000 	JMP  0x00
0000c2 940c 0000 	JMP  0x00
0000c4 940c 0000 	JMP  0x00
0000c6 940c 0000 	JMP  0x00
0000c8 940c 0000 	JMP  0x00
0000ca 940c 0000 	JMP  0x00
0000cc 940c 0000 	JMP  0x00
0000ce 940c 0000 	JMP  0x00
0000d0 940c 0000 	JMP  0x00
0000d2 940c 0000 	JMP  0x00
0000d4 940c 0000 	JMP  0x00
0000d6 940c 0000 	JMP  0x00
0000d8 940c 0000 	JMP  0x00
0000da 940c 0000 	JMP  0x00
0000dc 940c 0000 	JMP  0x00
0000de 940c 0000 	JMP  0x00
0000e0 940c 0000 	JMP  0x00
0000e2 940c 0000 	JMP  0x00
0000e4 940c 0000 	JMP  0x00
0000e6 940c 0000 	JMP  0x00
0000e8 940c 0000 	JMP  0x00
0000ea 940c 0000 	JMP  0x00
0000ec 940c 0000 	JMP  0x00
0000ee 940c 0000 	JMP  0x00
0000f0 940c 0000 	JMP  0x00
0000f2 940c 0000 	JMP  0x00
0000f4 940c 0000 	JMP  0x00
0000f6 940c 0000 	JMP  0x00
0000f8 940c 0000 	JMP  0x00
0000fa 940c 0000 	JMP  0x00
0000fc 940c 0000 	JMP  0x00
                 
                 __RESET:
0000fe 94f8      	CLI
0000ff 27ee      	CLR  R30
                 
                 ;MEMORY MAPPED EEPROM ACCESS IS USED
000100 91f0 01cc 	LDS  R31,NVM_CTRLB
000102 60f8      	ORI  R31,0x08
000103 93f0 01cc 	STS  NVM_CTRLB,R31
                 
                 ;INTERRUPT VECTORS ARE PLACED
                 ;AT THE START OF FLASH
000105 edf8      	LDI  R31,0xD8
000106 bff4      	OUT  CCP,R31
000107 93e0 00a2 	STS  PMIC_CTRL,R30
                 
                 ;CLEAR SRAM
000109 e080      	LDI  R24,LOW(__CLEAR_SRAM_SIZE)
00010a e290      	LDI  R25,HIGH(__CLEAR_SRAM_SIZE)
00010b e0a0      	LDI  R26,LOW(__SRAM_START)
00010c e2b0      	LDI  R27,HIGH(__SRAM_START)
                 __CLEAR_SRAM:
00010d 93ed      	ST   X+,R30
00010e 9701      	SBIW R24,1
00010f f7e9      	BRNE __CLEAR_SRAM
                 
000110 bf8b      	OUT  RAMPZ,R24
                 
                 ;GPIO0-GPIO15 INITIALIZATION
000111 e0e0      	LDI  R30,__GPIO0_INIT
000112 b9e0      	OUT  GPIO0,R30
                 	;__GPIO1_INIT = __GPIO0_INIT
000113 b9e1      	OUT  GPIO1,R30
                 	;__GPIO2_INIT = __GPIO0_INIT
000114 b9e2      	OUT  GPIO2,R30
                 	;__GPIO3_INIT = __GPIO0_INIT
000115 b9e3      	OUT  GPIO3,R30
                 	;__GPIO4_INIT = __GPIO0_INIT
000116 b9e4      	OUT  GPIO4,R30
                 	;__GPIO5_INIT = __GPIO0_INIT
000117 b9e5      	OUT  GPIO5,R30
                 	;__GPIO6_INIT = __GPIO0_INIT
000118 b9e6      	OUT  GPIO6,R30
                 	;__GPIO7_INIT = __GPIO0_INIT
000119 b9e7      	OUT  GPIO7,R30
                 	;__GPIO8_INIT = __GPIO0_INIT
00011a b9e8      	OUT  GPIO8,R30
                 	;__GPIO9_INIT = __GPIO0_INIT
00011b b9e9      	OUT  GPIO9,R30
                 	;__GPIO10_INIT = __GPIO0_INIT
00011c b9ea      	OUT  GPIO10,R30
                 	;__GPIO11_INIT = __GPIO0_INIT
00011d b9eb      	OUT  GPIO11,R30
                 	;__GPIO12_INIT = __GPIO0_INIT
00011e b9ec      	OUT  GPIO12,R30
                 	;__GPIO13_INIT = __GPIO0_INIT
00011f b9ed      	OUT  GPIO13,R30
                 	;__GPIO14_INIT = __GPIO0_INIT
000120 b9ee      	OUT  GPIO14,R30
                 	;__GPIO15_INIT = __GPIO0_INIT
000121 b9ef      	OUT  GPIO15,R30
                 
                 ;HARDWARE STACK POINTER INITIALIZATION
000122 efef      	LDI  R30,LOW(__SRAM_END-__HEAP_SIZE)
000123 bfed      	OUT  SPL,R30
000124 e3ef      	LDI  R30,HIGH(__SRAM_END-__HEAP_SIZE)
000125 bfee      	OUT  SPH,R30
                 
                 ;DATA STACK POINTER INITIALIZATION
000126 e0c0      	LDI  R28,LOW(__SRAM_START+__DSTACK_SIZE)
000127 e3d0      	LDI  R29,HIGH(__SRAM_START+__DSTACK_SIZE)
                 
000128 940c 012a 	JMP  _main
                 
                 	.ESEG
                 	.ORG 0x00
                 
                 	.DSEG
                 	.ORG 0x3000
                 
                 	.CSEG
                 ;void main(void)
                 ; 0000 001C {
                 
                 	.CSEG
                 _main:
                 ; .FSTART _main
                 ; 0000 001D // Pin0: Output
                 ; 0000 001E PORTA.DIRSET=1<<0;
00012a e0e1      	LDI  R30,LOW(1)
00012b 93e0 0601 	STS  1537,R30
                 ; 0000 001F 
                 ; 0000 0020 while (1)
                 _0x3:
                 ; 0000 0021 {
                 ; 0000 0022 PORTA.OUTTGL=1<<0;
00012d e0e1      	LDI  R30,LOW(1)
00012e 93e0 0607 	STS  1543,R30
                 ; 0000 0023 delay_ms(500);
000130 efa4      	LDI  R26,LOW(500)
000131 e0b1      	LDI  R27,HIGH(500)
000132 940e 0136 	CALL _delay_ms
                 ; 0000 0024 }
000134 cff8      	RJMP _0x3
                 ; 0000 0025 }
                 _0x6:
000135 cfff      	RJMP _0x6
                 ; .FEND
                 
                 	.CSEG
                 ;RUNTIME LIBRARY
                 
                 	.CSEG
                 _delay_ms:
000136 9610      	adiw r26,0
000137 f039      	breq __delay_ms1
                 __delay_ms0:
000138 95a8      	wdr
                +
000139 ef84     +LDI R24 , LOW ( 0x1F4 )
00013a e091     +LDI R25 , HIGH ( 0x1F4 )
                +__DELAY_USW_LOOP :
00013b 9701     +SBIW R24 , 1
00013c f7f1     +BRNE __DELAY_USW_LOOP
                 	__DELAY_USW 0x1F4
00013d 9711      	sbiw r26,1
00013e f7c9      	brne __delay_ms0
                 __delay_ms1:
00013f 9508      	ret
                 
                 ;END OF CODE MARKER
                 __END_OF_CODE:


RESOURCE USE INFORMATION
------------------------

Notice:
The register and instruction counts are symbol table hit counts,
and hence implicitly used resources are not counted, eg, the
'lpm' instruction without operands implicitly uses r0 and z,
none of which are counted.

x,y,z are separate entities in the symbol table and are
counted separately from r26..r31 here.

.dseg memory usage only counts static data declared with .byte

ATxmega128A4U register use summary:
r0 :   0 r1 :   0 r2 :   0 r3 :   0 r4 :   0 r5 :   0 r6 :   0 r7 :   0 
r8 :   0 r9 :   0 r10:   0 r11:   0 r12:   0 r13:   0 r14:   0 r15:   0 
r16:   0 r17:   0 r18:   0 r19:   0 r20:   0 r21:   0 r22:   0 r23:   0 
r24:   5 r25:   2 r26:   4 r27:   2 r28:   1 r29:   1 r30:  28 r31:   5 
x  :   1 y  :   0 z  :   0 
Registers used: 9 out of 35 (25.7%)

ATxmega128A4U instruction use summary:
.lds  :   0 .lds.l:   0 .sts  :   0 .sts.l:   0 adc   :   0 add   :   0 
adiw  :   1 and   :   0 andi  :   0 asr   :   0 bclr  :   0 bld   :   0 
brbc  :   0 brbs  :   0 brcc  :   0 brcs  :   0 break :   0 breq  :   1 
brge  :   0 brhc  :   0 brhs  :   0 brid  :   0 brie  :   0 brlo  :   0 
brlt  :   0 brmi  :   0 brne  :   3 brpl  :   0 brsh  :   0 brtc  :   0 
brts  :   0 brvc  :   0 brvs  :   0 bset  :   0 bst   :   0 call  :   1 
cbi   :   0 cbr   :   0 clc   :   0 clh   :   0 cli   :   1 cln   :   0 
clr   :   1 cls   :   0 clt   :   0 clv   :   0 clz   :   0 com   :   0 
cp    :   0 cpc   :   0 cpi   :   0 cpse  :   0 dec   :   0 des   :   0 
eicall:   0 eijmp :   0 elpm  :   0 eor   :   0 fmul  :   0 fmuls :   0 
fmulsu:   0 icall :   0 ijmp  :   0 in    :   0 inc   :   0 jmp   : 128 
ld    :   0 ldd   :   0 ldi   :  16 lds   :   1 lpm   :   0 lsl   :   0 
lsr   :   0 mov   :   0 movw  :   0 mul   :   0 muls  :   0 mulsu :   0 
neg   :   0 nop   :   0 or    :   0 ori   :   1 out   :  20 pop   :   0 
push  :   0 rcall :   0 ret   :   1 reti  :   0 rjmp  :   2 rol   :   0 
ror   :   0 sbc   :   0 sbci  :   0 sbi   :   0 sbic  :   0 sbis  :   0 
sbiw  :   3 sbr   :   0 sbrc  :   0 sbrs  :   0 sec   :   0 seh   :   0 
sei   :   0 sen   :   0 ser   :   0 ses   :   0 set   :   0 sev   :   0 
sez   :   0 sleep :   0 spm   :   0 st    :   1 std   :   0 sts   :   4 
sub   :   0 subi  :   0 swap  :   0 tst   :   0 wdr   :   1 
Instructions used: 17 out of 119 (14.3%)

ATxmega128A4U memory use summary [bytes]:
Segment   Begin    End      Code   Data   Used    Size   Use%
---------------------------------------------------------------
[.cseg] 0x000000 0x000280    640      0    640  139264   0.5%
[.dseg] 0x002000 0x003000      0      0      0    8192   0.0%
[.eseg] 0x000000 0x000000      0      0      0    2048   0.0%

Assembly complete, 0 errors, 0 warnings
