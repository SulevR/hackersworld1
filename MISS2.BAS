19
11110   CLS
        SCREEN 12
        CLS
        OPEN "buffer.txt" FOR INPUT AS #4
        INPUT #4, nimi$, mission, punktid, pin, ok
        CLOSE #4
11111
        
         IF opetaja = 1 THEN GOTO 1700
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
                INPUT "  Which Game Do You load (1-3 or Enter to cancel)>", y$
                IF y$ = "1" THEN mission = bbb: punktid = ccc: pin = ddd: ok = eee
                 IF y$ = "2" THEN mission = b: punktid = c: pin = d: ok = e
                 IF y$ = "3" THEN mission = bb: punktid = cc: pin = dd: ok = ee
                 OPEN "buffer.txt" FOR OUTPUT AS #5
                 PRINT #5, nimi$
                 PRINT #5, mission
                 PRINT #5, punktid
                    PRINT #5, pin
                    PRINT #5, ok
                 CLOSE #3
                 IF mission = 1 THEN RUN "miss1"
                 IF mission = 2 THEN RUN "miss2"
                 IF mission = 3 THEN RUN "miss3"
                 IF mission = 4 THEN RUN "miss4"
                 IF mission = 5 THEN RUN "miss5"
                 IF mission = 6 THEN RUN "miss6"
                 IF mission = 7 THEN RUN "miss7"
                    mission = 2
                    
                
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
        LOCATE 15, 32: PRINT rida6$, f
        LOCATE 16, 32: PRINT rida7$, g
        '****************************************************
        COLOR 15
                DO
                LOOP UNTIL INKEY$ <> ""
                GOTO 11110
11150        CLS
        KEY OFF
        COLOR 11
        OPEN "mission2.txt" FOR INPUT AS #3
        DO
        INPUT #3, rida$
        PRINT rida$
        LOOP UNTIL EOF(3)
      CLOSE #3
        DO
        IF INKEY$ = " " THEN hkg = 1: GOTO 1000
        IF INKEY$ = CHR$(27) THEN GOTO 11110
        LOOP
       
1000 '**************************MISSION 2***********************
       RANDOMIZE otse
       TIMER OFF
       koodsona = INT(RND * 5)
       IF koodsona = 0 THEN kood$ = "rahapada"
       IF koodsona = 1 THEN kood$ = "rahakirst"
       IF koodsona = 2 THEN kood$ = "aardekaart"
       IF koodsona = 3 THEN kood$ = "varandus"
       IF koodsona = 4 THEN kood$ = "rahaauk"
       
        CLS
        KEY OFF
        COLOR 11
        OPEN "mission2.txt" FOR INPUT AS #3
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
                        SLEEP 3
                        PRINT TAB(12); "Mis asja? Ma arvasin sust rohkem . Aga ei saand "
                        SLEEP 3
                        PRINT TAB(12); "sa isegi nende imikuile m6eldud Missionidega hakkama"
                        SLEEP 2
                        PRINT TAB(12); "Ta'ielikust sitast lollpea oled, muideks. "
                        SLEEP 1
                        LOCATE 15, 1
                        PRINT TAB(12); "Tarkust jaab sul natuke va'heks"
                hkg = 0
SLEEP 3
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click any key"

        DO
        LOOP UNTIL INKEY$ <> ""
 GOTO 19
1 '********************************MISSION 2 algab*****************************
'matapunkt on siuke asi mida teenid matemi toas
'sportpunkti saad skoori muutmise eest spordisaalis
' kui opetaja=1 siis on see mata ops lahti lastud
arvuti = 0
CLS
palgaraha = 135456
SCREEN 12
seis$ = "10 : 23"
ON ERROR GOTO 1800
TIMER ON
StartTime = TIMER

IF hkg = 0 THEN GOTO 11150
1100     '********************KOOLI ESILEHEKULG************************
        CLS
        SCREEN 12
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

   
        KEY 1, " Back"
        KEY 2, " Huvitavat"
        KEY 3, " Ruumid"
        KEY 4, " Opetajad"
        KEY 5, " Saavutused"
     
    
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
        LINE (0, 440)-(640, 480), 8, BF         'all

        LINE (4, 52)-(36, 84), 7, B             'nupu-kastid
        LINE (40, 52)-(72, 84), 7, B
        LINE (76, 52)-(108, 84), 7, B
        LINE (112, 52)-(144, 84), 7, B
        LINE (148, 52)-(180, 84), 7, B
        LINE (184, 52)-(216, 84), 7, B

        LINE (0, 116)-(614, 436), 15, BF

        COLOR 0
        PSET (120, 400)                          'huvitavat
        DRAW "l100;g5;d5;f5;r100;e5;u5;h5"
        PAINT (119, 401), 0
        PSET (235, 400)                          'ruumid
        DRAW "l100;g5;d5;f5;r100;e5;u5;h5"
        PAINT (234, 401), 0
        PSET (350, 400)                          'opetajad
        DRAW "l100;g5;d5;f5;r100;e5;u5;h5"
        PAINT (349, 401), 0
        PSET (465, 400)                          'saavutused
        DRAW "l100;g5;d5;f5;r100;e5;u5;h5"
        PAINT (464, 401), 0
        PSET (593, 400)
        DRAW "l108;g5;d5;f5;r108;e5;u5;h5"
        PAINT (592, 401), 0
        LINE (80, 116)-(535, 360), 0, BF         'pildialus

        COLOR 15
        LOCATE 26, 6
        PRINT "F1 Back"
        LOCATE 26, 18
        PRINT "F2 Huvitavat"
        LOCATE 26, 34
        PRINT "F3 Ruumid"
        LOCATE 26, 48
        PRINT "F4 Opetajad"
        LOCATE 26, 62
        PRINT "F5 Saavutused"
    
        LOCATE 1, 1
        PRINT " Microsoft Internet Explorer "
        LOCATE 7, 9
        PRINT "http://www.ruudkool.edu.ee"

        LOCATE 9, 25
        COLOR 10
        PRINT "Ruudi Keskkooli oma veb peidz"
        LOCATE 10, 28
        COLOR 12
        PRINT "Welcome over the world!"
        COLOR 11
        LOCATE 11, 33
        PRINT "Vaadake ko'ik!"
        LOCATE 9, 70
        COLOR 15
        PRINT "143593"
        LOCATE 22, 29
        COLOR 10
        PRINT "Siia tuleb varsti pilt"


     
        LINE (120, 200)-(495, 350), 8, B
        KEY ON
    
        x = 57
                DO
                LINE (x, 390)-(x + 29, 393), 4, BF
                LINE (x - 115, 390)-(x - 86, 393), 15, BF
                x = x + 115
                        FOR i = 1 TO 9000
                        NEXT i
                IF x > 520 THEN x = 57: LINE (517, 390)-(546, 393), 15, BF
                LOOP UNTIL INKEY$ <> ""



        COLOR 15
        LOCATE 7, 9
        INPUT "http://www.ruudkool.edu.ee ", a$
        COLOR 15
     

        IF a$ = "Back" THEN GOTO 11110
        IF a$ = "Huvitavat" THEN GOTO 1150
        IF a$ = "Ruumid" THEN GOTO 1200
        IF a$ = "Opetajad" THEN GOTO 1400
        IF a$ = "Saavutused" THEN GOTO 1160
        GOTO 1800



