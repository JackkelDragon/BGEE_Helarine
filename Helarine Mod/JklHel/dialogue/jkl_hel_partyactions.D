BEGIN JKLHEL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY ~Excuse my abruptness, but would you be <CHARNAME>?~

	IF ~~ THEN REPLY ~That would be me. Why do you ask?~ 
		GOTO FirstMeeting_1

	IF ~~ THEN REPLY ~Who wants to know?~ 
		GOTO FirstMeeting_1

	IF ~~ THEN REPLY ~I don't know anyone by that name, sorry.~ 
		GOTO FirstMeeting_2

	END

IF ~~ THEN BEGIN FirstMeeting_1
SAY ~I should introduce myself. My name is Helarine, and I am a servant of the god Kelemvor. I've heard your name spring up within these walls over the past few days, and wondered if you desired a guardian should not all of them have good intentions.~

	IF ~~ THEN REPLY ~Who did you hear my name from?~ 
		GOTO FirstMeeting_3

	IF ~~ THEN REPLY ~I could use a cleric in my travels. What's your price?~ 
		GOTO FirstMeeting_4

	IF ~~ THEN REPLY ~I don't think it would be wise to associate with you.~ 
		GOTO FirstMeeting_5

	END

IF ~~ THEN BEGIN FirstMeeting_2
SAY ~I suspect you are hiding the truth from me, but that is your choice to make. I'll be here should you need a cleric of Kelemvor at your side.~ 
	IF ~~ EXIT
	END


IF ~~ THEN BEGIN FirstMeeting_3
SAY ~There are a pair of half-elves and a mage staying at the inn that have asked several travellers about your whereabouts. The half-elves seem to be a good sort, but I'm less certain about the intentions of the mage. Perhaps I'm reading too much into the situation, but I found it curious to hear such vivid descriptions of someone I hadn't seen in my time here.~

	IF ~~ THEN REPLY ~I won't refuse an offer of help in these times. You can come with me.~
		DO ~SetGlobal("JKLHELJoined","LOCALS",1) JoinParty() SetGlobal("JKLHELParty","LOCALS",1)~
		GOTO FirstMeeting_Join

	IF ~~ THEN REPLY ~I'm still not convinced. Perhaps another time.~ 
		GOTO FirstMeeting_End

	END

IF ~~ THEN BEGIN FirstMeeting_4
SAY ~I don't ask for coin for my services, though I would not object to payment. I've actually been hoping to find companions, since the iron shortage has made the roads dangerous to travel alone.~

	IF ~~ THEN REPLY ~I won't refuse an offer of help in these times. You can come with me.~ 
		DO ~SetGlobal("JKLHELJoined","LOCALS",1) JoinParty() SetGlobal("JKLHELParty","LOCALS",1)~
		GOTO FirstMeeting_Join

	IF ~~ THEN REPLY ~I'm still not convinced. Perhaps another time.~ 
		GOTO FirstMeeting_End

	END

IF ~~ THEN BEGIN FirstMeeting_5
SAY ~I will not force the matter upon you. Should you change your mind, I'll likely still be here.~
	IF ~~ EXIT
	END

IF ~~ THEN BEGIN FirstMeeting_Join
SAY ~I will serve you as dutifully as I serve Kelemvor. Within reasonable limits, of course. I'm ready to travel as soon as you are.~
	IF ~~ EXIT
	END

IF ~~ THEN BEGIN FirstMeeting_End
SAY ~That is your choice, then. I'll not likely move far from this inn without companions, so you'll know where to find me should you return.~
	IF ~~ EXIT
	END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SecondMeeting
SAY ~You've returned. As I attempted to explain to you before, I would be willing to offer you my services as a cleric of Kelemvor should you desire.~

	IF ~~ THEN REPLY ~I won't refuse an offer of help in these times. You can come with me.~ 
		DO ~SetGlobal("JKLHELJoined","LOCALS",1) JoinParty() SetGlobal("JKLHELParty","LOCALS",1)~
		GOTO FirstMeeting_Join

	IF ~~ THEN REPLY ~I'm still not convinced. Perhaps another time.~ 
		GOTO FirstMeeting_End

	END

// Party arbitration stuff

BEGIN JKLHELP

CHAIN
IF ~!Global("JKLHEL_Fired","GLOBAL",1)
!AreaCheck("AR2301")~
THEN JKLHELP LeaveParty
~I'll not remain if you feel I'm not needed... I'll return to the Friendly Arm Inn. If you need my help again, you may find me there.~
DO ~SetGlobal("JKLHEL_Fired","GLOBAL",1)
EscapeAreaMove("AR2301",755,390,SW)~ // copied from Neera, might need to get new coordinates
EXIT

CHAIN
IF ~!Global("JKLHEL_Fired","GLOBAL",1)
AreaCheck("AR2301")~
THEN JKLHELP LeaveParty
~I'll not remain if you feel I'm not needed... I'll return to the Friendly Arm Inn. If you need my help again, you may find me there.~
DO ~SetGlobal("JKLHEL_Fired","GLOBAL",1)
MoveToPoint([755.390])~
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