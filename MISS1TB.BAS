   mission = 1

11110   CLS
       SCREEN 12
11111   IF arve > 999999 THEN GOTO 280
        CLS
        OPEN "buffer.txt" FOR INPUT AS #4
        INPUT #4, nimi$, mission, punktid, pin, ok
        CLOSE #4
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
         PRINT "F2 - Restart"
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
         LOCATE 19, 13
         PRINT "F9 - Edetabel"
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
        KEY 2, " Restart"
        KEY 8, " Mission"
        KEY 9, " Edetabel"
        KEY 10, ""
        LOCATE 20, 13

        PRINT ">"
        LINE (300, 100)-(600, 300), 1, B
                x1 = 400
                x2 = 450
                x3 = 500
                y1 = 200
                y2 = 210
                y3 = 250
                F = 1
                d = 1
            
                DO
              LINE (x1, y1)-(x2, y2), F
              LINE (x2, y2)-(x3, y3), F
              LINE (x3, y3)-(x1, y1), F
               FOR k = 1 TO 1000
                NEXT k
             
             a = INT(4 * RND)
                B = INT(4 * RND)
                c = INT(4 * RND)
             
               IF a = 0 THEN x1 = x1 - 6
                IF a = 1 THEN x1 = x1 + 6
                IF a = 2 THEN y1 = y1 - 6
                IF a = 3 THEN y1 = y1 + 6
             
                IF B = 0 THEN x2 = x2 - 6
                IF B = 1 THEN x2 = x2 + 6
                IF B = 2 THEN y2 = y2 - 6
                 IF B = 3 THEN y2 = y2 + 6
              
                 IF c = 0 THEN x3 = x3 + 6
                 IF c = 1 THEN x3 = x3 - 6
                 IF c = 2 THEN y3 = y3 + 6
                  IF c = 3 THEN y3 = y3 - 6
                   F = F + 1
                  IF F > 15 THEN F = 0
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
            
                IF d > 3000 THEN F = 0
                IF d > 5000 THEN d = 0
              LOOP UNTIL INKEY$ <> ""
         LOCATE 20, 13
         INPUT "> ", x$
   IF x$ = "Quit" THEN GOTO 11115
   IF x$ = "Restart" THEN RUN "hackersw.bas"
   IF x$ = "SaveGame" THEN GOTO 11120
   IF x$ = "LoadGame" THEN GOTO 11120
   IF x$ = "NewGame" THEN gkh = 0: GOTO 1
   IF x$ = "Introduction" THEN GOTO 11130
   IF x$ = "Credits" THEN GOTO 11130
   IF x$ = "Mission" THEN GOTO 11150
   IF x$ = "Edetabel" THEN GOTO 11160
11115
        PRINT "                 Really wanna quit?"
        PRINT "                 <Esc>   - Cancel"
        PRINT "                 <Space> - Quit"
        FOR i = 1 TO 2000
        NEXT i
        DO
        IF INKEY$ = " " THEN SYSTEM
        IF INKEY$ = CHR$(27) THEN GOTO 11111
        LOOP
               
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
                INPUT #2, a$, B, c, d, e
                LOCATE 22, 1
                PRINT "                  2"
                LOCATE 22, 23
                PRINT a$
                LOCATE 22, 36
                PRINT B
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
       IF y$ <> "1" AND y$ <> "2" AND y$ <> "3" THEN GOTO 11110
         PRINT #4, nimi$
         PRINT #4, mission
         PRINT #4, punktid
         PRINT #4, pin
         PRINT #4, ok
         CLOSE #4
        GOTO 11110

11125 'MMMMMMMAAAAAANgude loadimime LOADING
        COLOR 7
                INPUT "  Which You load (1-3 or Enter to cancel)>", y$
                IF y$ = "1" THEN mission = bbb: punktid = ccc: pin = ddd: ok = eee
                 IF y$ = "2" THEN mission = B: punktid = c: pin = d: ok = ee
                 IF y$ = "3" THEN mission = bb: punktid = cc: pin = dd: ok = ee
                 IF y$ <> "1" AND y$ <> "2" AND y$ <> "3" THEN GOTO 11110
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
                    mission = 3
                    GOTO 11111

                 GOTO 11110
11130   y = 0
     
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
     IF x$ = "Credits" THEN GOTO 11140
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
     GOTO 11110
11140     LOCATE 8, 1
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
        COLOR 4: PRINT : PRINT "                                      &"
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
     GOTO 11110
11160 CLS
KEY OFF
OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
    CLOSE #1

 '****************************TABELI PILT***************************
        LINE (0, 90)-(640, 100), 9, BF        'horiz kollane ja sinine
        LINE (0, 101)-(640, 110), 14, BF
   
        LINE (131, 54)-(509, 89), 4, BF       '<Protocol> kast
        LINE (139, 62)-(501, 81), 0, BF
   

        LINE (120, 40)-(130, 370), 14, BF     'vertical-jooned (kollased)
        LINE (520, 40)-(510, 370), 14, BF

        LINE (139, 145)-(501, 146), 14, BF    'joon voitja nime all

       
        LINE (0, 371)-(640, 374), 4, BF       'alumine vertical-joon

        LOCATE 5, 28
        PRINT "Hacker's World protocol"
        COLOR 4
        LOCATE 25, 15: PRINT "Hacker's World is produced by Sulev & Urmas Reisberg"
        LOCATE 26, 15: PRINT "1998"
        LOCATE 27, 15: PRINT "Thank You for playing!"

        '****************************************************
        COLOR 10
        LOCATE 9, 32: PRINT rida1$, a
        LOCATE 11, 32: PRINT rida2$, B
        LOCATE 12, 32: PRINT rida3$, c
        LOCATE 13, 32: PRINT rida4$, d
        LOCATE 14, 32: PRINT rida5$, e
        LOCATE 15, 32: PRINT rida6$, F
        LOCATE 16, 32: PRINT rida7$, g
        '****************************************************
        COLOR 15
                DO
                LOOP UNTIL INKEY$ <> ""
           GOTO 11110
11150   CLS
        KEY OFF
        COLOR 11
        OPEN "mission1.txt" FOR INPUT AS #3
        DO
        INPUT #3, rida$
        PRINT rida$
        LOOP UNTIL EOF(3)
      CLOSE #3
       hkg = 1
       DO
       IF INKEY$ = CHR$(27) THEN GOTO 11111
       IF INKEY$ = CHR$(32) THEN GOTO 1
       LOOP
       
       






