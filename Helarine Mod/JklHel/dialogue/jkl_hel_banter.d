BEGIN BJKLHEL

// Neera banter 1: elven ears
CHAIN
IF ~InParty("JKLHEL")
InParty("NEERA")
!Dead("JKLHEL")
!Dead("NEERA")
InteractingWith("NEERA")
Global("JKL_HelNeeraBanter1","GLOBAL",0)~
THEN BJKLHEL NeeraBanter1
~How many years do you think your magic has taken off your life, Neera?~
DO ~SetGlobal("JKL_HelNeeraBanter1","GLOBAL",1)~
== BNEERA ~Uh, is this a trick question? How would I know?~
== BJKLHEL ~I suppose elves have long lives, but I'd think that if your magic affected your age you'd still notice--~
== BNEERA ~I'm a half-elf! Why is it so hard for people to understand that?~
== BJKLHEL ~Oh... I see why I thought you were aging-- nevermind.~
= ~As for your question, it's probably the ears.~
== BNEERA ~Ugh. I hope the next wild surge gives me rounded ears.~
EXIT

// Neera romance banter 1: wall of the faithless
CHAIN
IF ~InParty("JKLHEL")
InParty("NEERA")
!Dead("JKLHEL")
!Dead("NEERA")
Global("JKL_HelNeeraRomanceBanter1","GLOBAL",0)
Global("JKL_HelNeeraBanter1","GLOBAL",1) // have to have chat about elf v half-elf
GlobalGT("NEERA_ROMANCE","GLOBAL",1)
InteractingWith("NEERA")~
THEN BJKLHEL NeeraRomanceBanter1
~What deity do you worship, Neera?~
DO ~SetGlobal("JKL_HelNeeraRomanceBanter1","GLOBAL",1)~
== BNEERA ~Huh?~
== BJKLHEL ~Your faith. The god you worship.~
== BNEERA ~Err... that's not really your business, is it?~
== BJKLHEL ~If you intend to spend more than a hundred years or so with <CHARNAME>, you may want to keep your faith in mind.~
== BNEERA ~Why, are you going to cut me off like a drunk if I spend too long with <CHARNAME> without praising the gods?~
== BJKLHEL ~If you die without faith in a god, you'll be lost to the Wall of the Faithless. I doubt <CHARNAME> would like that.~
== BNEERA ~Wow, you're moving right on into threats, huh? I think I'll go talk to <CHARNAME>. I doubt <HESHE> is going to hold some death god's punishment over my head.~
== BJKLHEL ~That could have gone better...~
EXIT

// Neera romance banter 2: wall revisted
CHAIN
IF ~InParty("JKLHEL")
InParty("NEERA")
!Dead("JKLHEL")
!Dead("NEERA")
Global("JKL_HelNeeraRomanceBanter2","GLOBAL",0)
Global("JKL_HelNeeraRomanceBanter1","GLOBAL",1)
GlobalGT("NEERA_ROMANCE","GLOBAL",1)
InteractingWith("JKLHEL")~
THEN BNEERA NeeraRomanceBanter2
~Uh... Helarine? About that wall with the long and scary name...~
DO ~SetGlobal("JKL_HelNeeraRomanceBanter2","GLOBAL",1)~
== BJKLHEL ~The Wall of the Faithless?~
== BNEERA ~Yeah, that. Has your god many any, uh... changes to the way it works that I should know about? Since he's new and all.~
== BJKLHEL ~Another priest of Kelemvor told me that our god intended to find an alternative to the Wall, but found none. I don't believe it's had any changes from Myrkul's time.~
== BNEERA ~Phew! That's a relief. No new rules to remember! In that case, I shouldn't need to worry about being melted into some sort of wall... thing.~
== BJKLHEL ~If this is about our last talk about the Wall, I apologize. Your faith and relationships are none of my business.~
== BNEERA ~I'll forgive you if you answer a question. Why are you so interested in me and <CHARNAME> and what happens to us after we die?~
== BJKLHEL ~I've seen many relationships torn apart by death in my time... I just thought I'd remind you of your mortality and how to ensure you earn an afterlife.~
== BNEERA ~Wow. I'm really glad I'm not you. It doesn't sound like you've had a very fun life.~
== BJKLHEL ~I suppose I haven't...~
EXIT

