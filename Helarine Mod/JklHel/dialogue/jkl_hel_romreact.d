// Note: These conversations were cut and will be incorperated into Shadows of Amn

//---------------------------------------------

// Neera Romance Confrontation 
// Writer's note: the story Helarine tells here is about one of her murders before the Time of Troubles
CHAIN
IF ~
InParty("JKLHEL")
InParty("NEERA")
!Dead("NEERA")
GlobalGT("NEERA_ROMANCE", "GLOBAL",1)
Global("JKL_Helarine_NeeraRomance_conv1","GLOBAL",2)~
THEN JKLHELJ NeeraRomanceConv1
~<CHARNAME>, we need to talk about Neera.~
DO ~SetGlobal("JKL_Helarine_NeeraRomance_conv1","GLOBAL",3)~
END

++ ~Is there something wrong with her?~ + NeeraRomanceConv1-1
++ ~You don't have a problem with her, do you?~ + NeeraRomanceConv1-2
++ ~I'm not sure I like your tone.~ + NeeraRomanceConv1-3

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-1
~She's not injured beyond the ability to heal, but that's not what I mean to speak to you about.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-4

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-2
~I'm not opposed to her presence, but that's not what I mean to speak to you about.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-4

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-3
~I'm not trying to antagonize you. At least listen before you start judging.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-4

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-4
~It's not difficult to see that you have some measure of affection for Neera. I don't want to discourage that. But I want you to think about how this relationship can affect you.~
=~Did your foster father ever teach you about romantic relationships? I doubt Candlekeep had much to offer on the subject.~
END

++ ~Gorion told me stories about love, but didn't take much time to explain it to me.~ + NeeraRomanceConv1-5
++ ~You'd be surprised what some of the monks read behind closed doors, Helarine.~ + NeeraRomanceConv1-6
++ ~My relationship with Neera is none of your business.~ + NeeraRomanceConv1-7

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-5
~So then you are more than likely inexperienced in how love can affect someone.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-8

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-6
~Such frivolous things such as what you describe couldn't have taught you how romance can affect someone.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-8

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-7
~Perhaps it isn't, but before we continue I expect you to know how such relationships can affect people.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-8

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-8
~I knew a couple that was deeply in love. They pledged themselves to one another, promised to always be at the other's side. For a time, they were happy.~
=~One day, an assassin killed one of them while they were out running errands. The other waited for hours for her parnter's return, and only discovered the murder late in the night. What do you think this bereaved partner did?~
END

++ ~I suppose she'd prepare the body for the funeral.~ + NeeraRomanceConv1-9
++ ~She went after the killer, right?~ + NeeraRomanceConv1-9
++ ~She was probably involved, if she left her partner's side for that long after their promise.~ + NeeraRomanceConv1-9

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-9
~If it were so simple, I would not be telling this story.~
=~The day after the murder, the woman spent all of her money on spells from the local temple to raise her partner. None of them worked.~
=~Worry set in, and the woman turned to other sources to restore her dead partner, never once even suspecting that the assassin had trapped his soul.~
END

++ ~What happened next?~ + NeeraRomanceConv1-11
++ ~I don't see how this relates to my relationship with Neera.~ + NeeraRomanceConv1-10

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-10
~I'll explain in a moment, once the story is told.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-11

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-11
~The desperate woman continued to search for a way to bring back her dead partner. She spent nearly a year doing everything she could think of to restore his life. In the end, she destroyed herself trying to trade her life for her partner with a surge of wild magic.~
=~Now think of your relationship with Neera. What would you do if she died and nothing you did could bring her back?~
END

++ ~I'd have to move on, keeping her memory alive.~ + NeeraRomanceConv1-12
++ ~That won't happen.~ + NeeraRomanceConv1-13
++ ~I'd get over it.~ + NeeraRomanceConv1-14

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-12
~That certainly sounds well and good now, but would you really be able to let go?~
END

IF ~~ THEN GOTO NeeraRomanceConv1-15

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-13
~It WILL happen. Even if you both somehow survive all the trials life sends you, neither of you can live forever.~
END

IF ~~ THEN GOTO NeeraRomanceConv1-15

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-14
~Is that maturity, or callousness? Could you really let her go so easily?~
END

IF ~~ THEN GOTO NeeraRomanceConv1-15


CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-15
~And what of Neera? Her moods can be as wild as her magic. If she comes to care for you, would you be willing to accept that she might end up like the woman in my story?~
END

++ ~I thought Kelemvor taught people to embrace death. Why this speech?~ + NeeraRomanceConv1-16
++ ~I won't lose it if Neera dies, and she's mature enough to handle herself. Are we done here?~ + NeeraRomanceConv1-16

CHAIN
IF ~~
THEN JKLHELJ NeeraRomanceConv1-16
~I'm trying to ensure you understand that death must be accepted, especially when it cannot be reversed. Remember my story when you lose someone dear to you, lest your tale become a warning as well.~
=~I can tell you want nothing more to do with me right now. Just keep death in mind and learn not to fear it, and you won't need my moralizing.~
EXIT