10000 ' \***********************************FAILED FAILED FAILED**************'1

                        CLS
                                COLOR 4
                        KEY OFF
                        LOCATE 11, 32
                        PRINT "MISSION FAILED"
                        COLOR 11
                        LOCATE 13, 1
                        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
                        PRINT TAB(12); "Nagu sa isegi na'ed ei 6nnestu sul mitte midagi. Ei saand "
                        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
                        PRINT TAB(12); "sa isegi nende imikuile m6eldud Missionidega hakkama"
                        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
                        PRINT TAB(12); "Ta'ielikust sitast lollpea oled, muideks. "
                        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
                        LOCATE 15, 1
                        PRINT TAB(12); "Tarkust jaab sul natuke va'heks"
sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click <SPACE> to try again"
PRINT TAB(38); "<ESC> to work & worry"

        DO
        'IF INKEY$ = CHR$(32) THEN EXIT DO
        IF INKEY$ = CHR$(27) THEN GOTO 11111
        LOOP UNTIL INKEY$ = CHR$(32)
 GOTO 1

1               pin = 14567
                sober = 0
                arve = 0
                lillearve = 1000001
                pangaarvutivork = 0
             
                tehingukuupaev$ = "03-05-1998"
                tehinguaeg$ = "15:34:21"




       
7
    TIMER ON
   
    StartTime = TIMER
    aeg = TIMER - StartTime                         'Aja valem
    IF hkg = 0 THEN GOTO 11150
    IF mission = 1 AND aeg > 300 THEN GOTO 270
   
       

                                                    'GAME ALGAB
10

     
    

100 '************************LINNAPANGA LEHEK[LG*****
CLS
     KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
    KEY 1, " Back"
    KEY 2, " Tehingud"
    KEY 3, " Uldandmed"
    KEY 4, " Muu jama"
    KEY OFF
    aeg = TIMER - StartTime
    IF mission = 1 AND aeg > 300 THEN GOTO 270
    SCREEN 9
   
    PRINT "Connecting http://linnapank.com/": PRINT "Waiting for reply..."
       sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
  
    LINE (0, 50)-(120, 88), 1, BF
    LINE (0, 90)-(120, 305), 1, BF
    LINE (120, 50)-(640, 305), 15, BF
       sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    LINE (8, 112)-(15, 125), 3, BF
    LINE (8, 127)-(15, 139), 3, BF
    LINE (8, 141)-(15, 152), 3, BF
    LINE (8, 154)-(15, 166), 3, BF
    COLOR 2
     
 
    PSET (200, 100)                                     'L
    DRAW "d32;r26;u6;l20;u26;l6"
    PAINT (201, 101), 2
 
    PSET (240, 100)                                     'i
    DRAW "d32;r6;u32;l6"
    PAINT (241, 101), 2

    PSET (255, 100)                                     'n
    DRAW "d32; r6; u26; f26; r6; u32;l6;d 25; h25; l6"
    PAINT (256, 101), 2

    PSET (302, 100)                                     'n
    DRAW "d32; r6; u26; f26; r6; u32;l6;d 25; h25; l6"
    PAINT (303, 101), 2

    PSET (362, 100)                                     'a
    DRAW "g13;d19;r6; u13;r24;d13;r6;u19;h13;l10"
    PSET (365, 106)
    DRAW "g8;r20;h8;l4"
    PAINT (363, 101), 2

    PSET (394, 100)                                     'p
    DRAW "d 32;r6;u13;r20;e4;u11;h4;l26"
    PSET (400, 106)
    DRAW "d8;r16;e3;u2;h3;l16"
    PAINT (395, 101), 2

    PSET (445, 100)                                     'a
    DRAW "g13;d19;r6; u13;r24;d13;r6;u19;h13;l10"
    PSET (448, 106)
    DRAW "g8;r20;h8;l4"
    PAINT (446, 101), 2


    PSET (476, 100)                                     'n
    DRAW "d32; r6; u26; f26; r6; u32;l6;d 25; h25; l6"
    PAINT (477, 101), 2

    PSET (521, 100)
    DRAW "d32;r6;u8;e8;f10;d6;r6;u8;h12;e12;l6;g18;u18;l6"   'k
    PAINT (522, 101), 2
     
       sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    COLOR 15
    LOCATE 5, 3
    PRINT DATE$;
    LOCATE 6, 4
    PRINT TIME$
    LOCATE 9, 3
    PRINT "F1-Back "
    LOCATE 10, 3
    PRINT "F2-Tehingud"
    LOCATE 11, 3
    PRINT "F3-Uldandmed"
    LOCATE 12, 3
    PRINT "F4-Muu jama"

'******************************LOGO*******************************
COLOR 0
PSET (350, 170)                                                                                                                            '                                                                                        '
DRAW "l1;g20;d6;l2;d42;r2;d2;r6;d8;l12;u8;l8;d14;r100;u6;l10;u8;e2;r2;u2;e2;u2;l2;u2;e2;u2;h2;u2;h2;l2;d2;f2;d2;g2;d2;g2;d2;f2;g2;f2;r1;d8;l15;u4;h2;u2;r4;u8;h2;u38;h2;u2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;d72;g2;d4;r10;u6;h2;u12;h2;u50;r2;f2;r2;f2;r2;f2;r4;f2;r2;f2;r2;f2;r2;f2;r4;f2;d38;f2;d8;l14;h1;l14;h1;l6;u2;l6"
PSET (351, 206)
DRAW "e4;d4;e20"
PSET (351, 224)
DRAW "e4;d4;e33"

PSET (391, 248)
DRAW "l4;u8;r2;d2;f2;d4"
PSET (330, 248)
DRAW "u2;e1;u4"
PAINT (340, 190), 0
PAINT (380, 200), 0
PAINT (353, 210), 0
PAINT (358, 218), 0
PAINT (406, 234), 0
COLOR 8
PSET (356, 178)
DRAW "d27;e19;u1;l2;u1;l2;u1;l5;u1;l1;u1;l2;u1;l2;u1;l2;u1;l1;u1;l3"
PAINT (360, 190), 8
PSET (356, 224)
DRAW "d2;f2;d9;r4;f1;r14;f1;r14;u14;h2;u31;h1;l1;g32"
PAINT (370, 220), 8
COLOR 15
  
 
    LOCATE 1, 1
    PRINT "Document: Done                       "
    PRINT "                                "
    LOCATE 3, 15
    PRINT "http://linnapank/"
    DO
    LOCATE 23, 3
    a = INT(RND * 10)
    COLOR a
    PRINT "  T e r e    T u l e m a s t   L i n n a p a n g a   K o d u l e h e l e "
    FOR i = 1 TO 7000
    NEXT i
    LOOP UNTIL INKEY$ <> ""
    LOCATE 23, 3
    COLOR 15
    PRINT "  T E R E    T U L E M A S T   L I N N A P A N G A   K O D U L E H E L E"
  
  
    LOCATE 3, 15
    KEY 1, "Back"
    KEY 2, "Tehingud"
    KEY 3, "Uldandmed"
    KEY 4, "Muu jama"
    KEY OFF
    INPUT "http://linnapank/", B$
