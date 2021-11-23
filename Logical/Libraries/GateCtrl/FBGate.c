
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
		case ST_INIT: //Èíèöèàëèçàöèÿ ïàðàìåòðîâ è îæèäàíèå âêëþ÷åíèÿ ÷àñòîòíîãî ïðåîáðàçîâàòåëÿ
			inst->State = ST_UNKNOWN;
			inst->S0 = 0;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			break;
		case ST_UNKNOWN: //Âîðîòà â íåèçâåñòíîì ïîëîæåíèè
			if ((inst->direction == 0) && (inst->s0 == 0)){
			inst->State = ST_OPEN;
			}
			if ((inst->direction == 1) && (inst->s0 == 1)){
				inst->State = ST_CLOSE;
			}
			break;
		case ST_OPEN: //âîðîòà îòêðûòû 
			inst->DriveBlk.enable = 0;
			FBX64Inverter(&inst->DriveBlk);
			inst->S0 = 0;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 0;
			FBX64Inverter(&inst->DriveBlk);
			if (inst->direction == 1){
				inst->State = ST_ACC_POS;
			}
			break;
		case ST_CLOSE: //Âîðîòà çàêðûòû 
			inst->DriveBlk.enable = 0;
			FBX64Inverter(&inst->DriveBlk);
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 1;
			inst->Speed = 0;
			FBX64Inverter(&inst->DriveBlk);
			if (inst->direction == 0){
				inst->State = ST_NEG_ACC;
			}
			break;
		case ST_ACC_POS: //Óñêîðåíèå âîðîò â ñòðîíó îòêðûòèÿ
			inst->DriveBlk.enable = 1;
			inst->S0 = 1;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 100;
			FBX64Inverter(&inst->DriveBlk);
			if (inst->s1){
				inst->State = ST_POS;
			}
			if (inst->direction == 0) {
				inst->State = ST_NEG_ACC;
			}	
			break;
		case ST_NEG_ACC://Óñêîðåíèå â ñòðîíó çàêðûòèÿ
			inst->DriveBlk.enable = 1;
			FBX64Inverter(&inst->DriveBlk);
			inst->Speed = -100;
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 0;
			if (!inst->s2){
				inst->State = ST_NEG;
			}
			break;
		case ST_NEG: //Äâèåæíèå â ñòîðîíó çàêðûòèÿ 
			inst->Speed = -300;
			FBX64Inverter(&inst->DriveBlk);
			inst->S0 = 1;
			inst->S1 = 1;
			inst->S2 = 0;
			inst->S3 = 0;
			if (!inst->s1){
				inst->State = ST_DEC_NEG;
			}
			
			break;
		case ST_DEC_NEG: //Çàìåäëåíèå âîðîò â ñòîðîíó çàêðûòèÿ
			inst->Speed = -100;
			FBX64Inverter(&inst->DriveBlk);
			inst->S0 = 1;
			inst->S1 = 0;
			inst->S2 = 0;
			inst->S3 = 0;
			if (!inst->s0){
				inst->State = ST_OPEN;
			}
			break;
		case ST_DEC_POS: //Çàìåäëåíèå âîðîò â ñòîðîíó çàêðûòèÿ
			inst->S0 = 1;
			FBX64Inverter(&inst->DriveBlk);
			inst->S1 = 1;
			inst->S2 = 1;
			inst->S3 = 0;
			inst->Speed = 100;
			if (inst->s3){
				inst->State = ST_CLOSE;
			}
			break;
		case ST_POS: //Óñêîðåíèå âîðîò â ñòðîíó îòêðûòèÿ
			inst->S0 = 1;
			FBX64Inverter(&inst->DriveBlk);
			inst->S1 = 1;
			inst->S2 = 0;
			inst->S3 = 0;
			inst->Speed = 300;
			if (inst->s2){
				inst->State = ST_DEC_POS;
			}
			if (inst->direction == 0) {
				inst->State = ST_NEG;
			}
			break;
	}
}
