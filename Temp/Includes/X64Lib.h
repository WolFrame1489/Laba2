/* Automation Studio generated header file */
/* Do not edit ! */
/* X64Lib  */

#ifndef _X64LIB_
#define _X64LIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct FBX64Inverter
{
	/* VAR_INPUT (analog) */
	unsigned short ETAD_Input;
	/* VAR_OUTPUT (analog) */
	unsigned short CMDD_Output;
	/* VAR_INPUT (digital) */
	plcbit enable;
} FBX64Inverter_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void FBX64Inverter(struct FBX64Inverter* inst);


#ifdef __cplusplus
};
#endif
#endif /* _X64LIB_ */

