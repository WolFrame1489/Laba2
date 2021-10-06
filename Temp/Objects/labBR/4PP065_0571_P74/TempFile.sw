<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.5.2.102?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="ncsdcctrl" Source="ncsdcctrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4" />
  <NcDataObjects>
    <NcDataObject Name="acp10etxen" Source="acp10etxen.dob" Memory="UserROM" Language="Ett" />
    <NcDataObject Name="gmcipvar" Source="GmcIpUserConfig.gmcipvar.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipfun" Source="GmcIpUserConfig.gmcipfun.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipfub" Source="GmcIpUserConfig.gmcipfub.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipubr" Source="GmcIpUserConfig.gmcipubr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipusm" Source="GmcIpUserConfig.gmcipusm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipui" Source="GmcIpUserConfig.gmcipui.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipus" Source="GmcIpUserConfig.gmcipus.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipuc" Source="GmcIpUserConfig.gmcipuc.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipsys" Source="GmcIpConfig.gmcipsys.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplbr" Source="GmcIpConfig.gmciplbr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcbr" Source="GmcIpConfig.gmcipcbr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplsm" Source="GmcIpConfig.gmciplsm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcsm" Source="GmcIpConfig.gmcipcsm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcfg" Source="GmcIpConfig.gmcipcfg.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipiec" Source="GmcIpConfig.gmcipiec.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplog" Source="GmcIpConfig.gmciplog.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipesm" Source="GmcIpConfig.gmcipesm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipmxd" Source="GmcIpConfig.gmcipmxd.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipmx" Source="GmcIpConfig.gmcipmx.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gAxis01a" Source="gAxis01obj.gAxis01a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis01i" Source="gAxis01obj.gAxis01i.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="gAxis02a" Source="gAxis02obj.gAxis02a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis02i" Source="gAxis02obj.gAxis02i.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="gAxis03a" Source="gAxis03obj.gAxis03a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis03i" Source="gAxis03obj.gAxis03i.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="gAxis04a" Source="gAxis04obj.gAxis04a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis04i" Source="gAxis04obj.gAxis04i.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="gAxis05a" Source="gAxis05obj.gAxis05a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis05i" Source="gAxis05obj.gAxis05i.dob" Memory="UserROM" Language="Ax" />
  </NcDataObjects>
  <Libraries>
    <LibraryObject Name="Acp10man" Source="Libraries.Acp10man.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10par" Source="Libraries.Acp10par.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NcGlobal" Source="Libraries.NcGlobal.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10sdc" Source="Libraries.Acp10sdc.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="Arnc0man" Source="Libraries.Arnc0man.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="DataObj" Source="Libraries.DataObj.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsArLog" Source="Libraries.AsArLog.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsArProf" Source="Libraries.AsArProf.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsMem" Source="Libraries.AsMem.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="Acp10_MC" Source="Libraries.Acp10_MC.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsBrStr" Source="Libraries.AsBrStr.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="X64Lib" Source="Libraries.X64Lib.lby" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <LibraryObject Name="GateCtrl" Source="Libraries.GateCtrl.lby" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </Libraries>
</SwConfiguration>