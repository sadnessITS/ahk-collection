#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+SPACE:: Winset, Alwaysontop, , A

#+x::
ifWinExist, ahk_class Notepad++
{
	IfWinActive, ahk_class Notepad++
	{
		WinMinimize
	}
	else
	{
		WinActivate
	}
}
else  
{
	Run, D:\Soft\Notepad++\notepad++.exe
	WinWait, ahk_class Notepad++
	WinActivate
}
Return

#+a::
ifWinExist, ahk_class EVERYTHING
{
	IfWinActive, ahk_class EVERYTHING
	{
		WinMinimize
	}
	else
	{
		WinActivate
	}
}
else  
{
	Run, C:\Program Files\Everything\Everything.exe
	WinWait, ahk_class EVERYTHING
	WinActivate
}
Return

#+d::
ifWinExist, ahk_exe Code.exe
{
	IfWinActive, ahk_exe Code.exe
	{
		WinMinimize
	}
	else
	{
		WinActivate
	}
}
else  
{
	Run, "C:\Users\sadnessITS\AppData\Local\Programs\Microsoft VS Code\Code.exe"
	WinWait, ahk_exe Code.exe
	WinActivate
}
Return

#+r::
ifWinExist, ahk_exe ConEmu64.exe
{
	IfWinActive, ahk_exe ConEmu64.exe
	{
		WinMinimize
	}
	else
	{
		WinActivate
	}
}
else  
{
	Run, "D:\Soft\cmder\Cmder.exe"
	WinWait, ahk_exe ConEmu64.exe
	WinActivate
}
Return