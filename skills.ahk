global break_loop = 0

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

BreakLoop() {
	break_loop = 1
}

InfinteSkill(key) {
	
	break_loop = 0
	
	while (break_loop = 0) {

		Send , { %key% down}
		Sleep 1000
		Send , { %key% up}
	    Sleep 1000
	}

}