1150     '**********************HUVITAVAT******************************
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270
      
         KEY OFF
        CLS
        SCREEN 12
        LINE (0, 0)-(640, 50), 14, BF
        x = 1
      
         LOCATE 3, 36
         PRINT "HUVITAVAT"
         LOCATE 6, 1
         PRINT " Meie kool on juba va'ga vana. Ja selle asutas yks va'ga"
         PRINT " kuulus leedu va'ejuht Juvhcovvsky. Oleme arenenud oma"
         PRINT " tegutsemisaja jooksul nii palju, et suudame praegu anda"
         PRINT " keskkooli tasemel haridust."
         PRINT " Oleme v6itnud tohutul hulgal igasuguseid auhindu ja "
         PRINT " me jatkame seda traditsiooni ka edaspidi."
         PRINT " NYYD! Nyyd on meilgi, nagu yhele normaalsele koolile"
         PRINT " kohane, olemas oma HOME PAGE, mis on muide yks parimaid"
         PRINT " Web Pagesid yldse!"
        DO
        LOOP UNTIL INKEY$ <> ""
      
       
         GOTO 1100

1160     '**********************SAAVUTUSED*****************************
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270
      
         KEY OFF
         CLS
         COLOR 12
         PRINT : PRINT : PRINT : PRINT "       Ruudi Keskkooli 6pilaste saavutusi:"
         COLOR 14
         PRINT :  PRINT : PRINT " Saavutus                                        Aasta  Nimi"
         COLOR 15:       PRINT " 5. koht yleriiklikul maleturniiril              1969   Sergei Ljukin"
                         PRINT " 17.koht Tallinna korvpalliv6istlusel            1982   7a"
                         PRINT " 11.koht Balti karate olympiaadil                1991   Toivo Taburet"
                         PRINT " 1. koht Baltimaade juuniorha'kkerite v6istlusel 1998"
                         PRINT " 2. koht Baltimaade juuniorha'kkerite v6istlusel 1998   Juhan Keiser"
                         PRINT " 4. koht Eesti Noorte hingekinnipidamisturniiril 1998   Eduard Saiaviil"
                         PRINT " 88.koht eestikeele olympiaadil Paides           1998   Aivi Paulus"
          b = 1
          LOCATE 11, 57
          PRINT nimi$
          SLEEP 1
          COLOR 5
          DO
              LOCATE 18, b
              IF a = 0 THEN b = b + 1
              IF a = 1 THEN b = b - 1
              IF b < 2 THEN a = 0
              IF b > 37 THEN a = 1
                PRINT " M E I E   K O O L   O N   P A R I M "
                FOR i = 1 TO 3000
                NEXT i
                LOOP UNTIL INKEY$ <> ""
         GOTO 1100

1200     '***********************RUUMID********************************
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270
     
        CLS
        SCREEN 12
        COLOR 15
        PRINT : PRINT : PRINT "                  RUUMID"
                        PRINT "                 --------"
                        COLOR 3
                        PRINT "                  F2 - Keemia"
                        PRINT "                  F3 - Spordisaal"
                        PRINT "                  F4 - Sookla"
                        PRINT "                  F5 - Arvutiklass"
                        PRINT "                  F6 - Matemaatika"
     
     
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        KEY 1, " Back"
        KEY 2, " Keemia"
        KEY 3, " Spordisaal"
        KEY 4, " Sookla"
        KEY 5, " Arvutiklass"
        KEY 6, " Matemaatika"
        KEY ON
          x1 = 340
          y1 = 40
          x = 130
          y = 40
          a = 0
          b = 0
          c = 0
          d = 0
          DO
                a = a + 1
                b = b + 1
                IF b = 130 THEN GOSUB 1225
                IF b > 170 THEN d = 2
                IF b > 330 THEN d = 3
                IF b > 580 THEN d = 4
                IF b > 740 THEN GOSUB 1220
                IF d = 0 THEN x1 = x1 - 1
                IF d = 1 THEN x1 = x1 - 1
                IF d = 2 THEN y1 = y1 + 1
                IF d = 3 THEN x1 = x1 + 1
                IF d = 4 THEN y1 = y1 - 1
               PSET (x1, y1), 0
             

                IF a > 40 THEN c = 1
                IF a > 200 THEN c = 2
                IF a > 450 THEN c = 3
                IF a > 610 THEN c = 4
                IF a > 740 THEN GOSUB 1210
                IF c = 0 THEN x = x - 1
                IF c = 1 THEN y = y + 1
                IF c = 2 THEN x = x + 1
                IF c = 3 THEN y = y - 1
                IF c = 4 THEN x = x - 1
               PSET (x, y), 13
                 FOR i = 1 TO 300
                 NEXT i


                LOOP UNTIL INKEY$ <> ""
        PRINT : PRINT : PRINT : PRINT : PRINT
        COLOR 15
        INPUT a$
        IF a$ = "Back" THEN GOTO 1100
        IF a$ = "Matemaatika" THEN GOTO 1250
        IF a$ = "Keemia" THEN GOTO 1280
        IF a$ = "Spordisaal" THEN GOTO 1260
        IF a$ = "Sookla" THEN GOTO 1270
        IF a$ = "Arvutiklass" THEN GOTO 1300
        GOTO 1800
      
1210 a = 0
        c = 0
        x = 131
      RETURN
1220  b = 0
       d = 0
     
       RETURN
1225 x1 = 131
        c = 1
        RETURN

1250     '********************MATEMAATIKA******************************
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270
     
        CLS
        SCREEN 12
        COLOR 10
        KEY 1, " Back": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        IF m > 0 THEN KEY 2, "TryAgain"
        PRINT : PRINT : PRINT : PRINT : PRINT "         ---Matematical program---"
                                        COLOR 7
                                        PRINT "      Produced by Ruudi Keskkool 1998   ": IF m = 0 THEN SLEEP 1
                                        COLOR 15
                                PRINT : PRINT " Starting": IF m = 0 THEN SLEEP 2
                                        PRINT " How much is?"
                                        a = INT(RND * 100)
                                        b = INT(RND * 100)
                                        PRINT "         "; a, "*", b
                                        ON ERROR GOTO 1255
                                        INPUT c
                                        IF c = a * b THEN matapunkt = matapunkt + 1000
                                        IF c = a * b THEN PRINT "       Ohoo! 6ige vastus"
                                        IF c <> a * b THEN PRINT "     6ige vastus oli", a * b: SLEEP 1: COLOR 3
                                        COLOR 3
                                        m = m + 1
                                        KEY 2, "TryAgain"
                                        KEY ON
                                        PRINT "      What do you do?"
                                        PRINT " F1-Back       F2-TryAgain"
        INPUT a$

        IF a$ = "TryAgain" THEN GOTO 1250
        SLEEP 2
        GOTO 1200
