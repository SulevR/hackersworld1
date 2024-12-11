





'kroonikapunkt siis kui muuta kroonikat



10
TIMER OFF
TIMER ON
v6lg = 14232
time = 0
mission = 6
OPEN "kroonika.txt" FOR OUTPUT AS #1
  PRINT #1, "17. mai 1991  -  Estonian Telefoni asutamine"
   PRINT #1, "23. juuni 1991 - valitakse EsT direltorit"
   PRINT #1, "1. september 1992 - heategevusyritus Kadriorus"
   PRINT #1, "4. oktoober 1992 - sajas klient meie firmas"
    PRINT #1, "28. veebruar 1993 - enamuse sideliinide va'ljavahetamine"
    PRINT #1, "3. aprill 1993 - sajas k6ne meie liinide kaudu"
    PRINT #1, "16. august 1993 - spordipa'ev"
    PRINT #1, "22 - 31. aprill 1994 - yldstreik"
     PRINT #1, "8. juuni 1994 - Hiina telekommunikatsiooni tuusa Hifdghi vastuv6tt"
     PRINT #1, "3. mai 1995 - tuhandes kaebus meie firmale"
     PRINT #1, "14. november 1996 - Edukas v6it kohtus"
      PRINT #1, "10. ma'rts 1997 - Estist 1000 krooni r66vinud sulide kinni v6tmine"
    CLOSE #1
OPEN "synni.txt" FOR OUTPUT AS #2
  PRINT #2, "Amanda Loomaaed    - 51"
  PRINT #2, "Villu Silver       - 83"
  PRINT #2, "Einari Haug        - 44"
  PRINT #2, "Federico De Laudo  - 27"
  PRINT #2, "Hugo Davinchi      - 60"
  CLOSE #2

   CLS
       
        SCREEN 12
        CLS
        OPEN "buffer.txt" FOR INPUT AS #3
        INPUT #3, nimi$, m, punktid, pin, ok
        CLOSE #3
11110
11111   IF v6lg < 1 THEN GOTO 900
        CLS
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
                 IF y$ = "2" THEN mission = B: punktid = c: pin = d: ok = e
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
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, f, rida7$, g
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
        LOCATE 11, 32: PRINT rida2$, B
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

11150
      
        CLS
        KEY OFF
        COLOR 11
        OPEN "mission6.txt" FOR INPUT AS #3
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

    aeg = TIMER - StartTime                         'Aja valem
     
                        CLS
                                COLOR 4
                        IF aeg > 420 THEN LOCATE 9, 33: PRINT "NO MORE TIME"
                        KEY OFF
                        LOCATE 11, 32
                        PRINT "MISSION FAILED"
                        COLOR 11
                        LOCATE 13, 1
                        SLEEP 3
                        PRINT TAB(12); " Sa said sellega hakkama.. 6nnitlen, igavene vussi"
                        SLEEP 3
                        PRINT TAB(12); "keeraja. Sul pole nyyd yhendust muu maailmaga. Mine"
                        SLEEP 3
                        PRINT TAB(12); "v6ta Tetris ja toksi seda. See vastab ta'ielikult "
                        SLEEP 3
                        PRINT TAB(12); "su olematutele v6imetele."
                hkg = 0
SLEEP 3
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click any key"

        DO
        LOOP UNTIL INKEY$ <> ""
 GOTO 11110
   
   
    TIMER ON
  
1       IF hkg = 0 THEN GOTO 11150
        StartTime = TIMER
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 420 THEN GOTO 10000

    
    
 
        
100
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

   
        KEY 1, " Back"
        KEY 2, " ArveteTasumine"
        KEY 3, " EsT-st"
        KEY 4, " Kroonika"
        KEY 5, " K6ned"
        KEY 6, " Meelelahutus"
        KEY 7, " Info"
        KEY ON
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
             'logo
             PSET (50, 150), 1
             DRAW " r40;d5;l35;d5;r35;d5;l35;d5;r35;d5;l40;u25"
             PAINT (51, 151), 1
               PSET (90, 152), 15
               DRAW "r30;d5;l20;d20;l5;u20;l20;u1"
        LOCATE 1, 1
        PRINT " Macrosoft Internet Explorer "
        LOCATE 7, 9
        PRINT "http://www.et.ee"
           COLOR 5
           LOCATE 10, 55
          IF time = 0 THEN PRINT TIME$
          IF time = 1 THEN PRINT "18:04"
           LOCATE 11, 54
            PRINT DATE$
          
          LOCATE 12, 27: COLOR 10: PRINT "ESTONIAN TELEFON AS"
          LOCATE 16, 5: COLOR 15: PRINT "  See on tore, et leidsid l6puks aega ka meie lehekylje jaoks"
          LOCATE 17, 5: COLOR 15: PRINT "Tahad tasuda oma v6lgu?                F2 - ArveteTasumine"
          LOCATE 18, 5:           PRINT "Tahad lugeda midagi head EsT kohta?    F3 - EsT-st"
          LOCATE 19, 5:           PRINT "Sind huvitab meie ajalugu?             F4 - Kroonika"
          LOCATE 20, 5:           PRINT "LOE KINDLASTI: suurte v6lglaste k6ned  F5 - K6ned"
          LOCATE 21, 5:           PRINT "Tahad end l6bustada? Ma'ngi meiega!    F6 - Meelelahutus"
          LOCATE 22, 5:           PRINT "Absoluutselt mitte midagi ei m6ista?   F7 - Info"
          LOCATE 24, 5: COLOR 7:  PRINT "       See k6ik juba ta'na. Aga kylasta meie lehekylge ka homme"
