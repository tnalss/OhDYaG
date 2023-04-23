
CoordMode, pixel,screen
CoordMode, mouse,Screen

Loop
{
 
 MouseGetPos,Fx,Fy
 PixelGetColor,color, %Fx%, %Fy%
 ToolTip, X : %Fx%  Y : %Fy%`nColor : %color%
}
return


F1::
Cx:=Fx
Cy:=Fy
return

F2::
send,%Cx%,%Cy%
return

F12::
ExitApp
return

F11::
reload
return