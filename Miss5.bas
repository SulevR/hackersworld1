        '<Hacker's World> Mission 5
        'Produced by U&S Reisberg

        'Not for sale or distribution
        'Misuse is criminal

'NB! This game is joke, don't belive anything! All is out of normal & control


'TAHTSAD NUMBRID


mission = 5
19 TIMER OFF
aeg = 0

      
10      CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY OFF

        OPEN "buffer.txt" FOR INPUT AS #4
        INPUT #4, nimi$, mission, punktid, pin, ok
        CLOSE #4

IF ok = 55 THEN RUN "citt"

11     CLS
       SCREEN 12
         COLOR 7
         LOCATE 6, 6
         PRINT "Nimi:                Mission:          Punktid:"
         LOCATE 6, 12
         PRINT nimi$
         LOCATE 6, 35
         PRINT mission
         LOCATE 6, 54
         PRINT punktid
         COLOR 4
     
         LOCATE 8, 13
         PRINT "Menu"
         LOCATE 9, 12
         PRINT "------"
         COLOR 12
         LOCATE 12, 13
         PRINT "F2 - Continue"
         LOCATE 13, 13
         PRINT "F3 - NewGame"
         LOCATE 14, 13
         PRINT "F4 - LoadGame"
         LOCATE 15, 13
         PRINT "F5 - SaveGame"
         LOCATE 16, 13
        PRINT "F6 - Introduction"
         LOCATE 17, 13
         PRINT "F7 - Credits"
         LOCATE 18, 13
         PRINT "F8 - Mission"
         PRINT "                                     "
         PRINT "                                     "
         PRINT "                                     "
         PRINT "                                     "
         PRINT "                                       "
         PRINT "                                      "

         LOCATE 11, 13
         PRINT "F1 - Quit"
         KEY ON
         COLOR 7
        KEY 1, " Quit"
        KEY 3, " NewGame"
        KEY 4, " LoadGame"
        KEY 5, " SaveGame"
        KEY 6, " Introduction"
        KEY 7, " Credits"
        KEY 2, " Continue"
        KEY 8, " Mission"
        KEY 9, ""
        KEY 10, ""
        LOCATE 19, 13

        PRINT ">"
        LINE (300, 100)-(600, 300), 1, B
                x1 = 400
                x2 = 450
                x3 = 500
                y1 = 200
                y2 = 210
                y3 = 250
                f = 1
                d = 1
           
                DO
              LINE (x1, y1)-(x2, y2), f
              LINE (x2, y2)-(x3, y3), f
              LINE (x3, y3)-(x1, y1), f
               FOR k = 1 TO 1000
                NEXT k
            
             a = INT(4 * RND)
                b = INT(4 * RND)
                c = INT(4 * RND)
            
               IF a = 0 THEN x1 = x1 - 6
                IF a = 1 THEN x1 = x1 + 6
                IF a = 2 THEN y1 = y1 - 6
                IF a = 3 THEN y1 = y1 + 6
            
                IF b = 0 THEN x2 = x2 - 6
                IF b = 1 THEN x2 = x2 + 6
                IF b = 2 THEN y2 = y2 - 6
                 IF b = 3 THEN y2 = y2 + 6
             
                 IF c = 0 THEN x3 = x3 + 6
                 IF c = 1 THEN x3 = x3 - 6
                 IF c = 2 THEN y3 = y3 + 6
                  IF c = 3 THEN y3 = y3 - 6
                   f = f + 1
                  IF f > 15 THEN f = 0
             IF x1 > 599 THEN x1 = x1 - 20
             IF x2 > 599 THEN x2 = x2 - 20
             IF x3 > 599 THEN x3 = x3 - 20
             IF x1 < 301 THEN x1 = x1 + 20
             IF x2 < 301 THEN x2 = x2 + 20
             IF x3 < 301 THEN x3 = x3 + 20
         
             IF y1 > 299 THEN y1 = y1 - 20
             IF y2 > 299 THEN y2 = y2 - 20
             IF y3 > 299 THEN y3 = y3 - 20
             IF y1 < 101 THEN y1 = y1 + 20
             IF y2 < 101 THEN y2 = y2 + 20
             IF y3 < 101 THEN y3 = y3 + 20
          
             d = d + 1
           
                IF d > 3000 THEN f = 0
                IF d > 5000 THEN d = 0
              LOOP UNTIL INKEY$ <> ""
         LOCATE 19, 13
         INPUT "> ", x$
   IF x$ = "Quit" THEN GOTO 15
   IF x$ = "Continue" AND aeg < 4 THEN GOTO 1
   IF x$ = "Continue" THEN GOTO 100
   IF x$ = "SaveGame" THEN GOTO 20
   IF x$ = "LoadGame" THEN GOTO 20
   IF x$ = "NewGame" THEN GOTO 27
   IF x$ = "Introduction" THEN GOTO 30
   IF x$ = "Credits" THEN GOTO 30
   IF x$ = "Mission" THEN GOTO 50
