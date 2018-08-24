#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.;
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Noted Commands
; Send command to window/application
; Send control, control name, keys, window title, window text
;ControlSend, , {Space}, ahk_class iTunes

;; iTunes Controls

; Play/Pause
F8::
Send, {Media_Play_Pause}
Return

; Next
F9::
Send, {Media_Next}
Return

; Previous
F7::
Send, {Media_Prev}
Return


;; General Controls
; Sleep Screen on F15 
Pause::
; Run "C:\Windows\nircmd.exe" cmdwait 1000 monitor off
DllCall("user32.dll\LockWorkStation")
Return

; Minimize Active Window
^h::
WinMinimize, A
Return