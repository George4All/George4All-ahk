#SingleInstance force
#InstallMouseHook
#InstallKeybdHook

timeline1 = 0x414141
timeline2 = 0x313131
timeline3 = 0x1b1b1b
timeline4 = 0x202020
timeline5 = 0xDFDFDF
timeline6 = 0xE4E4E4
timeline7 = 0xBEBEBE

Rbutton::
MouseGetPos X, Y
PixelGetColor colorr, %X%, %Y%, RGB
if (colorr = timeline5 || colorr = timeline6 || colorr = timeline7)
	send {ESC}
send ^!d
if (colorr = timeline1 || colorr = timeline2 || colorr = timeline3 || colorr = timeline4 || colorr = timeline5 || colorr = timeline6 || colorr = timeline7)
{
	click middle
	if GetKeyState("Rbutton", "P") = 1
		{
		loop
			{
			Send \ 
			sleep 16 
			if GetKeyState("Rbutton", "P") = 0
				{	
				tooltip,
				goto theEnd
				break
				}
			}
		}
	Send {escape}
}
else
	sendinput {Rbutton}
theEnd:
Return