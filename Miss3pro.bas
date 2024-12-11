TIMER ON
mission = 3
        OPEN "bostext.txt" FOR OUTPUT AS #1
        PRINT #1, "Father        Palju 6nne synnipaevaks"
          PRINT #1, "Cleveland   Who is the best man in the world?"
            PRINT #1, "Hinkd     Lollpea"
              PRINT #1, "Figural        Raketil on mees"
              PRINT #1, "Hinkd  Loll oled ikkagi"
                  PRINT #1, "Father      Palju 6nne ka synnipaevaks"
                    PRINT #1, "MJackson Be good as i "
                      PRINT #1, "Hinkd  Saadan viirus"
                        PRINT #1, "Keegi  Raketil on v6ileib"
                          PRINT #1, ""
        CLOSE #1
11110   CLS
        SCREEN 12
        CLS
        OPEN "buffer.txt" FOR INPUT AS #4
        INPUT #4, nimi$, mission, punktid, pin, ok
        CLOSE #4
11111    CLS
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
        KEY 2, " Continue"
        KEY 3, " NewGame"
        KEY 4, " LoadGame"
        KEY 5, " SaveGame"
        KEY 6, " Introduction"
        KEY 7, " Credits"
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
   IF x$ = "Continue" THEN GOTO 1
   IF x$ = "SaveGame" THEN GOTO 11120
   IF x$ = "LoadGame" THEN GOTO 11120
   IF x$ = "NewGame" THEN GOTO 11170
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
11170        PRINT "                 Quit this game?"
        PRINT "                 <Esc>   - Cancel"
        PRINT "                 <Space> - Restart"
       
        DO
        IF INKEY$ = " " THEN RUN "hackersw.hac"
        IF INKEY$ = CHR$(27) THEN GOTO 11110
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
                 IF y$ = "2" THEN mission = b: punktid = c: pin = d: ok = e
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
     GOTO 11110
11160  CLS
       KEY OFF
OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, b, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
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
        COLOR 15
        LOCATE 11, 32: PRINT rida2$, b
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
11150
      
        CLS
        KEY OFF
        COLOR 11
        OPEN "mission3.txt" FOR INPUT AS #3
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
     
    TIMER ON
  
1       IF hkg = 0 THEN GOTO 11150
        StartTime = TIMER
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

    
    
 
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

     
        KEY 1, " Back"
        KEY 2, " About Us"
        KEY 3, " Taevakaart"
        KEY 4, " Parthfinder"
        KEY 5, " Planeedid"
        KEY 6, " Galaktika ajad"
        KEY 7, " Employers Only"
       
      
        LINE (233, 0)-(568, 20), 1, BF            'Sinine riba
        LINE (572, 0)-(592, 20), 15, BF         '"_" nupp
        LINE (596, 0)-(616, 20), 15, BF         '"kast"nupp
        LINE (620, 0)-(640, 20), 15, BF         '"X" nupp
        LINE (0, 24)-(640, 44), 7, BF
        LINE (0, 48)-(596, 88), 8, BF           'Exploreri logost vasakul
        LINE (600, 48)-(640, 88), 1, BF         'Exploreri logo
        LINE (0, 92)-(50, 112), 8, BF           'httpst vasakul
        LINE (590, 92)-(640, 112), 8, BF        'httpst paremal
        LINE (620, 116)-(640, 436), 7, BF       'ules-alla nool
        LINE (54, 92)-(586, 112), 7, BF         'http
        LINE (0, 440)-(640, 470), 8, BF         'all

        LINE (4, 52)-(36, 84), 7, B             'nupu-kastid
        LINE (40, 52)-(72, 84), 7, B
        LINE (76, 52)-(108, 84), 7, B
        LINE (112, 52)-(144, 84), 7, B
        LINE (148, 52)-(180, 84), 7, B
        LINE (184, 52)-(216, 84), 7, B

       
        LINE (0, 116)-(125, 436), 1, BF
        LINE (125, 180)-(170, 436), 15, BF
        LINE (0, 170)-(619, 185), 1, BF
        LOCATE 1, 1
        PRINT " Microsoft Internet Explorer "
        LOCATE 7, 9
        PRINT "http://www.nasa/"

        COLOR 10
      
        LOCATE 13, 1
                PRINT " F1 Back           "
        PRINT : PRINT " F2 About Us       "
        PRINT : PRINT " F3 Taevakaart     "
        PRINT : PRINT " F4 Parthfinder    "
        PRINT : PRINT " F5 Planeedid      "
        PRINT : PRINT " F6 Galaktika ajad "

        PRINT : PRINT " F7 Employers Only "

       
        PSET (295, 145), 14                               'n taht
        DRAW "d30;r15;u15;f15;r15;u30;l15;d15;h15;l15"
        PAINT (296, 146), 14

        PSET (340, 175), 14                               'a taht
        DRAW "u3;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u3;r11;"
        DRAW "d3;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d3"
        DRAW "l11;u2;l1;u2;l1;u1;l11;d1;l1;d2;l1;d2;l11"
        PAINT (342, 173), 14
       
        's taht
        PSET (375, 175), 14
        DRAW "r33;e1;r1;e2;u1;e1;u1;e1;u3;h1;u1;h1;u1;h2;l1;h1;l2;h1;l15"
        DRAW "h1;l1;h1;e1;r1;e1;r20;u3;r1;u3;r1;u2;l26"
        DRAW "g1;l2;g1;l1;g3;d1;g1;d6;f1;d1;f2;r1;f1;r2;f1;r15"
        DRAW "f1;r1;l1;g1;l27;d9"
        PAINT (386, 174), 14


        PSET (413, 175), 14                               'a taht
        DRAW "u3;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u2;r1;u3;r11;"
        DRAW "d3;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d2;r1;d3"
        DRAW "l11;u2;l1;u2;l1;u1;l11;d1;l1;d2;l1;d2;l11"
        PAINT (415, 173), 14

                COLOR 10
                FOR i = 1 TO 150
                a = INT(RND * 448) + 171
                b = INT(RND * 250) + 186
                PSET (a, b)
                NEXT i
                COLOR 15
                FOR i = 1 TO 150
                a = INT(RND * 448) + 171
                b = INT(RND * 250) + 186
                PSET (a, b)
                NEXT i


      
        CIRCLE (211, 216), 100, 4, 4.3, .3, 1
        LINE (306, 186)-(171, 186), 4
        LINE -(171, 307), 4
        PAINT (172, 187), 4

        CIRCLE (350, 320), 70, 8
        PAINT (350, 320), 8

        CIRCLE (500, 250), 40, 6
        PAINT (500, 250), 6


      
      
      
        KEY ON
        LINE (0, 440)-(640, 480), 8, BF         'all
        DO
        COLOR 15
        LOCATE 7, 9
        INPUT "http://www.nasa/", a$
        COLOR 15
        '
       
       
        ' F6 Galaktika ajad "

        ' F7 Employers Only "
          IF a$ = "About Us" THEN GOTO 3200
          IF a$ = "Taevakaart" THEN GOTO 3210
          IF a$ = "Back" THEN GOTO 11111
          IF a$ = "Planeedid" THEN GOTO 3220
          IF a$ = "Parthfinder" THEN GOTO 3230
          IF a$ = "Employers Only" THEN GOTO 3500
          IF a$ = "Galaktika ajad" THEN GOTO 3240
          LOOP












