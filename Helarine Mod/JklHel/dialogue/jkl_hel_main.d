BEGIN JKLHELJ // need this for some reason

// Death Talk 1
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_track","GLOBAL",2)
Global("JKL_Helarine_ReadytoTalk","GLOBAL",1)~
THEN JKLHELJ DeathTalk1
~If I may ask, <CHARNAME>, what inspired you to face this iron crisis? Most don't have your initiative and are willing to wait and hope it sorts itself out.~
DO ~SetGlobal("JKL_Helarine_BG1_track","GLOBAL",3)
SetGlobal("JKL_Helarine_ReadytoTalk","GLOBAL",0)
RealSetGlobalTimer("JKL_Helarine_BG1_track_timer","GLOBAL",1800)~
END

++ ~I didn't ask for this responsibility. It fell upon me when my foster father was killed on the road from Candlekeep.~ + DeathTalk1-1
++ ~Someone had to take action. It might as well be me.~ + DeathTalk1-3
++ ~I decided it was time to strike out on my own and make my mark on the Sword Coast.~ + DeathTalk1-2

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-1
~That sounds tragic, but such things seem to happen in times like these. I hope that his soul is at peace now.~
END

IF ~~ THEN GOTO DeathTalk1-4

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-2
~So this adventure is for personal glory? It certainly is the climate that could create a hero.~
END

IF ~~ THEN GOTO DeathTalk1-4

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-3
~I suspect many would find it admirable that you thought that way.~
END

IF ~~ THEN GOTO DeathTalk1-4

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-4
~You've set out on a difficult road, <CHARNAME>. Kelemvor may well be seeing one or more of this company before the end of your task. I wonder: are you prepared to watch friends and allies die? Are you prepared to die yourself?~
END

++ ~I plan on keeping as many of my allies alive as possible.~ + DeathTalk1-5
++ ~Few people are prepared to die. I doubt we'll know whether I'm ready until death comes for me.~ + DeathTalk1-6
++ ~If my allies fall, they have failed me. There is no reason to mourn weakness.~ + DeathTalk1-7


CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-5
~That doesn't answer my question, though I believe I can read an answer into your unwillingness to answer.~
END

IF ~~ THEN GOTO DeathTalk1-8

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-6
~Wisely put. I expected a more definate answer, but I should expect one unaccustomed to death to avoid answering such a question until they know what they speak of.~
END

IF ~~ THEN GOTO DeathTalk1-8

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-7
~That is a callous attitude, and you may wish to conceal it from your other allies. Few will accept you as leader if you air such opinions.~
END

IF ~~ THEN GOTO DeathTalk1-8

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-8
~Death is something I am familiar with... and I know that death always accompanies times such as this.~
END

++ ~What makes you say that?~ + DeathTalk1-9
++ ~Are you speaking from experience?~ + DeathTalk1-10
++ ~Indeed it will, if anyone is foolhardy enough to cross me.~ + DeathTalk1-11


CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-9
~You've studied the Time of Troubles, have you not? You may have been young, but it occurred only a decade or so ago.~
END

IF ~~ THEN GOTO DeathTalk1-12

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-10
~You could say that... I witnessed the Time of Troubles firsthand. Not all of us were cloistered in Candlekeep for the past decade or so.~
END

IF ~~ THEN GOTO DeathTalk1-12

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-11
~It's exactly that kind of attitude that prevailed during the Time of Troubles. I suppose recent history may not be a favorite of Candlekeep's monks?~
END

IF ~~ THEN GOTO DeathTalk1-12

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-12
~Those days saw conflict and change, and not even gods were safe from death. Ironically, the gods associated with death before that time all fell, leaving Cyric as god of the dead.~
END

++ ~Isn't Kelemvor the god of the dead?~ + DeathTalk1-13
++ ~What's your point?~ + DeathTalk1-14
++ ~I'm growing tired of this conversation.~ + DeathTalk1-15

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-13
~He is, but his ascension to godhood wasn't until a few years ago, after the chaos of the Time of Troubles.~
END