105
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

COLOR 15
        LOCATE 7, 9
        INPUT "http://www.et.ee/", x$
        a = 640
        B = -1
       
        COLOR 0
        DO
        LINE (a, B)-(a + 640, B + 25), 0, BF
                a = a - 3
                IF a < -5 THEN a = 640: B = B + 26
                IF B > 484 THEN EXIT DO
        LOOP

        COLOR 15
     
      
     
     
     
     
      IF x$ = "Kroonika" THEN GOTO 300
      IF x$ = "Back" THEN GOTO 11110
      IF x$ = "ArveteTasumine" THEN GOTO 400
      IF x$ = "K6ned" THEN GOTO 500
      IF x$ = "Info" THEN GOTO 600
        IF x$ = "EsT-st" THEN GOTO 700
            IF x$ = "Meelelahutus" THEN GOTO 800
            GOTO 100


300
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
 '********kroonika
       CLS
       COLOR 14
       PRINT : PRINT : PRINT : PRINT "  KROONIKA"
       COLOR 15
       PRINT : PRINT
       OPEN "kroonika.txt" FOR INPUT AS #3
          DO
          INPUT #3, rida$
          PRINT "", rida$
          LOOP UNTIL EOF(3)
        CLOSE #3
      KEY 1, " Yes": KEY 2, " No": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
       INPUT "   Back?", a$
       IF a$ <> "No" THEN GOTO 100
       INPUT "Kuidas siis?", B$
       OPEN "kroonika.txt" FOR OUTPUT AS #1
       PRINT #1, B$
       CLOSE #1
      SLEEP 1
      COLOR 7
      PRINT "OK"
      SLEEP 1
      kroonikapunkt = kroonikapunkt + 300
      GOTO 100

400
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

' *************ARVETE  TASUMINE*****
        CLS
        COLOR 14
        PRINT : PRINT : PRINT : PRINT : PRINT
        PRINT "              ARVETE TASUMINE NETI TEEL..."
        COLOR 15
        SLEEP 1
        LINE (630, 10)-(630, 470), 1
        LINE (632, 10)-(632, 470), 12
       KEY 1, " Back": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
      INPUT "  Sinu nimi: ", telnimi$
      IF telnimi$ = "Back" THEN GOTO 100
      SLEEP 1
      PRINT
      INPUT "  Sinu telefoninumber:", tel$
      IF tel$ = "Back" THEN GOTO 100
      SLEEP 1
      PRINT
      INPUT "  Sinu v6lg:", v6lg$
      IF v6lg$ = "Back" THEN GOTO 100
      SLEEP 1
      PRINT
       KEY 1, "Back": KEY 2, "Ise": KEY 3, "Pangas": KEY 4, "": KEY 5, ""
      INPUT "  Kuidas tasud:", tasu$
      KEY 2, ""
      KEY 3, ""
      IF tasu$ = "Back" THEN GOTO 100
      IF tasu$ = "Ise" THEN GOTO 450
      SLEEP 1
      PRINT
      INPUT "  PangaPIN:", pin$
      IF pin$ = "Back" THEN GOTO 100
      SLEEP 1
      PRINT
      SLEEP 1
      PRINT
      KEY OFF
      PRINT "Let me check..."
      SLEEP 1
      PRINT "  Is it You...", nimi$
      SLEEP 1
      PRINT " Ma checkin su v6la ka kohe yle"
      IF INKEY$ <> "" THEN GOTO 100
      SLEEP 1
      PRINT "Ohhoo .. Su v6lg on ..."
      IF INKEY$ <> "" THEN GOTO 100
      SLEEP 2
      PRINT v6lg, "EEK"
      IF INKEY$ <> "" THEN GOTO 100
      SLEEP 1
      PRINT "    Su v6lg on yletanud igasuguse m6istuse piirid"
      IF INKEY$ <> "" THEN GOTO 100
      SLEEP 3
     
      PRINT " Kohe lylin su telefoni liinid va'lja..."
      IF INKEY$ <> "" THEN GOTO 100
      SLEEP 3
      IF INKEY$ <> "" THEN GOTO 100
      CLS
      SLEEP 2
      LOCATE 10, 1
      PRINT "                          ----------------------------"
      PRINT "                          I                          I"
      PRINT "                          I      Error in modem...   I"
      PRINT "                          I Explorer cant find et.ee I"
      PRINT "                          I                          I"
      PRINT "                          ----------------------------"
    DO
    LOOP UNTIL INKEY$ <> ""
    GOTO 10000
