#SingleInstance
GroupAdd, Warframe, ahk_exe Warframe.exe

global break_loop = 0

LButton::
Loop {
	SetMouseDelay 100
	Click
	If (GetKeyState("LButton","P")=0)
	Break
}



BreakLoop() {
	break_loop = 1
	Return
}

InfinteSkill(key) {
	
	break_loop = 0
	
	while (break_loop = 0) {

		Send , { %key% down}
		Sleep 1000
		Send , { %key% up}
	    Sleep 1000
	}
	Return
}



^e::
	BreakLoop()
Return

^1::
	InfinteSkill(1)
Return

^2::
	InfinteSkill(2)
Return

^3::
	InfinteSkill(3)
Return

^4::
	InfinteSkill(4)
Return