15
        PRINT "                 Really wanna quit?"
        PRINT "                 <Esc>   - Cancel"
        PRINT "                 <Space> - Quit"
        FOR i = 1 TO 2000
        NEXT i
        DO
        IF INKEY$ = " " THEN GOTO 17
        IF INKEY$ = CHR$(27) THEN GOTO 11
        LOOP
27        PRINT "                 Quit of this game?"
        PRINT "                 <Esc>   - Cancel"
        PRINT "                 <Space> - Quit"
        FOR i = 1 TO 2000
        NEXT i
        DO
        IF INKEY$ = " " THEN GOTO 17
        IF INKEY$ = CHR$(27) THEN GOTO 11
        LOOP
        RUN "hackersw.hac"

50
        CLS
        SCREEN 12
        KEY OFF
        COLOR 11
        OPEN "mission5.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
       DO
       LOOP UNTIL INKEY$ <> ""
       GOTO 11

17  OPEN "buffer.txt" FOR OUTPUT AS #3
        PRINT #3, "Hacker"
         PRINT #3, 1
         PRINT #3, 0
         PRINT #3, 1234
         PRINT #3, 1
         CLOSE #3
    SYSTEM
20
11120
        ' Naidis
        OPEN "Savegam1.txt" FOR INPUT AS #1
                INPUT #1, aaa$, bbb, ccc, ddd, eee
                LOCATE 20, 1
                COLOR 14
                PRINT "                  Nr  Kasutajanimi  Mission Punktid"
                COLOR 15
                PRINT "                  1"
                LOCATE 21, 23
                PRINT aaa$
                LOCATE 21, 36
                PRINT bbb
                LOCATE 21, 44
                PRINT ccc
                CLOSE
        OPEN "Savegam2.txt" FOR INPUT AS #2
                INPUT #2, a$, b, c, d, e
                LOCATE 22, 1
                PRINT "                  2"
                LOCATE 22, 23
                PRINT a$
                LOCATE 22, 36
                PRINT b
                LOCATE 22, 44
                PRINT c
                CLOSE
        OPEN "Savegam3.txt" FOR INPUT AS #3
                INPUT #3, aa$, bb, cc, dd, ee
                LOCATE 23, 1
                PRINT "                  3"
                LOCATE 23, 23
                PRINT aa$
                LOCATE 23, 36
                PRINT bb
                LOCATE 23, 44
                PRINT cc
                CLOSE
        IF x$ = "LoadGame" THEN GOTO 11125
       'MMMMMMMMMAAAAAANGUUUUDDDDDEEEEE SAVING
    COLOR 7
    INPUT "  Where You save (1-3 or Enter to cancel)>", y$
        IF y$ = "1" THEN OPEN "Savegam1.txt" FOR OUTPUT AS #4
        IF y$ = "2" THEN OPEN "Savegam2.txt" FOR OUTPUT AS #4
        IF y$ = "3" THEN OPEN "Savegam3.txt" FOR OUTPUT AS #4
       IF y$ <> "1" AND y$ <> "2" AND y$ <> "3" THEN GOTO 10
         PRINT #4, nimi$
         PRINT #4, mission
         PRINT #4, punktid
         PRINT #4, pin
         PRINT #4, ok
         CLOSE #4
        GOTO 11

11125 'MMMMMMMAAAAAANgude loadimime LOADING
        COLOR 7
                INPUT "  Which You load (1-3 or Enter to cancel)>", y$
                IF y$ = "1" THEN mission = bbb: punktid = ccc: pin = ddd: ok = eee
                 IF y$ = "2" THEN mission = b: punktid = c: pin = d: ok = e
                 IF y$ = "3" THEN mission = bb: punktid = cc: pin = dd: ok = ee
                 IF y$ <> "1" AND y$ <> "2" AND y$ <> "3" THEN GOTO 10
                 OPEN "buffer.txt" FOR OUTPUT AS #3
                 PRINT #3, nimi$
                 PRINT #3, mission
                 PRINT #3, punktid
                    PRINT #3, pin
                    PRINT #3, ok
                 CLOSE #3
                 IF mission = 1 THEN RUN "miss1"
                 IF mission = 2 THEN RUN "miss2"
                 IF mission = 3 THEN RUN "miss3"
                 IF mission = 4 THEN RUN "miss4"
                 IF mission = 5 THEN RUN "miss5"
                 IF mission = 6 THEN RUN "miss6"
                 IF mission = 7 THEN RUN "miss7"
                    mission = 5
                    

                 GOTO 11