3200   CLS
        SCREEN 12
        KEY OFF
        COLOR 10
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        COLOR 15
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        SLEEP 2
        COLOR 10
        LOCATE 5, 1
        PRINT " About NASA"
        COLOR 11
        PRINT : PRINT "National Aeronautics and Space Administration"
        GOSUB 3315
        PRINT : PRINT "NASA on USA riiklik kosmose uurimise ja kosmonautika arendamise"
        GOSUB 3315
        PRINT "organisatsioon, mis asutati 1958. aastal. NASA keskus on Washingtonis."
        GOSUB 3315
        PRINT "Tegevuse p6hieesma'rgid:"
        GOSUB 3315
        LOCATE 12, 5
        PRINT "# Atmosfaa'ris ja sellest va'ljaspool lendamise uurimine"
        GOSUB 3315
        LOCATE 13, 5
        PRINT "# Kosmoseaparaatide loomine, katsetamine ja lendude korraldamine"
        GOSUB 3315
        LOCATE 14, 5
        PRINT "# Kosmoseuuringute tulemuste rakendamine teaduses ja majanduses"
        GOSUB 3315
        LOCATE 15, 5
        PRINT "# Rahvusvahelise koostoo' organiseerimine."
        GOSUB 3315
        PRINT "NASA koosneb 5 sihtprogrammi diktoraadist (kosmoseteadus, kosmonautika"
        GOSUB 3315
        PRINT "ja kosmosetehnika, rakendusuuringud, kosmosetranspordisysteemid,"
        GOSUB 3315
        PRINT "kosmoseandmed), 8 funktsionaalsest osakonnast ja 8 uurimiskeskusest."
        LOCATE 20, 1
        PRINT "Programmide ta'itmiseks s6lmib NASA lepinguid teadusasutuste, uurimis-"
        GOSUB 3315
        PRINT "ja tootmisfirmadega, tema eelarve on USA fo'deraaleelarves suuruselt"
        GOSUB 3315
        PRINT "teisel kohal"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1

3210
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970
      
        KEY OFF
        CLS
        COLOR 10
     FOR i = 1 TO 800
     a = INT(RND * 640)
     b = INT(RND * 480)
     IF i > 400 THEN COLOR 15
     PSET (a, b)
     NEXT i
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1
3220 CLS
        KEY OFF
        PRINT : PRINT : PRINT : PRINT : PRINT
        PRINT "            Planeete on igasuguseid, suuri ja va'ikesi."
        PRINT "         Meie elame sellisel planeedil nagu Maa ja yks "
        PRINT "         planeet on Marss. Aga see on j6le salastatud"
        PRINT "         va'rk k6ik. Kui Sa oled meie t66taja, siis"
        PRINT "         saad seda vaadata Only Employers alt"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1
3230
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

CLS
        KEY OFF
        COLOR 4
        PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        PRINT "                             Parthfinder"
        PRINT "                             -----------"
        COLOR 15
        PRINT "         Parthfinder on kogu inimkonna yks suurimaid saavutusi  "
        PRINT "         Ta'nu temale on muutunud kogu maailma pale. Tema on kui"
        PRINT "         pioneer o'ises taevalaotuses. Peale tema yles lennutamist"
        PRINT "         on suureks menukaubaks saanud pisikesed Parthfinderid."
        PRINT "         viimasel ajal pole temast aga suurt teateid tulnud. "
        PRINT "         Arvatavasti sai tal kumm tyhjaks. Kuna keegi teadlane"
        PRINT "         ta romude otsimisega tegeleda ei viitsi, siis katsu 6nne"
        PRINT "         sina. Sellel pagel too'tab Parthfinderi otseyhendus."
        PRINT "                 Searcing signal from Parthfinder"
        a = 0
        DO
        a = a + 1
        IF a > 1 THEN a = 0
        IF a = 1 THEN c = 0
        IF a = 0 THEN c = 15
        LOCATE 17, 50
        COLOR c
        PRINT "..."
        FOR i = 1 TO 20000
        NEXT i
        LOOP UNTIL INKEY$ <> ""
        GOTO 1
