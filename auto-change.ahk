; Init
#NoEnv
#SingleInstance Force
Process, Priority, , High
SendMode Input
; /Init

F8::Suspend

NumpadAdd::
{
    Send {ALT DOWN}{TAB}{ALT UP}
    ;Suspend
    return
}