// Tiax banter 1: failure to communicate
CHAIN
IF ~InParty("JKLHEL")
InParty("TIAX")
!Dead("JKLHEL")
!Dead("TIAX")
Global("JKL_HelTiaxBanter1","GLOBAL",0)
InteractingWith("TIAX")~
THEN BJKLHEL TiaxBanter1
~Serving a deity known as the Prince of Lies, what makes you think that you'll be the one to rule should Cyric rise to greater power?~
DO ~SetGlobal("JKL_HelTiaxBanter1","GLOBAL",1)~
== BTIAX ~Tiax does not expect a dullard such as thyself to comprehend the nature of his schemes! When the time comes, Tiax will make you his slave, willing or not!~
== BJKLHEL ~Trying to communicate with you is useless. Why do I even make the attempt?~
EXIT

// Tiax banter 2: confrontation attempt
CHAIN
IF ~InParty("JKLHEL")
InParty("TIAX")
!Dead("JKLHEL")
!Dead("TIAX")
Global("JKL_HelTiaxBanter2","GLOBAL",0)
InteractingWith("TIAX")~
THEN BJKLHEL TiaxBanter2
~Tiax, we need to talk. I don't know if I can stand travelling with a follower of Cyric any longer.~
DO ~SetGlobal("JKL_HelTiaxBanter2","GLOBAL",1)~
== BTIAX ~Do not blaspheme against the glory of lord Cyric, or Tiax will ensure you even greater suffering on the day of his ascension!~
== BJKLHEL ~(Sigh.) If I didn't think <CHARNAME> had some reason to bring you along, I'd probably kill you where you stand.~
= ~If only to preserve my sanity...~
== BTIAX ~<CHARNAME> is a worthy pawn, and will be greatly rewarded upon my ascension! You, however, will be trampled underfoot like an ant!~
== BJKLHEL ~Forget it. Just don't touch me and I'll leave you alone.~
EXIT

// Branwen banter 1: deaths on the battlefield
CHAIN
IF ~InParty("JKLHEL")
InParty("BRANWEN")
!Dead("JKLHEL")
!Dead("BRANWEN")
Global("JKL_HelBranwenBanter1","GLOBAL",0)
InteractingWith("BRANWEN")~
THEN BJKLHEL BranwenBanter1
~With Tempus as your patron, I suspect you are familiar with death, Branwen.~
DO ~SetGlobal("JKL_HelBranwenBanter1","GLOBAL",1)~
== BBRANW ~Only so far as those slain on the field of battle. Is there some reason for your interest?~
== BJKLHEL ~I'm used to a more... private side of death. I was thinking you could explain to me your experiences with death in war.~
== BBRANW ~I'll not refuse your request, but my interest has always lain with honorable and worthy combat, not the final rest of the combatants.~
== BJKLHEL ~As it should be. I merely wish to learn what I can of death in battle so I am not unprepared for its realities.~
== BBRANW ~Very well. Remind me next time we set up camp to regale you with tales of that battles I've fought in.~
== BJKLHEL ~I'll be sure to ask when the time comes.~
EXIT

// Faldorn Banter 1: Word games
CHAIN
IF ~InParty("JKLHEL")
InParty("FALDORN")
!Dead("JKLHEL")
!Dead("FALDORN")
Global("JKL_HelFaldornBanter1","GLOBAL",0)
InteractingWith("FALDORN")~
THEN BJKLHEL FaldornBanter1
~What is your goal, Faldorn?~
DO ~SetGlobal("JKL_HelFaldornBanter1","GLOBAL",1)~
== BFALDO ~My aim is to rid nature of civilization's corruption.~
== BJKLHEL ~And you would pursue this goal at any cost?~
== BFALDO ~I will protect nature at any cost, and I will not fall prey to a simple word trick like you tried to set for me.~
== BJKLHEL ~Word trick?~
== BFALDO ~You city dwellers are fond of twisting words to distort their meaning. You planned to pounce on me when I agreed that I'd fight civilization at any cost, and point out that nature may be the price.~
== BJKLHEL ~I... uh... perhaps we'll pick this up later.~
== BFALDO ~I'll be ready for your next trick. Don't think you'll take me by surprise.~
EXIT

