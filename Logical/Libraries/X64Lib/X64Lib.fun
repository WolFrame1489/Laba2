(********************************************************************
 * COPYRIGHT -- Microsoft
 ********************************************************************
 * Library: X64Lib
 * File: X64Lib.fun
 * Author: chuh
 * Created: April 02, 2015
 ********************************************************************
 * Functions and function blocks of library X64Lib
 ********************************************************************)

FUNCTION_BLOCK FBX64Inverter (*X64 Acopos Inverter Control Lib*) (*$GROUP=User*)
	VAR_INPUT
		enable : BOOL;
		ETAD_Input : UINT;
	END_VAR
	VAR_OUTPUT
		CMDD_Output : UINT;
	END_VAR
	VAR
		sex : UINT;
	END_VAR
END_FUNCTION_BLOCK