130    IF B$ = "Tehingud" THEN GOTO 200
        IF B$ = "Muu jama" THEN GOTO 183
        IF B$ = "Back" THEN GOTO 11110
        IF B$ = "Uldandmed" THEN GOTO 140
        IF B$ = "TEHINGUD" OR B$ = "MUU JAMA" THEN PRINT "SIIN mangus SUURI tahti ei kasutata!!!!!"
        PRINT "Kasuta vaikseid tahti!"
        GOTO 100
140 '*************************PANGA LEHEKULG*****
        CLS
        COLOR 15
        SCREEN 12
        PRINT : PRINT "                              L I N N A P A N K "
        LINE (0, 35)-(640, 35), 2
        LINE (0, 38)-(640, 38), 14
        COLOR 7
        PRINT : PRINT "  Ta'isnimi:                     Eesti Linnapank AS   Linnapank on sellise "
                PRINT "  Omanikud:                       61% Siim S Paulus   riigi nagu Eesti yks "
                PRINT "                                 19% Laura Ullollus   suuremaid panku. Tal on"
                PRINT "                                           19% riik   samapalju hoiusatjaid"
                PRINT "                               10% va'ikeinvestorid   kui on Eestis 2/3 ini-  "
                PRINT "  Aastaka'ive:                          200 mln EEK   mesi st 1 000 000. "
                PRINT "  Investeeringutevajadus:               5-9 mln EEK   Yhes6naga on meil ikka  "
                PRINT "  Bilansimaht:                            2 mln EEK   j6le hea pank ning unus- "
                PRINT "  Hoiustajaid:                            1 000 000   tage teised pangad parem "
                PRINT "  Aasta puhaskasum eelmisel aastal:      25 mln EEK   kohe a'ra."
                PRINT "  Panga varad:                           67 mln EEK"
                PRINT "  Netohind:                       140 - 800 mln EEK                S Paulus  "
        PRINT : PRINT "  Linnapanga osakaal Eesti pangaturul:"
        LOCATE 27, 5
        PRINT "      Press <Esc> to return"
        LINE (10, 0)-(10, 450), 2
        LINE (14, 42)-(420, 250), 3, B
        LINE (424, 42)-(630, 250), 5, B
        COLOR 9
        CIRCLE (100, 330), 50, 4
        CIRCLE (100, 330), 49, 1
        LINE (100, 330)-(100, 380), 4
        LINE (100, 330)-(50, 330), 4
        LINE (14, 254)-(420, 400), 1, B
        LINE (101, 329)-(101, 379), 1
        LINE (101, 329)-(51, 329), 1
       
        PAINT (98, 332), 4
        PAINT (105, 328), 1
        LOCATE 19, 28
        COLOR 4
        PRINT CHR$(177)
        COLOR 1
        LOCATE 21, 28
        PRINT CHR$(177)
        COLOR 7
        LOCATE 19, 30
        PRINT "Linnapank"
        LOCATE 21, 30
        PRINT "Muud pangad"
       
COLOR 15
PSET (510, 290)                                                                                                                            '                                                                                        '
DRAW "l1;g20;d6;l2;d42;r2;d2;r6;d8;l12;u8;l8;d14;r100;u6;l10;u8;e2;r2;u2;e2;u2;l2;u2;e2;u2;h2;u2;h2;l2;d2;f2;d2;g2;d2;g2;d2;f2;g2;f2;r1;d8;l15;u4;h2;u2;r4;u8;h2;u38;h2;u2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;h2;l2;d72;g2;d4;r10;u6;h2;u12;h2;u50;r2;f2;r2;f2;r2;f2;r4;f2;r2;f2;r2;f2;r2;f2;r4;f2;d38;f2;d8;l14;h1;l14;h1;l6;u2;l6"
PSET (511, 326)
DRAW "e4;d4;e20"
PSET (511, 344)
DRAW "e4;d4;e33"

PSET (551, 368)
DRAW "l4;u8;r2;d2;f2;d4"
PSET (490, 368)
DRAW "u2;e1;u4"


COLOR 15
       
        DO
        LOOP UNTIL INKEY$ = CHR$(27)
        GOTO 100
      
150         '*************************ESIMENE VIIRUS TULEB MANGU*******************
    CLS                                                    'tootajad
    aeg = TIMER - StartTime
    IF mission = 1 AND aeg > 300 THEN GOTO 270
    PRINT "Connecting: http://www.linnapank/muu jama/tootajad.htm"
    PRINT "Waiting for reply..."
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
    LOCATE 4, 27
    PRINT "=                    ="
    PRINT TAB(27); " =                  ="
    PRINT TAB(27); "  =   A        A   ="
    PRINT TAB(27); "   =  AA      AA  ="
    PRINT TAB(27); "      AA      AA"
    PRINT TAB(27); "      AA------AA"
    PRINT TAB(27); "    /            \"
    PRINT TAB(27); "   /   \      /   \"
    PRINT TAB(27); "   |   O      O   | "
    PRINT TAB(27); "   VVV          VVV "
    PRINT TAB(27); "      VVVVVVVVVV   "
    PRINT TAB(27); "    AAAAAAAAAAAAAA  "
    PRINT TAB(27); "    \___      ___/  "
    PRINT TAB(27); "   =    ======    ="
    PRINT TAB(27); "  =                =  "
    PRINT TAB(27); " =                  =   "
    PRINT TAB(27); "=                    = "
    LOCATE 20, 27
    COLOR 4
    PRINT "V I R U S   F O U N D !"
    COLOR 15
    PRINT : PRINT "   What should you do?"
    KEY 1, "Lopetan"
    KEY 2, "SendTo"
    KEY 3, "ToMe"
    KEY 4, "Demo"
    KEY ON
