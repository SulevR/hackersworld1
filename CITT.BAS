
        '<Hacker's World> Knight Rider as Carmaggedon Mission
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
        RUN "hackersw.bas"


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
         PRINT #3, 2
         CLOSE #3
    SYSTEM
20
        ' Naidis
        OPEN "Savegam1.txt" FOR INPUT AS #1
                INPUT #1, aaa$, bbb, ccc
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
                INPUT #2, a$, b, c
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
                INPUT #3, aa$, bb, cc
                LOCATE 23, 1
                PRINT "                  3"
                LOCATE 23, 23
                PRINT aa$
                LOCATE 23, 36
                PRINT bb
                LOCATE 23, 44
                PRINT cc
                CLOSE
        IF x$ = "LoadGame" THEN GOTO 25
       'MMMMMMMMMAAAAAANGUUUUDDDDDEEEEE SAVING
    COLOR 7
    INPUT "  Where You save (1-3 or Enter to cancel)>", y$
        IF y$ = "1" THEN OPEN "Savegam1.txt" FOR OUTPUT AS #4
        IF y$ = "2" THEN OPEN "Savegam2.txt" FOR OUTPUT AS #4
        IF y$ = "3" THEN OPEN "Savegam3.txt" FOR OUTPUT AS #4
       IF y$ <> "1" AND y$ <> "2" AND y$ <> "3" THEN GOTO 11
         PRINT #4, nimi$
         PRINT #4, mission
         PRINT #4, punktid
         CLOSE #4
        GOTO 11

25 'MMMMMMMAAAAAANgude loadimime LOADING
        COLOR 7
                INPUT "  Which You load (1-3 or Enter to cancel)>", y$
                IF y$ = "1" THEN mission = bbb: punktid = ccc: GOTO 11
                IF y$ = "2" THEN mission = b: punktid = c: GOTO 11
                 IF y$ = "3" THEN mission = bb: punktid = cc: GOTO 11
                 OPEN "buffer.txt" FOR OUTPUT AS #3
                 PRINT #3, nimi$
                 PRINT #3, mission
                 PRINT #3, punktid
                    PRINT #3, ""
                    PRINT #3, ""
                 CLOSE #3
                 IF mission = 1 THEN RUN "miss1"
                 IF mission = 2 THEN RUN "miss2"
                 IF mission = 3 THEN RUN "miss3"
                 IF mission = 4 THEN RUN "miss4"
                 IF mission = 6 THEN RUN "miss6"
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
        KEY 1, "Jah"
        KEY 2, "Ei"
        

        COLOR 15
        PRINT "You need help?"
        SLEEP 1
        PRINT "Maybe you can hire Michael Knight. His number is 3645. Call him?"
                KEY ON
                INPUT a$
                IF a$ = "Ei" THEN GOTO 105
        
        KEY OFF
        PRINT "There is your computer's telephone"
        INPUT "Insert telephone number you want to call:", number$
       
        PRINT "Calling:", number$
        a = 400
        FOR k = 1 TO 7
        SOUND a, 2
        a = INT(RND * 400) + 400
        NEXT k
                IF number$ = "3645" OR number$ = "carma" THEN GOTO 310
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
310   PRINT : PRINT "Who are there?"
      PRINT "Im in hospital now! Excuse me... I send You to Kitt"
        DO
        LOOP UNTIL INKEY$ <> ""
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, "Jah"
        KEY 2, "Ei"
        KEY ON
      COLOR 11
      PRINT "   Converting signal..."
      PRINT "   Connecting Kit Car System: done"
      PRINT "           Ohohohoo? Ma kyll ei tea, kes pa'rdik sa oled,"
      PRINT "           aga kas la'hme s6itma?"
        INPUT ">", a$
        IF a$ = "Jah" OR a$ = "ja" OR a$ = "jah" THEN GOTO 315
        
      baby = baby + 1
      IF baby = 3 THEN GOTO 312
      PRINT "What's wrong, baby?"
      SLEEP 3
      GOTO 300
312     SLEEP
        PRINT "Ok. Mis asja sa narrid siin?"
        INPUT a$
        PRINT "Aga 6nneks ma tean, kuidas sulle ka'kki keerata..."
        SLEEP 3
        COLOR 4
        PRINT : PRINT : PRINT " Sa'tin raketikesed paika ja..."
        SLEEP 3
        COLOR 13
        PRINT "      Sihtma'rk: War street 10"
        SLEEP 1
        PRINT "      OK?"
        SLEEP 1
        COLOR 15
        PRINT "              Ja-ja-jaaaaa"
        SLEEP 1
        COLOR 13
        PRINT "      Raketid va'lja saadetud."
        SLEEP 1
        COLOR 15
        PRINT " Mis tunne nyyd on? Narrija sihuke!"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1100
       
      


