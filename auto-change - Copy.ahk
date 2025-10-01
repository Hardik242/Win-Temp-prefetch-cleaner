#SingleInstance
ProcessSetPriority("High")
SendMode "Input"

global isSpacePermit := false

^F8:: global isSpacePermit := !isSpacePermit

#SuspendExempt
F8:: Suspend

#SuspendExempt false
NumpadAdd::
{
    if isSpacePermit {
        Send("{Space}")
        Sleep(70)
        Send("{Alt Down}{Tab}{Alt Up}")
        Sleep(70)
        Send("{Space}")
    }
    else {
        Send("{Alt Down}{Tab}{Alt Up}")
    }

    KeyWait("NumpadAdd")
}