3240
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

CLS
        SCREEN 12
        KEY OFF
        COLOR 10
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        COLOR 15
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        SLEEP 2
        COLOR 10
        LOCATE 5, 1
        PRINT " Galaktika ajad"
        COLOR 11
        GOSUB 3315
        GOSUB 3315
        PRINT
        PRINT "Merkuur       1:39:00"
        GOSUB 3315
        PRINT "Veenus        10:43:84"
        GOSUB 3315
        PRINT "Maa         ", TIME$
        GOSUB 3315
        PRINT "Marss         27:31:43"
        GOSUB 3315
        PRINT "Jupiter       45:45:14"
        GOSUB 3315
        PRINT "Saturn        102:32:99"
        GOSUB 3315
        PRINT "Uraan         1:22:53"
        GOSUB 3315
        PRINT "Neptuun       23:23:46"
        GOSUB 3315
        PRINT "Pluuto        0:42:357"
                DO
                LOOP UNTIL INKEY$ <> ""
        help = help + 1
        GOTO 1











' ************************************dgdgdfgEMPLOYER**************************
3500
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY OFF
        help = 0
   
      


        PRINT "WELCOME!"
        INPUT "Insert Name:", nasanimi$
        PRINT : PRINT "Tervist,"
        LOCATE 4, 10
        PRINT nasanimi$
        GOSUB 3555
3515

IF help > 6 THEN GOTO 3925
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, " Back"
        KEY 2, " Taevakaart"
        KEY 3, " Planeedid"
        KEY 4, " Ajad"
        KEY 5, " Keskused"
        KEY 6, " Uued projektid"
        KEY 7, " NASA videod"
        KEY 8, " About NASA"
        KEY 9, " NASA boss"
        SOUND 2000, 1
        KEY LIST
                INPUT a$
                IF a$ = "Back" THEN GOTO 1
                IF a$ = "Taevakaart" THEN GOTO 3330
                IF a$ = "Planeedid" THEN GOTO 3370
                IF a$ = "Ajad" THEN GOTO 3350
                IF a$ = "Keskused" THEN GOTO 3600
                IF a$ = "Uued projektid" THEN GOTO 3590
                IF a$ = "NASA videod" THEN GOTO 3900
                IF a$ = "About NASA" THEN GOTO 3910
                IF a$ = "NASA boss" THEN GOTO 3930
                SOUND 2000, 2
                GOTO 3515

        DO
        LOOP UNTIL INKEY$ <> ""

3555    FOR i = 1 TO 60000
        NEXT i
        RETURN

3556    SOUND 2000, 1
        FOR i = 1 TO 10000
        NEXT i
        RETURN

3557    SLEEP 3.5
        IF INKEY$ <> "" THEN GOTO 3515
        RETURN


3330
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

COLOR 10
     FOR i = 1 TO 800
     a = INT(RND * 640)
     b = INT(RND * 480)
     IF i > 400 THEN COLOR 15
     PSET (a, b)
     NEXT i
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 3515
3350
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

CLS
        SCREEN 12
        KEY OFF

        COLOR 10
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i

        COLOR 15
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        SLEEP 2
        COLOR 10
        LOCATE 5, 1
        PRINT " Galaktika ajad"
        COLOR 11
        GOSUB 3315
        GOSUB 3315
        PRINT
        PRINT "Merkuur       1:39:00"
        GOSUB 3315
        PRINT "Veenus        10:43:84"
        GOSUB 3315
        PRINT "Maa         ", TIME$
        GOSUB 3315
        PRINT "Marss         27:31:43"
        GOSUB 3315
        PRINT "Jupiter       45:45:14"
        GOSUB 3315
        PRINT "Saturn        102:32:99"
        GOSUB 3315
        PRINT "Uraan         1:22:53"
        GOSUB 3315
        PRINT "Neptuun       23:23:46"
        GOSUB 3315
        PRINT "Pluuto        0:42:357"
                DO
                LOOP UNTIL INKEY$ <> ""
        help = help + 1
        GOTO 3515
3315   SOUND 1000, .1
       i = 0
       FOR i = 1 TO 5000
       NEXT i
       RETURN


3370
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

'PLAAAAAAAANEDEDID
        KEY 1, " Back":    KEY 2, " Merkuur":    KEY 3, " Veenus":    KEY 4, " Maa":    KEY 5, " Marss":   KEY 6, " Jupiter"
           KEY 7, " Saturn":   KEY 8, " Uraan":    KEY 9, " Neptuun":     KEY 10, " Pluuto"
        PRINT : PRINT : PRINT : PRINT
        PRINT " F1  Back": PRINT " F2  Merkuur": PRINT " F3  Veenus"
        PRINT " F4  Maa": PRINT " F5  Marss": PRINT " F6  Jupiter"
          PRINT " F7  Saturn": PRINT " F8  Uraan": PRINT " F9  Neptuun"
          PRINT " F10 Pluuto"
       x = 1
       COLOR 13
       INPUT a$
       COLOR 15
       SLEEP 1
       IF a$ = "Back" THEN GOTO 3515
         IF a$ = "Merkuur" THEN GOTO 3375
         IF a$ = "Veenus" THEN GOTO 3378
         IF a$ = "Maa" THEN GOTO 3380
         IF a$ = "Marss" THEN GOTO 3382
         IF a$ = "Jupiter" THEN GOTO 3385
         IF a$ = "Saturn" THEN GOTO 3388
         IF a$ = "Uraan" THEN GOTO 3390
         IF a$ = "Neptuun" THEN GOTO 3392
         IF a$ = "Pluuto" THEN GOTO 3395
        GOTO 3370
