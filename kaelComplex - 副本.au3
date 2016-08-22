#cs ----------------------------------------------------------------------------
;this is for meepo.

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <AutoItConstants.au3>
; Script Start - Add your code below here
;HotKeySet("q",m0);
HotKeySet("{Esc}",myend);
HotKeySet("{F5}",mystart);
HotKeySet("{F6}",mystart1);
HotKeySet("{F7}",mypause);



Global $t=0;

Func mystart()
	printf("starting...");
	Sleep(500);
	printf("");
	startTimer(15300);
$t=0;
EndFunc

Func mystart1()
	printf("starting...");
	Sleep(500);
	printf("");
	$t=1;
	startTimer(15300);

EndFunc

;A Simple Timer.
;startTimer(2000);
Global $isTimerEnd=False;
Func startTimer($everyS)
	$isTimerEnd=False;
	Local $s=TimerInit();
	Local $diff=0;
	Local $count=0;
	While Not $isTimerEnd
		$diff=Int(TimerDiff($s));
		While $count*$everyS<$diff
			timerListener($count);
			$count=$count+1;
		WEnd
		Sleep(10);
	WEnd
EndFunc
Func endTimer()
	$isTimerEnd=True;
EndFunc
;;end Simple Timer.

Func mypause()
$isTimerEnd=True;
printf("pausing...");
Sleep(1000);
printf("");
EndFunc


Func timerListener($c)
	;invokeSeq($c);

	Send("eerg");
	If $t=1 Then
	Send("eee");
Else
	Send("rrr");
EndIf

	Sleep(200);
	Send("tt");
EndFunc


;2345876,10,9,1-1,7,2,3,6,8,-1,7,1,10-1,-1,67
Func invokeSeq($c)
	Local $size=24;
	Local $seq[]=[1,2,3,4,6,7,5,8,9,0,-1,7,1,2,5,6,-1,7,9,8,-1,-1,5,7];
	invoke($seq[Mod($c,$size)]);
EndFunc


Func printf($s)
	ToolTip($s,0,0);
EndFunc

#cs
HotKeySet("1",m1);

HotKeySet("2",m2);
HotKeySet("3",m3);
HotKeySet("4",m4);
HotKeySet("5",m5);
HotKeySet("6",m6);
HotKeySet("7",m7);
HotKeySet("8",m8);
HotKeySet("9",m9);
#ce


Local $isEnd=False;

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
	invoke($seq1[$i]);
	Sleep(1600)
Next
Sleep(5500);
	For $i=0 to $numSeq2-1
	invoke($seq2[$i]);
	Sleep(1600);
	Next
	Sleep(7500);
WEnd

EndFunc

Func m1()
invoke(1);
EndFunc

Func m2()
invoke(2);
EndFunc

Func m3()
invoke(3);
EndFunc

Func m4()
invoke(4);
EndFunc

Func m5()
invoke(5);
EndFunc

Func m6()
invoke(6);
EndFunc

Func m7()
invoke(7);

EndFunc

Func m8()
invoke(8);
EndFunc

Func m9()
invoke(9);
EndFunc



	Func invoke($which)
		Switch $which
			case 0
				send("wwe");//ying shen.
			Case 1
				send("eew");
			Case 2
				send("eee");ci bao.
			case 3
				send("rre");yung si
			case 4
				send("rew");tui bo
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
				return;
		EndSwitch

		Switch $which
			case 0
				Send("g");
				Sleep(250);
				send("t");
			case 7
				Send("g");
				Sleep(250);
				send("tt");

				Send("geee");
				case 8
					Send("g");
				Sleep(250);
				send("t");

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
	printf("exiting....");
Sleep(500);
printf("");

Exit

	EndFunc
While Not $isEnd
WEnd