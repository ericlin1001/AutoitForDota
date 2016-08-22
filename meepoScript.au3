#cs ----------------------------------------------------------------------------
;this is for meepo.

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <AutoItConstants.au3>
; Script Start - Add your code below here
HotKeySet("q",m0);

HotKeySet("r",m1);//tabe,tabe,tab
HotKeySet("f",m4);//selecct 1,2,3
HotKeySet("t",mt);
HotKeySet("g",mg);
#cs

HotKeySet("4",m4);
HotKeySet("5",m5);
HotKeySet("6",m6);
HotKeySet("7",m7);
HotKeySet("8",m8);
HotKeySet("9",m9);
#ce

Local $isEnd=False;
HotKeySet("{Esc}",myend);
$w=0;//1
Local $numSeq1=11;
Local $numSeq2=10;

;　FZXCDBYTZgV-GFYZXCTZYgV-G
Local $seq1[]=[8,7,1,2,3,4,5,6,7,9,0];
Local $seq2[]=[8,5,7,1,2,6,7,5,9,0]

Func m0()
	send("2e");
	MouseClick( $MOUSE_CLICK_LEFT);

	send("{TAB}e");
	;Sleep(10);
	MouseClick( $MOUSE_CLICK_LEFT);

	send("{TAB}e");
	;Sleep(10);
	MouseClick( $MOUSE_CLICK_LEFT);

	send("{TAB}e");
	MouseClick( $MOUSE_CLICK_LEFT);

	;Sleep(10);
	send("1{SPACE}");
	MouseClick( $MOUSE_CLICK_LEFT);
EndFunc

Func m00()
While Not $isEnd
For $i=0 to $numSeq1-1
	$w=$seq1[$i];
	invoke();
	Sleep(1600)
Next
Sleep(5500);
	For $i=0 to $numSeq2-1
	$w=$seq2[$i];
	invoke();
	Sleep(1600);
	Next
	Sleep(7500);
WEnd

EndFunc

Func m1()
local $s=10
	send("{TAB}e");
	Sleep($s);
	MouseClick( $MOUSE_CLICK_LEFT);
	Sleep($s);
	send("{TAB}e");
	Sleep($s);
	MouseClick( $MOUSE_CLICK_LEFT);
	send("{TAB}");
EndFunc

Func m2()
send("3");
send("{TAB}e");
	;Sleep(10);
	MouseClick( $MOUSE_CLICK_LEFT);

	send("{TAB}e");
	MouseClick( $MOUSE_CLICK_LEFT);
EndFunc

Func m3()
send("4");
send("{TAB}e");
	;Sleep(10);
	MouseClick( $MOUSE_CLICK_LEFT);

	send("{TAB}e");
	MouseClick( $MOUSE_CLICK_LEFT);
EndFunc

Func m4()
send("5");
EndFunc

Func mt()
send("5");
EndFunc

Func mg()
send("6");
EndFunc


Func m5()
$w=5;
invoke();
EndFunc

Func m6()
$w=6;
invoke();
EndFunc

Func m7()
$w=7;
invoke();

EndFunc

Func m8()
$w=8;
invoke();
EndFunc

Func m9()
$w=9;
invoke();
EndFunc



	Func invoke()
		Switch $w
			case 0
				send("wwe");//ying shen.
			Case 1
				send("eew");
			Case 2
				send("eee");
			case 3
				send("rre");
			case 4
				send("rew");
			case 5
				send("www");//qqq
			case 6
				send("rrr");tian huo.
			case 7
				send("eer");//fast attack.
			case 8
				send("rrw");//huo ren.
			case 9 ;//bin qian.

				send("wwr");
			case Else

		EndSwitch
		Switch $w
			case 7 to 8
				;Send("g");
				;Sleep(150);
				;send("tt");

				Send("geee");
			case Else

			Send("geee");
				EndSwitch
	EndFunc

Func click($x,$y)



MouseClick( $MOUSE_CLICK_LEFT ,$x,$y);

EndFunc


Func myend()
	$isEnd=True;
Exit

	EndFunc
While Not $isEnd
WEnd