1255 PRINT "         Very nice vastus."
        PRINT "Maybe its 6ige."
        SLEEP 3
        GOTO 1200

1260    '********************SPORDISAAL*******************************
  
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270

     KEY 1, " OK": KEY 2, " No": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
     a = 0
                CLS
                COLOR 3
                PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
                PRINT "          Spordisaalis on kai'mas:"
                SLEEP 1
                COLOR 12
     FOR i = 1 TO 10
                LOCATE 7, 36
                IF a = 0 THEN PRINT "Ka'sipall "
                IF a = 1 THEN PRINT "Jalgpall  "
                IF a = 2 THEN PRINT "Lauatennis"
                IF a = 3 THEN PRINT "Kukerpallitamine"
                IF a = 4 THEN PRINT "Rahvastepall     "
                IF a = 5 THEN PRINT "Jaa'hoki         "
                IF a = 6 THEN PRINT "Noolte viskamine"
                IF a = 7 THEN PRINT "Sulgpall        "
                IF a = 8 THEN PRINT "Tapmine"
                IF a = 9 THEN PRINT "Korvpalli ma'ng         "
                a = a + 1
             
                FOR k = 1 TO 9000
                NEXT k
             NEXT i
               y = 50
               a = 0
            COLOR 6
            KEY ON
            LOCATE 9, 11
            PRINT " Ning skoor on... ee...:", seis$
            LOCATE 10, 14
            PRINT " Valged juhivad!"
               PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
               COLOR 15
             PRINT "         Is it OK?"
               DO
                 IF n = 0 THEN c = y - 2
                 IF n = 1 THEN c = y + 2
                 CIRCLE (500, c), 40, 0
              
                 IF n = 0 THEN y = y + 1
                 IF n = 1 THEN y = y - 1
                 CIRCLE (500, y), 40, 12
              
                 IF y > 350 THEN n = 1
                 IF y < 100 THEN n = 0
                  FOR k = 1 TO 100
                  NEXT k
                LOOP UNTIL INKEY$ <> ""
           LOCATE 20, 7
           INPUT a$
         
           IF a$ = "No" THEN GOTO 1265
                a = y - 4
                FOR i = 1 TO 7
                a = a + 1
                CIRCLE (500, a), 40, 0
                NEXT i

                n = 1
                x = 500
                FOR i = 1 TO 499
              
                CIRCLE (x, y), 40, 0
                x = x - 1
                IF y > 350 THEN n = 0
                IF y < 150 THEN n = 1
                IF y < 200 AND x < 300 THEN n = 1
                IF y < 250 AND x < 200 THEN n = 1
                IF y < 300 AND x < 100 THEN n = 1
            
               IF n = 0 THEN y = y - 1
               IF n = 1 THEN y = y + 1
                  CIRCLE (x, y), 40, 12
                FOR k = 1 TO 150
                NEXT k
             NEXT i
             GOTO 1200
1265 LOCATE 20, 7
        INPUT "EDIT : ", seis$
        sportpunkt = 400
        SLEEP 1
        GOTO 1260

1270     '************************SOOKLA*******************************
      
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270

        CLS
        SCREEN 12
        COLOR 15
        
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        KEY 1, " Ok"
        KEY 2, " Edit"
        KEY OFF

     
        LINE (0, 0)-(640, 480), 3, BF
        LINE (15, 15)-(625, 450), 4, BF
        LINE (30, 30)-(610, 435), 0, BF
        LINE (45, 150)-(595, 420), 2, BF
        LINE (60, 165)-(580, 405), 0, BF
        LOCATE 7, 36
        COLOR 14
        PRINT "M E N Y Y"
        IF sookla = 1 THEN GOTO 1277
        LOCATE 8, 26
        COLOR 4
        PRINT "T2nane yksikportsion maksab 3.-"
        COLOR 1
        LOCATE 25, 10
        PRINT "Toitlustab AS LAUD LOOKAS                      tel 12345643634"
        COLOR 2
        LOCATE 15, 35
        PRINT "Mingi supp,"
        LOCATE 17, 34
        PRINT "natuke leiba,"
        LOCATE 19, 35
        PRINT "magustoit,"
        LOCATE 21, 35
        PRINT "klaas vett"

        COLOR 15
        KEY ON
        COLOR 15
        LOCATE 28, 5
        INPUT "Is it OK?", a$
        IF a$ = "Edit" THEN GOTO 1275
        GOTO 1200

1275    LINE (60, 165)-(580, 405), 0, BF
        COLOR 2
        LOCATE 15, 20
        INPUT "NEW MENU:", sook$
        LOCATE 16, 29
        PRINT "Editing..."
        SLEEP 1
        a = 320
        b = 320
                DO
                LINE (a, 265)-(b, 390), 4, BF  'LINE (75, 265)-(565, 390), 4, BF
                a = a - 1
                b = b + 1
                        FOR i = 1 TO 25
                        NEXT i
                LOOP UNTIL a < 75
        LOCATE 19, 23
        COLOR 15
        PRINT "Aga me pidime ju teist asja tegema!"
        SLEEP 2
        LOCATE 20, 30
        PRINT "Pa'ris nii ikka ei saa!"
        SLEEP 2
        LOCATE 21, 29
        PRINT "Kuulutame va'lja streigi!"
        SLEEP 1.5
                COLOR 4
                DO
                LOCATE 23, 38
                PRINT "STREIK"
                        FOR i = 1 TO 16000
                        NEXT i
                LOCATE 23, 38
                PRINT "      "
                        FOR i = 1 TO 12000
                        NEXT i
                LOOP UNTIL INKEY$ <> ""
                sookla = 1
                GOTO 1200
      
1277            COLOR 4
                DO
                LOCATE 18, 38
                PRINT "STREIK"
                        FOR i = 1 TO 16000
                        NEXT i
                LOCATE 18, 38
                PRINT "      "
                        FOR i = 1 TO 12000
                        NEXT i
                LOOP UNTIL INKEY$ <> ""
              
                GOTO 1200

         '************************KEEMIA*******************************
1280    aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 270

        IF keemia = 2 THEN a = 1: GOTO 1800
        CLS
        KEY OFF
        KEY 1, " Back":  KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "":   KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        x = 10
        y = 305
        a = 0
        b = 3
        x1 = 600
        y1 = 10
                LOCATE 10, 22
                COLOR 13
                PRINT "Welcome To Virtual Chemistry Home Page"
                KEY ON
                COLOR 14
                LOCATE 12, 20
                PRINT "It's not ready yet. We are just testing it."
              COLOR 15
              LOCATE 17, 19
              PRINT "Kirjuta soovitava aine valem: "
              GOSUB 1284
         GOTO 1285
