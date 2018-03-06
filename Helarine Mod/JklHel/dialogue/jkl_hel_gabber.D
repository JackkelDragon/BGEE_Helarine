APPEND JKLHELJ

IF ~IsGabber(Player1)
Global("JKL_Helarine_ReadytoTalk","GLOBAL",0)~ THEN BEGIN gabber
SAY ~(Helarine tilts her head in a silent question.)~

	IF ~Global("JKLHEL_historytalk","GLOBAL",0)~ THEN REPLY ~What did you do before I found you at the Friendly Arm Inn?~ GOTO JklHelHistory1
	IF ~Global("JKLHEL_historytalk","GLOBAL",1)~ THEN REPLY ~Kelemvor is a new god, right? What did you do before becoming a Doomguide?~ GOTO JklHelHistory2
	++ ~(Let her be.)~
	EXIT

	END

END

//------------------------------------

// History Talk (initial version)
CHAIN
IF ~~
THEN JKLHELJ JklHelHistory1
~As a Doomguide, it is my duty to ease the passing of those soon to die and comfort their friends and family. I was actually on my way to Daggerford for a funeral when the iron crisis began, and decided it would be better to wait out the problem instead of trying to travel to Daggerford alone. As you might have guessed, I've reconsidered and am taking a more active role in solving this problem.~
DO ~SetGlobal("JKLHEL_historytalk","GLOBAL",1)~
END

++ ~An interesting tale. We should be going, though.~ EXIT
++ ~I hope the funeral went well without you. Regardless, we should get back to it.~ EXIT
++ ~Your past doesn't seem as exciting as I thought it would. Oh well, let's get going.~ EXIT


// History Talk (second version)
CHAIN
IF ~~
THEN JKLHELJ JklHelHistory2
~That... is not something I like to dwell on. My life was not a pleasant one before Kelemvor attained divinity a year or so ago... In this case, you really are better off not knowing what I was. Nothing from my past will come to haunt us... but that's precisely why it's best you don't know. I know this sounds cryptic and evasive, but I really would rather leave my past behind.~
DO ~SetGlobal("JKLHEL_historytalk","GLOBAL",2)~
END

++ ~Alright, if it makes you that uncomfortable I'll drop the topic. Let's get going.~ EXIT
++ ~This past of yours better not hurt me in any way, or you'll regret it. I'll drop the subject... for now.~ EXIT