152 INPUT c$
    IF c$ = "Lopetan" THEN GOTO 10000
    IF c$ = "SendTo" THEN GOTO 153
    IF c$ = "ToMe" THEN GOTO 155
    IF c$ = "Demo" THEN GOTO 158
153 CLS
    aeg = TIMER - StartTime
    IF mission = 1 AND aeg > 300 THEN GOTO 270
    PRINT : PRINT : PRINT "  Send to..."
    KEY 1, "Lopetan"
    KEY 2, "Linnapank"
    KEY 3, "My computer"
    KEY 4, "My best friend"
    KEY LIST
    KEY ON
151 INPUT c$
    IF c$ = "Lopetan" THEN GOTO 153
    IF c$ = "My computer" THEN GOTO 155
    IF c$ = "Linnapank" THEN GOSUB 156
    IF c$ = "My best friend" THEN GOTO 157
    GOTO 151

155 CLS
    q = 4
    aeg = TIMER - StartTime
    IF mission = 1 AND aeg > 300 THEN GOTO 270
    PRINT "     Loading GOODKILLER'94..."
    a% = 1
        DO
        LOCATE 23, a%
        PRINT "."
                i = 1
                DO
                i = i + 1
                'IF i = 1700 THEN EXIT DO
                LOOP UNTIL i = 1700
        a% = a% + 1
        'IF a% = 65 THEN EXIT DO
        LOOP UNTIL a% = 65

   
    GOTO 160
156 q = 1
    GOTO 160
157 q = 2
    IF sober = 1 THEN GOTO 170
    GOTO 160
158 q = 3
    GOTO 160
160 CLS '***************************G0odKILLER 94**********
        aeg = TIMER - StartTime
        IF mission = 1 AND aeg > 300 THEN GOTO 270
        KEY OFF
        SCREEN 1
        LOCATE 25, 20
        PRINT "Arvuti systeem"
        x = 1
        y = 1
        FOR i = 1 TO 200
        LINE (0, 0)-(x, y), 2, BF
        FOR a = 1 TO 1000
        NEXT a
       
        x = x + 2
        y = y + 1
        NEXT i
    x = 0
    y = 0
    FOR i = 1 TO 2500
    a = INT(RND * 4) + 1
    B = INT(RND * 45) + 1
    IF a = 1 THEN x = x - B
    IF a = 2 THEN x = x + B
    IF a = 3 THEN y = y - B
    IF a = 4 THEN y = y + B
    IF y > 200 THEN y = y - 12
     IF y < 0 THEN y = y + 12
     IF x > 320 THEN x = x - 320
     IF x < 320 THEN x = x + 12
   CIRCLE (x, y), 30, 0
   PAINT (x, y), 0
        FOR a = 1 TO 200
        NEXT a
 
   NEXT i
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
   CLS
   SCREEN 12
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
   COLOR 4
   PRINT : PRINT : PRINT "              GOODKILLER'94 REPORTING:"
   LOCATE 5, 20
   IF q = 1 THEN GOTO 165
   IF q = 3 THEN GOTO 166
   IF q = 2 THEN GOTO 164
   PRINT : PRINT "Su kompuutri k6vakettast on kasutusk6lblik veel umbes:        %"
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
   k = 100
   FOR i = 1 TO 99
        LOCATE 6, 58
        PRINT k
        k = k - 1
        FOR a = 1 TO 1000
        NEXT a
        NEXT i
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
   COLOR 12
   PRINT TAB(16); "sorry"
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
   GOTO 10000



164  PRINT "So'bra arvuti on ikka totaalselt na'ssus kyll."
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
    aeg = TIMER - StartTime
    IF mission = 1 AND aeg > 300 THEN GOTO 270
    COLOR 15
    PRINT "Just praegu tuli su so'bralt e-mail, checki seda!"
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION:kuradi mees raisk!!!!!!!"
    PRINT "FROM:Goodfriend"
    PRINT "TO:", nimi$: PRINT
    PRINT "No oled ikka yx kuradima haige mees kyll!!!!"
    PRINT "mina marvasin, et oled muidu normaalne mees , aga "
    PRINT "tegelt oled hoopis ikka yx kuradi haige mo'lakas kyll!"
    PRINT "Oot/oot , ma nyyd la'hen Sasa juurest la'bi ja kysin ,"
    PRINT "kuidas su arvuti ta'iesti a'ra rikkuda!"
    sober = 1
    DO
    LOOP UNTIL INKEY$ <> ""
    GOTO 100

165              PRINT "Linnapanga arvutivo'rk ha'vitatud,": PRINT
                 pangaarvutivork = 1
                 LOCATE 6, 20
                 PRINT "koik rahaylekanded on voimatud"
                        DO
                        LOOP UNTIL INKEY$ <> ""
                 linnaarvuti = 1
                 IF arve > 999999 THEN GOTO 280
                 GOTO 10000

166   PRINT "GOODKILLER'94 Demo is produced by URM@XX "
      sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
      GOTO 100
170  CLS
     aeg = TIMER - StartTime
     IF mission = 1 AND aeg > 300 THEN GOTO 270
     COLOR 4
     PRINT "Error: Sul ei ole enam yhtegi so'pra!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     COLOR 15
     PRINT "Just praegu tuli mingi e-mail, checki seda!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT TIME$
     PRINT DATE$
     PRINT "DESCRIPTION:", nimi$
     PRINT "FROM:Goodfriend"
     PRINT "TO:", nimi$: PRINT
     PRINT "No ma olen praegu Sasa juures ja Sasa ytleb siin,"
     PRINT "et me peax a'ra leppima. OK, ma saadan sulle siis "
     PRINT "so'bramehe poolest sinu saadetud viiruse uuema "
     PRINT "versiooni...:)"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 8
     a% = 1
        LOCATE 22, 5
        PRINT "Loading GOODKILLER'98"
        DO
        LOCATE 23, a%
        PRINT "."
                i = 1
                DO
                i = i + 1
        '        IF i = 1700 THEN EXIT DO
                LOOP UNTIL i = 1700
        a% = a% + 1
        'IF a% = 65 THEN EXIT DO
        LOOP UNTIL a% = 65

   
      '************************GOODKILLER 98***********************

