
CoordMode, pixel,screen
CoordMode, mouse,Screen

Loop
{
 
 MouseGetPos,Fx,Fy
 PixelGetColor,color, %Fx%, %Fy%,RGB
 Red := HexToDec(SubStr(color,3,2))
 Green := HexToDec(SubStr(color,5,2))
 Blue := HexToDec(SubStr(color,7,2))


 ToolTip, X : %Fx%  Y : %Fy%`nColor : %color%`nR : %Red% | G : %Green% | B : %Blue%

}
return


HexToDec(Hex)
{
	if (InStr(Hex, "0x") != 1)
		Hex := "0x" Hex
	return, Hex + 0
}

F1::
Cx:=Fx
Cy:=Fy
return

F2::
send,%Cx%.%Cy%
return

F12::
ExitApp
return

F11::
reload
return