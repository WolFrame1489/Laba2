
{REDUND_ERROR} FUNCTION_BLOCK FBGate (*����� ����*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		s0 : BOOL; (*����� ��������*)
		s1 : BOOL;
		s2 : BOOL;
		s3 : BOOL;
	END_VAR
	VAR_OUTPUT
		S0 : BOOL; (*������ ��������*)
		S1 : BOOL;
		S2 : BOOL;
		S3 : BOOL;
		Speed : UDINT;
	END_VAR
	VAR
		State : GateState;
		direction : USINT;
		DriveBlk : FBX64Inverter;
	END_VAR
END_FUNCTION_BLOCK