// Faldorn Banter 2: sacrifice
CHAIN
IF ~InParty("JKLHEL")
InParty("FALDORN")
!Dead("JKLHEL")
!Dead("FALDORN")
Global("JKL_HelFaldornBanter1","GLOBAL",1)
Global("JKL_HelFaldornBanter2","GLOBAL",0)
InteractingWith("FALDORN")~
THEN BJKLHEL FaldornBanter2
~Do you really expect to succeed in your goal, Faldorn? Protecting nature from civilization?~
DO ~SetGlobal("JKL_HelFaldornBanter2","GLOBAL",1)~
== BFALDO ~I'll oppose any that despoil nature, whether or not they were raised in your towns and cities.~
== BJKLHEL ~Would you give up your own life for this cause?~
== BFALDO ~If it would prevent city dwellers from fouling the land, yes.~
== BJKLHEL ~Who would then take your place?~
== BFALDO ~...That was a cruel trick. I'll not speak to one who uses words to lay such a trap.~
== BJKLHEL ~(Sigh.) I'm only trying to help...~
EXIT

// Faldorn Banter 3: death of an idea
CHAIN
IF ~InParty("JKLHEL")
InParty("FALDORN")
!Dead("JKLHEL")
!Dead("FALDORN")
Global("JKL_HelFaldornBanter2","GLOBAL",1)
Global("JKL_HelFaldornBanter3","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BFALDO JKL_FaldornBanter3
~You city dwellers act as if your civilization will last forever. What will you do once it finally crumbles?~
DO ~SetGlobal("JKL_HelFaldornBanter3","GLOBAL",1)~
== BJKLHEL ~I suspect we'll rebuild. Empires rise and fall, yet we're still here, aren't we?~
== BFALDO ~That is exactly the kind of thinking I was referring to. You act as if it will be simple to just rebuild your cities and move on.~
== BJKLHEL ~It's not a nation or an army you're fighting, Faldorn. It's an idea. As long as people who hold on to that idea live, you can destroy cities and dissolve nations and those who remain will simply start anew.~
== BFALDO ~How am I supposed to fight an idea, if this isn't just some word game of yours?~
== BJKLHEL ~I'm afraid word games are the only way to fight ideas, at least as far as I know. Violence and coercion can repress ideas, but can't seem to kill them.~
== BFALDO ~You doubt my ability to achieve my goal. You underestimate me, city dweller.~
== BJKLHEL ~I don't doubt your resolve or your ability. I supect your goal is out of reach, but perhaps you'll surprise me.~
== BFALDO ~I'll prove it to you, city dwell-- Helarine. When the last remnants of civilization fall, you can say you met the one who brought death to an idea.~
EXIT

// Kivan banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("KIVAN")
!Dead("JKLHEL")
!Dead("KIVAN")
Global("JKL_HelKivanBanter1","GLOBAL",0)
InteractingWith("KIVAN")~
THEN BJKLHEL KivanBanter1
~You know that killing Tazok won't bring back your lover.~
DO ~SetGlobal("JKL_HelKivanBanter1","GLOBAL",1)~
== BKIVAN ~Of course I do. Why do you even ask such a question?~
== BJKLHEL ~Your revenge quest seems single-minded. You clearly haven't accepted your lover's death.~
== BKIVAN ~I don't need to justify myself to you. Leave me be.~
EXIT


// Kivan banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("KIVAN")
!Dead("JKLHEL")
!Dead("KIVAN")
Global("JKL_HelKivanBanter2","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BKIVAN JKL_KivanBanter2
~What do you want?~
DO ~SetGlobal("JKL_HelKivanBanter2","GLOBAL",1)~
== BJKLHEL ~I thought we could talk about your lover's death.~
== BKIVAN ~And you know how to help me, do you?~
== BJKLHEL ~It's my duty to help others learn to accept death.~
== BKIVAN ~Have you considered that I have accepted it, and that's why I must seek justice?~
== BJKLHEL ~You have to move on.~
== BKIVAN ~You have to mind your own business. We're done here.~
EXIT

// Xzar banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("XZAR")
!Dead("JKLHEL")
!Dead("XZAR")
Global("JKL_HelXzarBanter1","GLOBAL",0)
InteractingWith("XZAR")~
THEN BJKLHEL JKL_XzarBanter1
~...Xzar, what are you doing with that skull?~
DO ~SetGlobal("JKL_HelXzarBanter1","GLOBAL",1)~
== BXZAR ~I am preparing it for the ritual that will bind it to me and let it float at my side. Then it can be my friend, and we can play when you aren't looking.~
== BJKLHEL ~Err... I'm going to ignore the creepiness of wanting a floating skull "friend" for a moment and ask why you'll only play with it when I'm not looking.~
== BXZAR ~BECAUSE HE'LL BE MY FRIEND AND YOU'D JUST GET JEALOUS AND BREAK HIM!~
== BJKLHEL ~Why would I-- uh, why would I break him?~
== BXZAR ~Don't worry. I won't let you break him. I don't let priests break my friends, especially the ones made from corpses.~
== BJKLHEL ~I'm becoming very concerned about your mental state, Xzar.~
EXIT

// Xzar banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("XZAR")
!Dead("JKLHEL")
!Dead("XZAR")
Global("JKL_HelXzarBanter2","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BXZAR JKL_XzarBanter2
~I do not like the looks you are giving me, priest.~
DO ~SetGlobal("JKL_HelXzarBanter2","GLOBAL",1)~
== BJKLHEL ~I haven't looked at you in the past ten minutes.~
== BXZAR ~You just looked at me right now! You're still looking at me! You must know!~
== BJKLHEL ~Know what?~
== BXZAR ~Don't worry, I won't tell you about the animated skeleton that will soon be roaming the countryside. No matter how many times you ask.~
== BJKLHEL ~I don't know what's worse: travelling with a necromancer, or that the necromancer in question is mad.~
== BXZAR ~Mad? I'm not mad. Slightly upset you keep looking at me, but not mad. Go away! I don't like your looks.~
EXIT

// Xan banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("XAN")
!Dead("JKLHEL")
!Dead("XAN")
Global("JKL_HelXanBanter1","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BXANNN JKL_XanBanter1
~Why do you even bother?~
DO ~SetGlobal("JKL_HelXanBanter1","GLOBAL",1)~
== BJKLHEL ~Excuse me?~
== BXANNN ~Even with all your faith and magic, you are little more effective than I am.~
== BJKLHEL ~Considering your magical proficiency, I would be content with being your equal.~
== BXANNN ~You don't even wish to become better than the miserable excuse of a companion I am? I'd feel sorry for you, if there were any point in feeling that way.~
== BJKLHEL ~Do you want to talk, Xan? I feel like there's something troubling you...~
== BXANNN ~There isn't much reason to. I'd surely miss your point, or you'd misunderstand me.~
== BJKLHEL ~If you change your mind, let me know...~
EXIT

// Branwen banter 2A: weapon of choice
CHAIN
IF ~InParty("JKLHEL")
InParty("BRANWEN")
!Dead("JKLHEL")
!Dead("BRANWEN")
Global("JKL_HelBranwenBanter1","GLOBAL",1)
Global("JKL_HelBranwenBanter2A","GLOBAL",0)
InteractingWith("BRANWEN")~
THEN BJKLHEL BranwenBanter2a
~Out of curiosity, what sort of weapon do you prefer to wield, Branwen?~
DO ~SetGlobal("JKL_HelBranwenBanter2A","GLOBAL",1)~
== BBRANW ~I will use any weapon Tempus provides me, but I often find myself wishing I had better skill with the battleaxe.~
== BJKLHEL ~The battleaxe is Tempus's favored weapon, is it not?~
== BBRANW ~It is. Which is why I feel shame whenever I remember my lack of skill in wielding such weapons. But enough of me, what is your preferred armament?~
== BJKLHEL ~I once was very skilled with the knife, but I've tried to leave those days behind...~
== BBRANW ~You sound troubled. Do you wish to share why you abandoned the knife?~
== BJKLHEL ~Perhaps some other time... to answer your first question, I've been partial to morningstars and flails since converting to Kelemvor.~
== BBRANW ~Ah, the noble morningstar. That reminds me of a tale... allow me a moment to remember the details.~
EXIT

// Branwen banter 2B: weapons and the iron plague
CHAIN
IF ~InParty("JKLHEL")
InParty("BRANWEN")
!Dead("JKLHEL")
!Dead("BRANWEN")
Global("JKL_HelBranwenBanter1","GLOBAL",1)
Global("JKL_HelBranwenBanter2B","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BBRANW BranwenBanter2b
~Helarine, your weapon is in poor shape. Have you been maintaining it properly?~
DO ~SetGlobal("JKL_HelBranwenBanter2B","GLOBAL",1)~
== BJKLHEL ~I thought I was, but you're right... it looks like it's about to fall apart.~
== BBRANW ~This iron plague is taking its toll on our equipment. It would be best to replace our weapons with well-forged or enchanted gear before we are left unarmed.~
== BJKLHEL ~I'll mention that to <CHARNAME> when we next set up camp. In the meantime, do you have a spare weapon I can borrow in case this one breaks?~
== BBRANW ~Of course, just let me know which of my weapons might suit you.~
EXIT

// Branwen banter 2C: shields
CHAIN
IF ~InParty("JKLHEL")
InParty("BRANWEN")
!Dead("JKLHEL")
!Dead("BRANWEN")
Global("JKL_HelBranwenBanter1","GLOBAL",1)
Global("JKL_HelBranwenBanter2C","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BBRANW BranwenBanter2c
~I've noticed that you don't often use a shield, Helarine. Is there a reason you go into battle without one?~
DO ~SetGlobal("JKL_HelBranwenBanter2C","GLOBAL",1)~
== BJKLHEL ~I was never really trained to use shields... I'm not even sure I'm strong enough to carry the kind of shields I see you use.~
== BBRANW ~There are smaller varieties of shields. We should train you in their use once we get the opportunity. A good shield will protect you from attacks even if it isn't as large as mine.~
== BJKLHEL ~Thanks, Branwen. I'm sure knowing how to use a shield will come in handy.~
EXIT

// Eldoth Banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("ELDOTH")
!Dead("JKLHEL")
!Dead("ELDOTH")
Global("JKL_HelEldothBanter1","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BELDOT JKL_EldothBanter1
~Helarine, do consider switching to lighter armor. It's clear to everyone around you that you lack the strength to carry it, much less wear it effectively.~
DO ~SetGlobal("JKL_HelEldothBanter1","GLOBAL",1)~
== BJKLHEL ~I'm not going to give up armor just because it's a little heavy for me. I wouldn't still be alive if not for my armor.~
== BELDOT ~That's because you insist on being the the heat of battle. That's another thing that--~
== BJKLHEL ~I can see where this conversation is going, and I'm not interested. Just move along, Eldoth.~
EXIT

// Eldoth Banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("ELDOTH")
!Dead("JKLHEL")
!Dead("ELDOTH")
Global("JKL_HelEldothBanter1","GLOBAL",1)
Global("JKL_HelEldothBanter2","GLOBAL",0)
InteractingWith("ELDOTH")~
THEN BJKLHEL JKL_EldothBanter2
~(sigh) This iron plague is getting on my nerves. This weapon won't last much longer...~
DO ~SetGlobal("JKL_HelEldothBanter2","GLOBAL",1)~
== BELDOT ~What is that you have there? Is that supposed to be a sword or a mace? Nevermind, just hand it over once we make camp and I'll fix it.~
== BJKLHEL ~It was a flail, but the chain corroded into a lump of metal... not much I can do for it now. And you have enough to do in camp as it is, I can handle my own equipment.~
== BELDOT ~Clearly not, if you let this... flail go to waste. Besides, your place in camp is cooking the food while the men maintain the weapons.~
== BJKLHEL ~Not this again... look, you don't want me to cook. There's a reason I leave it to others to prepare food and pack dried fruit rations for myself.~
== BELDOT ~Laziness isn't an excuse, I expect to see you cooking the next time we make camp.~
== BJKLHEL ~(sigh) Is he even listening to me?~
EXIT

// Eldoth Banter 3
CHAIN
IF ~InParty("JKLHEL")
InParty("ELDOTH")
!Dead("JKLHEL")
!Dead("ELDOTH")
Global("JKL_HelEldothBanter2","GLOBAL",1)
Global("JKL_HelEldothBanter3","GLOBAL",0)
InteractingWith("ELDOTH")~
THEN BJKLHEL JKL_EldothBanter3
~Eldoth, I'd prefer you didn't stare. What do you want?~
DO ~SetGlobal("JKL_HelEldothBanter3","GLOBAL",1)~
== BELDOT ~Nothing of significance. Though I am curious why you thought adventuring was a good idea when you haven't even taken the time to learn to cook like a proper woman.~
== BJKLHEL ~Maybe I'll answer you if you explain to me why you have some deep-seated issue with women adventurers.~
== BELDOT ~A woman's place is to cook and make children. It's very clear to so many people that it astounds me that anyone could think differently.~
== BJKLHEL ~That actually explains a lot more about you than you may have intended.~
== BELDOT ~Now that I've answered your worthless question, answer mine.~
== BJKLHEL ~This is against my better judgement, but maybe it'll make you think before you insult a woman just for her gender.~
= ~I'm an adventurer now because it's the quickest way to learn my place as a follower of Kelemvor... but even before Kelemvor became a god I was an adventurer.~
= ~I was raised by a powerful cleric who had many... enemies. As part of my training, I had to... dispose of these enemies. Once you've watched the life fade from enough people... it's impossible to go back to an ordinary life.~
== BELDOT ~A fascinating story coming from a woman. I don't believe a word of it, however.~
== BJKLHEL ~I knew you wouldn't. That's why I trusted you with my history. It would never even occur to you to share it.~
EXIT

// Edwin Banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("EDWIN")
!Dead("JKLHEL")
!Dead("EDWIN")
Global("JKL_HelEdwinBanter1","GLOBAL",0)
InteractingWith("EDWIN")~
THEN BJKLHEL JKL_EdwinBanter1
~Edwin, may I speak with you a moment?~
DO ~SetGlobal("JKL_HelEdwinBanter1","GLOBAL",1)~
== BEDWIN ~(She has a sly expression on her face. She's plotting something.) What is it, priest? Do you need someone capable of true magical feats to solve your problem for you?~
== BJKLHEL ~What? No, I just wanted to talk to you about Thay.~
== BEDWIN ~(She is scheming after all. She has no reason to care about such distant places if she is what she seems. I have to keep an eye on her.)~
== BJKLHEL ~I can hear you, Edwin.~
== BEDWIN ~Pah! Hearing what I say won't make you any more intelligent than you are. (She's hiding more than I am, I'm sure of it.)~
== BJKLHEL ~Look, if you don't want to talk just say so. I'll leave you alone.~
== BEDWIN ~(I have to keep an eye on this priest... she's more dangerous than she lets on. I can't have her interfering with my own plots.)~
EXIT

// Edwin Banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("EDWIN")
!Dead("JKLHEL")
!Dead("EDWIN")
Global("JKL_HelEdwinBanter1","GLOBAL",1)
Global("JKL_HelEdwinBanter2","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BEDWIN JKL_EdwinBanter2
~(She's unoccupied. I should seize this chance.)~
DO ~SetGlobal("JKL_HelEdwinBanter2","GLOBAL",1)~
== BJKLHEL ~...Did you need something, Edwin?~
== BEDWIN ~(She doesn't suspect a thing.) I demand to know why you are interested in Thay. It is not a place you would be welcome to visit.~
== BJKLHEL ~I was just curious. If you don't want to talk about it, I'm fine with that.~
== BEDWIN ~(She must be plotting something. If Thay doesn't interest her, what does?) I'm watching you, priest. There is something about you that I don't like.~
== BJKLHEL ~I figured as much on my own...~
EXIT

// Edwin Banter 3
CHAIN
IF ~InParty("JKLHEL")
InParty("EDWIN")
!Dead("JKLHEL")
!Dead("EDWIN")
Global("JKL_HelEdwinBanter2","GLOBAL",1)
Global("JKL_HelEdwinBanter3","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BEDWIN JKL_EdwinBanter3
~I suspected I would outwit you, priest. (I knew she was hiding something.) Does this look familiar?~
DO ~SetGlobal("JKL_HelEdwinBanter3","GLOBAL",1)~
== BJKLHEL ~Wh-where did you find that knife?~
== BEDWIN ~It fell out of your pack yesterday. (I knew it would pay to keep an eye on her!) I see why you hid it... Necromancy isn't condoned by your god.~
== BJKLHEL ~...What? How does the knife make you think I'm a necromancer?~
== BEDWIN ~Don't try to fool me! (She thinks she's so clever.) This skull icon at the hilt... it's clear that this knife was used in necromantic rites.~
== BJKLHEL ~Just... give it back. Don't tell anyone about this, you understand me?~
== BEDWIN ~Fine. I care little for the knife itself. But I expect a favor in return for my silence! (I'm sure she'd be useful indeed...)~
== BJKLHEL ~Alright, fine. But nothing involving killing.~
== BEDWIN ~(She dares to define the terms? Pah, she can be useful even under such restrictive requirements.) Very well. I expect full cooperation when I come to collect!~
== BJKLHEL ~That was close... hopefully he'll waste his favor on healing or something soon. ...It's a good thing he didn't recognize this icon. I guess it's time to say goodbye to this... keepsake, though. I can't risk anyone else finding it.~
EXIT

// Dorn banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("DORN")
!Dead("JKLHEL")
!Dead("DORN")
Global("JKL_HelDornBanter1","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BDORN JklHel_DornBanter1
~You are a puzzle to me, Helarine. You have great power, yet you refuse to even acknowledge its existance.~
DO ~SetGlobal("JKL_HelDornBanter1","GLOBAL",1)~
== BJKLHEL ~I'm trying to leave my past behind, and that includes what remains of the skills I learned.~
== BDORN ~Why would you waste your training? You could easily keep your abilities and your reputation. Few would care where the power came from if you carried on as you do now.~
== BJKLHEL ~I don't want to remind myself of what I was. This may be hard to believe, but I know what it's like to die alone, Dorn. And I know that if I embraced my old powers, I would experience that again.~
== BDORN ~So it is not only disapproval you fear, but death as well. That seems hypocritical for a Doomguide.~
== BJKLHEL ~It's not easy to explain without sharing my history... I do not fear death, but oblivion. But I feel I've said too much... we have other things to do.~
== BDORN ~I'm not finished, Helarine. We'll speak again.~
EXIT

// Dorn banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("DORN")
!Dead("JKLHEL")
!Dead("DORN")
Global("JKL_HelDornBanter1","GLOBAL",1)
Global("JKL_HelDornBanter2","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BDORN JklHel_DornBanter2
~Helarine. You've had time to consider your explanation for your unwillingness to embrace your power. I expect to hear it.~
DO ~SetGlobal("JKL_HelDornBanter2","GLOBAL",1)~
== BJKLHEL ~I've told you, Dorn. Nothing good can come of it.~
== BDORN ~That is a coward's excuse. There is something holding you back.~
== BJKLHEL ~(sigh) I can't use the power you sensed, Dorn. It's a remnant of the power of my old god... a god that no longer exists. Only Kelemvor could return it to me.~
== BDORN ~Pathetic. A new god should know better than to weaken his servants.~
== BJKLHEL ~If you knew my past, Dorn, you'd understand why Kelemvor sealed my power away. You wouldn't agree with it, but you'd understand.~
== BDORN ~Perhaps, but I have little desire to listen to such a tale. We're finished here.~
EXIT

// Dorn romance banter
CHAIN
IF ~InParty("JKLHEL")
InParty("DORN")
!Dead("JKLHEL")
!Dead("DORN")
//Global("DORN_ROMANCE_2","LOCALS",2)
Global("JKL_HelDornRomanceBanter1","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BDORN JklHel_DornRomanceBanter1
~I can sense your uneasiness, Helarine. You would be easy prey if we were attacked. Why do you stare? What are you conspiring?~
DO ~SetGlobal("JKL_HelDornRomanceBanter1","GLOBAL",1)~
== BJKLHEL ~I've been thinking about you and <CHARNAME>. There seems to be a bond forming between you two, but I'm not sure what to make of it.~
== BDORN ~I've grown wary of offers of friendship and loyalty after my betrayal by Simmeon's gang. You would do well not to presume you understand my relationship with <CHARNAME>, or any other member of our party.~
== BJKLHEL ~I'll keep it to myself, then.~
== BDORN ~That would be wise. Now cease your staring and leave me be.~
EXIT

// Alora banter 1
CHAIN
IF ~InParty("JKLHEL")
InParty("ALORA")
!Dead("JKLHEL")
!Dead("ALORA")
Global("JKL_HelAloraBanter1","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BALORA JklHel_AloraBanter1
~What's got you so down in the dumps? You look so mopey.~
DO ~SetGlobal("JKL_HelAloraBanter1","GLOBAL",1)~
== BJKLHEL ~This is how I usually look, as far as I can tell.~
== BALORA ~Why? You look like you just watched your puppy die. It's making me sad just looking at you!~
== BJKLHEL ~I don't mean to upset you... maybe we could change our marching order so you don't have to see my face so often.~
== BALORA ~That's cheating! I've got an idea to make you smile anyway. I just gotta figure out how to do it.~
== BJKLHEL ~That sounds rather ominous... which is a feat for someone as cheerful as Alora...~
EXIT

// Alora banter 2
CHAIN
IF ~InParty("JKLHEL")
InParty("ALORA")
!Dead("JKLHEL")
!Dead("ALORA")
Global("JKL_HelAloraBanter1","GLOBAL",1)
Global("JKL_HelAloraBanter2","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BALORA JklHel_AloraBanter2
~Hely-belly! I've got something for you!~
DO ~SetGlobal("JKL_HelAloraBanter2","GLOBAL",1)~
== BJKLHEL ~Alright... what is it?~
== BALORA ~Kneel down! I can't show you from all the way down here unless you get closer!~
== BJKLHEL ~If you say so...~
== BALORA ~Gotcha! See, this is how you smile!~
== BJKLHEL ~Agh... let... go...~
== BALORA ~Now just keep practicing that and you'll be smiling like me in no time!~
== BJKLHEL ~I'm not sure it works that way...~
== BALORA ~Sure it does! It's how I learned to smile!~
== BJKLHEL ~By having someone grab your cheeks and pull?~
== BALORA ~Well, maybe not exactly...~
EXIT

// Alora banter 3
CHAIN
IF ~InParty("JKLHEL")
InParty("ALORA")
!Dead("JKLHEL")
!Dead("ALORA")
Global("JKL_HelAloraBanter2","GLOBAL",1)
Global("JKL_HelAloraBanter3","GLOBAL",0)
InteractingWith("JKLHEL")~
THEN BALORA JklHel_AloraBanter3
~Hel! I have a present for you!~
DO ~SetGlobal("JKL_HelAloraBanter3","GLOBAL",1)~
== BJKLHEL ~I'm fine without your smiling lessons today, Alora...~
== BALORA ~No, no, not that. A real present! Look.~
== BJKLHEL ~Is that... a shoulder strap with the symbol of Kelemvor sewn onto it?~
== BALORA ~Yep! I noticed yours got torn and was falling apart, so I got you this!~
== BJKLHEL ~...How did you get it? ...and from who?~
== BALORA ~Oh, some stuffy old guy I saw last time we were in Baldur's Gate. He didn't need it.~
== BJKLHEL ~Um... let me be the judge of that. I'll hang onto this for now, and if he really doesn't need it I'll keep it.~
= ~And maybe pay him back for the trouble...~
== BALORA ~Aw, you aren't smiling!~
== BJKLHEL ~Sorry... I'm just too happy to smile! That's it. Surely.~
== BALORA ~Weird. I guess I'll just think of that face you just made as a Hel-smile! Hope you like the present!~
== BJKLHEL ~What have I done now...?~
EXIT

// Brosaad banter 1
//CHAIN
//IF ~InParty("JKLHEL")
//InParty("RASAAD")
//!Dead("JKLHEL")
//!Dead("RASAAD")
//Global("JKL_HelRasaadBanter1","GLOBAL",0)
//InteractingWith("RASAAD")~
//THEN BJKLHEL JklHel_RasaadBanter1
//~I must admit, Rasaad, I'm not very knowledgeable when it comes to the Moonmaiden.~
//DO ~SetGlobal("JKL_HelRasaadBanter1","GLOBAL",1)~
//== BRASAAD ~Selûne~
//EXIT