315
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        IF aku = 1 THEN PRINT "Tere jalle!, akud on nyyd natukeseks ajaks jalle tais!"
316
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100
        KEY 1, "Esilehele": KEY 2, " Tapame": KEY 3, " Kiusame": KEY 4, " Piiname"
        KEY 5, " Kihutame": KEY 6, " S6idame": KEY 7, " Jalutame": KEY 8, "": KEY 9, "": KEY 10, ""
       
        PRINT "Pa'rdik! Mis me nyyd teeme?"
317        KEY ON
        INPUT a$
        IF a$ = "Tapame" OR a$ = "Veel" OR a$ = "Kiusame" OR a$ = "Piiname" OR a$ = "Kihutame" THEN GOTO 900
        IF a$ = "S6idame" THEN GOTO 320
        IF a$ = "Esilehele" THEN KEY 3, "": GOTO 11
        IF a$ = "Jalutame" THEN GOTO 365
        SLEEP 1
        PRINT "Mis asja me teeme?"; 317

320     PRINT "Ei tea kuhu me s6idame?"
        INPUT a$
        IF a$ = "War Street 10" OR a$ = "War street 10" OR a$ = "war street 10" THEN GOTO 335
        IF a$ = "WAR STREET 10" OR a$ = "WarStreet 10" OR a$ = "WarStreet10" THEN GOTO 335
        PRINT "Here We go!"
        GOTO 900
365
        SLEEP 1
        PRINT " Jalutame?"
        SLEEP 1
        PRINT "  Mis mees sa sihuke oled, kui sul minusugune auto on?"
        INPUT a$
        PRINT "A'ra mo'lise, pa'rdik. Mis me teeme?"
        GOTO 317
335     PRINT "Here We go!"
        SLEEP 1

        FOR k = 1 TO 3
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
      
      PRINT "Michael, mu skanneering naitab , et siin on mingid vargad!"
      PRINT "Yks on otse mu ees! Ajan alla, eks?"
        KEY OFF
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, "Jah"
        KEY 2, "Ei"
       
        KEY ON
        INPUT a$
           IF a$ = "No" OR a$ = "no" OR a$ = "ei" OR a$ = "Ei" THEN GOTO 312
        PRINT "Hey you ,man!"
        
         SLEEP 1: PRINT "   - Who are here?    "
         SLEEP 1: PRINT "Who, who, who!? "
         SLEEP 2
        GOSUB 500

325   PRINT " Teise ikka ka, jah?"
326      INPUT a$
                IF a$ = "Yes" OR a$ = "Jah" OR a$ = "ja" OR a$ = "jah" THEN GOTO 330
              
                PRINT "Waiting alla ajamist..."
                DO
                LOOP UNTIL INKEY$ <> ""
                PRINT "Sa ju lubad?"
                GOTO 326


330        GOSUB 500
      PRINT "Juba valmis!"
      SLEEP 1
     
340    aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100

        PRINT "Ska'nnime selle koha la'bi nyyd, jah?"
        INPUT a$
        IF a$ = "Jah" THEN GOTO 400
      PRINT "Ok"
      SLEEP 1: PRINT "Mis jama me siin passime siis?"
        INPUT a$
      PRINT "Tapan niisama va'?"
        INPUT a$
        IF a$ = "Ei" THEN bensiin = 1: GOTO 350
      PRINT "TURN OFF: done"
      PRINT "Vajuta midagi ja ma lasen end 6hku"
        DO
        LOOP UNTIL INKEY$ <> ""
      PRINT "See oli nali"
      SLEEP 3
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

        
355  PRINT " Kas ma v]in siis vahepeal meelt lahutada?"
        INPUT a$
        IF a$ = "Jah" OR a$ = "ja" OR a$ = "Yes" THEN GOTO 380
        SLEEP 1: PRINT "Aga siis ma scannin ymbrust, pa'rdik!": SLEEP 2
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100
        GOTO 400
