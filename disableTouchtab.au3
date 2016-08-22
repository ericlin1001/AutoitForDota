#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <AutoItConstants.au3>
; Script Start - Add your code below here
click(27,750)
click(308, 448)
$h=WinWait("控制面板")
WinMove($h,"",0,0);

click(332, 322);

click(435, 136);

$h2=WinWait("鼠标 属性");
WinMove($h2,"",0,0);


click(310, 47);
click(298, 206);
Send("{ENTER}");
click(258, 410);
WinClose($h2);
WinClose($h);
WinClose("控制面板");
Func click($x,$y)



MouseClick( $MOUSE_CLICK_LEFT ,$x,$y);
EndFunc