450 PRINT "  Olgu, me ootame sinu kylastust meie kontorisse"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 100
500
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
 '*******************K^NED************************
        KEY OFF
        CLS
        COLOR 9
        PRINT : PRINT : PRINT "******************************************************************************"
        COLOR 10
        PRINT "         Ylip6nev lehekylg. Meie suurv6lglaste k6nede yleskirjutised"
        IF time = 0 THEN PRINT "", TIME$, "", "", DATE$
        IF time = 1 THEN PRINT "            18:02          ", DATE$
        PRINT "      <Vajuta yksk6ik mis kui yle viskab>"
        COLOR 9
        PRINT "******************************************************************************"
        COLOR 15
        SLEEP 6
        PRINT : PRINT : PRINT
        IF k6ne = 1 THEN GOTO 520
        IF k6ne = 2 THEN GOTO 530
        IF k6ne = 3 THEN GOTO 540
        IF k6ne = 4 THEN GOTO 560
        PRINT "Kaupo P6ldmarjakobar: Halloo, Halloo. Siin mina - Kaupo"
         GOSUB 550
        k6ne = 1
        DO
        PRINT "Janno Heidabkivia'ra: Mis? Kesse?"
        GOSUB 550
        PRINT "Kaupo P6ldmarjakobar: Mina noh."
        GOSUB 550
        PRINT "Janno Heidabkivia'ra: Kes sina?"
        GOSUB 550
        PRINT "Kaupo P6ldmarjakobar: Kaupo"
        GOSUB 550
        PRINT "Janno Heidabkivia'ra: Hallo! Halloo! On seal keegi?"
        GOSUB 550
        PRINT "Kaupo P6ldmarjakobar: See olen mina: kaa aa uu pee oo"
        GOSUB 550
        PRINT "Janno Heidabkivia'ra: Ah sina , Janek Suvila?"
        GOSUB 550
        PRINT "Kaupo P6ldmarjakobar: Ei! See olen mina!"
        GOSUB 550
        PRINT "Janno Heidabkivia'ra: Sa kasutad seda Esti oma v6i? Mitte midagi ei kuule"
        GOSUB 550
        PRINT "Kaupo P6ldmarjakobar: Minu nimi on Kaupo"
        GOSUB 550
        LOOP
520 PRINT "Gerald Huup: Kes seal on?"
        GOSUB 550
    PRINT "Gerald Huup: Kes seal on?"
      GOSUB 550
      PRINT "Laine Vetikas: Laine lobiseb siin."
      GOSUB 550
      PRINT "Gerald Huup: Mhh?"
      GOSUB 550
      PRINT "Gerald Huup: Mul ei olegi naist, vale number on teil"
      GOSUB 550
      PRINT "Laine Vetikas: Mitte naine vaid Laine!"
      GOSUB 550
      PRINT "Gerald Huup: Olete kaine v6i mitte see mind ei huvita"
      GOSUB 550
      PRINT "Laine Vetikas: Sul ka see ragin ka'ib nii k6vasti v6i?"
      GOSUB 550
      PRINT "Gerald Huup: Ei! Siin ei ka'i mingit partit"
      GOSUB 550
      PRINT "Laine Vetikas: Kuhu sa kadusid nyyd?"
      GOSUB 550
      PRINT "Laine Vetikas: Halloo! Halloo! Halloo!"
      GOSUB 550
      PRINT "Gerald Huup: Mis sa l6ugad seal. Ma panen toru a'ra hoopis"
      k6ne = 2
      GOSUB 550
      SLEEP 3
      GOTO 100
530 PRINT nimi$, "keiser kuule! Sa mulle kaitsej6udude koodi ei viitsi ha'kkida v6i?"
    SLEEP 1
    GOSUB 550
    PRINT "Juhan Keiser    Mis ajaks?"
    GOSUB 550
    PRINT nimi$, "Kymne minutiga j6uad?"
    GOSUB 550
    PRINT "Juhan Keiser    Oota!"
    SLEEP 3
    GOSUB 550
    PRINT nimi$, "Mida ma ootan?"
    SLEEP 1
    GOSUB 550
    PRINT "Juhan Keiser  Kood on renodiaL "
    k6ne = 3
    GOSUB 550
    PRINT nimi$, "No ts'auka siis"
    SLEEP 3
    GOSUB 550
    GOTO 100
540
        GOSUB 550
        PRINT "Uuno Sepik    Tervist, kas see on inim6iguste assotsiatsioon?"
        GOSUB 550
        PRINT "Anne Krabamine  Jah"
        GOSUB 550
        PRINT "Uuno Sepik     Mul on yks mure - ma olen ..."
        GOSUB 550
        SLEEP 2
        PRINT "Anne Krabamine    Raa'kige ometi! Mis teiega on?"
        GOSUB 550
        PRINT "Uuno Sepik   Ma olen..."
        GOSUB 550
        PRINT "Uuno Sepik   Ma olen EsTi klient ja ..."
        SLEEP 2
        PRINT "Anne Krabamine     Ja'lle???"
        SLEEP 3
        k6ne = 4
        GOTO 100