IF ~~ THEN GOTO DeathTalk1-16

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-14
~Death comes to everyone, without exception.~
END

IF ~~ THEN GOTO DeathTalk1-16

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-15
~I'm clearly rambling, then. I'll try to finish quickly.~
END

IF ~~ THEN GOTO DeathTalk1-16

CHAIN
IF ~~
THEN JKLHELJ DeathTalk1-16
~I feel I've been unclear... I only mean to make sure you understand that death will be a fact of life for you from now on.~
=~Perhaps I've overstepped my boundries. I apologize. You'll understand what I meant to tell you soon enough.~
EXIT

// Death Talk 2
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_track","GLOBAL",4)
Global("JKL_Helarine_ReadytoTalk","GLOBAL",1)~
THEN JKLHELJ DeathTalk2
~Do you ever regret your actions, <CHARNAME>?~
DO ~SetGlobal("JKL_Helarine_BG1_track","GLOBAL",5)
SetGlobal("JKL_Helarine_ReadytoTalk","GLOBAL",0)
RealSetGlobalTimer("JKL_Helarine_BG1_track_timer","GLOBAL",1800)~
END

++ ~Sometimes. Do you have something specific in mind?~ + DeathTalk2-1
++ ~What made you bring this up?~ + DeathTalk2-1
++ ~Why would I regret anything I've done?~ + DeathTalk2-2

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-1
~We've travelled the Sword Coast for some time now, and many have died at your hand or those of your companions.~
END

IF ~~ THEN GOTO DeathTalk2-3

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-2
~One who doesn't feel regret doesn't learn from their failures. But what I mean is that we've killed a lot of people across the Sword Coast.~
END

IF ~~ THEN GOTO DeathTalk2-3

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-3
~While I doubt we'd see eye-to-eye with many of our foes, they had lives just as we do. And now those lives have been extinguised.~
END

++ ~Sometimes I feel surprised at myself. I was never this violent back at Candlekeep.~ + DeathTalk2-4
++ ~We fight in self-defense and for a greater good, it's not us who should have heavy hearts.~ + DeathTalk2-5
++ ~They stood between us and our goals. I won't mourn fools.~ + DeathTalk2-6

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-4
~I'm not surprised that you've changed. The Sword Coast isn't quite as safe as your home in Candlekeep.~
END

IF ~~ THEN GOTO DeathTalk2-7

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-5
~You may think those noble causes, but to others it will seem a justification.~
END

IF ~~ THEN GOTO DeathTalk2-7

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-6
~Seeing your enemies as little more than obstacles and fools will only fuel future violence and death.~
END

IF ~~ THEN GOTO DeathTalk2-7

CHAIN
IF ~~
THEN JKLHELJ DeathTalk2-7
~This iron crisis has made people desperate. More and more are turning to violence to survive.~
=~We'll be seeing much more death before this is over... so I want you to remember that while we may kill to survive, we must show the proper respect for death.~
END

++ ~I didn't plan on desecrating any of our fallen enemies.~ + DeathTalk2-8
++ ~I'm not sure I follow you...~ + DeathTalk2-9
++ ~I don't like being preached to.~ + DeathTalk2-10

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-8
~That's not what I meant, though respecting the dead does show reverance for death itself.~
END

IF ~~ THEN GOTO DeathTalk2-11

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-9
~I'll try to elaborate, then. I didn't mean to confuse you.~
END

IF ~~ THEN GOTO DeathTalk2-11


CHAIN
IF~~
THEN JKLHELJ DeathTalk2-10
~I'm not trying to upset you, only make you understand what you've gotten yourself into.~
END

IF ~~ THEN GOTO DeathTalk2-11

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-11
~What I mean to say is that, while death will follow us, do not allow yourself to become desensitized to it.~
=~Death is a transition from one life to another... but when its effect is devalued or embraced many suffer from its misuse.~
END

++ ~I'll keep that in mind.~ + DeathTalk2-12
++ ~You spend a lot of time thinking about death, it seems.~ + DeathTalk2-13
++ ~Are you getting to your point anytime soon, or should I just start ignoring you?~ + DeathTalk2-14

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-12
~That's all I can ask.~
EXIT

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-13
~I've had a lot of time to ponder death, and many reasons to do so. But I think I've said enough for the time being.~
EXIT

