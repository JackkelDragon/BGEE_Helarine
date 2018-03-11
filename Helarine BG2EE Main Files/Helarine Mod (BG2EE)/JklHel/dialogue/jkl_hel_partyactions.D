BEGIN JKLHEL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY ~Oh, you were there? My aplogies, I didn't see you approach. I was lost in thought.~

	IF ~~ THEN REPLY ~Why are you lost in thought?~ 
		GOTO FirstMeeting_1

	IF ~~ THEN REPLY ~Helarine, is that you?~ 
		GOTO FirstMeeting_2

	END

IF ~~ THEN BEGIN FirstMeeting_1
SAY ~I suppose I should explain. My name is Helarine, and I am a servant of Kelemvor.~

	IF ~~ THEN GOTO FirstMeeting_3

	END

IF ~~ THEN BEGIN FirstMeeting_2
SAY ~Hmm..? CHARNAME? I didn't expect to see you here. You've expanded your travels, I gather.~ 
	IF ~~ THEN GOTO FirstMeeting_3
	END

CHAIN
IF ~~ THEN JKLHEL FirstMeeting_3
~I was sent here to Amn to meet with a fellow Doomguide at Tradesmeet. However, he was dead by the time I arrived. Killed in some recent conflict near that town.~
=~He was brought here for burial, since he was born in Athkatla. I barely managed to arrive in time for the funeral.~
=~So I was thinking on death... about how it can claim us so unexpectedly.~
=~But I'm sure you aren't here to listen to that. If you wish, I could travel with you. I have a particular interest in seeing what has happened to Tradesmeet, but it is nothing urgent.~
END

	++ ~I was looking for help, actually. You can come with me.~ + FirstMeeting_Join
	++ ~I have no need for a Doomguide right now.~ + FirstMeeting_End

CHAIN
IF ~~ THEN JKLHEL FirstMeeting_Join
~I will serve you as well as I can, within reasonable limits. I'm ready to travel immediately.~
	DO ~SetGlobal("JKLHELJoined","LOCALS",1) JoinParty() SetGlobal("JKLHELParty","LOCALS",1)~
	EXIT

CHAIN
IF ~~ THEN JKLHEL FirstMeeting_End
~As you wish. I'll be at the Copper Coronet if you need me. I have some time before I'm needed elsewhere.~
	EXIT

// Party arbitration stuff

BEGIN JKLHELP

CHAIN
IF ~!Global("JKLHEL_Fired","GLOBAL",1)
!AreaCheck("AR0406")~
THEN JKLHELP LeaveParty
~I'll not remain if you feel I'm not needed... I'll return to the Copper Coronet. If you need my help again, you may find me there.~
DO ~SetGlobal("JKLHEL_Fired","GLOBAL",1)
EscapeAreaMove("AR0406",1352,1748,SW)~ // copied from Neera, might need to get new coordinates
EXIT

CHAIN
IF ~!Global("JKLHEL_Fired","GLOBAL",1)
AreaCheck("AR0406")~
THEN JKLHELP LeaveParty
~I'll not remain if you feel I'm not needed... I'll return to the Copper Coronet. If you need my help again, you may find me there.~
DO ~SetGlobal("JKLHEL_Fired","GLOBAL",1)
MoveToPoint([1352.1748])~
EXIT

CHAIN
IF ~Global("JKLHEL_Fired","GLOBAL",1)~
THEN JKLHELP Return
~It's good to see you again. Do you need my assistance once more, or are you just passing by?~
END

++ ~We could use your help again.~ + Return2
++ ~The latter. Goodbye.~ EXIT

CHAIN
IF ~~
THEN JKLHELP Return2
~Then let us continue as we were.~
DO ~SetGlobal("JKLHEL_Fired","GLOBAL",0)
JoinParty()~
EXIT