380
    DO
    SLEEP 1
    GOSUB 500
    LOOP UNTIL INKEY$ <> ""
   GOTO 340
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

        PRINT "Oh sa mu pa'rdikukene, siin on yks l6hkumata auto!"
        SLEEP 2: PRINT "Ma pean sellega midagi ette v6tma!"
        PRINT "Tohin ma ta 6hata?"
        INPUT a$
                IF a$ = "Yes" OR a$ = "Jah" OR a$ = "jah" THEN GOTO 420
        PRINT "Aga inimesed?? Need v6in va'?"
405            INPUT a$
               IF a$ = "No" OR a$ = "Ei" OR a$ = "ei" THEN GOTO 430
           PRINT "Juuuuhuuu! Sa oled l6bus inimene."
           SLEEP 3
           GOSUB 500
           PRINT "Ning nyyd see teine... Ha-ha-haaa"
           SLEEP 1
           GOSUB 500
            PRINT "Oeh. V6ttiski pa'ris higistama."
            DO
            LOOP UNTIL INKEY$ <> ""
          GOTO 800

430                '***********************SCANNIB AUTOT
        SLEEP 1: PRINT "Scanning car..."
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
        SLEEP 1: PRINT "Pa'rdik! Seal on mingi jubin autos..."
        SLEEP 2: PRINT "Ooo Eii!!! Sa ei raa'kinud midagi aatompommist!"
        SLEEP 2
DO
        SLEEP 2: PRINT "APPI!"
        GOSUB 500
        SLEEP 1: PRINT "Paa'stke!"
        GOSUB 500
        PRINT "APPI ! APPI ! APPI!"
        GOSUB 500
        PRINT "Pee Oo Emm Emm..."
         FOR k = 1 TO 3
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

LOOP UNTIL INKEY$ <> ""
       
              
440 PRINT "Police on juba kohal ! "
                  KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
                KEY 1, "Waste"
                KEY 2, "Turbo Boost"
                KEY ON
        INPUT a$
                IF a$ = "Turbo Boost" THEN GOTO 450
        SLEEP 1
        PRINT "See on ysna raske problemo!"
         FOR k = 1 TO 3
         b = 50
         FOR a = 1 TO 4
            SOUND b, 1
            b = b + 30
        NEXT a
      NEXT k
           PRINT "Aaaaaaaa!"
           x = 250
           FOR k = 1 TO 20
              SOUND x, 1
                x = x - 4
           NEXT k
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 1
                NEXT i
          PRINT "  - Who a special killer are in this car?"
               x = x + 100
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 4
                NEXT i
           GOSUB 500
          PRINT "  - Please, Dont waste me."
           x = 50
           DO
            FOR i = 1 TO 10
                SOUND x, 1
                x = x - 25
                IF x < 70 THEN EXIT DO
            NEXT i
                x = x + 50
           LOOP UNTIL x < 70
            GOSUB 510
         SLEEP 1
         IF police = 3 OR police = 5 THEN GOTO 445
         PRINT "Huuh! Juba kypse. No oli koba."
         police = police + 1
          GOTO 450

445  PRINT "A a a a a a a"
        SLEEP 2
        PRINT "Ma olen nyyd surnud."
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1100
450  SLEEP 1
        PRINT "Nonii. Ongi rahulikum."
        SLEEP 2: PRINT "La-la-la-la-laa"
        SLEEP 3: PRINT "Kuule, nodi on nii palju. v6ib ma ostan endale midagi?"
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, "Jah"
        KEY 2, "Ei"
       
        INPUT a$
        
     
      IF a$ = "Yes" OR a$ = "Jah" OR a$ = "Ja" THEN GOTO 410
      SLEEP 1
      aegg = 1
      PRINT "Tead, mis? Ma vaatan , et mu kell on kuskil tuksi la'inud..."
      SLEEP 4
      PRINT "Ja see na'itab nyyd, et aeg on la'bi."
      SLEEP 4
      PRINT "Sorry"
      SLEEP 2
      GOTO 1100
410  CLS
        KEY 1, "TurboBoost"
        KEY 2, "Bomb KY"
        KEY 3, "Car-phone"