CHAIN
IF~~
THEN JKLHELJ DeathTalk2-14
~I'm finished. Continue as you will.~
EXIT

// Death Talk 3
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_track","GLOBAL",6)
Global("JKL_Helarine_ReadytoTalk","GLOBAL",1)~
THEN JKLHELJ DeathTalk3
~We've seen a great deal of danger since we've met, <CHARNAME>. Have you ever been afraid that you might not make it through the next battle?~
DO ~SetGlobal("JKL_Helarine_BG1_track","GLOBAL",7)
SetGlobal("JKL_Helarine_ReadytoTalk","GLOBAL",0)
RealSetGlobalTimer("JKL_Helarine_BG1_track_timer","GLOBAL",1800)~
END

++ ~I do feel a bit frightened at times, but I try to keep calm during battle.~ + DeathTalk3-1
++ ~I try not to think about what could happen.~ + DeathTalk3-2
++ ~I acknowledge the possibility of dying, but leave fear to the cowards.~ + DeathTalk3-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-1
~A sound plan. Panicking would probably only raise the chances of being killed.~
END

IF ~~ THEN GOTO DeathTalk3-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-2
~I suppose that could help overcome the fear during combat, but that sort of thinking seems short-sighted.~
END

IF ~~ THEN GOTO DeathTalk3-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-3
~Fear may be debilitating to many, but it is a natural reaction that has little to do with whether one is brave or cowardly.~
END

IF ~~ THEN GOTO DeathTalk3-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-4
~I've been watching the way you fight. There seems to be something fueling your ability to slay our foes. If it isn't a fear of dying, what could that motivation be?~
END

++ ~I'm honestly not sure what it could be.~ + DeathTalk3-5
IF ~ReputationLT(Player1,8)~ THEN REPLY ~I like to think I'm making the Sword Coast a safer place.~ + DeathTalk3-6 // low reputation version (need trigger!)
IF ~!ReputationLT(Player1,8)~ THEN REPLY ~I like to think I'm making the Sword Coast a safer place.~ + DeathTalk3-6 // med/high reputation version (need trigger!)
++ ~We live in a harsh world, if my travels are anything to go by. I'm just trying to get by.~ + DeathTalk3-8
++ ~I deserve respect, and that only seems to come from the slaying of monsters and men.~ + DeathTalk3-9
IF ~!Dead("NEERA") GlobalGT("NEERA_ROMANCE","GLOBAL",1)~ THEN REPLY ~I'm just trying to protect the people I care about.~ + DeathTalk3-10 // Neera version
IF ~!Dead("RASAAD") !GlobalGT("NEERA_ROMANCE","GLOBAL",1) GlobalGT("RASAAD_ROMANCE","GLOBAL",1)~ THEN REPLY ~I'm just trying to protect the people I care about.~ + DeathTalk3-10 // Rasaad version
//IF ~!Dead("DORN") !GlobalGT("NEERA_ROMANCE","GLOBAL",1) !GlobalGT("RASAAD_ROMANCE","GLOBAL",1) Global("DORN_ROMANCE_2","LOCALS",2)~ THEN REPLY ~I'm just trying to protect the people I care about.~ + DeathTalk3-10 // Dorn version

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-5
~Whatever drives you, it's made you an effective killer.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~~ // low rep version
THEN JKLHELJ DeathTalk3-6
~That sounds like a noble goal, but I wonder if others would agree with that claim. At any rate, you've become an effective killer in your travels.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~~ // high rep version
THEN JKLHELJ DeathTalk3-7
~Perhaps you are, although many wish that safety didn't exact so high a price in blood. At any rate, you've become an effective killer in your travels.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-8
~It's interesting that you feel that way, since most people aren't subjected to the traumas you've faced since leaving Candlekeep. It's clear that you've been shaped into a killer by your experience.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-9
~There are many who would disagree with you, but I can see why you might think that slaughter is the only road to respect. It certainly explains how you've become such an accomplished killer.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~GlobalGT("NEERA_ROMANCE","GLOBAL",1)~
THEN JKLHELJ DeathTalk3-10
~Do you mean Neera? While she is hunted by the Red Wizards, she isn't entirely defenseless on her own. Concern for her safety does explain why you have learned to kill so well, though.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~!GlobalGT("NEERA_ROMANCE","GLOBAL",1) GlobalGT("RASAAD_ROMANCE","GLOBAL",1)~
THEN JKLHELJ DeathTalk3-11
~If you're speaking of Rasaad, he's perfectly capable of defending himself. Your association with him might explain how you've become such a skilled killer, however.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~!GlobalGT("NEERA_ROMANCE","GLOBAL",1) !GlobalGT("RASAAD_ROMANCE","GLOBAL",1) Global("DORN_ROMANCE_2","LOCALS",2)~
THEN JKLHELJ DeathTalk3-12
~If anyone is capable of handling things on their own, it would be Dorn. While I doubt you are really concerned for his well-being, his influence may well have shaped you into the killer you've become.~
END