30   y = 0
    
        FOR i = 1 TO 240
       LINE (0, y)-(640, y), 0
        y = y + 2
                FOR k = 1 TO 200
                NEXT k
        NEXT i
        y = y - 1
       FOR i = 1 TO 240
        LINE (0, y)-(640, y), 0
        y = y - 2
           FOR k = 1 TO 100
           NEXT k
        NEXT i
     IF x$ = "Credits" THEN GOTO 40
     LOCATE 8, 13
     COLOR 12
     PRINT "Introduction"
     COLOR 14
     PRINT "                    Tegemist on esimese Eestis toodetud ha'kkeritele"
     PRINT "            m6eldud programmiga. Sulle hakatakse andma Missione, sinu"
     PRINT "            probleemiks jaa'b nende ta'htajaline lahendamine. La'bides"
     PRINT "            k6ik Missionid v6ib ta'ituda su eluaegne unistus: sind"
     PRINT "            v6etakse vastu ylemaailmse ha'kkerite salaorganisatsiooni"
     PRINT "            NOH Eesti osakonna liikmeks. Edu too'le!  Et Missionitest"
     PRINT "            kergemini jagu saada surfa oma v6imalusi a'ra kasutades"
     PRINT "            Internetis. Aga nyyd aitab lobast kyll. Pressi eni kei"
     DO
     LOOP UNTIL INKEY$ <> ""
     GOTO 11
40     LOCATE 8, 1
        COLOR 12
        PRINT "                                   Credits"
        COLOR 14
        PRINT "                 The first hacker's program   Made in Estonia"
        PRINT "                     Produced by Sulev and Urmas Reisberg"
        PRINT
        PRINT "                                   AD 1998"
        PRINT "           Thanks: mum, Microsoft, all banks, shops, hackers, aces,"
        PRINT "            SantaClaus, schools, computermasters, fool boughters,"
        PRINT "                flowers, Alexia, drivers, idiots, etc, etc ..."
        PRINT "                 Wait for Hacker's World II too. Coming soon."
        COLOR 4: PRINT : PRINT "                                     &"
        COLOR 9
        PRINT : PRINT "            We love:     You, This Game, Our Computer,"
        PRINT "                     Our Life, TV, All People & This World"
        COLOR 7: PRINT : PRINT "          This game is produced with listening:"
        PRINT "                                     Bell Candle&Book"
        PRINT "                                     Alexia"
        PRINT "                                     Ace Of Base"
        COLOR 14
        DO
        l = INT(16 * RND)
        LOCATE 11, 32
        COLOR l
        PRINT "HACKER'S  WORLD"
        LOOP UNTIL INKEY$ <> ""
     GOTO 11
1       '*************************MISSION 5 ALGAB***************************

      
        CLS
        SCREEN 12
        KEY OFF
        COLOR 11
        OPEN "mission5.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
                DO
                IF INKEY$ = CHR$(27) THEN GOTO 11
                IF INKEY$ = CHR$(32) THEN TIMER ON: StartTime = TIMER: GOTO 100
                LOOP
       
      
        
        GOTO 300
299     FOR i = 1 TO 5000
        NEXT i
        RETURN
300     CLS
        SCREEN 12
        SLEEP 2
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, "Yes"
        KEY 2, "No"
        

        COLOR 15
        PRINT "You need help?"
        SLEEP 1
        PRINT "Maybe you can hire Michael Knight. His number is 3645. Call him?"
                KEY ON
                INPUT a$
                IF a$ = "No" THEN GOTO 105
        
        KEY OFF
        PRINT "There is your computer's telephone"
        INPUT "Insert telephone number you want to call:", number$
       
        PRINT "Calling:", number$
        a = 400
        FOR k = 1 TO 7
        SOUND a, 2
        a = INT(RND * 400) + 400
        NEXT k
                IF number$ = "3645" OR number$ = "kitt" THEN GOTO 310
                IF number$ = "" THEN PRINT "Not found": SLEEP 1: GOTO 100


        IF kone = 1 THEN GOTO 302
        IF kone = 2 THEN GOTO 303
        IF kone = 3 THEN GOTO 304
               
                PRINT : PRINT "Who is there?"
                INPUT ">", a$
                PRINT "What? Where are you?"
                INPUT ">", a$
                PRINT "What do you want, idiot?"
                INPUT ">", a$
        kone = kone + 1
        GOTO 309

302     PRINT : PRINT "Yep"
        INPUT ">", a$
        PRINT "Eat shit!"
        kone = kone + 1
        GOTO 309
