# Microsoft Developer Studio Project File - Name="SoF2cgame" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=SoF2cgame - Win32 SH Debug SoF2
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sof2_cgame.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sof2_cgame.mak" CFG="SoF2cgame - Win32 SH Debug SoF2"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SoF2cgame - Win32 Release SoF2" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "SoF2cgame - Win32 Debug SoF2" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "SoF2cgame - Win32 SH Debug SoF2" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "SoF2cgame___Win32_Release_TA"
# PROP BASE Intermediate_Dir "SoF2cgame___Win32_Release_TA"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "../Release"
# PROP Intermediate_Dir "..\Release/SoF2cgame"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /W4 /GX /O2 /D "WIN32" /D "NDebug SoF2" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /W4 /GX /Zi /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "MISSIONPACK" /D "_SOF2" /D "CGAME" /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDebug SoF2" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDebug SoF2" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDebug SoF2"
# ADD RSC /l 0x409 /d "NDebug SoF2"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /base:"0x30000000" /subsystem:windows /dll /map /machine:I386 /out:"../Release/SoF2cgamex86.dll"
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 /nologo /base:"0x30000000" /subsystem:windows /dll /map:"..\Release/sof2mp_cgamex86.map" /debug /machine:I386 /out:"../Release/sof2mp_cgamex86.dll"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "SoF2cgame___Win32_Debug_TA"
# PROP BASE Intermediate_Dir "SoF2cgame___Win32_Debug_TA"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\Debug"
# PROP Intermediate_Dir "..\Debug\SoF2cgame"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_Debug SoF2" /D "_WINDOWS" /FR /YX /FD /c
# ADD CPP /nologo /G5 /MTd /W4 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "MISSIONPACK" /D "_SOF2" /D "CGAME" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "_Debug SoF2" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_Debug SoF2" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_Debug SoF2"
# ADD RSC /l 0x409 /d "_Debug SoF2"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /base:"0x30000000" /subsystem:windows /dll /map /debug /machine:I386 /out:"..\Debug/SoF2cgamex86.dll"
# SUBTRACT BASE LINK32 /profile /nodefaultlib
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /base:"0x30000000" /subsystem:windows /dll /map:"..\Debug\sof2mp_cgamex86.map" /debug /machine:I386 /def:".\SoF2_cgame.def" /out:"..\Debug\sof2mp_cgamex86.dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "SoF2cgame___Win32_SH_Debug_SoF2"
# PROP BASE Intermediate_Dir "SoF2cgame___Win32_SH_Debug_SoF2"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "SoF2cgame___Win32_SH_Debug_SoF2"
# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /MTd /W4 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "MISSIONPACK" /D "_SOF2" /FR /YX /FD /c
# ADD CPP /nologo /G5 /MTd /W4 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "MISSIONPACK" /D "_SOF2" /D "MEM_DEBUG" /D "CGAME" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "_Debug SoF2" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_Debug SoF2" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_Debug SoF2"
# ADD RSC /l 0x409 /d "_Debug SoF2"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /base:"0x30000000" /subsystem:windows /dll /map:"..\Debug\sof2mp_cgamex86.map" /debug /machine:I386 /def:".\SoF2_cgame.def" /out:"..\Debug\sof2mp_cgamex86.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 /nologo /base:"0x30000000" /subsystem:windows /dll /pdb:"..\SHDebug/sof2mp_cgamex86.pdb" /map:"..\SHDebug\sof2mp_cgamex86.map" /debug /machine:I386 /def:".\SoF2_cgame.def" /out:"..\SHDebug\sof2mp_cgamex86.dll"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "SoF2cgame - Win32 Release SoF2"
# Name "SoF2cgame - Win32 Debug SoF2"
# Name "SoF2cgame - Win32 SH Debug SoF2"
# Begin Group "Source Files"

# PROP Default_Filter "c"
# Begin Source File

SOURCE=..\game\bg_gametype.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_lib.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP BASE Exclude_From_Build 1
# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_misc.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_player.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_pmove.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_slidemove.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\bg_weapons.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_consolecmds.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_draw.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_drawtools.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_effects.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_ents.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_event.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_gametype.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_gore.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_info.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_light.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_localents.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_main.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_miscents.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_newDraw.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_players.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_playerstate.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_predict.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_scoreboard.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_servercmds.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_snapshot.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_syscalls.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_view.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_weaponinit.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\cg_weapons.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\q_math.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\game\q_shared.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\ui\ui_shared.c

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP Intermediate_Dir "..\SHDebug\SoF2cgame"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\animtable.h
# End Source File
# Begin Source File

SOURCE=..\game\bg_local.h
# End Source File
# Begin Source File

SOURCE=..\game\bg_public.h
# End Source File
# Begin Source File

SOURCE=..\game\bg_weapons.h
# End Source File
# Begin Source File

SOURCE=.\cg_lights.h
# End Source File
# Begin Source File

SOURCE=.\cg_local.h
# End Source File
# Begin Source File

SOURCE=.\cg_public.h
# End Source File
# Begin Source File

SOURCE=..\qcommon\disablewarnings.h
# End Source File
# Begin Source File

SOURCE=..\ghoul2\G2.h
# End Source File
# Begin Source File

SOURCE=..\ghoul2\G2_gore_shared.h
# End Source File
# Begin Source File

SOURCE=..\game\g_local.h
# End Source File
# Begin Source File

SOURCE=..\game\g_public.h
# End Source File
# Begin Source File

SOURCE=..\game\g_team.h
# End Source File
# Begin Source File

SOURCE=..\ui\keycodes.h
# End Source File
# Begin Source File

SOURCE=..\..\ui\menudef.h
# End Source File
# Begin Source File

SOURCE=..\game\q_shared.h
# End Source File
# Begin Source File

SOURCE=..\game\surfaceflags.h
# End Source File
# Begin Source File

SOURCE=..\qcommon\tags.h
# End Source File
# Begin Source File

SOURCE=.\tr_types.h
# End Source File
# Begin Source File

SOURCE=..\ui\ui_shared.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\cgame.bat
# End Source File
# Begin Source File

SOURCE=.\cgame.q3asm
# End Source File
# Begin Source File

SOURCE=.\SoF2_cgame.def

!IF  "$(CFG)" == "SoF2cgame - Win32 Release SoF2"

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 Debug SoF2"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "SoF2cgame - Win32 SH Debug SoF2"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Target
# End Project