172 CLS
       sober = sober + 1
       KEY OFF
        SCREEN 12
        PRINT : PRINT : PRINT "  Tere, mina olen sinu uus viirus."
        PRINT "Kirjuta mulle siia yks hea s6na,"
        PRINT "siis ma teen selle s6naga kogu su"
        PRINT "kompuutri tais. OK?"
        INPUT a$
        IF a$ = "" THEN a$ = "Olen lollpea"
        CLS

      
     
        x = 25
        y = 25
     
        FOR i = 1 TO 350               'teen ristkuuliku
        LINE (25, 25)-(x, y), 9, BF
        FOR a = 1 TO 200
        NEXT a
        IF x > 625 THEN x = x - 2
        x = x + 2
        y = y + 1
        NEXT i
     
        COLOR 7
        LOCATE 4, 8
        PRINT CHR$(178)

        x = 4                                'akkan kaste tegema
        y = 8
        FOR i = 1 TO 1339
        y = y + 1
        IF y > 74 THEN GOSUB 173
        LOCATE x, y
        PRINT CHR$(176) 'pooll'bipaistev kast
        NEXT i
     
        FOR i = 1 TO 440
                COLOR 7
                x = INT(RND * 20) + 4
                y = INT(RND * 67) + 8
                LOCATE x, y
                PRINT CHR$(177)
             NEXT i
        FOR i = 1 TO 22
                x = INT(RND * 20) + 4
                y = INT(RND * 67) + 8
                LOCATE x, y
                PRINT "B"
     
     
        NEXT i
         COLOR 15
         LOCATE 27, 33
        PRINT "Minu ko'vaketas"
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
        COLOR 7
        x = 14
        y = 38
        FOR i = 1 TO 1200
    a = INT(RND * 4) + 1
    B = INT(RND * 8) + 1
    IF a = 1 THEN x = x - B
    IF a = 2 THEN x = x + B
    IF a = 3 THEN y = y - B
    IF a = 4 THEN y = y + B
    IF y > 63 THEN y = y - 10
    IF y < 8 THEN y = y + 12
    IF x > 22 THEN x = x - 10
    IF x < 4 THEN x = x + 10
   LOCATE x, y
   PRINT a$
        FOR a = 1 TO 500
        NEXT a
        NEXT i
   sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1

   GOTO 175
173   x = x + 1
y = 8
 

    RETURN

175 SCREEN 12
    COLOR 14
    'IF sober < 2 THEN GOTO 1300
    CLS
    PRINT "There iz a pr8blem in your HardDiZk."
    PRINT "What it means -", a$
    INPUT B$
    PRINT a$
    INPUT c$
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    PRINT "What it means -"
    PRINT c$
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    PRINT B$
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    PRINT c$
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
    PRINT c$: PRINT B$: PRINT c$: PRINT "GOODKILLER'98": PRINT "ONLY 99$!"
    INPUT a$
    x = 5
        FOR i = 1 TO 6
        LOCATE 17, 1
        PRINT x
        x = x - 1
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
        NEXT i
        FOR i = 1 TO 30
        PRINT
        FOR k = 1 TO 1000
        NEXT k
        NEXT i
        FILES "C:/windows/"
        CLS
176 SCREEN 12
    COLOR 4
    FOR i = 1 TO 10
    LOCATE 10, 33
    PRINT "MISSION FAILED"
    FOR k = 1 TO 50000
    NEXT k
    LOCATE 10, 33
    PRINT "                    "
    FOR k = 1 TO 2000
    NEXT k
    NEXT i
    GOTO 10000
180 '*******////// Muu jama lehekuulg////////*****
183     x = 0
        FOR i = 1 TO 320
                LINE (x, 0)-(x + 1, 450), 1, BF
                x = x + 2
        NEXT i
        FOR i = 1 TO 323
                COLOR 6
                LOCATE 7, 20
                PRINT "<P>   -    Politsei jututuba"
                LOCATE 8, 20
                PRINT "<T>   -  Too'tajate jututuba"
                LOCATE 10, 20
                PRINT "<ESC> -                 Back"
                LINE (x, 0)-(x - 1, 450), 0, BF
                x = x - 2
        NEXT i
     COLOR 3
     LOCATE 4, 15
     PRINT "Siin lehekyljel v6ib ka'ia ainult loa esitamisel"
      x = 110
      y = 495
      FOR i = 1 TO 70
         LINE (x, 55)-(110, 55)
         LINE (y, 55)-(495, 55)
         x = x - 1
         y = y + 1
         FOR k = 1 TO 200
         NEXT k
      NEXT i
        x = 55
      FOR i = 1 TO 200
         PSET (40, x)
        PSET (565, x)
        x = x + 1
        FOR k = 1 TO 100
        NEXT k
      NEXT i
        x = 40
        y = 565
      FOR i = 1 TO 266
        PSET (x, 255)
        PSET (y, 255)
        x = x + 1
        y = y - 1
       FOR k = 1 TO 100
        NEXT k
      NEXT i
   KEY 1, ""
   DO
   IF INKEY$ = "P" OR INKEY$ = "p" THEN GOTO 190
   IF INKEY$ = "T" OR INKEY$ = "t" THEN GOTO 150
   IF INKEY$ = CHR$(27) THEN GOTO 100
   LOOP


190 CLS                                         'Politsei jututuba
     PRINT "POLITSEI JUTUTUBA"
     LOCATE 18, 10
     PRINT nimi$, ">>>"
     LOCATE 5, 1
     PRINT "Voldemar: ja siis saingi selle suli k'tte"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Jaak:see oli kyll ponev!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Voldemar:mis sa siis praegalt teed ka"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Jaak:ei midagi, vaatan, et yks jobu logis jututuppa praegu sisse!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 4
     PRINT "Voldemar: Hei , kes sa selline oled, ikka oma mees vo'i?"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Jaak:VASTA, KUI SULT KYSITAXE!"
     LOCATE 18, 30
     INPUT j$
     LOCATE 11, 1
     PRINT nimi$, ":", j$
     IF j$ = "oma" OR j$ = "oma jah" OR j$ = "oma ikka" OR j$ = "jah" OR j$ = "ja" OR j$ = "tere" OR j$ = "tere tere" THEN GOTO 195
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
191 PRINT "Jaak:kuule Volts, siin on mingi huligaan!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Voldemar:kuulge, mis toimub?"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
193  PRINT "Jaak: kohe panen ha'ire t66le"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     GOTO 260
195 sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Voldemar:kui oma, siis on hea. Mis sul ka louna voi?"
     LOCATE 18, 30
     INPUT j$
     LOCATE 13, 1
     PRINT nimi$, ":", j$
     IF j$ = "ja" OR j$ = "jah" OR j$ = "jaa" OR j$ = "on jah" OR j$ = "louna jah" THEN GOTO 197
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
     PRINT "Voldemar:mis sa siis teed"
     LOCATE 18, 30
     INPUT j$
     LOCATE 15, 1
     PRINT "USER:"
     LOCATE 15, 6
     PRINT j$
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     PRINT "Jaak:kuule Volts , ma siin kompuutrist vaatan , et peale meie kahe"
     PRINT "ei tohiks siin kyll kedagi olla!"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 4
     PRINT "Voldemar: mida????"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
     GOTO 193