IF ~~ THEN GOTO DeathTalk3-13

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-13
~For whatever reason, it feels as though there's more to your gift for killing than what one might suspect. Maybe it's just my imagination... I'm been exposed to a number of murderers in my lifetime and might have generalized the signs too freely.~
END

++ ~Why did you know so many murderers?~ + DeathTalk3-14
++ ~I'd rather not talk about murder right now...~ + DeathTalk3-15
++ ~Could we talk about this some other time?~ + DeathTalk3-16

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-14
~It's a long story, and not one I'd like to relate right now. Perhaps some other time. For now, let's move on.~
EXIT

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-15
~I can understand that. Let's move on.~
EXIT

CHAIN
IF~~
THEN JKLHELJ DeathTalk3-16
~Of course, I didn't mean to take up too much of your time. Let's move on.~
EXIT

// Death Talk 4 (always after bandit camp or later)
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_story1","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",3)~
THEN JKLHELJ DeathTalk4
~Something about you makes me feel uneasy, <CHARNAME>. You managed to survive facing an entire bandit camp with only a small company of allies... not only survive but kill the leaders of the bandits.~
DO ~SetGlobal("JKL_Helarine_BG1_story1","GLOBAL",1)~
END

++ ~I'm a bit surprised myself. I never thought I'd best a few dozen bandits with so little help.~ + DeathTalk4-1
++ ~I feel far more powerful than I was back in Candlekeep... it's like something inside me was finally set free.~ + DeathTalk4-2


CHAIN
IF~~
THEN JKLHELJ DeathTalk4-1
~Exactly... there are, of course, others that might have been able to do what you have. But they all have years if not decades of experience. In all my days of adventuring, I have never seen such a growth in power as I see you now.~
END

IF ~~ THEN GOTO DeathTalk4-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-2
~I'm not sure if this hidden power should be set free. I'm sure others could have done what you have... but they all have years of experience. In all my days of adventuring, I have never seen such a growth in power as I see you now.~
END

IF ~~ THEN GOTO DeathTalk4-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-3
~This surge of power worries me. I feel like I've seen a similar growth before... during a period of training I underwent fifteen years ago.~
END

++ ~Was this when you first became a cleric?~ + DeathTalk4-4
++ ~What kind of training would involve such a change in one's ability?~ + DeathTalk4-5
++ ~Tell me more about this training... I want to know how to keep this going.~ + DeathTalk4-6

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-4
~Yes. While training as an acolyte, I was asked to kill an enemy that threatened my mentor. This enemy had minions, and so I had to elminate a number of them to reach my target.~
END

IF ~~ THEN GOTO DeathTalk4-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-5
~A violent kind of training. While training as an acolyte, I was asked to kill an enemy that threatened my mentor. This enemy had minions, and so I had to elminate a number of them to reach my target.~
END