3375 'merkuur
       FOR x = 1 TO 4
       PAINT (400, 350), 0
       CIRCLE (400, 350), x, 8
       PAINT (400, 350), 8
       NEXT x
     PRINT "    Pa'ikese l'him planeet.Meie Pa'ikese"
     PRINT "    systeemi tumedaim ja pisikseim ta'ht"
     PRINT "    Va'ga h6re atmosfaa'r. A muidu on ta"
     PRINT "    ta'itsa tore planeet. Hind 1510 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
     help = help + 1
     GOTO 3370
3378 'veenus
       FOR x = 1 TO 12
       PAINT (400, 350), 0
       CIRCLE (400, 350), x, 15
       PAINT (400, 350), 15
       NEXT x
     PRINT "    Maale la'him planeet. Sama suur kui"
     PRINT "    Maa. Va'ga hele ja kena. Vahel na'eb"
     PRINT "    seda taevast ise oma enese silmakesega"
     PRINT "    Ta'itsa tore planeet. Hind 81510 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
      help = help + 1
     GOTO 3370
3380 FOR x = 1 TO 13
       PAINT (400, 350), 0
       CIRCLE (400, 350), x, 1
       PAINT (400, 350), 1
       NEXT x
     PRINT "    See planeet on juba kellegi poolt."
     PRINT "    Tal on ka yks kaaslane nimega Kuu."
     PRINT "    Yks aasta kestab 365,26 pa'eva, see"
     PRINT "    on 12 Kuud. Hind umbes 51154109 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
     GOTO 3370
3382 FOR x = 1 TO 7
       PAINT (400, 350), 0
       CIRCLE (400, 350), x, 4
       PAINT (400, 350), 4
       NEXT x
     PRINT "    Ja'rgmine planeet Maast. Ka seal on"
     PRINT "    olemas aastaajad ja kliimavoo'tmed."
     PRINT "    ta'na s6idab sinna poole esimene homo"
     PRINT "    sapiens hinnaga 44332212 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
      help = help + 1
     GOTO 3370
3385 FOR x = 1 TO 142
       PAINT (360, 280), 0
       CIRCLE (360, 280), x, 6
       PAINT (360, 280), 6
       NEXT x
       CIRCLE (360, 280), 166, 6, , , .4
     PRINT "    Pa'ikesesysteemi suurim planeet. Tal"
     PRINT "    on mitu kaaslast. Neid on tervelt 6"
     PRINT "    Va'ga paks atmosfaa'r (100 km). Temp"
     PRINT "    tuumas 30000 kraadi. Hind 110 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
     GOTO 3370
3388 FOR x = 1 TO 120
       PAINT (360, 280), 0
       CIRCLE (360, 280), x, 6
       PAINT (360, 280), 6
       NEXT x
      CIRCLE (360, 280), 140, 14, , , .4
     PRINT "    Saturn kiirgab 2,5 korda rohkem val-"
     PRINT "    gust, kui ise P'ikeselt saab. Yldse"
     PRINT "    on ta va'ga tore planeet. YKs oo' ma"
     PRINT "    na'gin teda. Hind 65824466 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
      help = help + 1
     GOTO 3370
3390
       FOR x = 1 TO 53
       PAINT (360, 280), 0
       CIRCLE (360, 280), x, 2
       PAINT (360, 280), 2
       NEXT x
       CIRCLE (360, 280), 65, 1, , , 2
     PRINT "     Avastas selle ilusa planeedi  keegi W."
     PRINT "    Herchel  1781 a enda valmistatud teles-"
     PRINT "    koobi abil. See on hiidplaneet nagu Ju-"
     PRINT "    piter ja Saturngi. Kuulub I. Herchelile"
     DO
     LOOP UNTIL INKEY$ <> ""
     GOTO 3370
3392  FOR x = 1 TO 50
       PAINT (360, 280), 0
       CIRCLE (360, 280), x, 1
       PAINT (360, 280), 1
       NEXT x
     PRINT "    Neptuun  on selline planeet , millest"
     PRINT "    ma tean niipalju, et tal on kaks kuud"
     PRINT "    Nereis ja Triton.Ta on hiidplaneet ja"
     PRINT "    kallis. Hind 14007 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
      help = help + 1
     GOTO 3370
3395
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

  FOR x = 1 TO 4
       PAINT (360, 280), 0
       CIRCLE (360, 280), x, 8
       PAINT (360, 280), 8
       NEXT x
     PRINT "    See on siuke huvitav  planeet , et see"
     PRINT "    on vist kunagi olnud Neptuuni kaaslane"
     PRINT "    aga siis a'kki iseseisvat elu alustand"
     PRINT "    Hind 200 USD"
     DO
     LOOP UNTIL INKEY$ <> ""
      help = help + 1
     GOTO 3370



