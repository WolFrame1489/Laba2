
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{

}

void _CYCLIC ProgramCyclic(void)
{
    if (s0 == 1)
		sc0 = !sc0;	
	if (s1 == 1)
		sc1 = !sc1;
	if (s2 == 1)
		sc2 = !sc2;
	if (s3 == 1)
		sc3 = !sc3;
}

void _EXIT ProgramExit(void)
{

}