1284        DO
     
        PSET (x, y), 4
        PSET (x1, y1), 0
        IF a = 0 THEN y = y + 1
        IF a = 1 THEN x = x + 1
        IF a = 2 THEN y = y - 1
        IF a = 3 THEN x = x - 1
        IF a = 0 AND y = 455 THEN a = 1
        IF a = 1 AND x = 635 THEN a = 2
        IF a = 2 AND y = 10 THEN a = 3
        IF a = 3 AND x = 10 THEN a = 0
    
        IF b = O THEN y1 = y1 + 1
        IF b = 1 THEN x1 = x1 + 1
        IF b = 2 THEN y1 = y1 - 1
        IF b = 3 THEN x1 = x1 - 1
        IF b = 0 AND y1 = 455 THEN b = 1
        IF b = 1 AND x1 = 635 THEN b = 2
        IF b = 2 AND y1 = 10 THEN b = 3
        IF b = 3 AND x1 = 10 THEN b = 0
     
        FOR k = 1 TO 100
        NEXT k
        LOOP UNTIL INKEY$ <> ""
        RETURN
1285
     
        LOCATE 17, 48
    b = 0
    INPUT "", a$
LOCATE 18, 28
IF a$ = "Back" THEN GOTO 1200
IF a$ = "" THEN GOTO 1280
SLEEP 1
PRINT "Kohe on see valmis..."
SLEEP 2
FOR i = 1 TO 36
        IF b < 2 THEN c = 7
        IF b > 1 THEN c = 0
        PAINT (100, 100), c
        IF b = 0 THEN COLOR 0
        IF b = 1 THEN COLOR 7
        IF b = 2 THEN COLOR 8
        IF b = 3 THEN COLOR 15
      b = b + 1
        IF b = 4 THEN b = 0
         FOR k = 1 TO 1000
         NEXT k
                LOCATE 10, 22
                PRINT "Welcome To Virtual Chemistry Home Page"
                LOCATE 12, 20
                PRINT "It's not ready yet. We are just testing it."
              LOCATE 17, 19
              PRINT "Kirjuta soovitava aine valem: "
        LOCATE 17, 48
        PRINT a$
 IF keemia = 1 THEN i = i + 3
 NEXT i
        IF keemia = 1 THEN GOTO 1287
        x = 10
        y = 305
        a = 0
        b = 3
        x1 = 600
        y1 = 10

    
        LOCATE 17, 48
        PRINT "                          "
    
        GOSUB 1284
                 keemia = 1
    
    
         GOTO 1285
1287 x = 380
     y = 480
     z = 0
     DO
        CLS
        LINE (0, x)-(640, y), 7, BF
        x = x - 10
        y = y - 50
        IF x < 0 THEN x = 480
        IF y < 0 THEN z = z + 1
        IF y < 0 THEN y = 480
                FOR i = 1 TO 5
                NEXT i
     LOOP UNTIL z = 4
       CLS
 
     keemia = 2
     GOTO 1800
       
1300     '**********************ARVUTIKLASS****************************
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270
     
    
        KEY OFF
        SCREEN 12
        COLOR 4
        a = 320
        b = 320
   
        DO
        PSET (a, 0)
        DRAW "d70;l50;d50;r100;d50;l100;d50;r100;d50;l100;d50;r100;d50;l100;d50;r50;d70"
        PSET (b, 0)
        DRAW "d70;l50;d50;r100;d50;l100;d50;r100;d50;l100;d50;r100;d50;l100;d50;r50;d70"
        PAINT (320, 1), 4
        a = a - 2
        b = b + 2
                FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL a = -50
        CLS
        LOCATE 2, 28
        PRINT "RUUDI KESKKOOLI JUTUTUBA"
        LOCATE 4, 6
        PRINT "****************************KASUTUSREEGLID*************************"
        PRINT "     # SIIN EI KA'I VOO'RAD"
        PRINT "     # Siin ei ropendata"
        PRINT "     # Press any key to leave from JUTUTUBA"
        PRINT "     *******************************************************************"
         SLEEP 6
         COLOR 15
         IF arvuti = 1 THEN GOTO 1340
         IF arvuti = 2 THEN GOTO 1360
         IF arvuti = 3 THEN GOTO 1370
         IF arvuti = 4 THEN GOTO 1380
         PRINT "Keiser: tre poisid mis teete"
        SLEEP 2
        GOSUB 1310
        PRINT "Juhe: kust kandist siis joinite kah"
        SLEEP 3
        GOSUB 1310
    
        PRINT "Sammi: et nagu siitsamast arvutiklassist sinu k6rvalt"
        SLEEP 4
        GOSUB 1310
   
        PRINT "Crasher: trvst"
        SLEEP 2
        GOSUB 1310
   
        PRINT "Juhe: kes see crasher veel on"
        SLEEP 2.5
        GOSUB 1310
   
        PRINT "Sammi: jaan vist"
        SLEEP 2
        GOSUB 1310
   
        PRINT "Keiser: ongi jaan ma na'en"
        SLEEP 3
        GOSUB 1310
   
        PRINT "Juhe: jaan sai keemia too' yhe"
        SLEEP 3.3
        GOSUB 1310
   
        PRINT "Keiser: (naerab)"
        SLEEP 1.2
        GOSUB 1310
   
        PRINT "Crasher: mitte jaan vaid crasher"
        SLEEP 3
        GOSUB 1310

        PRINT "Sammi: ma sain kolme"
        SLEEP 2
        GOSUB 1310

        PRINT "Keiser: aga mina olin too' ajal hoopis arvutiklassis"
        SLEEP 3.8
        GOSUB 1310
   
        PRINT "Juhe: mis siin veel tegid"
        SLEEP 2.3
        GOSUB 1310
   
        arvuti = 4
        PRINT "Keiser: Ajaviiteks ha'kkisin o'pside palgasysteemi passwordi va'lja"
        SLEEP 4
        GOSUB 1310
   
        PRINT "Sammi: mis sa sellega ikka teed"
        SLEEP 2.3
        GOSUB 1310
   
        PRINT "Keiser: ah niisama"
        SLEEP 2
        GOSUB 1310
   
        PRINT "Crasher: Password on kindla peale mingi dire nimi"
        SLEEP 3.2
        GOSUB 1310
   
        PRINT "Keiser: hullem veel -"
        LOCATE 26, 23
        PRINT kood$
        SLEEP 3
        GOSUB 1310
      
        arvuti = 1
   
        PRINT "Sammi: eriti haige"
        SLEEP 2
        GOSUB 1310
   
        PRINT "Crasher: dire m6tles selle va'lja kindlasti"
        SLEEP 2.7
        GOSUB 1310

        PRINT "Keiser: vist kyll"
        SLEEP 2
        GOSUB 1310
   
        PRINT "Juhe: mis siis veel teete"
        SLEEP 2.2
        GOSUB 1310
   
        PRINT "Crasher: kes on"
        LOCATE 28, 18
        PRINT nimi$
        SLEEP 3
    

        PRINT "Juhe: pole vist meie klassist"
        SLEEP 2.3
        GOSUB 1310

        PRINT "Sammi: ta on vist juss"
        SLEEP 2
        GOSUB 1310

        PRINT "Keiser: mina olen ju juss"
        SLEEP 2
        GOSUB 1310

        PRINT "Crasher: kuule, SINA, a'ra vahi siin!"
        SLEEP 2.5
        GOSUB 1310

        PRINT "Sammi: keiser, saada ta va'lja!"
        SLEEP 2.2
        GOSUB 1310

        PRINT "Keiser: kohe"
        SLEEP 2
        GOTO 1320