303     PRINT : PRINT "Who the hell is there? Mum?"
        INPUT ">", a$
        PRINT "I haven't time at the moment! Call me 6 o'clock!"
        kone = kone + 1
        GOTO 309
304     PRINT : PRINT "911, hello. What's the problem?"
        INPUT ">", a$
        PRINT "Is everything okay?"
        INPUT ">", a$
        PRINT "Oh my god, I check your place..."
                SLEEP 1
        PRINT "What? You are from Estonia??? There is KIIRABI on 003, call there, buy!"
        SLEEP 2
        kone = 0
        raagitud = raagitud + 1
        GOTO 309
309     FOR k = 1 TO 3
                SOUND 400, 9
                        SLEEP 1
        NEXT k
        GOTO 100
310   PRINT : PRINT "Who the hell is there?"
      PRINT "I am sleeping now, call me later, idiot!"
        DO
        LOOP UNTIL INKEY$ <> ""
      COLOR 11
      PRINT "   Converting signal..."
      PRINT "   Connecting Kit Car System: done"
      PRINT "           Kes see siin segab Michaelit?"
      PRINT "           V6i sina oledki Michael?"
        INPUT ">", a$
        IF a$ = "Yes" OR a$ = "Ye" OR a$ = "yes" THEN GOTO 315
        IF a$ = "y" OR a$ = "j" OR a$ = "ja" OR a$ = "jah" THEN GOTO 315
        IF a$ = "J" OR a$ = "Jah" OR a$ = "yep" OR a$ = "Y" THEN GOTO 315
        IF a$ = "olen" OR a$ = "olen k[ll" OR a$ = "olen jah" OR a$ = "olen kyll" THEN GOTO 315
      PRINT "Then, go to hell!"
      SLEEP 1
      GOTO 309
315
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        IF aku = 1 THEN PRINT "Tere jalle!, akud on nyyd natukeseks ajaks jalle tais!"
316
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        KEY 3, "Esileht"
        PRINT "Michael! Where we go?"
        KEY ON
        INPUT a$
        IF a$ = "war street 10" OR a$ = "war street" OR a$ = "War Street" OR a$ = "War street 10" THEN koht = 1
        IF a$ = "war street 10" OR a$ = "War street 10" OR a$ = "War Street 10" THEN koht = 1
        IF a$ = "kitt" THEN koht = 1
        IF a$ = "Esileht" THEN KEY 3, "": GOTO 11
        PRINT "Here we go"

320   FOR k = 1 TO 3
        b = 50
        FOR a = 1 TO 4
            SOUND b, 1
            b = b + 30
        NEXT a
      NEXT k
           x = 250
           FOR k = 1 TO 20
              SOUND x, 1
                x = x - 4
           NEXT k
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 1
                NEXT i
               x = x + 100
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 4
                NEXT i
           DO
            FOR i = 1 TO 10
                SOUND x, 1
                x = x - 25
                IF x < 70 THEN EXIT DO
            NEXT i
                x = x + 50
           LOOP UNTIL x < 70
      PRINT "Kohal!"
      IF koht <> 1 THEN GOTO 316
      PRINT "Michael, mu skanneering naitab , et siin on mingid vargad!"
      IF laip = 1 THEN GOTO 340
      PRINT "Yks on otse mu ees! Kas hakkan 6iendama?"
        KEY ON
        INPUT a$
           IF a$ = "No" OR a$ = "no" OR a$ = "ei" OR a$ = "Ei" THEN GOTO 325
        PRINT "Hey, you!"
        SLEEP 1: PRINT "Where I am?"
        SLEEP 1: PRINT "Yeah, under this car, look me!"
        SLEEP 2: PRINT "You are idiot, man!"
        SLEEP 1: PRINT "You are piece of shit, man!"
         PRINT "   - Joe, there is nice car!"
         SLEEP 2: PRINT "   = Oh, really nice!"
         SLEEP 1: PRINT "   - I'll take it!"
         SLEEP 1: PRINT "Don't touch me, stupid man!"
         SLEEP 2: PRINT "   - Who is speaking there?"
         SLEEP 1: PRINT "Nobody!"
         SLEEP 1: PRINT "   - Door is closed! I can't take it!"
         SLEEP 2

325   PRINT "Mis ma nyyd teen, ajan ta alla v6i?"
      INPUT a$
                IF a$ = "Yes" OR a$ = "yes" OR a$ = "ja" OR a$ = "jah" THEN GOTO 330
              DO
                PRINT "Waiting alla ajamist..."
                INPUT a$
                IF a$ = "Yes" THEN EXIT DO
              LOOP


