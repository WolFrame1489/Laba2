
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	Open  = 0;
	Close = 0;
}

void _CYCLIC ProgramCyclic(void)
{
	Speed = DoorBlock.Speed;
	DoorBlock.DriveBlk.ETAD_Input = ETAD;
	CMD = DoorBlock.DriveBlk.CMDD_Output;
	if (Open == 1){
		DoorBlock.direction = 1;
	}
	if (Close == 1) {
		DoorBlock.direction = 0;
	}
	FBGate(&DoorBlock);
	if ((DoorBlock.State == ST_OPEN) || (DoorBlock.State == ST_CLOSE)){
		Open  = 0;
		Close = 0;
	}
	s0 = DoorBlock.S0;
	s1 = DoorBlock.S1;
	s2 = DoorBlock.S2;
	s3 = DoorBlock.S3;
	
}

void _EXIT ProgramExit(void)
{

}