1310    IF INKEY$ <> "" THEN GOTO 1200
        RETURN

1320    PRINT "JUTUTUBA CLOSED FOR YOU, press any key"
                DO
                LOOP UNTIL INKEY$ <> ""
        GOTO 1200

1340    PRINT "Juhe: aga mis edasi sai"
        SLEEP 1.5
        GOSUB 1310
        PRINT "Keiser: siis tuli mingi Interpoli mees kohale ja utles, "
        SLEEP 2.8
        GOSUB 1310
        PRINT "        et mul on suuri probleeme"
        SLEEP 2
        GOSUB 1310
        PRINT "Crasher: jama va'rk!"
        SLEEP 1.6
        GOSUB 1310
        PRINT "Keiser: jama jah"
        SLEEP 1.5
        GOSUB 1310
        arvuti = 2
        PRINT "Juhe: kuulge, see ahv on tagasi"
        SLEEP 2
        GOSUB 1310
        PRINT "Crasher: kes"
        SLEEP 1
        GOSUB 1310
        PRINT "Juhe:"
        LOCATE 16, 7
        PRINT nimi$
        SLEEP 1.6
        GOSUB 1310
        PRINT "Crasher: keiser, tee talle midagi"
        arvuti = 3
        SLEEP 2
        GOSUB 1310
        PRINT "Keiser: saadan viiruse va' :)"
        SLEEP 2
        GOSUB 1310
        PRINT "Juhe: jaaa!!"
        SLEEP 2
        GOSUB 1310
        PRINT "Keiser: kohe"
        SLEEP 1.6
        GOSUB 1310
        GOTO 172
1350

1360    PRINT "Crasher: see, kes praegu sisse logis, saab kohe molli"
        SLEEP 2.5
        GOSUB 1310
        PRINT "Juhe: mulle hakkab see tyyp ka juba koppa ette viskama"
        SLEEP 2.6
        GOSUB 1310
        PRINT "Keiser: kohe toimetan ta arvuti teise ilma"
        SLEEP 3
        GOSUB 1310
        GOTO 172

1370    PRINT "Keiser: sain praegu selle tuu'bi arvuti koodi teada, saadan viiruse :)"
        SLEEP 4.1
        GOSUB 1310
        GOTO 172

1380 PRINT "Keiser: algul ma arvasin et see kood on mingi nali"
        PRINT "      Ja siis ma muutsingi selle ara. nuud on see -", kood$
        SLEEP 5.2
        GOSUB 1310
        arvuti = 1
        PRINT "Crasher: J6le pull..."

        SLEEP 1.5
        GOSUB 1310
        PRINT "Juhe: Varki teate v6i: keegi 6psidest vaatab meid praegu pealt"
        SLEEP 3
        GOSUB 1310

        PRINT "Crasher: Kuule Keiser, saada sellele tolgusele see uus viirus, mille "
        SLEEP 1
        PRINT "         me eile nasalegi saatsime"
        SLEEP 3
        GOSUB 1310
        PRINT "Keiser: 6psidele ma nii kallist kraami kyll saatma ei hakka"
        SLEEP 2.5
        GOSUB 1310
        PRINT "Juhe: Aga a'kki see polegi mingi 6ps. Hoopis nasa juurest keegi?"
        SLEEP 2
        GOSUB 1310

        PRINT "Keiser: Oodake siis veidikenegi. Kohe saan selle mehikese aadressi teada"
        SLEEP 3
        GOSUB 1310

        PRINT "Juhe: Nh kuidas on?"
        SLEEP 1
        GOSUB 1310

        PRINT "Keiser: See on keegi mngi", nimi$
        SLEEP 1
        PRINT "      Vaadake siis nuud seda viirust..."

        SLEEP 2
        SLEEP 1
        GOTO 172


1400     '************************OPETAJAD************************
      
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270

        KEY OFF
        SCREEN 12
     
        'PAINT (1, 479), 8
      
                a = 200
                b = 200
                DO
                LINE (a, 0)-(a + 240, 480), 0
                LINE (b, 0)-(b + 240, 480), 0
                PAINT (200, 0), 0
                a = a - 1
                b = b + 1
                        FOR i = 1 TO 10
                        NEXT i
                LOOP UNTIL a < -240
        CLS
        COLOR 15
         
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        KEY 1, " Back"
        KEY 2, " Statistika"
        KEY 3, " Kysitlus"
        KEY 4, " Palgad"
        KEY ON
        COLOR 15
        LOCATE 5, 23
        PRINT "Opetajate kodulehekylg"
        LINE (20, 80)-(620, 100), 5, BF
        LINE (30, 89)-(610, 91), 1, B
        COLOR 7
        LOCATE 12, 1
        PRINT "                 F2  -  Statistika"
        PRINT "                 F3  -  Kysitlus"
        PRINT "                 F4  -  Palgad"
        PRINT "                 :"

                '**********************MUUSIKA************************
                LOCATE 25, 1
                COLOR 9
                PRINT "  NEW! Opetajate page' extra: kui sul on JyHTFKyTF3"
                COLOR 14
                PRINT " helikaart, siis kuuled praegu ilgelt lahedat musa!"

                LINE (425, 425)-(435, 421), 10, BF
                LINE (441, 425)-(451, 421), 10, BF
                LINE (457, 425)-(467, 421), 10, BF
                LINE (472, 425)-(482, 421), 10, BF
                LINE (488, 425)-(498, 421), 10, BF
                LINE (504, 425)-(514, 421), 10, BF
                LINE (519, 425)-(529, 421), 10, BF
                        a = 416
                        x = 425
                        kord = 1
        DO
                        DO
                        z = INT(RND * 8)
                     
                     
                        IF z = 0 THEN a = a - 9
                        IF z = 1 THEN a = a + 9
                        IF z = 2 THEN a = a - 9
                        IF z = 3 THEN a = a + 9
                        IF z = 4 THEN a = a - 9
                        IF z = 5 THEN a = a + 9
                        IF z = 6 THEN a = a - 9
                        IF z = 7 THEN a = a + 9
                        IF a > f THEN LINE (x, f)-(x + 10, f - 4), 0, BF
                        IF a < 315 THEN a = a + 9
                        IF a < 345 THEN c = 12
                        IF a > 416 THEN a = a - 9
                        LINE (x, a)-(x + 10, a - 4), c, BF
                              c = 10
                                f = a
                        x = x + 16
                        IF x > 534 THEN x = 425
                        kord = kord + 1
                         LOOP UNTIL kord > 6
                FOR i = 1 TO 20
                NEXT i
        LOOP UNTIL INKEY$ <> ""
    
        LOCATE 15, 1
        INPUT "                 : ", a$

     
        IF a$ = "Statistika" THEN GOTO 1450
        IF a$ = "Kysitlus" THEN GOTO 1460
        IF a$ = "Palgad" THEN GOTO 1490
        GOTO 1100