411        COLOR 5
        PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        PRINT "         TurboBoost (F1)     -    7300002 $"
        PRINT : PRINT "         Bomb KY    (F2)     -    3820002 $"
        PRINT : PRINT "         Car-phone  (F3)     -    3194873 $"
        COLOR 10
        PRINT : INPUT "Sinu valik >>> ", a$
         SLEEP 1
         PRINT "You get it, black car..."
        DO
        LOOP UNTIL INKEY$ <> ""
       IF a$ = "Car-Phone" OR a$ = "TurboBoost" THEN GOTO 316
        IF a$ <> "Bomb KY" THEN PRINT "Jeah. See vastus n6uab sult 2540 $.": GOTO 411
     CLS
        PAINT (10, 10), 2
        '***********************************KITI AUTO*******************
        PSET (303, 190), 0
        DRAW "r34;d3;r1;d2;r1;d2;r1;d3;r1;d33;r1;d2;r1;d2;r1;d3;r1;d20;l1;d3;l1;d2;l1;d2;l1;d13;l1;d3;l1;d2;l1;d2;l1;d3"
        DRAW "l34;u3;l1;u2;l1;u2;l1;u2;l1;u13;l1;u3;l1;u2;l1;u2;l1;u20;r1;u3;r1;u2;r1;u2;r1;u33;r1;u3;r1;u2;r1;u2;r1;u3"
        PAINT (304, 191), 0
      SLEEP 1
        LINE (300, 180)-(310, 190), 4, BF
        SLEEP 1
       LOCATE 3, 3
       COLOR 15
       PRINT " Huuh. Ma siin chekkisin super arvutist ja'rele, et see KY t'hendab <KiII YourseIf>"
       SLEEP 2
       PRINT " Aga ma ei tea veel, mis see t'hendab. 6petuses on kirjas nii: vajuta suvalist nuppu ja"
       SLEEP 2
       PRINT "Pomm KY aktiviseerub. Ma ei m6ista."
       FOR i = 1 TO 90000
       NEXT i
        PRINT "Oi! Nyyd ma m6istan. Palun! A'ra yhtegi nuppu puutu."
       DO
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100
       LOOP UNTIL INKEY$ <> ""
          SLEEP 1
          PRINT "MMM IIIII KKKKKKKK SSSSSSSSS ?"
         x = 1
         FOR i = 1 TO 350
           CIRCLE (295, 185), 8 + x, 4
           CIRCLE (295, 185), x, 0
          NEXT i
        GOTO 1100


420
        SLEEP 3
        COLOR 4
        PRINT : PRINT : PRINT " Sa'tin raketikesed paika ja..."
        SLEEP 3
        COLOR 13
        PRINT "      Sihtma'rk: War street 10 k6rval asuv    "
        SLEEP 1
        PRINT "      OK?"
        SLEEP 1
         INPUT a$
         IF a$ = "Jah" OR a$ = "Yes" OR a$ = "jah" THEN GOTO 422
       SLEEP 1
       PRINT "Aga need vargana'od? Neile ma ju v6in otsa peale teha?"
       GOTO 405
422        SLEEP 1
        COLOR 13
        PRINT "      Raketid va'lja saadetud."
        GOTO 510
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1100

  

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
        GOTO 11

1000  PRINT "Nagu naha, ei suutnudki sa tuuma6nnetust ara hoida, oled ikka yks kasutu tyyp!"

1100
     ' \***********************************FAILED FAILED FAILED**************'1

    aeg = TIMER - StartTime                         'Aja valem
    TIMER OFF
                        CLS
                                COLOR 4
                        IF aeg > 300 OR aegg = 1 THEN LOCATE 9, 33: PRINT "NO MORE TIME"
                        KEY OFF
                        LOCATE 11, 32
                        PRINT "MISSION FAILED"
                        COLOR 11
                        LOCATE 13, 1
                        SLEEP 3
                        PRINT TAB(12); " Uuuuh! Sa rasvahunnik kyll? Tead mis? Mine v6ta "
                        SLEEP 3
                        PRINT TAB(12); "leksikon ning uuri va'lja, mida ta'hendab <auto>!"
                        
                        SLEEP 3
                        PRINT TAB(12); "Yhes6naga, oled yks lootusetu tyyp!"
                combo = 0
                extra = 0
                carw = 0
                peli = 0
                aegg = 1
                aeg = 0
SLEEP 3
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click any key"
 
        DO
        LOOP UNTIL INKEY$ <> ""
 GOTO 10