3590 CLS
     COLOR 3
     PRINT : PRINT : PRINT : PRINT : PRINT : PRINT "     Uued projektid"
     COLOR 15
     PRINT : PRINT " Ta'na lendab kuu poole yks pisike moodulike"
     PRINT "  Ta'na saadetakse marsile esimene inimene"
     PRINT "  Iga pa'ev otsitakse sponsoreid"
     PRINT "  Ylehomme on bossi synnipa'ev"
         DO
         LOOP UNTIL INKEY$ <> ""
         help = help + 1
        GOTO 3515
3600
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, " Back"
        KEY 2, " Greenbelt"
        KEY 3, " Hampton"
        KEY 4, " Houston"
        KEY 5, " Cape Canaveral"
        KEY 6, " Cleveland"
        KEY 7, " Huntsville"
3602
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

SOUND 2000, 1
      KEY LIST
      INPUT ">", a$
                IF a$ = "Back" THEN GOTO 3515
                IF a$ = "Huntsville" THEN PRINT "Page not ready yet"
                IF a$ = "Greenbelt" THEN GOTO 3800
                IF a$ = "Hampton" THEN GOTO 3675
                IF a$ = "Houston" THEN GOTO 3700
                IF a$ = "Cape Canaveral" THEN PRINT "Page not ready yet"
                IF a$ = "Cleveland" THEN GOTO 3750
       help = help + 1
      GOTO 3602
3650
3800
      
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970
      
        COLOR 15
        FOR i = 1 TO 3
        PRINT
        NEXT i
      PRINT " Connecting... "
      SLEEP 1
      IF greenbelt = 2 THEN PRINT "  ... Page not found": DO: LOOP UNTIL INKEY$ <> "": GOTO 3600
      SLEEP 1
      PRINT "     ...Creenbelt"
      SLEEP 1
      COLOR 3
      PRINT " ----------------"
      COLOR 15
      GOSUB 3557
      PRINT DATE$
      PRINT TIME$
      GOSUB 3557
      IF greenbelt = 1 THEN GOTO 3801
      PRINT " GREENBELT: Hello, how is going?"
      GOSUB 3557
      PRINT " WASHINGTON: Nice like always How are you?"
        GOSUB 3557
      PRINT " GREENBELT: Oh We have bad news Some thing is"
      SLEEP 1
      PRINT "        hacked our NASA computersystems"
      SLEEP 1
      GOSUB 3557
      PRINT " WASHINGTON: Yeah? Its so bad"
        GOSUB 3557
         greenbelt = 1
3801     PRINT " GREENBELT: And now the good news We saw yesterday one UFO  "
       SLEEP 1
       GOSUB 3557
     PRINT " WASHINGTON: Oh deam Hillary comes home back. Can you send me this UFO"
       GOSUB 3557
        SLEEP 2
     PRINT " GREENBELT: Ok "
         GOSUB 3557
     PRINT " GREENBELT: No Wait How can i send it to you? I remember Me must click reset?"
       SLEEP 5
     PRINT " WASHINGTON: Noooooooooooooo YOU ARE IDIOTEEEEEEEEEeeeeeeeeeee"
     greenbelt = 2
     SLEEP 2
     CLS
     SLEEP 1
       help = help + 1
GOTO 3600

3675
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

IF hamton = 1 THEN PRINT "Page not found": GOTO 3602
   PRINT "Connecting Hampton..."
      SLEEP 1
      GOSUB 3557
      PRINT DATE$
      GOSUB 3557
      PRINT TIME$
      GOSUB 3557
      PRINT "HAMPTON: Hallo, mum Im talking from my jobpoint"
      GOSUB 3557
      PRINT "ELVIIRA: kes see seal kobiseb v66ramaa keeles?"
      GOSUB 3557
      PRINT "HAMTON: thats mina, peeter. Ma raa'gin ameerikast": GOSUB 3557
      PRINT "ELVIIRA: ameerikast?": GOSUB 3557
      PRINT "HAMTON: ah tegelt tartust, aga ma ha'kkisin yhte hamptoni v6rku sisse": GOSUB 3557
      PRINT "    ja telefoni arve la'heb nyydd neile.": GOSUB 3557
      PRINT "CLEVELAND: Hallo Hamton. We have a signal in line 5486432487lg54": GOSUB 3557
      PRINT "ELVIIRA: Close your stupid mouth. Las ma raa'gin oma pojaga?": GOSUB 3557: GOSUB 3557
      PRINT "CLEVELAND: Its you, joker Bob?": GOSUB 3557
      PRINT "ELVIIRA: Close your stupid mouth. Kus see Hampton nyyd ja'i?": GOSUB 3557
      PRINT "CLEVELAND: Who are there? UFOs? Stay here, we are coming...": GOSUB 3557
      PRINT "ELVIIRA: Close your stupid mouth. Ja rohkem ma inglisekeelt ei oska, muideks": GOSUB 3557: GOSUB 3557
      PRINT "HAMPTON: Emme, ma panen selle paiga igaksjuhuks kinni": GOSUB 3557
      PRINT "CLEVELAND: Wait a minut. One my friends sais that you ": GOSUB 3557
      PRINT "   are speaking estonish": GOSUB 3557
      PRINT "HAMPTON: Its closed now!": GOSUB 3557
       hamton = 1
     GOTO 3602

3700
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

