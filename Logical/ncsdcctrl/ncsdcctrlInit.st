
PROGRAM _INIT

(* ### BEGIN gAxis01 ### *)
      
(* initialize general interfaces *)
      gAxis01.size := gAxis01.size;
      gAxis01_HW.DrvIf_Typ := ncSDC_DRVSM16;
      brsstrcpy( ADR(gAxis01_HW.DrvIf_Name[0]), ADR('gAxis01_DrvIf') );
      gAxis01_HW.DiDoIf_Typ := ncSDC_DIDO;
      brsstrcpy( ADR(gAxis01_HW.DiDoIf_Name[0]), ADR('gAxis01_DiDoIf') );
      gAxis01_HW.EncIf1_Typ := ncSDC_ENC16;
      brsstrcpy( ADR(gAxis01_HW.EncIf1_Name[0]), ADR('gAxis01_EncIf1') );
      gAxis01_EncIf1.iLifeCnt := gAxis01_EncIf1.iLifeCnt;
      
(* initialize old-value for delta step calculation *)
      gAxis01_oSetPosOld := gAxis01_DrvIf.oSetPos;
       
(* ### END gAxis01 ### *)


(* ### BEGIN gAxis02 ### *)
      
(* initialize general interfaces *)
      gAxis02.size := gAxis02.size;
      gAxis02_HW.DrvIf_Typ := ncSDC_DRVSM16;
      brsstrcpy( ADR(gAxis02_HW.DrvIf_Name[0]), ADR('gAxis02_DrvIf') );
      gAxis02_HW.DiDoIf_Typ := ncSDC_DIDO;
      brsstrcpy( ADR(gAxis02_HW.DiDoIf_Name[0]), ADR('gAxis02_DiDoIf') );
      gAxis02_HW.EncIf1_Typ := ncSDC_ENC16;
      brsstrcpy( ADR(gAxis02_HW.EncIf1_Name[0]), ADR('gAxis02_EncIf1') );
      gAxis02_EncIf1.iLifeCnt := gAxis02_EncIf1.iLifeCnt;
      
(* initialize old-value for delta step calculation *)
      gAxis02_oSetPosOld := gAxis02_DrvIf.oSetPos;
       
(* ### END gAxis02 ### *)

        
(* ### BEGIN gAxis03 ### *)
        
(* initialize variables *)
        gAxis03_HW.DrvIf_Typ := ncSDC_DRVSERVO16;
        brsstrcpy(ADR(gAxis03_HW.DrvIf_Name[0]), ADR('gAxis03_DrvIf'));
        gAxis03_HW.DiDoIf_Typ := ncSDC_DIDO;
        brsstrcpy(ADR(gAxis03_HW.DiDoIf_Name[0]), ADR('gAxis03_DiDoIf'));
         
(* force variable offset generation *)
        gAxis03.size                      := gAxis03.size;
        gAxis03_DrvIf.iLifeCnt            := gAxis03_DrvIf.iLifeCnt;
        gAxis03_DiDoIf.iLifeCntDriveReady := gAxis03_DiDoIf.iLifeCntDriveReady;
        gAxis03_ModuleOk                  := gAxis03_ModuleOk;
         
(* assign your hardware inputs here*)
  
(*      gAxis03_DiDoIf.iPosHwEnd  := gAxis03_DiDoIf.iPosHwEnd;
        gAxis03_DiDoIf.iNegHwEnd  := gAxis03_DiDoIf.iNegHwEnd;
        gAxis03_DiDoIf.iReference := gAxis03_DiDoIf.iReference;
 *)
        
(* ### END gAxis03 ### *)


(* ### BEGIN gAxis04 ### *)
      
(* initialize general interfaces *)
      gAxis04.size := gAxis04.size;
      gAxis04_HW.DrvIf_Typ := ncSDC_DRVSM16;
      brsstrcpy( ADR(gAxis04_HW.DrvIf_Name[0]), ADR('gAxis04_DrvIf') );
      gAxis04_HW.DiDoIf_Typ := ncSDC_DIDO;
      brsstrcpy( ADR(gAxis04_HW.DiDoIf_Name[0]), ADR('gAxis04_DiDoIf') );
      gAxis04_HW.EncIf1_Typ := ncSDC_ENC16;
      brsstrcpy( ADR(gAxis04_HW.EncIf1_Name[0]), ADR('gAxis04_EncIf1') );
      gAxis04_EncIf1.iLifeCnt := gAxis04_EncIf1.iLifeCnt;
      
(* initialize old-value for delta step calculation *)
      gAxis04_oSetPosOld := gAxis04_DrvIf.oSetPos;
       
(* ### END gAxis04 ### *)


(* ### BEGIN gAxis05 ### *)
      
(* initialize general interfaces *)
      gAxis05.size := gAxis05.size;
      gAxis05_HW.DrvIf_Typ := ncSDC_DRVSM16;
      brsstrcpy( ADR(gAxis05_HW.DrvIf_Name[0]), ADR('gAxis05_DrvIf') );
      gAxis05_HW.DiDoIf_Typ := ncSDC_DIDO;
      brsstrcpy( ADR(gAxis05_HW.DiDoIf_Name[0]), ADR('gAxis05_DiDoIf') );
      gAxis05_HW.EncIf1_Typ := ncSDC_ENC16;
      brsstrcpy( ADR(gAxis05_HW.EncIf1_Name[0]), ADR('gAxis05_EncIf1') );
      gAxis05_EncIf1.iLifeCnt := gAxis05_EncIf1.iLifeCnt;
      
(* initialize old-value for delta step calculation *)
      gAxis05_oSetPosOld := gAxis05_DrvIf.oSetPos;
       
(* ### END gAxis05 ### *)

END_PROGRAM