800 '**************************MISSION ACCOMLISHED**************

     CLS
     KEY OFF
     mission1 = punktid
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:                        ", mission1
     
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):                                   ", INT(aeg)
     ajalisa = 300 - aeg
     timebonus = ajalisa * 20
     TIMER OFF
     IF carw > 0 THEN PRINT "AUTODE L6HKUMISE EEST:      ", carw
     punktid = punktid + carw
     IF extra > 0 THEN PRINT "SUUREPA'RASE STIILI EEST:  ", extra
     punktid = punktid + extra
     IF peli > 0 THEN PRINT "LAIAKS LITSUMISTE EEST:     ", peli
     punktid = punktid + peli
     IF combo > 0 THEN PRINT "YLEJAA'NUD LAIPADE EEST:   ", combo
     punktid = punktid + combo

     
     PRINT "TIMEBONUS:                                   ", INT(timebonus)
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
     PRINT "                      Jackil on huvitavaid uudiseid."
     PRINT "                   Hullumaja arstide koosolekul arutati"
     PRINT "                 juba sinu v6imalikust liikmeks v6tmisel."
     PRINT "                           "
     PRINT "             PS! Sul on palju toetajaid patsientide hulgas!"
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


500     bon = INT(RND * 10) + 1
                x = 50
                FOR i = 1 TO 50
                SOUND x, 1
                 x = x + 2
                NEXT i
       
        ' alla ajamised
        IF bon = 1 THEN GOTO 511
         IF bon = 2 THEN GOTO 512
         IF bon = 3 THEN GOTO 513
          IF bon = 4 THEN GOTO 514
           IF bon = 5 THEN GOTO 515
            IF bon = 6 THEN GOTO 516
             IF bon = 7 THEN GOTO 517
              IF bon = 8 THEN GOTO 518
               IF bon = 9 THEN GOTO 519
                IF bon = 10 THEN GOTO 520
520    PRINT : PRINT "Let's kill him"     '************LITSUB LAIAKS
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
                SLEEP 3
                RETURN
511  PRINT : PRINT
COLOR 11
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       PRINT "PELIDRIVER BONUS  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
    peli = peli + 500
    COLOR 11
    RETURN
512
519    PRINT : PRINT
                x = 50
                FOR i = 1 TO 50
                SOUND x, 1
                 x = x + 2
                NEXT i

PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       PRINT "2 x COMBO BONUS  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     combo = combo + 200
    RETURN
513   COLOR 13
514   PRINT : PRINT
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       PRINT "3 x COMBO BONUS  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     combo = combo + 300
    COLOR 15
    RETURN
515   PRINT : PRINT
516   PRINT
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       PRINT "EXTRA STILE BONUS  "
       PRINT "               "
         FOR i = 1 TO 1500
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     extra = extra + 1500
    RETURN
517     PRINT : PRINT
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       PRINT "6 x COMBO BONUS  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     combo = combo + 600
    RETURN
518   PRINT : PRINT
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 60
       DO
       LOCATE 20, x
       PRINT "14 x COMBO BONUS  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
    SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     combo = combo + 1400
    RETURN
510
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        x = 50
       DO
       LOCATE 20, x
       COLOR 4
       PRINT " IDIOTE WASTED  "
       PRINT "               "
         FOR i = 1 TO 2000
        NEXT
      x = x - 1
      LOOP UNTIL x = 5
     SLEEP 1
     LOCATE 20, 5
     PRINT "                 "
     PRINT : PRINT : PRINT
     carw = carw + 4000
    RETURN

900
         FOR k = 1 TO 3
         b = 50
         FOR a = 1 TO 4
            SOUND b, 1
            b = b + 30
        NEXT a
      NEXT k
           LOCATE 20, 5
           COLOR 11
           PRINT "COMBO BONUS"
           combo = combo + 1
           x = 250
           FOR k = 1 TO 20
              SOUND x, 1
                x = x - 4
           NEXT k
DO
           x = 250
           FOR k = 1 TO 20
              SOUND x, 1
                x = x - 4
           NEXT k
       
        GOSUB 500
        x = 250
        FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 1
                NEXT i
            LOCATE 20, 5
            PRINT "STYLE BONUS"
            extra = extra + 1
               x = x + 100
                FOR i = 1 TO 50
                        SOUND x, 1
                        x = x + 4
                NEXT i
           GOSUB 500
           GOSUB 500
LOOP UNTIL INKEY$ <> ""
        aeg = TIMER - StartTime
        IF aeg > 300 THEN GOTO 1100
        PRINT "Ja mis nyyd?"
        KEY 1, "Esilehele": KEY 2, " Veel": KEY 3, " Veel": KEY 4, " Veel"
        KEY 5, " Veel": KEY 6, " S6idame": KEY 7, " Jalutame": KEY 8, "": KEY 9, "": KEY 10, ""
         GOTO 317
        