1450    CLS
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270

        KEY OFF
        COLOR 10
        PRINT : PRINT " RUUDI KESKKOOLI POOLT KORRALDATUD OMA TOO'TAJATE STATISTIKA"
        COLOR 11
        PRINT : PRINT " (Va'ga huvitav, loe kindlasti!!!)"
        COLOR 15
        PRINT : PRINT " No meil on siin palju opetajaid koolis, ja siis muidugi mina ka."
        PRINT "Meie opetajate keskmine vanus on 97, mis aga ta'hendab, et nad on va'ga"
        PRINT "suurte kogemustega!": PRINT
        PRINT " Meie opetajate keskmine hinne on 3 kahe miinusega. See tahendab seda, et"
        PRINT "meil on k6rged n6udmised, mitte aga seda, et meil siin mingid huligaanid"
        PRINT "opiksid, nagu m6ned inimesed on va'itnud!"
        PRINT : PRINT " No heale haridusele paneme me yldse VA'GA suurt r6hku."
        PRINT "Ja et ma ainult suuri s6nu ei tee, v6ite vaadata meie SAAVUTUSTE lehekylge!"
        PRINT : PRINT " Meie opetajate keskmist palka ma ei hakka loomulikult avaldama, aga v6in"
        PRINT "kinnitada, et see ei jaa' tohutult palju alla vabariigi keskmisele opetaja-"
        PRINT "palgale!": PRINT
        PRINT "Kui nyyd veel opetajate statistikat teha, siis tuleb va'lja ka nende fyysiline"
        PRINT "seisund. Kindlasti huvitab Teid juba ammu meie opetajate keskmine pikkus ja"

        PRINT "kaal. Siin on numbrid: keskmine pikkus 1240 mm, keskmine kaal ainult 0,23"
        PRINT "tonni! Keskmine too'aeg on umbes 55 aastat - seega opetajad tahavad t6esti"
        PRINT "meie koolis olla!"
        COLOR 4
        PRINT : PRINT "Press any key"
                DO
                LOOP UNTIL INKEY$ <> ""

        COLOR 15
        GOTO 1400
1460    CLS
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270

        KEY OFF
        COLOR 10
        PRINT : PRINT " RUUDI KESKKOOLI POOLT KORRALDATUD OMA TOO'TAJATE KYSITLUS"
        COLOR 11
        PRINT : PRINT " (Va'ga huvitav, loe kindlasti!!!)"
        COLOR 12
        PRINT : PRINT "Kuidas siis meie koolis on kah?"
        COLOR 15
        PRINT "No pole viga, aga v6iks parem ka olla"
        PRINT "No paremat kindla peale ei ole"
        PRINT "No comments"
        PRINT "Parim maailma kool!"
        COLOR 12
        PRINT "No kuidas koolitoit siis maitseb?"
        COLOR 15
        PRINT "Ah, ka'ib kah kuidagi!"
        PRINT "No isegi Eesti ajal polnud paremat!"
        PRINT "No comments"
        PRINT "Kuidas v6tta!"
        COLOR 12
        PRINT "Kuidas siis meie kooli palk kah on?"
        COLOR 15
        PRINT "Ega ta suurem asi muidugi ei ole, aga a'ra elab!"
        PRINT "No problemo - a'ra pole ju surnd veel!"
        PRINT "Ega ylearuse raha pa'rast just kurta ei saa"
        PRINT "Sellised summad teevad au igayhele!   /direktor/"
        COLOR 12
        PRINT "Kuidas 6pilastega rahul olete?"
        COLOR 15
        PRINT "Nad on ju lausa geeniused!"
        PRINT "Ainult yks nuhtlus on veel jaa'nud -"
        LOCATE 23, 38
        PRINT nimi$
        PRINT "No problemo"
        PRINT "Vahel tuleb ikka peksta ka"
        PRINT

        COLOR 4
        PRINT "Press any key"
                DO
                LOOP UNTIL INKEY$ <> ""

        GOTO 1400


1490    '*************************Palgad*****************************
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270

        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        KEY 1, " OK"
        KEY 2, " No"
        KEY OFF
    
        CLS
        SCREEN 12
        KEY OFF
        COLOR 15
        PAINT (1, 1), 0
           FOR i = 1 TO 55000
           NEXT i
    
        a = 240
        b = 420
        c = 240
        d = 420


        DO
        LINE (a, 0)-(b, 640), 14
        LINE (c, 0)-(d, 640), 14
    
        a = a - 3
        b = b + 3
        c = b
        d = a
                FOR i = 1 TO 300
                NEXT i
        LOOP UNTIL a = -210
     
        COLOR 4                             'passwordi kast
        a = 330
        b = 320
        c = 330
        d = 320
     
        DO
        LINE (a, b)-(c, d), 4, BF
        a = a - 3
        b = b - 1
        c = c + 3
        d = d + 1
                FOR i = 1 TO 1500
                NEXT i
        LOOP UNTIL a = 180

    
     
        a = 330
        b = 320
        c = 330
        d = 320
    
    
        DO
        LINE (a, b)-(c, d), 0, BF
        a = a - 7
        b = b - 2
        c = c + 7
        d = 320
                FOR i = 1 TO 1000
                NEXT i
        LOOP UNTIL a = 197



        LOCATE 19, 34
        PRINT "Insert PASSWORD:"
    
        a = 330
        c = 330
        d = 325
        b = 325
    
        DO
        LINE (a, b)-(c, d), 1, BF
        a = a - 7
        c = c + 7
        d = d + 2
        FOR i = 1 TO 2000
                NEXT i
        LOOP UNTIL a = 197


        COLOR 15
        LOCATE 22, 36
        INPUT opetaja$

     
        a = 325
        b = 362

        DO
        LINE (197, 325)-(463, a), 4, BF
        LINE (197, b)-(463, 362), 4, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 500
                NEXT i
        LOOP UNTIL b = 345
                                            
                                                'vp kokku
        a = 200
        b = 450
   
        DO
        LINE (210, 340)-(a, 362), 4, BF
        LINE (460, 340)-(b, 362), 4, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 150
                NEXT i
        LOOP UNTIL b = 324
    
        IF opetaja$ = kood$ THEN GOTO 1495
        LOCATE 22, 34
        PRINT "Incorrect password"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 1400