PRINT "Connecting Houston..."
      SLEEP 1
      GOSUB 3556
      PRINT DATE$
      GOSUB 3556
      PRINT TIME$
      GOSUB 3557
      PRINT "JACK: tere polla, mis teed": GOSUB 3557
      PRINT "POLLA: ma ytlesin et a'ra too' ajal mulle kirjuta": GOSUB 3557
      PRINT "     Ma just arvutasin selle homse reisi kytusekulusid": GOSUB 3557
      PRINT "JACK: sellest ma just raa'gingi. tead mis nalja ma tegin? meilisin": GOSUB 3557
      PRINT "     Bossile, et : Raketil on v6ileib . tead mis ta tegi?": GOSUB 3557: GOSUB 3557
      PRINT "POLLA: Raa'gi juba, ma l6hken uuudishimust": GOSUB 3557
      PRINT "JACK: ta saatis oma mehed kohe asja uurima. Aa'repealt oleks ta'nane": GOSUB 3557
      PRINT "     reisuke a'ra ja'etud": GOSUB 3557
       help = help + 1
      PRINT "POLLA: oota natsa. boss just tuli siia": GOSUB 3557: GOSUB 3557
      PRINT "POLLA: oli ikka j6le vihane kyll. Oli tasuta l6unat lootnud": GOSUB 3557
      PRINT "JACK: mul tuli nyyd kiire. Rakett la'ks ilma minuta kuu poole teele": GOSUB 3557
      PRINT "POLLA: ts'auka siis ": GOSUB 3557
      DO
      LOOP UNTIL INKEY$ <> ""
      GOTO 3602
3750
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

PRINT "Connecting Cleveland..."
      SLEEP 1
      GOSUB 3556
      PRINT DATE$
      GOSUB 3556
      PRINT TIME$
      GOSUB 3556
      PRINT "NOW <MIR> ONLINE:"
      GOSUB 3557
      PRINT : PRINT "MIR: Dobro'i denn, Klivland!"
      GOSUB 3557
      PRINT "CLEVELAND: Hello, MIR!"
      GOSUB 3557
      PRINT "MIR: To' kavariss estonii?"
      GOSUB 3557
      PRINT "CLEVELAND: of course, mis on murex?"
      GOSUB 3557
      PRINT "MIR: siin on probleem"
      GOSUB 3557
      PRINT "CLEVELAND: ahsoo, no mis siis ja'lle viga on?"
      GOSUB 3557
      PRINT "MIR: Anatoli siin t6mbas Internetist ma'nge ja et k6vakettale"
      PRINT "     ruumi teha, kustutas ta kogemata meie juhtimissysteemi"
      PRINT "     draiverid a'ra. Mida me peame tegema?": GOSUB 3557
      SLEEP 2
      PRINT "CLEVELAND: Oota, mulle on telefon...": GOSUB 3557
      SLEEP 1
      PRINT "CLEVELAND: ah v6i selline probleem. Kohe vaatan ka'siraamatust...": GOSUB 3557
      PRINT "CLEVELAND: teil peaks sektsioonis nr 2 olema yhes riiulis back-up"
      PRINT "           failid diskettidel.": GOSUB 3557
      PRINT "MIR: paha lugu, 2. sektsioon kukkus meil eile kyljest a'ra.": GOSUB 3557
      PRINT "CLEVELAND: selle kohta pole siin raamatus midagi o'eldud. Kohe"
      PRINT "           kysin ylemuselt...": GOSUB 3557
      PRINT "CLEVELAND: ylemus on praegu kinni. Ytles, et tehke, mis tahate!": GOSUB 3557
      PRINT "MIR: asi on halb, <CRITICAL> signaallamp hakkas too'le!": GOSUB 3557
      PRINT "CLEVELAND: Mis te pabistate, teil peaks seal ju mingid langevarjud"
      PRINT "           olema": GOSUB 3557
      PRINT "MIR: selge, me hyppame!": GOSUB 3557
      PRINT "CLEVELAND: ok": GOSUB 3557
      PRINT "MIR: ootamatu syndmus, Vassili hakkas just hyppamiseks ust avama,"
      PRINT "     kui keegi koputas. Mida me peame tegema?": GOSUB 3557
      PRINT "CLEVELAND: kysige igax juhux, kes on.": GOSUB 3557
      SLEEP 3
      PRINT "CLEVELAND: MIR!"
      SLEEP 2
      PRINT "CLEVELAND: MIR, vastake!"
      SLEEP 2
      PRINT "END OF CONNECTING"
      INPUT a$
     GOTO 3515
3900
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970
      
        CLS
                FOR i = 1 TO 4000                ' tahed
                        x = INT(640 * RND)
                y = INT(480 * RND)
                a = INT(4 * RND)
                IF a = 0 THEN c = 7
                IF a = 1 THEN c = 8
                IF a = 2 THEN c = 15
                IF a = 3 THEN c = 7
                PSET (x, y), c
                NEXT i

                CIRCLE (80, 350), 20, 8           'kuu
                CIRCLE (80, 350), 19, 7
                CIRCLE (80, 350), 18, 15
                PAINT (80, 350), 15
              SLEEP 2
        FOR i = 1 TO 15                            'alllaminek
              LOCATE 30, 1
              PRINT
                        FOR s = 1 TO 140

                        x = INT(640 * RND)
                y = INT(14 * RND) + 450
                a = INT(4 * RND)
                IF a = 0 THEN c = 7
                IF a = 1 THEN c = 8
                IF a = 2 THEN c = 15
                IF a = 3 THEN c = 7
                PSET (x, y), c
                NEXT s
           NEXT i
         m = 0
        FOR i = 1 TO 4
                x = 0
                 y = 420
              
                IF m = 0 THEN c = 0
                IF m = 1 THEN c = 8
                IF m = 2 THEN c = 7
                IF m = 3 THEN c = 15
                PSET (x, y), c
                DRAW "r50;u30;r100;d30;r40;u65;r80;u30;r120;d30;r30;d10;r50;u80;r20;d35;r60;u20;r30;d20;r10;d45;r59"
                m = m + 1
                IF c = 8 THEN PAINT (155, 435), c
                SLEEP 1
                NEXT i