560
        GOSUB 550
        PRINT "Leena Kanapoeg    See oled sina Manna, jah?"
        GOSUB 550
        PRINT "Manna Ma'nd    Mina,mina. Kes see nii ilusasti kysib seal?"
        GOSUB 550
        
        PRINT "Leena Kanapoeg   Mina ikka, kes see muu"
        GOSUB 550
        DO
        PRINT "Manna Ma'nd   Ja mis sa siis veel huvitavat tead ka?"
        GOSUB 550
        PRINT "Leena Kanapoeg   Ma kuulsin Tanel pidi naiseks v6tma... Tead kelle?"
        GOSUB 550
        PRINT "Manna Ma'nd  Oi! Keegi vist juba on maininud kyll. Ega see mitte Naeris ole?"
        GOSUB 550
        PRINT "Leena Kanapoeg      Ei. Tema 6nneks mitte."
        GOSUB 550
        PRINT "Manna Ma'nd         Kes siis?"
        GOSUB 550
        PRINT "Leena Kanapoeg    Ah tead, mis ma ikka teiste asjadest raa'gin nagu vanaeit"
        GOSUB 550
        SLEEP 2
        PRINT "Leena Kanapoeg  Oi! A'ra nyyd solvu. Ta abiellub Saimaga"
        GOSUB 550
        PRINT "Manna Ma'nd  Sellega? Sellel on ju k6rvad veel k6veramad kui Maanusel"
        GOSUB 550
        PRINT "Leena Kanapoeg Maanusel ju selle pa'rast ongi, et tal lapsena oli mingi haigus"
        GOSUB 550
        PRINT "Manna Ma'nd  No mis haigus see inimesele ikka kolm k6rva pea kylge paneb."
        GOSUB 550
        PRINT "Leena Kanapoeg  Aga see pani. Samuti on ju Kallel nina viltu"
        GOSUB 550
        SLEEP 2
        PRINT "Manna Ma'nd  Jah? Nyyd hakkad aga kohe solvama? Nii kui minu sugulastel jutt..."
        GOSUB 550
        PRINT "Leena Kanapoeg  A'ra v6ta seda nii isiklikult. Terve teie perekond ..."
        GOSUB 550
        PRINT "Manna Ma'nd  Tead mis ma hommikul naabrinaise ka'est kuulsin? "
        GOSUB 550
        PRINT "Leena Kanapoeg      Ei tea vist."
        GOSUB 550
        PRINT "Manna Ma'nd      See kuusk meie aias on juba sada aastat vana"
        GOSUB 550
        PRINT "Leena Kanapoeg   Ah t6si? Peaaegu sama vana kui sina?"
        GOSUB 550
        PRINT "Manna Ma'nd  Jaa. Olid ajad.  "
        GOSUB 550
        PRINT "Leena Kanapoeg  Kas ma'letad veel seda usbekki Uhgkiini?"
        GOSUB 550
        PRINT "Manna Ma'nd  Mis ta siis ja'lle on teinud "
        GOSUB 550
        PRINT "Leena Kanapoeg   Ta sai isaks ..."
        GOSUB 550
        PRINT "Manna Ma'nd   Seda ma juba tean"
        k6ne = 0
        GOSUB 550
        PRINT "Leena Kanapoeg     ... peaaegu aasta tagasi"
        SLEEP 1
        GOSUB 550
        
       
        LOOP
















550     SLEEP 3
        IF INKEY$ <> "" THEN GOTO 100
 RETURN

600

'********************II NN FF OO
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, ""
         KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        CLS
        COLOR 11
         PRINT
        PRINT "    ***********************************************************************"
        PRINT "                           Estonian Telefoni Infoliin"
        IF time = 0 THEN PRINT "", TIME$, "", "", DATE$
        IF time = 1 THEN PRINT "             18:12   ", DATE$
        PRINT "    ***********************************************************************"
       COLOR 13
      KEY 1, "Back"
      KEY 2, "Mis on "
      KEY 3, "Miks on "
      KEY 4, "EsT"
      KEY 5, "Infoliin"
      KEY ON
      PRINT : PRINT "       Kysi meilt k6igest!"
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
     
      DO
      SLEEP 1
      INPUT "  Sinu kysimus>> ", a$
      IF a$ = "Back" THEN GOTO 690
      IF a$ = "Mis on EsT" OR a$ = "Miks on EsT" THEN PRINT "See on k6ige parem telefoni systeem": GOTO 680
      IF a$ = "Mis on Infoliin" THEN PRINT "See on Eesti parim tasuline vastuste telefon": GOTO 680
      IF a$ = "Miks on Infoliin" THEN PRINT "Selleks et lollpead saaksid oma teadmistejanu rahuldada": GOTO 680
      IF a$ = "" THEN PRINT "  ---": GOTO 680
          infopunkt = infopunkt + 200
      SLEEP 1
      a = INT(RND * 7)
      IF a = 0 THEN PRINT "  Kas see on mingi nali meie teaduslikul Infoliinil?"
      IF a = 1 THEN PRINT "  See pole mingisugune huumorikoht. Vt Meelelahutus"
      IF a = 2 THEN SLEEP 1: PRINT "  See oli hea nali!"
      IF a = 3 THEN PRINT "  Kas ma kutsun bossi?"
      IF a = 4 THEN SLEEP 1: PRINT "  Seda me kahjuks ei tea, aga helistage hiljem."
      IF a = 5 THEN PRINT "  Yks moment... Meie arvutis on yks pisike viga."
      IF a = 6 THEN PRINT "  Kaduge a'ra!!!": SLEEP 1: SLEEP 2: GOTO 690

680      LOOP
690 PRINT : PRINT : PRINT : PRINT "       Kylastage meid ja'lle!!!"
   SLEEP 1
   COLOR 7
   fd = INT(1000 * RND) + 7000
   PRINT "           Teie arve:", fd
   v6lg = v6lg + fd
   SLEEP 3
   GOTO 100

700
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