1495    COLOR 4               '*********palgasumma*********
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270
     
        a = 330
        b = 320
        c = 330
        d = 320
    
        DO
        LINE (a, b)-(c, d), 1, BF
        a = a - 3
        b = b - 1
        c = c + 3
        d = d + 1
                FOR i = 1 TO 700
                NEXT i
        LOOP UNTIL a = 150

   
    
        a = 330
        b = 320
        c = 330
        d = 320
   
   
        DO
        LINE (a, b)-(c, d), 0, BF
        a = a - 7
        b = b - 2
        c = c + 7
        d = 320
                FOR i = 1 TO 1000
                NEXT i
        LOOP UNTIL a = 197



        LOCATE 19, 34
        PRINT "Kokku palgaraha:"
        LOCATE 20, 38
        PRINT palgaraha
   
        a = 330
        c = 330
        d = 325
        b = 325
   
        DO
        LINE (a, b)-(c, d), 9, BF
        a = a - 7
        c = c + 7
        d = d + 2
        FOR i = 1 TO 2000
                NEXT i
        LOOP UNTIL a = 197


        COLOR 15
        KEY ON
        LOCATE 22, 36
        INPUT "Is it OK?", a$
                IF a$ = "no" OR a$ = "No" THEN GOTO 1499
        GOTO 1400

1499
        a = 325
        b = 362

        DO
        LINE (197, 325)-(463, a), 1, BF
        LINE (197, b)-(463, 362), 1, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 500
                NEXT i
        LOOP UNTIL b = 345


                                        'vp kokku
        a = 200
        b = 450
 
        DO
        LINE (210, 340)-(a, 362), 1, BF
        LINE (460, 340)-(b, 362), 1, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 150
                NEXT i
        LOOP UNTIL b = 324


                                        'vp LAHKU
        a = 330
        b = 330
        DO
        LINE (b, 345)-(a, 349), 9, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL b < 210

        a = 345
        b = 345
    
        DO
        LINE (197, b)-(463, a), 9, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 500
                NEXT i
        LOOP UNTIL b = 325 '345


        LOCATE 22, 29
        INPUT "Uus palgaraha:", uuspalgaraha
                                        
        a = 322
        b = 365

        DO
        LINE (197, 325)-(463, a), 1, BF
        LINE (197, b)-(463, 362), 1, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 500
                NEXT i
        LOOP UNTIL b < 345


                                        'vp kokku
        a = 190
        b = 464

        DO
        LINE (210, 340)-(a, 362), 1, BF
        LINE (460, 340)-(b, 362), 1, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 150
                NEXT i
        LOOP UNTIL b < 324
    

        IF uuspalgaraha > palgaraha THEN GOTO 1494
        palgaraha = uuspalgaraha
        GOTO 1496
1494    SLEEP 1
        LOCATE 22, 25
        COLOR 4
        PRINT "Hmm... Ja kust ma selle raha v6tan?"
        SLEEP 2
        LOCATE 23, 32
        INPUT " Varastan v6i?", a$
        IF a$ = "No" THEN GOTO 1495
        SLEEP 2
        a = 330
        b = 330
        DO
        LINE (b, 348)-(a, 352), 6, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 200
                NEXT i
        LOOP UNTIL b < 165

        a = 347
        b = 347
   
        DO
        LINE (165, b)-(495, a), 6, BF
        b = b - 1
        a = a + 1
        FOR i = 1 TO 500
                NEXT i
        LOOP UNTIL b = 325 '325

        SLEEP 1
        LOCATE 22, 23
        PRINT "Igaksjuhuks saadan politsei sinu juurde"
        SLEEP 4
          COLOR 15                             'politsei kast
         a = 330
         b = 320
         c = 330
         d = 320
    
         DO
         LINE (a, b)-(c, d), 3, BF
         a = a - 3
         b = b - 1
                c = c + 3
         d = d + 1
                FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL a < 120
       LOCATE 18, 20
       PRINT "Message:"
       LOCATE 19, 20
       PRINT "From: Eesti Interneti Politsei"
       LOCATE 20, 20
       PRINT "To:  "
       LOCATE 20, 24
       PRINT nimi$
       LOCATE 22, 20
       PRINT "Ebatavalise teo eest Linnapangas ja Ruudi"
       LOCATE 23, 20
       PRINT "keskkoolis olete 10 aastasele vanglakaristusele"
       LOCATE 24, 20
       PRINT "palutud"
      DO
      LOOP UNTIL INKEY$ <> ""
     GOTO 10000

1496    x = 330
        x1 = 345
        z = 1600
        DO
        x = x - .1
        x1 = x1 + .1
        s = INT(x)
        y = INT(-.01 * x * x + 4.4 * x)
        LINE (x, y)-(x1, y), 7
        q = INT(SQR(z))
        z = z - 5
        IF z < 1 THEN z = 10
        FOR k = 1 TO q
        NEXT k
      LOOP UNTIL x < -5
     DO
      LINE (0, y)-(640, y), 15
      y = y + 1
      FOR k = 1 TO 50
      NEXT k
      LOOP UNTIL y > 481
      


1500    CLS
        aeg = TIMER = -StartTime
        IF aeg > 600 THEN GOTO 270

        PAINT (1, 1), 15
        COLOR 14
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        KEY 1, " direktor"
        KEY 2, " matemaatika op"
        KEY 3, " keemia op"
        KEY 4, " arvuti op"
        KEY ON

      LOCATE 2, 1
      PRINT "  There is not enough money!"
      PRINT "  Pead kellegi too'lt lahti laskma:"
1505      PRINT :  PRINT " F1 - direktor"
      PRINT " F2 - matemaatika o'petaja"
      PRINT " F3 - keemia o'petaja"
      PRINT " F4 - arvuti o'petaja"
         INPUT "Sinu valik:", lahti$

      IF lahti$ = "direktor" THEN GOTO 1520
      IF lahti$ = "matemaatika op" THEN GOTO 1600
      IF lahti$ = "keemia op" THEN GOTO 1560
      IF lahti$ = "arvuti op" THEN GOTO 1550
      GOTO 1500

1520 PRINT "ARE YOO CRAZY?"
     PRINT "Sorry, systeem pole installeeritud direktorit vallandama"
     SLEEP 3.6
     GOTO 1500
1600 PRINT : PRINT "   Please wait..."
          SLEEP 2
          COLOR 2
          PRINT "                           Ka'skkiri": SLEEP 1
  PRINT : PRINT "              Mina, Ruudi Keskkooli tehisintelligent ,": SLEEP 3
          PRINT "         vallandan ebakompententse ja ebapedagoogilise": SLEEP 3
          PRINT "         ka'itumise pa'rast meie kauaaegse ja toreda  ": SLEEP 3
          PRINT "         matemaatika 6petaja ja kingin talle lahkumise": SLEEP 3
          PRINT "         eest toreda meie kooli logoga lusika.": SLEEP 3
          PRINT "                                       Allkiri:": SLEEP 1
          x = 400
          y = 300
          FOR i = 1 TO 3200
             
                a = INT(4 * RND)
                IF a = 0 THEN x = x + 1
                IF a = 1 THEN x = x - 1
                IF a = 2 THEN y = y - 1
                IF a = 3 THEN y = y + 1
              PSET (x, y), 9
                  FOR k = 1 TO 10
                  NEXT k
          NEXT i
      opetaja = 1
     SLEEP 3
     GOTO 1400

