#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

Gui, add, Text,, Enter badge Nr:
Gui, Add, Edit, vbadge

Gui, add, Text,, Enter full name:
Gui, Add, Edit, vname

Gui, add, Text,, Enter callsign:
Gui, Add, Edit, vcallsign

Gui, add, Text,, Enter personnel file URL:
Gui, Add, Edit, w500 vperurl

Gui, add, Text,, Enter profile URL:
Gui, Add, Edit, w500 vprourl

Gui, add, Text,, Enter rank:
Gui, Add, ComboBox, vRank, Warden|Deputy Warden|Assistant Warden|Commander|Captain|Lieutenant|Sergeant|Corporal|Senior Correctional Officer|Correctional Officer III|Correctional Officer II|Correctional Officer I|Correctional Trainee

Gui, add, Text,, Enter direct supervisor:
Gui, Add, Edit, vdisupervisor

Gui, Add, Button, gSubmit, submit

Gui, Add, Button, gClear, Reload (clear)

Gui, Add, Text, xp yp+50 cBlue gLink1, Employee roster
Gui, Add, Text, xp yp+25 cBlue gLink2, Personnel files

Gui, Show, Autosize
return

Submit:
GuiControlGet, badge
GuiControlGet, name
GuiControlGet, callsign
GuiControlGet, perurl
GuiControlGet, prourl
GuiControlGet, rank
GuiControlGet, disupervisor
if (rank = "Warden"){
color = #F3b4ed
}
else if (rank = "Deputy Warden"){
color = #ec88e2
}
else if (rank = "Assistant Warden"){
color = #e55cd7
}
else if (rank = "Commander"){
color = #9477cb
}
else if (rank = "Captain"){
color = #b19cd9
}
else if (rank = "Lieutenant"){
color = #17ceef
}
else if (rank = "Sergeant"){
color = #5fddf3
}
else if (rank = "Corporal"){
color = #77e2f5
}
else if (rank = "Senior Correctional Officer"){
color = #6da879
}
else if (rank = "Correctional Officer III"){
color = #88d498
}
else if (rank = "Correctional Officer II"){
color = #88d498
}
else if (rank = "Correctional Officer I"){
color = #88d498
}
else if (rank = "Correctional Trainee"){
color = #efc7c2
}
else {
color = #ff0000
}
Result = [*][url=%prourl%]#%badge%[/url] - [%callsign%] - [b][color=%color%]%rank%[/color][/b] [url=%perurl%]%name%[/url] (%disupervisor%)
clipboard := Result
MsgBox The following has been copied to your clipboard:`n`n%Result%
return

Clear:
Reload

Link1:
  Run, https://gov.eclipse-rp.net/viewtopic.php?p=196037#p196037
Return

Link2:
  Run, https://gov.eclipse-rp.net/viewforum.php?f=732
Return

GuiClose:
ExitApp