330        x = 100
           FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 1
                NEXT i
           
           DO
             FOR i = 1 TO 10
                SOUND x, 1
                x = x - 15
                IF x < 70 THEN EXIT DO
             NEXT i
                x = x + 50
           LOOP UNTIL x < 70
      PRINT "Juba valmis!"
      laip = 1
        SLEEP 1
     
      PRINT "(pst! Michael, mu skanneeringud naitavad, et ta on surnud!)"
        DO
        LOOP UNTIL INKEY$ <> ""
      PRINT "Starting laiba peitmist..."
      SLEEP 2: PRINT " ...done"
      SLEEP 1: PRINT "Seal sees on ka 3 liikuvat objekti."
      SLEEP 1: PRINT "Mu SuperScanner ytleb, et 2 on inimest, aga 1 on sitajunn WC-torus!"
      SLEEP 2: PRINT "Michael is calling..."
      COLOR 12: SLEEP 2: PRINT "Where is my stupid car?"
      COLOR 11: SLEEP 1: PRINT "Searching stupid car..."
      SLEEP 2: PRINT "Not found"
340
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        PRINT "Do you want to scan this location?"
        INPUT a$
        IF a$ = "Yes" THEN GOTO 400
      PRINT "Ok"
      SLEEP 1: PRINT "Well, by what we waiting for?"
        INPUT a$
      PRINT "So, Would I turn of my motor?"
        INPUT a$
        IF a$ = "No" THEN bensiin = 1: GOTO 350
      PRINT "TURN OFF: done"
      PRINT "Press any key to turn my motor on"
        DO
        LOOP UNTIL INKEY$ <> ""
      GOTO 355
350  'ei lulita mootorit valja
        PRINT "Interesting..."
        SLEEP 1: PRINT "Starting MATHEMATICAL PROGRAM..."
        SLEEP 2: PRINT "Done"
        PRINT "Michael, ma just praegu siin arvutan, et bensiin saab kohe otsa!"
        PRINT "Akki ikka teeks veel enne midagi?"
                INPUT a$
                IF a$ = "Yes" THEN GOTO 355
        PRINT "Tore lugu, bensiin ongi otsas, kohe saab aku ka!"
        SLEEP 2: PRINT "Aku: empty"
        SLEEP 1: PRINT "Not enough voltage to connect", aku = 1
        SLEEP 2
        GOTO 100

        
355  PRINT ""
        PRINT "Laulame!"
        SLEEP 1: PRINT "Ei taha!"
        SLEEP 1: PRINT "Ma scannin ymbrust!": SLEEP 2
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        
400   '*****************Scan umbrus
        x = 0
        z = 0
        DO
        LINE (0, x)-(640, x + 3), 4, BF
        IF z = 0 THEN LINE (0, x - 1)-(640, x - 4), 0, BF
        IF z = 1 THEN LINE (0, x + 4)-(640, x + 6), 0, BF
                FOR i = 1 TO 100
                NEXT i

        IF z = 0 THEN x = x + 1
        IF x > 459 THEN z = 1
        IF z = 1 THEN x = x - 1
        LOOP UNTIL z = 1 AND x < 10
        CLS
        PSET (400, 0), 8
        DRAW "d30;l300;d100;r380;d180;r120;u340;l200": PAINT (401, 1), 8
        '***********************************KITI AUTO*******************
        PSET (303, 190), 4
        DRAW "r34;d3;r1;d2;r1;d2;r1;d3;r1;d33;r1;d2;r1;d2;r1;d3;r1;d20;l1;d3;l1;d2;l1;d2;l1;d13;l1;d3;l1;d2;l1;d2;l1;d3"
        DRAW "l34;u3;l1;u2;l1;u2;l1;u2;l1;u13;l1;u3;l1;u2;l1;u2;l1;u20;r1;u3;r1;u2;r1;u2;r1;u33;r1;u3;r1;u2;r1;u2;r1;u3"
        PAINT (304, 191), 4
        '*****************************PAHADE AUTO**********
        PSET (100, 200), 7
        DRAW "d110;r5;d30;r2;d1;r2;d1;r2;d1;r4;d1;r4;d1;r22;u1;r4;u1;r4;u1;r2;u1;r2;u1;r2;u30"
        DRAW "r5;u110;l3;e15;l2;g15;l50;h15;l2;f15;l3"
        PAINT (101, 201), 7

            'x = 120
            y = 144
            a = 0
            DO
                CIRCLE (120, y), 10, 7
                PAINT (120, y), 7
                CIRCLE (120, y), 11, 0
                        CIRCLE (150, 330 - y), 10, 7
                        PAINT (150, 330 - y), 7
                        CIRCLE (150, 330 - y), 11, 0
                        
                IF y > 186 THEN a = 1
                IF y < 144 THEN a = 0
                IF a = 0 THEN y = y + 1
                IF a = 1 THEN y = y - 1
                        FOR i = 1 TO 1000
                        NEXT i
            LOOP UNTIL INKEY$ <> ""
        LOCATE 23, 1
        PRINT "WHAT?"
                FOR i = 1 TO 30000
                NEXT i

        PRINT "Michael!!!! There is more beutiful car than me!"
        SLEEP 2: PRINT "I want to do something!"
        PRINT "May I destroy this car?"
        INPUT a$
                IF a$ = "Yes" THEN GOTO 1000
        PRINT "So, what then??"
                '***********************SCANNIB AUTOT
        SLEEP 1: PRINT "Scanning car..."
        'PSET (145, 130)
        SLEEP 1