1560 PRINT : PRINT "   Please wait..."
          IF kemics = 1 THEN GOTO 1565
          IF kemics = 2 THEN GOTO 1567
          SLEEP 2
          COLOR 2
          PRINT "                           Ka'skkiri": SLEEP 1
  PRINT : PRINT "              Mina, Ruudi Keskkooli tehisintelligent ,": SLEEP 3
          PRINT "         vallandan ebakompententse ja ebapedakoogilise": SLEEP 3
          PRINT "         ka'itumise pa'rast meie kauaaegse ja toreda  ": SLEEP 4
          PRINT "                                                      ": SLEEP 2
          COLOR 14
          PRINT "  Kuule, kui ma ta vallandan, paneb ta kogu "
          PRINT "  koolimaja hapnikuga reageerima - jaa'b a'ra": SLEEP 7
          kemics = 1
          GOTO 1500
1565 COLOR 14
        PRINT "  Ma juba u'tlesin sulle midagi. Kui sa veel"
        PRINT "  nii teha tahad, siis saadan ma su arvutisse"
        PRINT "  yhe kena vaa'velhappe"
        SLEEP 7
        kemics = 2
        PRINT "  Kelle siis vallandame ta'na ikkagi?"
        GOTO 1505
1567 PRINT : PRINT "   Ise sa seda tahtsid..."
        SLEEP 2
    q = 4
    LOCATE 26, 1
    PRINT "     Loading VAA'VELHAPE..."
    a% = 1
        DO
        LOCATE 27, a%
        PRINT "."
                i = 1
                DO
                i = i + 1
                IF i = 1700 THEN EXIT DO
                LOOP
        a% = a% + 1
        IF a% = 79 THEN EXIT DO
        LOOP
      c = 0
   FOR i = 1 TO 60000
         c = c + 1
         IF c = 16 THEN c = 0
         a = INT(480 * RND)
         b = INT(640 * RND)
         CIRCLE (b, a), 2, c
     NEXT i
        GOTO 10000


1550     CLS
        SCREEN 12
        KEY OFF
        COLOR 6
        LOCATE 16, 23
        PRINT "PLEASE WAIT WHILE SERVER SHUTS DOWN"
        LOCATE 17, 5
        PRINT "......................................................................"
        x = 77
        DO
        LOCATE 17, x
        PRINT " "
        x = x - 1
                FOR i = 1 TO 5000
                NEXT i
        LOOP UNTIL x < 5
        COLOR 15
        CLS
        COLOR 7
        LOCATE 16, 23
        PRINT "PLEASE WAIT WHILE SERVER SHUTS DOWN"
                FOR i = 1 TO 17000
                NEXT i
        CLS
        COLOR 8
        LOCATE 16, 23
        PRINT "PLEASE WAIT WHILE SERVER SHUTS DOWN"
                FOR i = 1 TO 17000
                NEXT i
     
      CLS
        SLEEP 1
        COLOR 15
        GOTO 10000



1700     '************************PUNKTID******************************
'***************************MISSION 2 LOPP/punktid******************************
     CLS
     KEY OFF
     mission1 = punktid
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:", mission1
     PRINT "MATEMAATIKAOPETAJA K6RVALDAMISE EEST   +10000"
     punktid = punktid + 10000
     IF keemia = 1 THEN punktid = punktid + 500: IF keemia = 1 THEN PRINT "EXTRA BONUS KEEMIAPROGRAMMI RIKKUMISE EEST              +500"
     IF sportpunkt > 0 THEN punktid = punktid + sportpunkt: IF sportpunkt > 0 THEN PRINT "BONUS SPORDIVOISTLUSE RIKKUMISE EEST +", sportpunkt
     IF matapunkt > O THEN punktid = punktid + matapunkt: IF matapunkt > 0 THEN PRINT "BONUS MATEMAATIKA-OSKUSTE EEST +", matapunkt
     IF keemia = 2 THEN punktid = punktid + 2000: IF keemia = 2 THEN PRINT "BONUS KEEMIA-PROGRAMMI TOTAALSE HA'VITAMISE EEST          +2000"
     IF sookla = 1 THEN punktid = punktid + 700: IF sookla = 1 THEN PRINT "SOOKLA STREIGI EEST              +700"
   
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):", INT(aeg)
     ajalisa = 600 - aeg
     timebonus = ajalisa * 30
     TIMER OFF
     PRINT "TIMEBONUS:", INT(timebonus)
     lopp = punktid + timebonus
     punktid = INT(lopp)
     COLOR 15
     PRINT : PRINT "KOKKU:", INT(lopp)
      DO
      LOOP UNTIL INKEY$ <> ""
      mission = 3
        OPEN "buffer.txt" FOR OUTPUT AS #6
        PRINT #6, nimi$
          PRINT #6, mission
         PRINT #6, punktid
         PRINT #6, pin
         PRINT #6, ok
         CLOSE #6
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
        
          RUN "miss3.bas"

         

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
    SLEEP 2
    GOTO 10000

1800     '*********************PAGE NOT FOUND**************************
         CLS
         KEY OFF
         PAINT (1, 1), 15
         COLOR 15
         PRINT " Page not found"
         PRINT " Press any key"
                DO
                LOOP UNTIL INKEY$ <> ""
         IF a = 1 THEN GOTO 1200
         GOTO 1100
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
        SLEEP 3
        COLOR 7
        x = 14
        y = 38
        FOR i = 1 TO 1200
    a = INT(RND * 4) + 1
    b = INT(RND * 8) + 1
    IF a = 1 THEN x = x - b
    IF a = 2 THEN x = x + b
    IF a = 3 THEN y = y - b
    IF a = 4 THEN y = y + b
    IF y > 63 THEN y = y - 10
    IF y < 8 THEN y = y + 12
    IF x > 22 THEN x = x - 10
    IF x < 4 THEN x = x + 10
   LOCATE x, y
   PRINT a$
        FOR a = 1 TO 500
        NEXT a
        NEXT i
   SLEEP 1

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
    INPUT b$
    PRINT a$
    INPUT c$
    SLEEP 1
    PRINT "What it means -"
    PRINT c$
    SLEEP 1
    PRINT b$
    SLEEP 1
    PRINT c$
    SLEEP 1
    PRINT c$: PRINT b$: PRINT c$: PRINT "GOODKILLER'98": PRINT "ONLY 99$!"
    INPUT a$
    x = 5
        FOR i = 1 TO 6
        LOCATE 17, 1
        PRINT x
        x = x - 1
        SLEEP 1
        NEXT i
        FOR i = 1 TO 30
        PRINT
        FOR k = 1 TO 1000
        NEXT k
        NEXT i
        FILES "C:/windows/"
        PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
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



    
    

       