197  sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
      PRINT "Voldemar: ega mul tegelikult ei ole, aga mis ma siin ikka jaman"
      sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
      PRINT "Jaak:ega mul ka ei ole. Aga kes siin ikka arvuti kaudu midagi yritab :)"
      sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
      PRINT "Voldemar:sa teed ka t66luusi v2"
     LOCATE 18, 4
     INPUT j$
     LOCATE 17, 1
     PRINT "USER:"
     LOCATE 17, 6
     PRINT j$
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
     CLS
     PRINT "/////////////////////////NEXT PAGE//////////////////////////"
     LOCATE 3, 1
     PRINT j$
     LOCATE 18, 4
     PRINT ">>>"
     LOCATE 4, 1
     IF j$ = "ja" OR j$ = "jah" OR j$ = "jaa" OR j$ = "on jah" THEN GOTO 260
     IF j$ = "ei" OR j$ = "ei tee" THEN GOTO 191
198 GOTO 260

200 '***************************TEHINGUD********************************
     aeg = TIMER - StartTime
     IF mission = 1 AND aeg > 300 THEN GOTO 270
     SCREEN 12
     KEY OFF
      CLS
       KEY 1, "Back"
       KEY 2, "UUS"
       KEY 3, "Vana"
       KEY 4, "Naidis"
       KEY ON
     
     LOCATE 6, 40
     PRINT "TEHINGUD"

     LINE (70, 100)-(640, 450), 4, BF
     LINE (82, 112)-(640, 438), 0, BF
        LINE (100, 185)-(502, 212), 7, B
        LINE (101, 186)-(502, 212), 8, B
        LINE (101, 186)-(501, 211), 0, BF
         LOCATE 13, 15
        PRINT "F2 - Kui olete uus klient"
          
           LINE (100, 217)-(502, 244), 7, B
           LINE (101, 218)-(502, 244), 8, B
           LINE (101, 218)-(501, 243), 0, BF
         LOCATE 15, 15
        PRINT "F3 - Kui olete juba meie klient"

           LINE (100, 249)-(502, 276), 7, B
           LINE (101, 250)-(502, 276), 8, B
           LINE (101, 250)-(501, 275), 0, BF
         LOCATE 17, 15
        PRINT "F4 - Arve avamise na'idis"

           LINE (100, 312)-(502, 339), 7, B
           LINE (101, 313)-(502, 339), 8, B
           LINE (101, 313)-(501, 338), 0, BF
          
     
     LOCATE 21, 15
     INPUT "Teie valik: ", a$
     IF a$ = "Back" THEN GOTO 100
     IF a$ = "UUS" THEN GOTO 300
     IF a$ = "Vana" THEN GOTO 301
     IF a$ = "Naidis" THEN GOTO 302
     GOTO 200

202 pass = 0
     pass1 = 0
     CLS
     KEY OFF
     SCREEN 12
     LOCATE 2, 2
     PRINT : PRINT "    TAIDA KUPONG!"
     LINE (0, 50)-(640, 50), 9
     LOCATE 5, 1
     PRINT "Eesnimi:"
     PRINT "Perekonnanimi:"
     PRINT : PRINT "PIN:"
   
        LOCATE 5, 10
        INPUT eesnimi2$
        LOCATE 6, 16
        INPUT perekonnanimi2$
        LOCATE 8, 6
        INPUT pin2
        IF eesnimi2$ = eesnimi$ THEN pass = 1
        IF eesnimi2$ = "Leopold" OR eesnimi2$ = "leopold" THEN pass1 = 1
        IF perekonnanimi2$ = perekonnanimi$ THEN pass = pass + 1
        IF perekonnanimi2$ = "Lill" OR perekonnanimi2$ = "lill" THEN pass1 = pass1 + 1
        IF pin2 = pin THEN pass = pass + 1
        IF pin2 = 5555 THEN pass1 = pass1 + 1
        IF pass = 3 THEN GOTO 240
        IF pass1 = 3 THEN GOTO 230
203        PRINT "SOMETHING IS WRONG, PRESS <ESC>!"

                DO
                LOOP UNTIL INKEY$ = CHR$(27)
       
        GOTO 200

    
204 CLS
     KEY OFF
     SCREEN 12
     LOCATE 2, 2
     PRINT : PRINT "    TAIDA KUPONG!"
     LINE (0, 50)-(640, 50), 9
     LOCATE 5, 1
     PRINT "Eesnimi:"
     PRINT "Perekonnanimi:"
     PRINT : PRINT "Su'nniaasta:"
    
        LOCATE 5, 10
        INPUT eesnimi$
        LOCATE 6, 16
        INPUT perekonnanimi$
        LOCATE 8, 13
206    INPUT sunniaasta
             IF eesnimi$ = "" OR perekonnanimi$ = "" THEN GOTO 203
             IF sunniaasta < 1 THEN GOTO 209
             ON ERROR GOTO 210
             IF sunniaasta > 1980 THEN GOTO 212
             IF sunniaasta < 1900 THEN GOTO 214
             pin = sunniaasta * 3 - 1
208    pin = sunniaasta * 3 - 1
        LINE (0, 145)-(640, 145), 9
        LOCATE 13, 2
        PRINT " Making PIN code..."
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
        LINE (0, 210)-(640, 210), 9
        LINE (0, 215)-(640, 215), 9
        LOCATE 15, 2
        PRINT " Your PIN code is:", pin
        PRINT " DON'T FORGET IT!"
        LINE (0, 340)-(640, 340), 9
        LOCATE 26, 2
        PRINT "Press <ENTER> to go to your bank account page"
          FOR i = 1 TO 200000
          NEXT i
          DO
          LOOP UNTIL INKEY$ <> ""
          GOTO 240

209 PRINT "T6esti???"
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
        PRINT "Ikka t6esti va'???"
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
        PRINT "OK, ma siis kutsun Guinessi raamatust kellegi."
        PRINT "Oodake natsa... Umbes 5 minutit"
        DO
        aeg = TIMER - StartTime
        IF mission = 1 AND aeg > 300 THEN GOTO 270
        LOOP UNTIL INKEY$ = CHR$(27)
        GOTO 200