g = 0                                              'ufo tuleb
FOR i = 1 TO 50
      g = g + .4
      r = INT(g)
      CIRCLE (94, 115), r, 0, , , .5
   FOR k = 1 TO 2000
   NEXT k
   NEXT i
        CIRCLE (94, 115), r, 8, 4, 6, .5
        FOR i = 1 TO 15                        'ufo tapitab
                x = INT(18 * RND) + 85
                y = INT(7 * RND) + 114
                PSET (x, y), 3
             FOR k = 1 TO 2000
             NEXT k
        PSET (x, y), 0
   NEXT i

        c = 94
        b = 115
     
        FOR i = 1 TO 245                     'ufo saadab kiire
                x = INT(18 * RND) + 85
                y = INT(7 * RND) + 114
                PSET (x, y), 3
             c = c + .5
             a = INT(c)
             b = b + 1
             PSET (a, b), 3
             FOR k = 1 TO 300
             NEXT k
        PSET (x, y), 0
   NEXT i
   
      FOR i = 1 TO 400      'plahvatus
             c = INT(500 * RND)
             c2 = INT(500 * RND) + 7
             c3 = INT(500 * RND)
                c4 = INT(500 * RND)
                c5 = INT(500 * RND)
                  LINE (a, b)-(a - c, b - c2), 7
                LINE (a, b)-(a - c2, b - c), 8
                LINE (a, b)-(a + c3, b + c2), 8
                LINE (a, b)-(a - c4, b + c2), 7
                LINE (a, b)-(a + c5, b - c4), 7
                LINE (a, b)-(a + c, b - c5), 15
                LINE (a, b)-(a + c4, y + c5), 8
                   LINE (a, b)-(a + c4, y + c2), 7
                    LINE (a, b)-(a + c, y + c5), 7
          
              NEXT i
      c = 1
      FOR i = 1 TO 900
        CIRCLE (0, 0), c, 0
        c = c + 1
        CIRCLE (640, 480), c, 0
     NEXT i
       x = 0
       y = 0
       a = 640
       b = 480
        FOR i = 1 TO 640
        LINE (x, 0)-(0, y), 0
        LINE (a, 480)-(640, b), 0
        a = a - 1
        b = b - 1
        x = x + 1
        y = y + 1
      NEXT i
      vidio = 1
      GOTO 3515
       help = help + 1
3910
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

CLS
        SCREEN 12
        KEY OFF
        COLOR 10
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        COLOR 15
        FOR i = 1 TO 300
        a = INT(RND * 640)
        b = INT(RND * 480)
        PSET (a, b)
        NEXT i
        SLEEP 2
        COLOR 10
        LOCATE 5, 1
        PRINT " About NASA"
        COLOR 11
        PRINT : PRINT "National Aeronautics and Space Administration"
        GOSUB 3315
        PRINT : PRINT "NASA on USA riiklik kosmose uurimise ja kosmonautika arendamise"
        GOSUB 3315
        PRINT "organisatsioon, mis asutati 1958. aastal. NASA keskus on Washingtonis."
        GOSUB 3315
        PRINT "Tegevuse p6hieesma'rgid:"
        GOSUB 3315
        LOCATE 12, 5
        PRINT "# Atmosfaa'ris ja sellest va'ljaspool lendamise uurimine"
        GOSUB 3315
        LOCATE 13, 5
        PRINT "# Kosmoseaparaatide loomine, katsetamine ja lendude korraldamine"
        GOSUB 3315
        LOCATE 14, 5
        PRINT "# Kosmoseuuringute tulemuste rakendamine teaduses ja majanduses"
        GOSUB 3315
        LOCATE 15, 5
        PRINT "# Rahvusvahelise koostoo' organiseerimine."
        GOSUB 3315
        PRINT "NASA koosneb 5 sihtprogrammi diktoraadist (kosmoseteadus, kosmonautika"
        GOSUB 3315
        PRINT "ja kosmosetehnika, rakendusuuringud, kosmosetranspordisysteemid,"
        GOSUB 3315
        PRINT "kosmoseandmed), 8 funktsionaalsest osakonnast ja 8 uurimiskeskusest."
        LOCATE 20, 1
        PRINT "Programmide ta'itmiseks s6lmib NASA lepinguid teadusasutuste, uurimis-"
        GOSUB 3315
        PRINT "ja tootmisfirmadega, tema eelarve on USA fo'deraaleelarves suuruselt"
        GOSUB 3315
        PRINT "teisel kohal"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 3515
       
3925
   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970
      
        CLS
        COLOR 15
    PRINT "Just praegu tuli e-mail kelleltki Jamaikailt, checki seda!"
    SLEEP 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION: Help"
    PRINT "FROM: John"
    PRINT "TO:", nimi$: PRINT
    COLOR 9
    PRINT " Ei oska, jah?"
    PRINT " Okey, mul on neist kosmonautidest tegelikult kahju. Kuula"
    PRINT " nyyd mind: vaata Houstoni too'tajate omavahelisi k6nesid"
    PRINT " Ja veel : Mine sealt saadud vihje ja'rgi ja kohale j6udes"
    PRINT " kl6bista rohkem F - e. La'ks vist ylikergeks v6i?"
    PRINT " Ciao siis"
    help = 1
    COLOR 15
    DO
    LOOP UNTIL INKEY$ <> ""
    CLS
    GOTO 3515
 