IF ~~ THEN GOTO DeathTalk4-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-6
~I can't say how to maintain this growth, only when I felt it before. While training as an acolyte, I was asked to kill an enemy that threatened my mentor. This enemy had minions, and so I had to elminate a number of them to reach my target.~
END

IF ~~ THEN GOTO DeathTalk4-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-7
~With each kill, I felt a surge of power... like a gift representing approval. By the time I had my mentor's enemy at my mercy, I felt like I could take on an army without aid.~
END

++ ~What god did you worship that required such slaughter?~ + DeathTalk4-8
++ ~And yet you don't have this power now... why is that?~ + DeathTalk4-9

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-8
~It... would be better for you not to know. What matters is that I don't have this power any longer.~
END

IF ~~ THEN GOTO DeathTalk4-10

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-9
~It faded once I returned to my more mundane training... whatever entity granted me the power felt I no longer needed it, I assume.~
END

IF ~~ THEN GOTO DeathTalk4-10

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-10
~I don't know if my temporary gift is at all related to your sudden growth... in fact, I don't believe it's even possible for the two to be connected... but whatever the source there is a common goal in this power: death.~
END

++ ~Is it possible that Kelemvor has granted me power? He is the god of the dead, after all.~ + DeathTalk4-11
++ ~I suppose I should be careful, then. I don't want this power getting out of control.~ + DeathTalk4-12
++ ~Whatever this power is, I intend to keep it as long as I can.~ + DeathTalk4-13

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-11
~No... this power is nothing like Kelemvor's blessings. It revels in death... its source is likely far more sinister.~
END

IF ~~ THEN GOTO DeathTalk4-14

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-12
~That would be wise. This power revels in death... its source is certainly sinister in nature.~
END

IF ~~ THEN GOTO DeathTalk4-14

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-13
~You may wish to reconsider... this power revels in death. I'm certain that it originated in a sinister source.~
END

IF ~~ THEN GOTO DeathTalk4-14

CHAIN
IF~~
THEN JKLHELJ DeathTalk4-14
~Excuse me... there is something I have to contemplate. Be wary of your new power, as I'm sure it hasn't been granted for the sake of good deeds.~
EXIT

// Death Talk 5 (always after BG enter or later)
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_story2","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",4)~
THEN JKLHELJ DeathTalk5
~<CHARNAME>, do you fear death? I'm sure I asked this before, but this time I mean a permanent death... where nothing of you remains.~
DO ~SetGlobal("JKL_Helarine_BG1_story2","GLOBAL",1)~
END

++ ~What brought this on? Is there something wrong?~ + DeathTalk5-1
++ ~What sort of power could end someone's existance entirely?~ + DeathTalk5-2
++ ~Are you trying to frighten me? Get to the point.~ + DeathTalk5-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-1
~There is something wrong... I've remembered another time I witness someone gaining as much power as you have in a short time.~
END

IF ~~ THEN GOTO DeathTalk5-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-2
~If my memory isn't decieving me, your power can end a life forever. I've remembered another time I witness someone gaining as much power as you have in a short time.~
END

IF ~~ THEN GOTO DeathTalk5-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-3
~I'm not trying to frighten you, only warn you of something. I've remembered another time I witness someone gaining as much power as you have in a short time.~
END

IF ~~ THEN GOTO DeathTalk5-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-4
~About... seven years ago I travelled with a young man, barely more than a boy. I was training him as an acolyte for the god I once followed... though I expected my efforts to be in vain, as that god had been killed during the Time of Troubles.~
=~I was... excited when he manifested the power of my god. I thought that perhaps the god had simply been in hiding, and had chosen this boy to return to power.~
=~The boy grew immensly powerful in a matter of months... he was the perfect killer by the end of the year. But worshippers of Cyric discovered him and eventually overwhelmed him.~
=~As I crept away from the carnage to avoid a similar fate, I looked back... to see the boy disintegrate into ashes that in turn faded away.~
END

++ ~That sounds like a horrible price for power...~ + DeathTalk5-5
++ ~Isn't there magic to bring back those who die in such terrible ways?~ + DeathTalk5-6
++ ~The boy should have known better than to reveal his power. It's wasted on the dead.~ + DeathTalk5-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-5
~It's even more horrifying to witness... especially if you had pinned all your hopes on the person who faded away.~
END