210 PRINT "INSERT RIGHT SUNNIAASTA:"
     GOTO 206
212 PRINT "Sorry! Nii noorel peab olema pass ja hooldaja allkiri,"
     PRINT "astuge la'bi meie kontorist!"
     INPUT z$
     GOTO 200
214 PRINT "Nii vanadele on meil sooduspakkumus: pangaarvele +100 kr.!"
     arve = 100
     endatehkuupaev$ = DATE$
     endatehaeg$ = TIME$
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
     GOTO 208
218 CLS
     PRINT "arve"
     INPUT z$
220 '\*************LEOPOLD LILLE ARVE naidis*********************
      CLS
     SCREEN 12
     KEY OFF
     LOCATE 1, 5
     PRINT " Uue arve avamise naide. (V6etud me esimese kliendi Leopold Lille avamisest)"
     LOCATE 2, 2
     PRINT : PRINT "    TAIDA KUPONG!"
     LINE (0, 50)-(640, 50), 9
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 5
     LOCATE 5, 1
     PRINT "Eesnimi:"
     PRINT "Perekonnanimi:"
     PRINT : PRINT "Su'nniaasta:"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     LOCATE 5, 9
     PRINT "Leopold"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     LOCATE 6, 16
     PRINT "Lill"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
     LOCATE 8, 13
     PRINT "1943"
     sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
    LINE (0, 145)-(640, 145), 9
        LOCATE 13, 2
        PRINT " Making PIN code..."
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
        LINE (0, 210)-(640, 210), 9
        LINE (0, 215)-(640, 215), 9
        LOCATE 15, 2
        PRINT " Your PIN code is: 5555"
        PRINT " DON'T FORGET IT!"
        LINE (0, 340)-(640, 340), 9
        LOCATE 26, 2
        PRINT "Press <Enter> to go back"
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 200
230 '************************Leopoldi arve**************************
        CLS
        SCREEN 12
        KEY 1, " Back"
        KEY 2, " Teisele"
        KEY 3, " Endale"
        KEY 4, ""
        KEY ON
        LOCATE 3, 29
        PRINT "LEOPOLD LILLE PANGAARVE"
        LINE (0, 50)-(640, 50), 9
        COLOR 7
        LOCATE 5, 1
        PRINT " Koguarve:"
        LOCATE 5, 20
        PRINT lillearve
        PRINT " Viimane tehing:"
        LOCATE 6, 18
        PRINT tehingukuupaev$
        LOCATE 7, 20
        PRINT tehinguaeg$

        COLOR 15
        LOCATE 10, 2
        PRINT "OPERATSIOON:"
        LOCATE 11, 2
        PRINT "F2 Kannan teisele arvele"
        PRINT " F3 Kannan oma arvele"
232    INPUT a$
         IF a$ = "Back" THEN GOTO 200
         IF a$ = "Teisele" THEN GOTO 236
         IF a$ = "Endale" THEN GOTO 234
234    PRINT "Enese arvele saab raha yle kanda vaid meie kontorist, vabandame!"
        GOTO 232
      
236    PRINT : PRINT "YLEKANNE"
        PRINT
        INPUT "Kui suure summa soovite yle kanda (taiskroonides):", yle
        IF yle > lillearve OR yle < 1 THEN GOTO 238
        PRINT " Adressaat:"
        INPUT "(eesnimi)", adressaate$
        IF eesnimi$ = "" AND adressaate$ = nimi$ THEN GOTO 239

        INPUT "(perekonnanimi)", adressaatp$
        IF adressaate$ = "" THEN GOTO 238
        IF adressaate$ = eesnimi$ THEN endatehkuupaev$ = DATE$
        IF adressaate$ = eesnimi$ THEN endatehaeg$ = TIME$
        IF adressaate$ = eesnimi$ THEN arve = arve + yle
        lillearve = lillearve - yle
      
        PRINT "Please wait..."
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
        PRINT "yle kantud"
        tehinguaeg$ = TIME$
        tehingukuupaev$ = DATE$
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
        GOTO 230

238 PRINT "ERROR, Press <Esc>!"
      DO
      LOOP UNTIL INKEY$ = CHR$(27)
     GOTO 230
239 PRINT "Sa vajad OMA arvet. Vt UUS!"
    PRINT "Press <Esc>"
        DO
        LOOP UNTIL INKEY$ = CHR$(27)
    GOTO 230

240 '************************ENDA arve**************************
      
      
        CLS
        SCREEN 12
        KEY 1, "Back"
        KEY 2, "Teisele"
        KEY 3, "Endale"
        KEY 4, ""
        KEY ON
        LOCATE 3, 29
        PRINT eesnimi$
        LOCATE 3, 40
        PRINT perekonnanimi$
        LINE (0, 50)-(640, 50), 9
        COLOR 7
        LOCATE 5, 1
        PRINT " Koguarve:"
        LOCATE 5, 20
        PRINT arve
        PRINT " Viimane tehing:"
        LOCATE 6, 18
        PRINT endatehkuupaev$
        LOCATE 7, 20
        PRINT endatehaeg$

        COLOR 15
        LOCATE 10, 2
        PRINT "OPERATSIOON:"
        LOCATE 11, 2
        PRINT "F2 Kannan teisele arvele"
        PRINT " F3 Kannan oma arvele"
242    INPUT a$
         IF a$ = "Back" THEN GOTO 200
         IF a$ = "Teisele" THEN GOTO 246
         IF a$ = "Endale" THEN GOTO 244
244    PRINT "Enda arvele saab raha yle kanda vaid meie kontorist, vabandame!"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 240
    
246    PRINT : PRINT "YLEKANNE"
        PRINT
        INPUT "Kui suure summa soovite yle kanda (taiskroonides):", eyle
        IF eyle > arve OR eyle < 1 THEN GOTO 248
        PRINT " Adressaat:"
        INPUT "(eesnimi)", eadressaate$
        INPUT "(perekonnanimi)", eadressaatp$
        IF eadressaate$ = "" THEN GOTO 248
        IF eadressaate$ = "Leopold" OR eadressaate$ = "leopold" THEN lillearve = lillearve + eyle
        arve = arve - eyle
     
        PRINT "Please wait..."
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
        PRINT "yle kantud"
        IF eadressaate$ = "Leopold" OR eadressaate$ = "leopold" THEN tehinguaeg$ = TIME$
        IF eadressaate$ = "Leopold" OR eadressaate$ = "leopold" THEN tehingukuupaev$ = DATE$

       
        endatehuaeg$ = TIME$
        endatehkuupaev$ = DATE$

        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 3
        GOTO 240