'***********************EST-ST**********
        CLS
        KEY 1, " Back"
        KEY 2, " EsT Struktuur"
        KEY 3, " Ajalugu"
        KEY 4, " www Tegijad"
        KEY 5, " Synnipa'evad"
        KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

        LINE (50, 55)-(430, 235), 11, B
        COLOR 15
        PRINT : PRINT : PRINT : PRINT
        PRINT : PRINT "       Tegevusala:           Telefoniliinid yle Eesti"
        PRINT "       Asutamisaasta:                            1991"
        PRINT "       Too'tajaid:                               1204"
        PRINT "       Aastaka'ive:                        140393 EEK"
        PRINT "       Kliente:                                  2204"
        PRINT "       Omanikud:                      60% - TaiTelCom"
        PRINT "                                           40% - AS X"
        PRINT "       Aastakasum:                       - 140325 EEK"
        PRINT "       Aktsiahind:                         110,12 EEK"
             COLOR 10
             PRINT : PRINT : PRINT
        PRINT "                                         F1 - Back"
        PRINT "                                         F2 - EsT Struktuur"
        PRINT "                                         F3 - Ajalugu"
        PRINT "                                         F4 - www Tegijad"
        PRINT "                                         F5 - Synnipa'evad"
      
        LINE (50, 55)-(430, 235), 11, B
      
        COLOR 11
        LOCATE 4, 18
        PRINT "Estonian Telefon AS"
             x = 30
             a = 0
             DO
             PSET (x, 380), 1
             DRAW " r40;d5;l35;d5;r35;d5;l35;d5;r35;d5;l40;u25"
             PAINT (x + 1, 381), 1
               PSET (x + 40, 382), 15
               DRAW "r30;d5;l20;d20;l5;u20;l20;u1"
                 LINE (x - 1, 380)-(x - 1, 415), 0
                 FOR i = 1 TO 150
                 NEXT i
                 IF a = 0 THEN x = x + 1
                 IF a = 1 THEN x = x - 2
                 IF x < 30 THEN a = 0
                 IF x > 550 THEN a = 1
                 LOOP UNTIL INKEY$ <> ""
 LOCATE 25, 1
 COLOR 14
 INPUT "   >", a$
      x1 = 0
      x2 = 640
      y1 = 0
      y2 = 480
      FOR i = 1 TO 650
        LINE (x1, 0)-(0, y1), 0
        LINE (x2, 480)-(640, y2), 0
        x1 = x1 + 1
        y1 = y1 + 1
        x2 = x2 - 1
        y2 = y2 - 1
      NEXT i
   
     IF a$ = "Ajalugu" THEN GOTO 300
     IF a$ = "Synnipa'evad" THEN GOTO 730
     IF a$ = "EsT Struktuur" THEN GOTO 750
     IF a$ = "www Tegijad" THEN GOTO 760
     GOTO 100

730

aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

'synnipa'evadddddddddddd"
    
      CLS
      COLOR 14
      PRINT : PRINT
      PRINT "   ***    * *         *     * *              * *            * "
      PRINT "  *                     **       **          *    *   **    *  "
      PRINT "   ****   * * **  **  * * *  ** *  * * *  ** * * *   *  *  **     "
      PRINT "*      *  * * * * * * * **  * * **** * * * * * *  *  **** * *   "
      PRINT " *    *   * * * * * * * *   * * *    * * * * * *   * *    * *     "
      PRINT "  ****     ** * * * * * *    **  *   **   ** * *  *   *    **   "
      PRINT : PRINT
      COLOR 10
      OPEN "synni.txt" FOR INPUT AS #4
      DO
      INPUT #4, rida$
      PRINT rida$
      LOOP UNTIL EOF(4)
        CLOSE #4
        KEY 1, " OK"
        KEY 2, " No"
        KEY 3, ""
        KEY 4, ""
        KEY 5, ""
        KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
      PRINT : PRINT
      INPUT " Back? ", a$
      IF a$ = "No" THEN GOTO 735
     GOTO 700
735    PRINT
        INPUT " Kuidas siis?", a$
        OPEN "synni.txt" FOR APPEND AS #2
        PRINT #2, a$
        CLOSE #2
        synnipunkt = synnipunkt + 100
        GOTO 730

750
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
        KEY OFF
        PRINT : PRINT "       ****  Estonian Telefoni Struktuur  ****"
        COLOR 7
PRINT : PRINT "                            Direktor (Kalmer A'pu)"
        PRINT "       Tegevdirektor (Guido Sampiljon)   ----- Sekreta'r (Ivi Davai)"
        PRINT "      ---------------------------------"
        PRINT "    Tehnikaosakond                Toitlustusosakond"
        PRINT "    (473 too'list)                  (34 too'list)"
        PRINT
        PRINT "    Va'lisosakond                             Reformdirektor (Kalle Kana)"
        PRINT "    (297 too'list)                          ------------------------------"
        PRINT "                                            Uuendusryhm            Inforyhm  "
        PRINT "                Kroonikaosakond            (142 too'list)       (284 too'list)"
        PRINT "                 (476 too'list)"
        PRINT : PRINT
        KEY 1, " OK"
        KEY 2, " No"
        KEY 3, ""
        KEY 4, ""
        KEY 5, ""
        KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
      PRINT : PRINT
      INPUT " Back? ", a$
      IF a$ = "No" THEN GOTO 755
      GOTO 700