IF ~~ THEN GOTO DeathTalk5-8

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-6
~There may be, but there are only a scant few people in the realms capable of such feats... the boy in my story is almost certainly gone forever.~
END

IF ~~ THEN GOTO DeathTalk5-8

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-7
~Such power is dangerous even among the living. But I agree with you in one respect... if there is no way to rid yourself of this power, it is best kept hidden.~
END

IF ~~ THEN GOTO DeathTalk5-8

CHAIN
IF~~
THEN JKLHELJ DeathTalk5-8
~Your power feels much like the one that infused the boy I trained all those years ago... if it comes from the same source, it's entirely possible that you'll fade away forever once you die.~
=~I can't ask you to be any more careful than you have been so far... but keep in mind that power like yours always comes with a price.~
EXIT

// Death Talk 6 (always after CK bhaal reveal or later)
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_story3","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",5)
Global("JKLHEL_BhaalReveal","GLOBAL",1)~
THEN JKLHELJ DeathTalk6
~I shouldn't have doubted. I should have known better... I should have... damn!~
DO ~SetGlobal("JKL_Helarine_BG1_story3","GLOBAL",1)
SetGlobal("JKLHEL_BhaalReveal","GLOBAL",2)~
END

++ ~Helarine, this is hardly the time to break down! What's gotten into you?~ + DeathTalk6-1
++ ~What shouldn't you have doubted? What are you sobbing about?~ + DeathTalk6-1

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-1
~Your power... it was so familiar to me because it's the same power I was trained to use so many years ago. The power of Bhaal.~
END

++ ~We couldn't have known that I was the <SONDAUGHTER> of Bhaal, Helarine.~ + DeathTalk6-2
++ ~That's it? Get a hold of yourself, Helarine. We have more pressing troubles!~ + DeathTalk6-2

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-2
~You don't understand, <CHARNAME>. I don't expect you to. You haven't died in the name of a dead god.~
END

++ ~Hold on, what are you saying?~ + DeathTalk6-3
++ ~What have you been hiding from me?~ + DeathTalk6-3
++ ~Out with it! I deserve to know why this is such a problem for you.~ + DeathTalk6-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-3
~During the Time of Troubles, my parents, priests of Bhaal, were killed by followers of Cyric after Bhaal's death. I barely escaped the attack, and only because no one recognized me as an acolyte of Bhaal.~
=~For years after the Time of Troubles, I hunted down and murdered worshippers of Cyric, praying that if I did enough damage to his followers that other supporters of Bhaal would try to resurrect him to punish Cyric for murdering him.~
=~I met another of your kind, a son of Bhaal, and I thought he would bring about Bhaal's rebirth... but then Cyric's followers stole that from me as well.~
END

++ ~I don't understand. You said you died, but you're still here.~ + DeathTalk6-4
++ ~Get to the point, Helarine! You claimed you died for Bhaal, why do you still draw breath?~ + DeathTalk6-4

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-4
~With the son of Bhaal dead and gone, I became desperate. I killed more than I needed to, and eventually I picked a target far beyond my means.~
=~This was almost two years ago, when Kelemvor took on the mantle of god of the dead. The priest I had set out to kill had converted to Kelemvor, and was powerful enough to kill me with a single spell.~
=~In the Fugue Plane, I was terrified of my judgement. My god was dead, there was no place for me but the Wall of the Faithless. In desperation, I offered prayer to Kelemvor.~
=~Kelemvor must have communicated with the priest I had tried to kill, because I was raised from the dead by that very woman. That is how I came to serve Kelemvor.~
END

++ ~That still doesn't explain why you nearly broke down just now.~ + DeathTalk6-5
++ ~A fine story, but I want to know why you can't get a hold of yourself.~ + DeathTalk6-5

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-5
~Don't you understand? I spent ten years killing for a dead god, and I finally am given the chance to redeem myself. Now... everything I've tried to forsake is incarnate in you! How can you not understand why I might be upset?!~
END