10000        CLS
        PSET (160, 200), 15
        DRAW "d1;l1;d5;l1;d2;l1;d5;l1;d5;l1;d5;l1;d5;l1;d5;l1;d5;l1;d2;d5;l1;d5;l1;d5;l1;d5;l1;d5;l1;d5;l1"
        GOSUB 299
        DRAW "r40;d1;r40;d1;r40;d78;u80;r1;u5;r1;u5;r1;u5;r1;u10;r1;u5;r1;u5;r1;u15;u5;r1;u5;r1;u10;l115"
        GOSUB 299
        PSET (145, 270), 15
        DRAW "d75;r20;d1;r20;d1;r20;d1;r25;d1;r25;d1;r12;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1"
        GOSUB 299
        DRAW "u35;r1;u1;r1;u1;r1;u1;r1;u1;r1;u1;r5;d35;r2;u1;r2;u1;r2;u1;r2;u1;r2;u1;u140;l123;d2;l1;d1;l3;d1;l5;d1;l4;d1;l5;d1;l2;d1;l2;d1;l1;d1"
        GOSUB 299
        PSET (185, 190), 15
        DRAW "d135;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;u30;l5;g5;d30;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2;d1;l2"
        GOSUB 299
        PSET (170, 175), 15
        DRAW "d150;r35;d1;r20;d1;r20;d1;r20;d1;r20;d1;r40;u155;l155"
                GOSUB 299: LINE (390, 130)-(480, 220), 15, B
                 GOSUB 299: LINE (170, 175)-(390, 130), 15
                 GOSUB 299: LINE (170, 325)-(390, 220), 15
                 GOSUB 299: LINE (325, 330)-(480, 220), 15
                 GOSUB 299: LINE (325, 175)-(480, 130), 15
        SLEEP 1
                LINE (280, 245)-(310, 275), 4, B
                LINE (350, 220)-(370, 240), 4, B
                 LINE (280, 245)-(350, 220), 4
                 LINE (280, 275)-(350, 240), 4
                 LINE (310, 275)-(370, 240), 4
                 LINE (310, 245)-(370, 220), 4
        'INPUT a$
        SLEEP 1: PRINT "Michael! There is bad thing in that car..."
        SLEEP 2: PRINT "I don't know, but maybe it is nuclean bom!!!"
        SLEEP 2: PRINT "I want to leave there, now"
        SLEEP 1: PRINT "Leave?"
                INPUT a$
                IF a$ = "Yes" THEN GOTO 315
        PRINT "I'm afraid!"
        PRINT "I hope, you have a plan!"
        SLEEP 2: PRINT "Scanning..."
        SLEEP 1: PRINT "There is 2 men..."
        SLEEP 1: PRINT "I mean, do you want to screw them?"
                INPUT a$
                IF a$ = "Yes" THEN GOTO 370
        PRINT "I am clever, but I have not any plan!"
        SLEEP 2: PRINT "...and time is running..."
        SLEEP 2: PRINT "Press any key to move Kit!"
                DO
                LOOP UNTIL INKEY$ <> ""
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        PRINT "Lets ride."
        SLEEP 1
                kiirus = 10
        CLS
        PRINT "Speed     Mph"
               COLOR 4
               DO
                LOCATE 1, 7
                PRINT kiirus
                kiirus = kiirus + 1
                        FOR i = 1 TO 3000
                        NEXT i
               LOOP UNTIL kiirus > 98
       COLOR 15
        SLEEP 1
        PRINT "Turning radio on..."
        SLEEP 1
        PLAY "mbt150o1a8a8o2c8o1a8a8a8p4e8e8f8e8e8e8p4"
        PLAY "mbt150o1f8f8o2c8o1a8g8g8b8g8a8a8o2c8o1a8a8a8"
        PRINT "Kollased on bussid..."
        SLEEP 1: PRINT "Bussipeatuses..."
        SLEEP 1: PRINT "K6nniteede ruudud ruudud..."
        SLEEP 1: PRINT "...reas ja seatuses."
        SLEEP 2: PRINT : PRINT "                     T6nu Trubetsky."
        SLEEP 1
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        GOTO 316