755
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
        KEY OFF
        SLEEP 1
        LOCATE 14, 13
       COLOR 15
       INPUT "Sisesta Parool: ", pass$
       SLEEP 1
       LOCATE 16, 13
       PRINT "      Vale Parool"
       DO
       LOOP UNTIL INKEY$ <> ""
       GOTO 700
760
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

' ***********************TEGIJAD******************
      KEY OFF
      CLS
      SLEEP 1
      PRINT "   connecting www.et.ee/estst/tegijad"
      SLEEP 2
      CLS
       COLOR 15
        PRINT "  Tere, meie oleme:"
        PRINT "                 Raul Saarepeal"
        PRINT "                 Timo Ujubyle"
        PRINT "               & Raimond Kodusjuba"
        PRINT : PRINT "           Meie koostasime selle veebilehe"
        SLEEP 2
        SLEEP 2
        IF INKEY$ <> "" THEN GOTO 700
        PRINT "         ... EDIT ..."
        SLEEP 2
        PRINT "    Me oleme just ametis veebilehe muutmisega, nii et a'ra meid praegu sega"
        KEY 1, "Back"
        KEY 2, "EDIT": KEY 3, "EDIT": KEY 4, "EDIT": KEY 5, "EDIT"
        KEY 6, "EDIT": KEY 7, "EDIT": KEY 8, "EDIT": KEY 9, "EDIT": KEY 10, "EDIT"
         KEY ON
    INPUT "       ?", a$
        IF a$ = "Back" OR a$ = "" THEN GOTO 700
        SLEEP 3
        IF INKEY$ <> "" THEN GOTO 700
    PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
    COLOR 3
        KEY 1, "Back"
        KEY 2, "Time": KEY 3, "Struktuur": KEY 4, "Ajalugu": KEY 5, "Arved"
        KEY 6, "K6ned": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY ON
761
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

INPUT "  Mida sa muudad? ", a$
    IF a$ = "Back" THEN GOTO 700
    IF a$ = "Struktuur" THEN GOTO 755
    IF a$ = "Ajalugu" THEN PRINT "  Sa tahad muuta ajalugu?  Meie www kaudu?  Hull?  ": SLEEP 8: GOTO 700
    IF a$ = "Arved" THEN GOTO 765
    IF a$ = "Time" THEN GOTO 770
    SLEEP 1
    INPUT "  Sinu tekst>>>", B$
    GOTO 761
765
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

PRINT : PRINT : PRINT
        INPUT "Sisesta arve omaniku nimi>", nimi2$
        IF nimi2$ <> nimi$ THEN SLEEP 1: PRINT "Sellist klienti meil pole...": SLEEP 5: GOTO 761
        PRINT "   Ta praegune arve:", v6lg
        SLEEP 2
        INPUT "  Kui palju seda suurendame?", B
        IF B > 0 THEN v6lg = v6lg + B
        GOTO 761
770
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
       PRINT : PRINT : PRINT
        INPUT "Sistesta uus kellaaeg", aeg2$
        IF aeg2$ <> TIME$ THEN SLEEP 1: PRINT "  Midagi on valesti": SLEEP 5
        IF aeg2$ <> TIME$ THEN PRINT "   Panen ajaks too'pa'eva l6pu - 18:00"
        time = 1
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 761
800
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

KEY OFF
        '****************MANG'''''''''''''

        CLS
        COLOR 11
        PRINT : PRINT : PRINT
        PRINT "                               TUUM : Good game"
        COLOR 7
        PRINT "                      Made in Estonia in Estonian Telefon"
        PRINT "                    1st Estonian 3D game (better than Duke)"
        PRINT "                             EsT's official net game"

        COLOR 11
        PRINT : PRINT : PRINT : PRINT
        IF time = 0 THEN PRINT "", TIME$, DATE$
        IF time = 1 THEN PRINT "", "18:32", DATE$
        DO
        LOOP UNTIL INKEY$ <> ""
        PRINT : PRINT : PRINT
        COLOR 3
        PRINT "      Vastaseid on praegu:"
        SLEEP 2
        COLOR 14
        LOCATE 16, 28
        IF time = 0 THEN PRINT "0"
        IF time = 1 THEN PRINT "1203": GOTO 810
     COLOR 7
     SLEEP 1
     PRINT " Sorry, aga see ma'ng ei ole m6eldud yksinda ma'ngimiseks!"
     SLEEP 2
     PRINT "  Proovi uuesti peale too'pa'eva l6ppu!!  (kell 18.00 - 18.05)"
     DO
     LOOP UNTIL INKEY$ <> ""
     GOTO 100
810
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

SLEEP 1
        COLOR 7
        PRINT "  Good! Press any key and play the game..."
        SLEEP 1
        DO
        LOOP UNTIL INKEY$ <> ""