3930

   
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 600 THEN GOTO 3970

'bossi jutukas
     COLOR 9
     PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
     KEY 1, "Raketil on"
     KEY 2, "v6ileib"
     KEY 3, "KoikOK"
     KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, " viirus"
     PRINT " NASA bossi jutukas"
     PRINT " ------------------"
     COLOR 15
       OPEN "bostext.txt" FOR INPUT AS #1

   DO
   INPUT #1, rida$
   PRINT rida$
   LOOP UNTIL (EOF(1))
   CLOSE #1
     PRINT nasanimi$, ":"
     INPUT ">>>", a$
     IF a$ = "Raketis on v6ileib" THEN PRINT "  Ja'lle? Kohe tchekin"
     IF a$ = "Raketis on KoikOK" THEN PRINT "  Nagu ma ise ei teaks"
     IF a$ = "Raketis on viirus" OR a$ = "raketis on viirus" THEN GOTO 3940
        IF a$ = "Raketil on viirus" OR a$ = "raketil on viirus" THEN GOTO 3940
     OPEN "bostext.txt" FOR APPEND AS #1
     PRINT #1, nasanimi$, a$
     CLOSE #1
    GOTO 3515
3940 PRINT "  MIDA?"
        SLEEP 1
        PRINT " Kohe tchekin"
        SLEEP 3
        PRINT "Thank for god"
        SLEEP 1
        PRINT "Help me next time too"
        SLEEP 2
        SLEEP 2
     CLS
     KEY OFF
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest Missionist:"
     LOCATE 5, 21
     PRINT punktid
     PRINT "MISSIONI TA'ITMISE EEST:  10000"
     PRINT "SO'BRATUNNETE EEST: 2000"
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):", INT(aeg)
     ajalisa = 600 - aeg
     timebonus = ajalisa * 11
     TIMER OFF
     PRINT "TIMEBONUS:", INT(timebonus)
     COLOR 15
     punktid = punktid + 12000 + timebonus
      PRINT : PRINT "KOKKU:", INT(punktid)
      punktid = INT(punktid)
       DO
       LOOP UNTIL INKEY$ <> ""
       mission = 4
        ok = 1
      
        OPEN "buffer.txt" FOR OUTPUT AS #1
            PRINT #1, nimi$
            PRINT #1, mission
            PRINT #1, punktid
            PRINT #1, pin
            PRINT #1, ok
        CLOSE #1
     '*******           P U N K T I T A B E L           *******************

    CLS
    SCREEN 12
    KEY OFF

    OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, b, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
    CLOSE #1
        IF punktid < g + 1 THEN koht = 8
        IF punktid > g THEN koht = 7
        IF punktid > F THEN koht = 6
        IF punktid > e THEN koht = 5
        IF punktid > d THEN koht = 4
        IF punktid > c THEN koht = 3
        IF punktid > b THEN koht = 2
        IF punktid > a THEN koht = 1
  
     IF koht < 7 THEN rida7$ = rida6$: g = F
        IF koht < 6 THEN rida6$ = rida5$: F = e
        IF koht < 5 THEN rida5$ = rida4$: e = d
        IF koht < 4 THEN rida4$ = rida3$: d = c
        IF koht < 3 THEN rida3$ = rida2$: c = b
        IF koht < 2 THEN rida2$ = rida1$: b = a
         IF koht = 1 THEN rida1$ = nimi$: a = punktid
         IF koht = 2 THEN rida2$ = nimi$: b = punktid
         IF koht = 3 THEN rida3$ = nimi$: c = punktid
         IF koht = 4 THEN rida4$ = nimi$: d = punktid
         IF koht = 5 THEN rida5$ = nimi$: e = punktid
         IF koht = 6 THEN rida6$ = nimi$: F = punktid
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
     PRINT #1, F
     PRINT #1, rida7$
     PRINT #1, g

     CLOSE #1
   
 IF tabel = 8 THEN RUN "miss4.bas"
 OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, b, rida3$, c, rida4$, d, rida5$, e, rida6$, F, rida7$, g
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
      
       RUN "miss4.bas"

3970 CLS
        LOCATE 7, 22
        COLOR 4
        PRINT "MISSION FAILED"
        COLOR 3
        PRINT TAB(14); "Tead mis? Rakett startis praegu taeva laotuste poole"
        PRINT TAB(14); "Sa lollpea ei suutnudki midagi ette v6tta?"
        PRINT TAB(14); "Sul kahju pole nendest inimestest v6i? OK. OK."
        PRINT TAB(14); "Ja'rgmine la'heb 10 min pa'rast. Sellele saatsid"
        PRINT TAB(14); "su s6braksed kah viiruse."
        PRINT : PRINT
        PRINT TAB(24); "<Space> to save raket "
        PRINT TAB(24); " <Esc>  to exit"
           TIMER OFF
           TIMER ON
           DO
           IF INKEY$ = CHR$(32) THEN GOTO 1
           IF INKEY$ = CHR$(27) THEN GOTO 11111
           LOOP
   
       
       
       
       
       
       
 

     