370     PRINT "OK, let's kill him"      '************LITSUB LAIAKS
        SLEEP 1: CLS
        LOCATE 14, 36: PRINT "Kole pilt"
       
                x = 50
                FOR i = 1 TO 50
                SOUND x, 1
                 x = x + 2
                NEXT i
        
        
        
        CLS
        SLEEP 1
        PRINT "Cit Car reporting: surnud."
                DO
                LOOP UNTIL INKEY$ <> ""
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        PRINT "Police on nyyd kohal! Saame trahvi!"
        SLEEP 2: PRINT "      =Politseiseersant Aru, teie load siia!"
        
        SLEEP 2: PRINT "Palun!"
        SLEEP 1: PRINT "        -Seersant Aru, see mees tahtis vist pommi varastada!"
        SLEEP 2: PRINT "      =MIDA???"
        SLEEP 1: PRINT "Autost valja!!"
                KEY 3, "Valja"
                KEY 4, "Turbo Boost"
                KEY ON
        INPUT a$
                IF a$ = "Turbo Boost" OR a$ = "No" THEN GOTO 450
        PRINT "Andsidki end politseile valja, oled ikka loll kyll! FAILED!"
        GOTO 1100
                
450     CLS
        x = 300
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 4
                NEXT i

        PRINT "Nad ajavad meid taga!"
        SLEEP 1: PRINT "Aga bensiin on kohe otsas, ja aku ka tyhi!"
        SLEEP 2: PRINT "AKU: tyhi, not enough voltage to connect"
        SLEEP 2
        GOTO 900

100
        CLS
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        PRINT "Siin Devon Miles."
        SLEEP 1
        PRINT "Mis sa seal jamad niimoodi??"
        SLEEP 2
        PRINT "Yhendus peaaegu katkes!!!!"
        SLEEP 1
        PRINT "Kohe taastan..."
        SLEEP 1
        GOTO 300

105   PRINT "Kas tahad MENU-lehekyljele?"
        INPUT a$
        IF a$ = "Yes" OR a$ = "yes" OR a$ = "y" OR a$ = "j" OR a$ = "jah" OR a$ = "ja" THEN GOTO 11
        GOTO 100

1000  PRINT "Nagu naha, ei suutnudki sa tuuma6nnetust ara hoida, oled ikka yks kasutu tyyp!"

1100
     ' \***********************************FAILED FAILED FAILED**************'1

    aeg = TIMER - StartTime                         'Aja valem
    TIMER OFF
                        CLS
                                COLOR 4
                        IF aeg > 300 THEN LOCATE 9, 33: PRINT "NO MORE TIME"
                        KEY OFF
                        LOCATE 11, 32
                        PRINT "MISSION FAILED"
                        COLOR 11
                        LOCATE 13, 1
                        SLEEP 3
                        PRINT TAB(12); " Fantastico! Kui ma ytlen sulle, et too moosi, mis"
                        SLEEP 3
                        PRINT TAB(12); "sa siis teed? Toon moosi. Tood moosi! ... Yhe, mitte"
                        SLEEP 3
                        PRINT TAB(12); "kaks purki! ... Oigus, purgi ja'tan sinna!!! "
                        SLEEP 3
                        PRINT TAB(12); "Yhes6naga, oled yks lootusetu tyyp!"
                laip = 0
                aeg = 0
SLEEP 3
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click any key"
 
        DO
        LOOP UNTIL INKEY$ <> ""
 GOTO 10