820     COLOR 11
        x = 1
       CLS
       DO
       PRINT "                                                       "
       PRINT "                  VALI OMA SANGAR:                        "
       x = x + 1
       LOCATE x, 1
            FOR i = 1 TO 5000
            NEXT i
       LOOP UNTIL x = 6
         KEY 1, "Back"
         KEY 2, "Kama"
         KEY 3, "George"
         KEY 4, "Nukem"
         KEY 5, "Boriss"
         PRINT : PRINT "         F1) Back (to work)"
         PRINT "           2) Kama"
                 PRINT "           3) George"
                 PRINT "           4) Nukem"
                 PRINT "           5) Boriss"
            PRINT
          INPUT a$
         
          IF a$ = "Back" THEN GOTO 100
          PRINT : PRINT : PRINT
          PRINT "    Nupud:  SPACE - Move"
          PRINT "              5   - Shoot"
       
       
         r = 1
         LOCATE 1, 1
         DO
         PRINT "                                                     "
         FOR i = 1 TO 5000
         NEXT i
         r = r + 1
         LOOP UNTIL r > 20
       LINE (80, 0)-(80, 480), 15
       LINE (560, 0)-(560, 480), 15
       LINE (150, 0)-(490, 480), 15, B
       LINE (200, 60)-(440, 420), 7, B
       LINE (240, 120)-(400, 360), 7, B
       LINE (280, 170)-(360, 310), 8, B
       LINE (310, 210)-(330, 270), 8, B
        LOCATE 1, 1
        PRINT "", a$, " HEALTH : 100      AMMO : 100     ARMOR : 0       "
       DO
       IF INKEY$ = "5" THEN GOTO 825
       LOOP UNTIL INKEY$ = " "
       GOTO 830
825
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
y = 480
        x = 350
        FOR i = 1 TO 230
         a = INT(x)
         PSET (a, y), 4
         y = y - 1
         x = x - .13
         FOR k = 1 TO 100
         NEXT k
         NEXT i
       r = 1
       FOR i = 1 TO 20
       CIRCLE (a, y), r, 4
       r = r + 1
       FOR k = 1 TO 100
       NEXT k
       NEXT i
830
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
       LINE (76, 0)-(76, 480), 15
       LINE (564, 0)-(564, 480), 15
       LINE (147, 0)-(493, 480), 15, B
       LINE (199, 60)-(441, 420), 7, B
       LINE (239, 120)-(401, 360), 7, B
       LINE (279, 170)-(361, 310), 8, B
       LINE (310, 210)-(330, 270), 8, B
        LOCATE 1, 1
        PRINT "", a$, " HEALTH : 90      AMMO : 100     ARMOR : 0       "
       DO
       IF INKEY$ = "5" THEN GOTO 825
       LOOP UNTIL INKEY$ = " "
840
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
       LINE (70, 0)-(70, 480), 15
       LINE (570, 0)-(570, 480), 15
       LINE (141, 0)-(499, 480), 15, B
       LINE (194, 60)-(446, 420), 7, B
       LINE (235, 120)-(405, 360), 7, B
       LINE (276, 170)-(364, 310), 8, B
       LINE (308, 210)-(332, 270), 8, B
        LOCATE 1, 1
        PRINT "", a$, " HEALTH : 90      AMMO : 100     ARMOR : 0       "
       DO
       IF INKEY$ = "5" THEN GOTO 835
       LOOP UNTIL INKEY$ = " "
      GOTO 850
835
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

y = 480
        x = 350
        FOR i = 1 TO 230
         a = INT(x)
         PSET (a, y), 4
         y = y - 1
         x = x - .13
         FOR k = 1 TO 100
         NEXT k
         NEXT i
845     
        FOR i = 1 TO 230
         a = INT(x)
         PSET (a, y), 4
         y = y + 1
         x = x - .13
         FOR k = 1 TO 100
         NEXT k
         NEXT i
IF game1 = 2 THEN GOTO 1055
GOTO 890
850
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
       LINE (64, 0)-(64, 480), 15
       LINE (576, 0)-(576, 480), 15
       LINE (146, 0)-(504, 480), 15, B
       LINE (189, 60)-(451, 420), 7, B
       LINE (231, 120)-(409, 360), 7, B
       LINE (273, 170)-(367, 310), 8, B
       LINE (306, 210)-(334, 270), 8, B
        LOCATE 1, 1
        PRINT "", a$, " HEALTH : 60      AMMO : 100     ARMOR : 0       "
       DO
       IF INKEY$ = "5" THEN GOTO 835
       LOOP UNTIL INKEY$ = " "
860
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

SLEEP 1
IF game1 = 1 THEN GOTO 995
IF game1 = 2 THEN GOTO 1050
        LOCATE 10, 30
        PRINT "S E C R E T   P L A C E"
        SLEEP 1
        DO
        LOOP UNTIL INKEY$ <> ""
        FOR i = 1 TO 60000
        NEXT i
        PRINT : PRINT : PRINT
        PRINT "   P r e s s   0  a n d   t h e   r o o m   i s   y o u r s!"
        DO
        IF INKEY$ = "5" THEN GOTO 835
        LOOP UNTIL INKEY$ = "0"
        SLEEP 1
870  CLS
     COLOR 11
        x = 1
       CLS
       DO
       PRINT "                                                       "
       PRINT "                  SA  OLED  V6ITJA!!!                        "
       x = x + 1
       LOCATE x, 1
            FOR i = 1 TO 5000
            NEXT i
       LOOP UNTIL x = 6
       PRINT : PRINT
       COLOR 7
       PRINT "       Suured 6nnesoovid kogu EsT too'ka kollektiivi poolt!"
       SLEEP 5
       PRINT "          Oo! Sa ei olegi meie too'taja?"
       SLEEP 2
       PRINT "          Meil on teile yks tore auhind: me tasume m6ned te k6neminutid"
       SLEEP 2
       PRINT "          ta'psemalt", v6lg + 1, "krooni eest"
       v6lg = -1
       SLEEP 2
       game1 = 1
       DO
       LOOP UNTIL INKEY$ <> ""
       CLS
       GOTO 895