248 PRINT "ERROR, Press<Esc>!"
     DO
     LOOP UNTIL INKEY$ = CHR$(27)
     GOTO 240



250 CLS
        COLOR 8
        PRINT : PRINT : PRINT : PRINT "    Kui sa praegu lopetad siis jaab su missioon ju ta'itmata!"
        KEY OFF
        sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 1
        KEY 1, "Exit"
        KEY 2, "Continue"
        KEY 3, ""
        KEY 4, ""
        KEY 5, ""
        KEY 6, ""
        KEY 7, ""
        KEY 8, ""
        KEY 9, ""
        KEY 10, ""
        KEY ON
       INPUT a$
        IF a$ = "Exit" THEN SYSTEM
        IF mission = 1 THEN GOTO 1
        

260   CLS
      COLOR 12
      PRINT : PRINT : PRINT : PRINT "Kohe on politsei sinu juures ka!"
      PRINT TAB(16); "Mission failed"
      GOTO 10000
270 CLS
        SCREEN 12
    COLOR 4
    FOR i = 1 TO 10
    LOCATE 15, 34
    PRINT "NO MORE TIME"
    FOR k = 1 TO 28000
    NEXT k
    LOCATE 15, 33
    PRINT "                    "
    FOR k = 1 TO 14000
    NEXT k
    NEXT i
    sleepstart = TIMER: DO: sleepaeg = TIMER - sleepstart: LOOP UNTIL sleepaeg > 2
    GOTO 10000
280
'***************************MISSION 1 LOPP/punktid******************************
     CLS
     IF arve < 1000000 THEN GOTO 250
     punktid = arve / 100
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Missioni ta'itmise eest", INT(arve / 100)
     IF sober = 1 THEN punktid = punktid + 500: IF sober = 1 THEN PRINT "EXTRA BONUS SOBRALE VIIRUSE EEST   +500"
     IF pangaarvutivork = 1 THEN punktid = punktid + 1000
     IF pangaarvutivork = 1 THEN PRINT "EXTRA BONUS PANGA ARVUTIVORGU HAVITAMISE EEST      + 1000 "

     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):", INT(aeg)
     ajalisa = 300 - aeg
     timebonus = ajalisa * 100
     TIMER OFF
     PRINT "TIMEBONUS:", INT(timebonus)
     lopp = punktid + timebonus
     COLOR 15
     PRINT : PRINT "KOKKU:", INT(lopp)
      DO
      LOOP UNTIL INKEY$ <> ""
      punktid = INT(lopp)
      mission = 2
      OPEN "buffer.txt" FOR OUTPUT AS #2
       PRINT #2, nimi$
         PRINT #2, mission
         PRINT #2, punktid
         PRINT #2, pin
         PRINT #2, ok
         CLOSE #2
     '*******           P U N K T I T A B E L           *******************

    CLS
    SCREEN 12
    KEY OFF

    OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
    CLOSE #1
        IF punktid < g + 1 THEN koht = 8
        IF punktid > g THEN koht = 7
        IF punktid > F THEN koht = 6
        IF punktid > e THEN koht = 5
        IF punktid > d THEN koht = 4
        IF punktid > c THEN koht = 3
        IF punktid > B THEN koht = 2
        IF punktid > a THEN koht = 1
  
     IF koht < 7 THEN rida7$ = rida6$: g = F
        IF koht < 6 THEN rida6$ = rida5$: F = e
        IF koht < 5 THEN rida5$ = rida4$: e = d
        IF koht < 4 THEN rida4$ = rida3$: d = c
        IF koht < 3 THEN rida3$ = rida2$: c = B
        IF koht < 2 THEN rida2$ = rida1$: B = a
         IF koht = 1 THEN rida1$ = nimi$: a = punktid
         IF koht = 2 THEN rida2$ = nimi$: B = punktid
         IF koht = 3 THEN rida3$ = nimi$: c = punktid
         IF koht = 4 THEN rida4$ = nimi$: d = punktid
         IF koht = 5 THEN rida5$ = nimi$: e = punktid
         IF koht = 6 THEN rida6$ = nimi$: F = punktid
         IF koht = 7 THEN rida7$ = nimi$: g = punktid
     OPEN "tabel.txt" FOR OUTPUT AS #1
     PRINT #1, rida1$
     PRINT #1, a
     PRINT #1, rida2$
     PRINT #1, B
     PRINT #1, rida3$
     PRINT #1, c
     PRINT #1, rida4$
     PRINT #1, d
     PRINT #1, rida5$
     PRINT #1, e
     PRINT #1, rida6$
     PRINT #1, F
     PRINT #1, rida7$
     PRINT #1, g

     CLOSE #1
   
IF koht = 8 THEN RUN "miss2.bas"
OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
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
        LOCATE 11, 32: PRINT rida2$, B
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
        LOCATE 15, 32: PRINT rida6$, F
        COLOR 15
        IF koht = 7 THEN COLOR 14
        LOCATE 16, 32: PRINT rida7$, g
        COLOR 14
        LOCATE 19, 43: PRINT punktid
        '****************************************************
        COLOR 15
                DO
                LOOP UNTIL INKEY$ <> ""
        
         RUN "miss2.bas"

300
        LINE (100, 185)-(502, 212), 8, B
        LINE (101, 186)-(502, 212), 7, B
        LINE (101, 186)-(501, 211), 0, BF
         COLOR 8
        LOCATE 13, 15
        PRINT "F2 - Kui olete uus klient"
         COLOR 15
                FOR i = 1 TO 30000
                NEXT i
        GOTO 204

301
           LINE (100, 217)-(502, 244), 8, B
           LINE (101, 218)-(502, 244), 7, B
           LINE (101, 218)-(501, 243), 0, BF
         LOCATE 15, 15
         COLOR 8
        PRINT "F3 - Kui olete juba meie klient"
         COLOR 15
                FOR i = 1 TO 30000
                NEXT i
        GOTO 202

302

           LINE (100, 249)-(502, 276), 8, B
           LINE (101, 250)-(502, 276), 7, B
           LINE (101, 250)-(501, 275), 0, BF
         LOCATE 17, 15
         COLOR 8
        PRINT "F4 - Arve avamise na'idis"
         COLOR 15
        FOR i = 1 TO 30000
                NEXT i
        GOTO 220