++ ~Helarine, this isn't as bad as it looks. I'm not Bhaal. We need you to keep your head until we get out of here, then we can talk.~ + DeathTalk6-6
++ ~We don't have time for this, Helarine! Pull yourself together unless you want to be left behind.~ + DeathTalk6-6

CHAIN
IF~~
THEN JKLHELJ DeathTalk6-6
~I... you're right, I'm overreacting. Give me a moment to... calm down. We... no. I don't want to talk about this. I have to deal with this on my own. Lead... lead on.~
EXIT

// Death Talk 7 (4th friendship track convo)
CHAIN
IF ~
InParty("JKLHEL")
Global("JKL_Helarine_BG1_track","GLOBAL",8)
Global("JKL_Helarine_ReadytoTalk","GLOBAL",1)~
THEN JKLHELJ DeathTalk7
~<CHARNAME>, I'm curious about something. What do you plan to do once this iron crisis is dealt with?~
DO ~SetGlobal("JKL_Helarine_BG1_track","GLOBAL",9)
SetGlobal("JKL_Helarine_ReadytoTalk","GLOBAL",0)~
END

++ ~Is that a trick question?...~ + DeathTalk7-1
++ ~I haven't given it much thought yet.~ + DeathTalk7-2
++ ~I've been too busy with my adventures to consider that.~ + DeathTalk7-2

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-1
~No, not a trick question. I'm just curious. You don't strike me as the type to settle down... I figure you'll continue to travel even after the iron crisis has been dealt with.~
END

++ ~What do you plan to do once this is over?~ + DeathTalk7-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-2
~I thought as much. You don't strike me as the type to settle down... I figure you'll continue to travel even after the iron crisis has been dealt with.~
END

++ ~What do you plan to do once this is over?~ + DeathTalk7-3

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-3
~I still have to check on someone I was supposed to meet in Daggerford, but after that I'm not sure. I've heard rumors that one of my order in someplace called Tradesmeet in Amn needed assistance... perhaps I'll head there next.~
END

++ ~I'll miss having you around. You've been a great help to this group.~ + DeathTalk7-4
++ ~I hope things in Tradesmeet aren't as hectic as they are here.~ + DeathTalk7-5
++ ~Seems fitting that you get sent on long journeys by your fellows. They must not be able to stand you for long.~ + DeathTalk7-6

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-4
~That's kind of you to say so. I'll probably miss the excitement of being at the heart of a crisis like this... but I won't miss the stress.~
END

IF ~~ THEN GOTO DeathTalk7-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-5
~I'm sure the city itself is fine... though perhaps that won't be the case when I arrive. I only hope the Doomguide staying there is still safe when I reach him.~
END

IF ~~ THEN GOTO DeathTalk7-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-6
~I'm going to pretend that's an insult to other Kelemvorites and not an insult meant for me. You may wish to watch your tongue when speaking to your other allies, <CHARNAME>.~
END

IF ~~ THEN GOTO DeathTalk7-7

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-7
~At any rate, we still have to find a way to end the Sword Coast's problems.~
END

IF ~Global("JKLHEL_BhaalReveal","GLOBAL",2)~ THEN REPLY ~If we foil Sarevok's plans, I'm sure the rest will sort itself out.~ + DeathTalk7-8
IF ~GlobalGT("CHAPTER","GLOBAL",3)~ THEN REPLY ~If we can find a way to stop the Iron Throne's plans, I'm sure the rest will sort itself out.~ + DeathTalk7-8
IF ~GlobalLT("CHAPTER","GLOBAL",4)~ THEN REPLY ~If we can figure out and stop whoever started this iron plague, I'm sure the rest will sort itself out.~ + DeathTalk7-8

CHAIN
IF~~
THEN JKLHELJ DeathTalk7-8
~I hope you're right. It would be a shame to make plans for what we'll do after this is all over then end up failing.~
=~I've taken enough of your time. Let's bring this iron crisis to an end. Everything dies eventually, after all, and this conflict will be no different.~
EXIT