890        x = 0
        FOR i = 1 TO 480
        LINE (0, 0)-(640, x), 4, B
        x = x + 1
        NEXT i
       
           LOCATE 10, 25
           PRINT "You are DEAD, man!"

895

SLEEP 1
           KEY 1, "Yes"
           KEY 2, "No"
           LOCATE 12, 20
           INPUT "Do you want to try again?(Yes/No)", a$
           IF a$ = "y" OR a$ = "Y" OR a$ = "Yes" THEN GOTO 820
           GOTO 100
995     FOR i = 1 TO 30
                FOR k = 1 TO 2000
                NEXT k
        x = (RND * 11) + 1
        CIRCLE (320, 380), x, 10
        x = (RND * 11) + 1
        CIRCLE (321, 380), x, 0
        NEXT i
        LOCATE 20, 30
                PRINT "      YOU FOUND THE GOD-STONE ! ! !"
                FOR k = 1 TO 160000
                NEXT k
              game1 = 2
                DO
                LOOP UNTIL INKEY$ <> ""
          CLS
          PRINT : PRINT : PRINT : PRINT
         GOTO 895

1050
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000

CLS
       LINE (54, 0)-(54, 480), 15
       LINE (586, 0)-(586, 480), 15
       LINE (138, 0)-(512, 480), 15, B
       LINE (182, 53)-(458, 427), 7, B
       LINE (225, 114)-(415, 366), 7, B
       LINE (268, 165)-(372, 315), 8, B
       LINE (302, 206)-(338, 274), 8, B
        LOCATE 1, 1
        PRINT "", a$, " HEALTH : 10      AMMO : 100     ARMOR : 0       "
       DO
       IF INKEY$ = "5" THEN GOTO 835
       LOOP UNTIL INKEY$ = " "
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
         x = 320
         y = 240
         GOTO 845
1055    LOCATE 10, 20
        PRINT "HUH? WHAT? SHOOT? SHIT? EH?"
        SLEEP 2
        game1 = 0
        GOTO 895

900 '**************************MISSION ACCOMLISHED**************

     CLS
     KEY OFF
     mission1 = punktid
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:       ", mission1
     PRINT "OMA V6LA NULLISTAMISE EEST            +10000"
     punktid = punktid + 10000
     IF kroonikapunkt > 0 THEN punktid = punktid + kroonikapunkt: PRINT "KROONIKAMEESTE TOO' A'RA RIKKUMISE EEST", kroonikapunkt
     IF synnipunkt > 0 THEN punktid = punktid + synnipunkt: PRINT "OMA SYNNIPA'EVA KUULUTAMISE EEST", synnipunkt
     PRINT "MA'NGUDE MA'NGIMISE EEST            200"
     punktid = punktid + 200
     IF infopunkt > O THEN punktid = punktid + infopunkt: PRINT "EXTRA BONUS INFOLIINIL LOLLIDE KYSIMUTE EEST", infopunkt
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):          ", INT(aeg)
     ajalisa = 600 - aeg
     timebonus = ajalisa * 20
     TIMER OFF
     PRINT "TIMEBONUS:          ", INT(timebonus)
     lopp = punktid + timebonus
     punktid = INT(lopp)
     COLOR 15
     PRINT : PRINT "KOKKU:", INT(lopp)
      DO
      LOOP UNTIL INKEY$ <> ""
      mission = 7
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
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, f, rida7$, g
    CLOSE #1
        IF punktid < g + 1 THEN koht = 8
        IF punktid > g THEN koht = 7
        IF punktid > f THEN koht = 6
        IF punktid > e THEN koht = 5
        IF punktid > d THEN koht = 4
        IF punktid > c THEN koht = 3
        IF punktid > B THEN koht = 2
        IF punktid > a THEN koht = 1

        
        IF koht < 7 THEN rida7$ = rida6$: g = f
        IF koht < 6 THEN rida6$ = rida5$: f = e
        IF koht < 5 THEN rida5$ = rida4$: e = d
        IF koht < 4 THEN rida4$ = rida3$: d = c
        IF koht < 3 THEN rida3$ = rida2$: c = B
        IF koht < 2 THEN rida2$ = rida1$: B = a
         IF koht = 1 THEN rida1$ = nimi$: a = punktid
         IF koht = 2 THEN rida2$ = nimi$: B = punktid
         IF koht = 3 THEN rida3$ = nimi$: c = punktid
         IF koht = 4 THEN rida4$ = nimi$: d = punktid
         IF koht = 5 THEN rida5$ = nimi$: e = punktid
         IF koht = 6 THEN rida6$ = nimi$: f = punktid
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
     PRINT #1, f
     PRINT #1, rida7$
     PRINT #1, g

     CLOSE #1
   OPEN "tabel.txt" FOR INPUT AS #1
    INPUT #1, rida1$, a, rida2$, B, rida3$, c, rida4$, d, rida5$, e, rida6$, f, rida7$, g
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
       
          RUN "miss7.bas"