900 '**************************MISSION ACCOMLISHED**************

     CLS
     KEY OFF
     mission1 = punktid
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:       ", mission1
     PRINT "POMMI PAA'STMISE EEST                 +10000"
     punktid = punktid + 10000
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):            ", INT(aeg)
     ajalisa = 300 - aeg
     timebonus = ajalisa * 20
     TIMER OFF
     PRINT "TIMEBONUS:              ", INT(timebonus)
     lopp = punktid + timebonus
     punktid = INT(lopp)
     COLOR 15
     PRINT : PRINT "KOKKU:", INT(lopp)
      DO
      LOOP UNTIL INKEY$ <> ""
      mission = 6
        OPEN "buffer.txt" FOR OUTPUT AS #6
        PRINT #6, nimi$
          PRINT #6, mission
         PRINT #6, punktid
         PRINT #6, pin
         PRINT #6, ok
         CLOSE #6
     COLOR 9
     PRINT : PRINT
     PRINT "                      Jackil on sulle ha'id uudiseid."
     PRINT "                   Kuulsa hackerite salaorganisatsiooni"
     PRINT "                 koosolekul arutati juba sinu v6imalikust"
     PRINT "                           liikmeks v6tmisest."
     PRINT "                       Nii et natuke pinguta veel!"
     PRINT : PRINT "                            Uudise hind: 100$"
        DO
        LOOP UNTIL INKEY$ <> ""
        COLOR 15

     '*******           P U N K T I T A B E L           *******************

    CLS
    SCREEN 12
    KEY OFF

    OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, b, rida3$, c, rida4$, d, rida5$, e, rida6$, f, rida7$, g
    CLOSE #1
        IF punktid < g + 1 THEN koht = 8
        IF punktid > g THEN koht = 7
        IF punktid > f THEN koht = 6
        IF punktid > e THEN koht = 5
        IF punktid > d THEN koht = 4
        IF punktid > c THEN koht = 3
        IF punktid > b THEN koht = 2
        IF punktid > a THEN koht = 1

     IF koht < 7 THEN rida7$ = rida6$: g = f
        IF koht < 6 THEN rida6$ = rida5$: f = e
        IF koht < 5 THEN rida5$ = rida4$: e = d
        IF koht < 4 THEN rida4$ = rida3$: d = c
        IF koht < 3 THEN rida3$ = rida2$: c = b
        IF koht < 2 THEN rida2$ = rida1$: b = a
         IF koht = 1 THEN rida1$ = nimi$: a = punktid
         IF koht = 2 THEN rida2$ = nimi$: b = punktid
         IF koht = 3 THEN rida3$ = nimi$: c = punktid
         IF koht = 4 THEN rida4$ = nimi$: d = punktid
         IF koht = 5 THEN rida5$ = nimi$: e = punktid
         IF koht = 6 THEN rida6$ = nimi$: f = punktid
         IF koht = 7 THEN rida7$ = nimi$: g = punktid
     OPEN "tabel.txt" FOR OUTPUT AS #1
     PRINT #1, rida1$
     PRINT #1, a
     PRINT #1, rida2$
     PRINT #1, b
     PRINT #1, rida3$
     PRINT #1, c
     PRINT #1, rida4$
     PRINT #1, d
     PRINT #1, rida5$
     PRINT #1, e
     PRINT #1, rida6$
     PRINT #1, f
     PRINT #1, rida7$
     PRINT #1, g

     CLOSE #1
   OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, b, rida3$, c, rida4$, d, rida5$, e, rida6$, f, rida7$, g
    CLOSE #1

 '****************************TABELI PILT***************************
        LINE (0, 90)-(640, 100), 9, BF        'horiz kollane ja sinine
        LINE (0, 101)-(640, 110), 14, BF
  
        LINE (131, 54)-(509, 89), 4, BF       '<Protocol> kast
        LINE (139, 62)-(501, 81), 0, BF
  

        LINE (120, 40)-(130, 370), 14, BF     'vertical-jooned (kollased)
        LINE (520, 40)-(510, 370), 14, BF

        LINE (139, 145)-(501, 146), 14, BF    'joon voitja nime all

        LINE (75, 280)-(565, 310), 9, BF      'Your SUM kast
        LINE (78, 283)-(562, 307), 0, BF

        LINE (0, 371)-(640, 374), 4, BF       'alumine vertical-joon

        LOCATE 5, 28
        PRINT "Hacker's World protocol"
        LOCATE 19, 32
        PRINT "Your SUM: "
        COLOR 4
        LOCATE 25, 15: PRINT "Hacker's World is produced by Sulev & Urmas Reisberg"
        LOCATE 26, 15: PRINT "1998"
        LOCATE 27, 15: PRINT "Thank You for playing!"

        '****************************************************
        COLOR 10
        LOCATE 9, 32: PRINT rida1$, a
        COLOR 15
        IF koht = 2 THEN COLOR 14
        LOCATE 11, 32: PRINT rida2$, b
        COLOR 15
        IF koht = 3 THEN COLOR 14
        LOCATE 12, 32: PRINT rida3$, c
        COLOR 15
        IF koht = 4 THEN COLOR 14
        LOCATE 13, 32: PRINT rida4$, d
        COLOR 15
        IF koht = 5 THEN COLOR 14
        LOCATE 14, 32: PRINT rida5$, e
        COLOR 15
        IF koht = 6 THEN COLOR 14
        LOCATE 15, 32: PRINT rida6$, f
        COLOR 15
        IF koht = 7 THEN COLOR 14
        LOCATE 16, 32: PRINT rida7$, g
        COLOR 14
        LOCATE 19, 43: PRINT punktid
        '****************************************************
        COLOR 15
                DO
                LOOP UNTIL INKEY$ <> ""
      
          RUN "miss6.bas"

