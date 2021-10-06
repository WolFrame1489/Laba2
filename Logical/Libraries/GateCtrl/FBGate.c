
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "GateCtrl.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FBGate(struct FBGate* inst)
{
	switch (inst->State) {
		case ST_INIT: //Инициализация параметров и ожидание включения частотного преобразователя
			inst->State = ST_UNKNOWN;
			inst->S0 = 0;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			break;
		case ST_UNKNOWN: //Ворота в неизвестном положении
			if ((inst->direction == 0) && (inst->s0 == 0)){
			inst->State = ST_OPEN;
			}
			if ((inst->direction == 1) && (inst->s0 == 1)){
				inst->State = ST_CLOSE;
			}
			break;
		case ST_OPEN: //ворота открыты 
			inst->DriveBlk.enable = 0;
			inst->S0 = 0;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 0;
			if (inst->direction == 0){
				inst->State = ST_ACC_POS;
			}
			break;
		case ST_CLOSE: //Ворота закрыты 
			inst->DriveBlk.enable = 0;
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 1;
			inst->Speed = 0;
			if (inst->direction == 1){
				inst->State = ST_NEG_ACC;
			}
			break;
		case ST_ACC_POS: //Ускорение ворот в строну открытия
			inst->DriveBlk.enable = 1;
			inst->S0 = 1;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 100;
			if (inst->s1){
				inst->State = ST_POS;
			}
			if (inst->direction == 1) {
				inst->State = ST_NEG_ACC;
			}	
			break;
		case ST_NEG_ACC://Ускорение в строну закрытия
			inst->DriveBlk.enable = 1;
			inst->Speed = -100;
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 0;
			if (inst->s2){
				inst->State = ST_NEG;
			}
			break;
		case ST_NEG: //Двиежние в сторону закрытия 
			inst->Speed = -300;
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 0;
			inst->S3 = 0;
			if (inst->s1){
				inst->State = ST_DEC_NEG;
			}
			
			break;
		case ST_DEC_NEG: //Замедление ворот в сторону закрытия
			inst->Speed = -100;
			inst->S0 = 1;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			if (inst->s0){
				inst->State = ST_OPEN;
			}
			break;
		case ST_DEC_POS: //Замедление ворот в сторону закрытия
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 0;
			inst->Speed = 100;
			if (inst->s3){
				inst->State = ST_CLOSE;
			}
			break;
		case ST_POS: //Ускорение ворот в строну открытия
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 300;
			if (inst->s2){
				inst->State = ST_DEC_POS;
			}
			if (inst->direction == 1) {
				inst->State = ST_NEG;
			}
			break;
	}
}
