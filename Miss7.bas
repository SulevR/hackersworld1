       
     
     




 'TA"HTSAD KOHAD
 ' 250  RTH ka'ivitus



10
TIMER OFF
TIMER ON
time = 0
mission = 7
     CLS
       
        SCREEN 12
        CLS
        OPEN "buffer.txt" FOR INPUT AS #3
        INPUT #3, nimi$, m, punktid, pin, ok
        CLOSE #3
11110
11111   IF misc = 1 THEN GOTO 1000
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
        IF x$ = "Quit" THEN GOTO 11115
        IF x$ = "Edetabel" THEN GOTO 11160
     GOTO 11110
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
        IF INKEY$ = " " THEN RUN "hackersw.bas"
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
                    mission = 7
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
        OPEN "mission7.txt" FOR INPUT AS #3
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
                        PRINT TAB(12); " Mnjah. Ka'perdis oled sa kyll, aga a'ra selle "
                        SLEEP 3
                        PRINT TAB(12); "pa'rast meelt veel heida. Meist igayhele lihtsalt"
                        SLEEP 3
                        PRINT TAB(12); "ei ole m6istust syndides kaasa antud. Sa oled "
                        SLEEP 3
                        PRINT TAB(12); "lihtsalt yks statistika kohane protsent rahvastikust."
                hkg = 0
                unimi$ = ""
                uvarv$ = ""
                utext$ = ""
                ukaal$ = ""
                rthc = 0
                bandbonus = 0
                lookb = 0
                xsd = 0
                lpil = 0
                misc = 0
                sober = 0
                downl = 0
                videobonus = 0
                lookj = 1
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

        
        SCREEN 12
        COLOR 15
        KEY 1, " Back": KEY 2, " Band": KEY 3, " Plaadid": KEY 4, " Ajakava": KEY 5, " Videod"
        KEY 6, " Jutukas": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

 
      
        LINE (0, 0)-(232, 20), 0, BF
        LINE (233, 0)-(568, 20), 1, BF            'Sinine riba
        LINE (0, 21)-(640, 23), 0, BF
        LINE (572, 0)-(592, 20), 15, BF         '"_" nupp
        LINE (596, 0)-(616, 20), 15, BF         '"kast"nupp
        LINE (620, 0)-(640, 20), 15, BF         '"X" nupp
        LINE (0, 24)-(640, 44), 7, BF
        LINE (0, 45)-(640, 47), 0, BF
        LINE (0, 48)-(596, 88), 8, BF           'Exploreri logost vasakul
        LINE (600, 48)-(640, 88), 1, BF         'Exploreri logo
        LINE (0, 89)-(640, 91), 0, BF
        LINE (0, 92)-(50, 112), 8, BF           'httpst vasakul
        LINE (51, 92)-(54, 112), 0, BF
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
             LOCATE 1, 1
        PRINT " Macrosoft Internet Explorer "
        LOCATE 7, 9
        PRINT "http://www.radiotups.uk/ "
        COLOR 14
          LINE (0, 113)-(640, 116), 0, BF
          LINE (0, 117)-(613, 434), 2, BF
          LINE (0, 435)-(640, 439), 0, BF
        LOCATE 11, 7
        PRINT " F1 -      Back  "
        LOCATE 13, 7
        PRINT " F2 -      Band  "
        LOCATE 15, 7
        PRINT " F3 -   Plaadid  "
        LOCATE 17, 7
        PRINT " F4 -   Ajakava  "
        LOCATE 19, 7
        PRINT " F5 -    Videod  "
        LOCATE 21, 7
        PRINT " F6 -   Jutukas  "
          COLOR 9
          LOCATE 24, 12
          PRINT "RaadioTupsud on praeguse hetke parim pop- ba'nd  kogu maailmas."
          LOCATE 25, 12
          PRINT " Ja'relikult on ka RaadioTupsude kodulehekylg parim maailmas!!!"
         LINE (210, 160)-(500, 335), 9, B
          LINE (211, 161)-(499, 334), 7, BF
          
            DO
            IF INKEY$ <> "" THEN GOTO 120
            xsd = xsd + 1
            IF xsd > 98888 THEN EXIT DO
            LOOP
        'pilt
          LINE (211, 161)-(499, 334), 0, BF
          p = 10
          x = 260
          DO
          CIRCLE (x, 290), 35, p
          PAINT (x, 290), p
          LINE (x - 1, 240)-(x + 1, 290), p, BF
          LINE (x - 10, 310)-(x + 8, 311), 0, BF
           CIRCLE (x - 8, 282), 1, 0
           CIRCLE (x + 10, 282), 1, 0
          p = p + 1
          x = x + 75
          LOOP UNTIL p = 13

        aeg = TIMER - StartTime
         IF aeg > 250 AND aeg < 270 THEN GOSUB 1200


120   COLOR 15
        LOCATE 7, 9
        INPUT "http://www.radiotups.uk/ ", a$
         IF a$ = "RTH" AND rthc = 1 THEN GOTO 190
     
        pildivah = 0
        DO
         x = INT(RND * 660) - 10
         y = INT(RND * 500) - 10
         LINE (x, y)-(x + 19, y + 19), 0, BF
         pildivah = pildivah + 1
        LOOP UNTIL pildivah > 7500
        CLS
        SLEEP 1
     
     
      IF a$ = "Back" THEN GOTO 11110
      IF a$ = "Plaadid" THEN GOTO 200
      IF a$ = "Ajakava" THEN GOTO 300
      IF a$ = "Band" THEN GOTO 400
      IF a$ = "Videod" THEN GOTO 500
      IF a$ = "Jutukas" THEN GOTO 900
      

      GOTO 100

190
    x = 1
    DO
      INPUT a$
      x = x + 1
    LOOP UNTIL x > 20
    GOTO 200

200     '*********KASSETID***
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
       
        CLS
        COLOR 7
        PRINT : PRINT : PRINT : PRINT : PRINT
        PRINT "   Album                      Vorm              Aasta  Myygiarv  Tootja"
        COLOR 12
        PRINT
        PRINT "   Coming to bussiness        kassett           1996    100000   Ghc Musics"
        PRINT "   Out of the range           CD/kassett        1997    800000   Ghc Musics"
        PRINT "   Hey You !                  CD/kassett        1997   1800000   Lehmlaut recs"
        PRINT "   The Best of RadioTups      CD/kassett        1998   3000000   Lehmlaut recs"
        PRINT "   Destroying hymns           CD                1998   2000000   Lehmlaut recs "
        PRINT "   Way to down (+ best hits)  CD/kassett/vinyyl 1998   3200000   RT studios"
        IF cdkas$ <> "" THEN PRINT cdkas$
        COLOR 7
        PRINT : PRINT
        PRINT "   Singel                     Vorm              Aasta  Myygiarv  Tootja   "
        COLOR 12
        PRINT
        PRINT "   Our score                  CD                1997     60000   Ghc Musics"
        PRINT "   Hey You ! (Single)         CD                1997     60000   Lehmlaut recs"
        PRINT "   Radiomania                 CD                1997     80000   Lehmlaut recs"
        PRINT "   Can You belive the Tups    CD                1997     90000   Lehmlaut recs"
        PRINT "   Fire the Bomb              CD                1998    120000   Lehmlaut recs"
        PRINT "   Tups and tips              CD                1998    150000   RT studios"
        PRINT "   Dentist song               CD                1998    150000   RT studios"
        PRINT "   Flametowers night          CD                1998    150000   RT studios"
        PRINT
        KEY 1, " Back": KEY 2, " Back": KEY 3, " Back": KEY 4, "": KEY 5, ""
        KEY 6, " ": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        COLOR 10
        INPUT a$
       IF a$ = "RTH" AND rthc = 1 THEN GOTO 210
        GOTO 100
210  GOSUB 250
        PRINT : PRINT " Please, insert Your text here! correctly! He=he=he..."
        COLOR 12
        INPUT cdkas$
        PRINT "  OK >>>"
        DO
        LOOP UNTIL INKEY$ <> ""
        GOSUB 270
        GOTO 100

250 '***************  RTH  KA:IVITUS ****************

 SLEEP 1
 x = 10
 y = 100
 DO
 LINE (10, 100)-(x, y), 0, BF
 x = x + 2
 y = y + 1
 LINE (10, 100)-(x, y), 15, B
        FOR i = 1 TO 70
        NEXT i
  LOOP UNTIL x > 570
 LOCATE 8, 20
   PRINT "(c) Radio Tups Hate Club"
 LOCATE 10, 20
   PRINT "       ** HTC **"
 LOCATE 12, 14
 PRINT "-Starting..."
 SLEEP 1
 LOCATE 13, 14
 PRINT "-Killing all www.radiotups.uk users..."
 SLEEP 1
 LOCATE 14, 14
 PRINT "-Checking idiots places..."
 LOCATE 15, 14
 PRINT "-Sending text:<Idiots> to www.radiotups.uk/jutukas"
 SLEEP 1
  PRINT : PRINT : PRINT : PRINT : PRINT
  PRINT : PRINT : PRINT : PRINT : PRINT
  RETURN
270 SLEEP 1
    PRINT : PRINT : PRINT : PRINT
    PRINT "Master: Kalle Madu"
    PRINT "Pictures: Pille Smith"
    PRINT "Sounds: Pille Smith"
    PRINT "Videos: Ladnja Petshkivits"
    PRINT "Tests: Kalle Madu"
    PRINT "(c) RadioTups Hate Club"
    PRINT DATE$
    SLEEP 1.5
    RETURN
300 ' ************ AJAKAVA *************
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
    
     CLS
        COLOR 7
        PRINT : PRINT : PRINT : PRINT
        PRINT "Time                      Place                   Caller   "
        COLOR 14
        PRINT
        PRINT "Today          8:00       Sidney Opera Theatre    SOT"
        PRINT "Today         10:10       Helsinki Stadium        Vesa Oy"
        PRINT "Today         20:30       Berliin Olympic house   Shwich co & Brln Sounds"
        PRINT "--------"
        PRINT "Tomorrow      19:00       English Kings Castle    UK recs"
        PRINT "Tomorrow      23:00       Yapanish Big Hall       NikyVorus Ltd"
        PRINT : PRINT
        COLOR 7
        PRINT "Press any key and You can see all the concerts coming soon!"
         DO
         LOOP UNTIL INKEY$ <> ""
        COLOR 14
        x = 1
        PRINT : PRINT
        DO
                
                PRINT DATE$, " 8:00       Sidney Opera Theatre    SOT"
                PRINT DATE$, "10:10       Helsinki Stadium        Vesa Oy"
                PRINT DATE$, "20:00       Berliin Olympic house   Shwich co & Brln Sounds"
                PRINT "1:01          00:00       TV 1010                 Tv1010"
                PRINT "10:01         19:00       English Kings Castle    UK recs"
                PRINT "10:01         23:00       Yapanish Big Hall       NikyVorus Ltd"
                PRINT "12:01         10:11       Russia                  Russkiimafja Co"
                PRINT "31:03         20:23       English Kings Castle    UK recs"
                PRINT "5:04          15:00       Lithuania               Lietuva Music Tiam"
                PRINT "12:06         21:00       Somablya                Fd-luk-luk"
                PRINT "12:06         21:00       USA                     NTE Musicproduder"
                PRINT "18:09         ?           Poland                  Venecio"
                PRINT "2:10          18:30           Iracs Islam House       Alahh"
                PRINT "4:10          ?           SAR                     ?"
                PRINT "5:11          21:00 -      Birmingham             UK recs & SuperShowGroup"
                PRINT "06:11          10:00       London                   ------''-------- "
                PRINT "12:11         10:00       USA                     JHG Ltd"
                PRINT "12:11         21:00       USA                     NTE Musicproducer"
                PRINT "30:11         21:00       Danmark                 ManMark"
                PRINT "22:12         18:00       Canada                  JHG Ltd"
                PRINT "22:12         24:00       Canada                  LiveHouse"
        x = x + 1
        LOOP UNTIL x > 12
        KEY 1, " Back": KEY 2, " Back": KEY 3, " Back": KEY 4, "": KEY 5, ""
        KEY 6, " ": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        COLOR 10
        INPUT "OK>>> ", a$
       IF a$ = "RTH" AND rthc = 1 THEN GOTO 320
        GOTO 100
320 GOSUB 250
        PRINT : PRINT : PRINT : PRINT
        COLOR 15
        INPUT "City: ", linn$
        INPUT "Caller: ", kut$
        IF linn$ = "Tallinn" OR linn$ = "tallinn" OR linn$ = "estonia" THEN x = 1
        IF kut$ = "MUSA" OR kut$ = "musa" OR kut$ = "as musa" THEN x = x + 1
        IF x = 2 THEN misc = 1
       PRINT "OK>>>"
       SLEEP 1
       GOSUB 270
       GOTO 100
400 CLS
        KEY OFF
        KEY 1, " Back": KEY 2, " Back": KEY 3, " Back": KEY 4, "": KEY 5, ""
        KEY 6, " ": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
         lookb = lookb + 1
        COLOR 10
        PRINT : PRINT : PRINT : PRINT
        PRINT "                 Name: NOO-NOO "
        PRINT "                 Weigth: 102 kg"
        PRINT "                 Favorite colour: Green"
        PRINT "                 Him text: Be tups as I"
        COLOR 11
        PRINT : PRINT : PRINT
        PRINT "                 Name: BLAA-BLAA"
        PRINT "                 Weight: 97 kg"
        PRINT "                 Favorite colour: Blue"
        PRINT "                 Her text: I love You"
        COLOR 12
        PRINT : PRINT : PRINT
        PRINT "                 Name: Jenki"
        PRINT "                 Weight: 108 kg"
        PRINT "                 Favorite colour: Red"
        PRINT "                 His txt: Listen us, We listen You"
       
        
        LINE (20, 30)-(120, 420), 7, B
       
         PRINT : PRINT : PRINT
        COLOR 9
        PRINT "      OK>>>"
         LOCATE 5, 1
         IF unimi$ <> "" THEN PRINT "                Name:", unimi$, " "
         IF ukaal$ <> "" THEN PRINT "                Weight:", ukaal$, " "
         IF uvarv$ <> "" THEN PRINT "                Favorite color:", uvarv$, " "
         IF utext$ <> "" THEN PRINT "                His text:", utext$, " "
        
        DO
        lpil = lpil + 1
        IF INKEY$ <> "" THEN GOTO 420
        LOOP UNTIL lpil > 80000
            LINE (20, 30)-(120, 420), 0, B
          x = 95
          p = 10
          DO
          CIRCLE (70, x), 35, p
          PAINT (70, x), p
          LINE (69, x - 50)-(71, x), p, BF
          LINE (60, x + 20)-(78, x + 21), 0, BF
           CIRCLE (62, x - 8), 1, 0
           CIRCLE (80, x - 8), 1, 0
          p = p + 1
          x = x + 115
          LOOP UNTIL p = 13
         IF lookb = 2 THEN GOTO 450
      loaeg = TIMER - lollaeg
      IF loaeg < 26 THEN GOTO 470
       'ussike
       SLEEP 1
       x1 = 610
       y1 = 70
       x = 610
       y = 70
         c = 10
         p = 4
         O = 1
         DO
            FOR k = 1 TO 50
            NEXT k
          LINE (x - 2, y - 2)-(x + 2, y + 2), c, B
          IF O = 1 THEN y = y + 1
          IF O = 2 THEN x = x - 1
          IF O = 3 THEN x = x + 1
          IF O = 4 THEN y = y - 1
          IF y = 450 AND O = 1 THEN O = 2
          IF x = 30 AND O = 2 THEN O = 3
          IF x = 610 AND O = 3 THEN O = 4
          IF y = 30 AND O = 4 THEN O = 1
             c = INT(RND * 3) + 10
        
          LINE (x1 - 2, y1 - 2)-(x1 + 2, y1 + 2), 0, B
          IF p = 1 THEN y1 = y1 + 1
          IF p = 2 THEN x1 = x1 - 1
          IF p = 3 THEN x1 = x1 + 1
          IF p = 4 THEN y1 = y1 - 1
          IF y1 = 450 AND p = 1 THEN p = 2
          IF x1 = 30 AND p = 2 THEN p = 3
          IF x1 = 610 AND p = 3 THEN p = 4
          IF y1 = 30 AND p = 4 THEN p = 1
             
        
        
         LOOP UNTIL INKEY$ <> ""

420  LOCATE 26, 1
        INPUT "      OK>>> ", a$
        IF a$ = "RTH" AND rthc = 1 THEN GOTO 430
        GOTO 100

430  GOSUB 250
        PRINT : PRINT
        INPUT "Name: ", unimi$
        INPUT "Weight: ", ukaal$
        INPUT "Favorite colour: ", uvarv$
        INPUT "Text: ", utext$
       bandbonus = 1
       PRINT : PRINT "      OK>>>"
       DO
       LOOP UNTIL INKEY$ <> ""
      GOSUB 270
      GOTO 100
450 SLEEP 1
        LOCATE 7, 7
        COLOR 15
        PRINT "RrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrR"
        SLEEP 1
        LOCATE 8, 7
        PRINT "KKKSSSSSSSSSSSSSSSAAAAAAAAAAAAAAASSSSSSS"
        SLEEP 1
        LOCATE 9, 7
        PRINT "RadioTups on special lollus ! ! ! ! ! !"
        SLEEP 1
        GOSUB 270
       x = 1
       DO
       PRINT
       x = x + 1
       LOOP UNTIL x > 20
       PRINT " - See oli super !"
       SLEEP 2
       PRINT " = Ja mis sa siis m6tsid? Mina juba sellist asja vussi ei keera"
       SLEEP 4
       PRINT " - Ja'tka sama moodi!"
       FOR i = 1 TO 10000
       NEXT i
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 100
470
          x = 95
          p = 10
          r = 35
          DO
          CIRCLE (70, x), r, 10
           x = 115 + 95
          CIRCLE (70, x), r, 11
          
           x = 115 * 2 + 95
          CIRCLE (70, x), r, 12
          x = 95
              FOR k = 1 TO 400
              NEXT k
           r = r + 1
           
          LOOP UNTIL r > 250
GOTO 672

500  'VIDEOD************
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
       
        CLS
        LINE (8, 10)-(640, 280), 1, BF
        COLOR 15
        LOCATE 6, 15
        PRINT "                   V I D E O                  "
        LOCATE 7, 15
        PRINT "          Produced by RT studios 1998         "
        PRINT : PRINT : PRINT
        KEY 1, " Back"
        KEY 2, " Watch"
        KEY 3, " Send"
        KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, " ": KEY 8, "": KEY 9, " "
        KEY 10, ""
       
        COLOR 10
       
        PRINT "F1 - Back"
        COLOR 11
        PRINT : PRINT "F2 -Watch"
        COLOR 12
        PRINT : PRINT "F3 - Send"
         PRINT : PRINT : PRINT : PRINT
       COLOR 15
      INPUT "Your choise >>> ", a$
      IF a$ = "Back" THEN k = 11
      IF a$ = "Watch" THEN k = 13
      IF a$ = "Send" THEN k = 15
      IF a$ = "RTH" AND rthc = 1 THEN GOTO 830
      LOCATE k, 1
      PRINT " "
      COLOR 1
      x = 2
      DO
       FOR i = 1 TO 1000
       NEXT i
      LOCATE k, x
      PRINT "Û"
      x = x + 1
      LOOP UNTIL x = 10
     SLEEP 1
     IF a$ = "Watch" THEN GOTO 650
     IF a$ = "Send" THEN GOTO 750
     GOTO 100

650 '******************************** video *****************************
    CLS
    SLEEP 1
    COLOR 14
    LOCATE 14, 30: PRINT "Radiotups production"
    SLEEP 1: CLS : SLEEP 1
    LOCATE 14, 35: PRINT "<No Late>"
    SLEEP 1: CLS : SLEEP 1
    COLOR 15
    LOCATE 27, 10: PRINT "65643763       23452345        345234524     ÍÍÍÍÍÍ--   ²5,00²"
    PLAY "mbmlt140o3e4e8d8c8o2b8a4a8o3c8o2b8a8g8a8e8d8e2d4e4"
    PLAY "mbmlt140o3d8c8d8c8o2f4a8o3e4d8c8o2f4a8o3c8o2b8b16a16g4g4a8g8o3c16o2b16a8a4"
    videokord = 0
    vidaeg = TIMER - VideoAeg
    IF lookj = 1 AND vidaeg < 60 THEN GOTO 670
   DO
    PSET (195, 270), varv
    DRAW "r40;u40;l30;u10;r20;u20;r40;d20;r20;d10;l30;d40;r55"
    DRAW "u35;h5;u20;r3;u1;r2;u2;r3;u1;r2;u1;r3;u1;r2;u2;r3;u1;r2;u1"
    DRAW "r34;u3;l2;e8;f5;g2;f1;g8;d5;l9;g15"
    DRAW "r12;d4;l2;d1;l3;d1;l4;d1;l3;d1;l2;d7;r1;d5;r1;d10;r1;d5;r1;d5;r1;d5"
    DRAW "r55;u25;l20;g15;h15;e20;f10;u5;e5;u5;e5;r20;d55;r20"
    DRAW "u60;g7;u2;e5;u2;e3;r2;e5;r2;g8;d62;r18;u150;l250;d150"
    PAINT (197, 266), varv
    CIRCLE (245, 190), 10, 0
    PAINT (245, 190), 0
    CIRCLE (315, 195), 10, 0
    PAINT (315, 195), 0
    CIRCLE (395, 205), 10, 0
    PAINT (395, 205), 0
    CIRCLE (400, 245), 25, 0
    PAINT (400, 245), 0
    PAINT (415, 245), 0
    PAINT (385, 245), 0
     FOR i = 1 TO 3000
     NEXT i
     varv = (RND * 14) + 1
     videokord = videokord + 1
     COLOR varv
      LINE (195, 120)-(445, 270), 0, BF
    FOR i = 1 TO 2500
    NEXT i
   LOOP UNTIL videokord > 80

    CLS
    COLOR 11: LOCATE 6, 10: PRINT "TABEL"
    COLOR 8: PRINT "Koht Band            Lugu                    Hinne"
    COLOR 15
    PRINT "  1  Radiotups       No Late                 5,00   /UUZ TULNUK"
    PRINT "  2  Radiotups       Flametowers Night       5,00"
    PRINT "  3  Radiotups       Fire The Bomb           5,00   /UUZ TULNUK"
    PRINT "  4  Radiotups       Tups & Tips             5,00"
    PRINT "  5  Radiotups       Dentist Song            5,00"
    COLOR 7
    PRINT "  6  Radiotups       Hea lugu                4,99"
    PRINT "  7  Radiotups       Sea Lapsed              4,99"
          
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 500
670     x = 1
        DO
          a = INT(30 * RND) + 1
          b = INT(30 * RND) + 1
          LOCATE a, b
          PRINT "R A A D I O   T U P S U D   O N   J A M A   ! ! !"
         x = x + 1
         LOOP UNTIL x > 10
        SLEEP 2
          PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
          COLOR 1
           IF lookj = 1 AND vidaeg < 30 THEN GOTO 672
    COLOR 15
    LOCATE 27, 10: PRINT "65643763       23452345        345234524     ÍÍÍÍÍÍ--   ²0,00²"
      SLEEP 2
    CLS
    COLOR 11: LOCATE 6, 10: PRINT "TABEL"
    COLOR 8: PRINT "  Koht  Band            Lugu                    Hinne"
    COLOR 7
    PRINT "  2011  Radiotups       No Hate                 0,02   /UUZ TULNUK"
    PRINT "  2222  Radiotups       Babysitting night       0,01"
    PRINT "  3055  Radiotups       We are stupidos         0,01   /UUZ TULNUK"
    PRINT "  4055  Radiotups       Tups & Shits            0,01"
    PRINT "  5654  Radiotups       Kole lugu               0,01"
   
    PRINT "  6534  Radiotups       Oleme Hullud            0,00 "
    PRINT "  7345  Radiotups       Meil ei ole ajusid      0,00"
         
         
        DO
        LOOP UNTIL INKEY$ <> ""
        GOTO 500


672          PRINT "Kalle : Vauu! Vauu! Vauu!": SLEEP 3
          PRINT "Pille : See tuli t6esti normaalne va'lja!": SLEEP 5
          PRINT "Kalle: Viis punni kohe selle eest!": SLEEP 3
          PRINT "Pille: no mis sa nyyd": SLEEP 3
          PRINT "Kalle: Aga tead, yks napakas passib meid!": SLEEP 4
          PRINT "Pille: Kes sa, napakas, oled? Fa'nn v6i?": SLEEP 2
           INPUT a$
          IF a$ = "No" OR a$ = "no" OR a$ = "Ei" OR a$ = "ei" THEN GOTO 660
          IF a$ = "Jah" OR a$ = "Ja" OR a$ = "Yes" OR a$ = "jah" THEN GOTO 655
          PRINT "Pille: Vist on fa'nn jah!": SLEEP 2
655       PRINT "Kalle: Aga fa'nnidega teeme me nii -": SLEEP 4
                GOSUB 250
            PRINT : PRINT "     KILL THE FAN !"
            SLEEP 4
           PRINT " All right, your computer is empty!"
           FOR k = 1 TO 10000
           NEXT k
           GOSUB 270
           GOTO 10000
660  PRINT "Kalle: Kes siis veel, mingi juhuslik v6i?"
       INPUT a$
       IF a$ = "No" OR a$ = "no" OR a$ = "Ei" OR a$ = "ei" THEN GOTO 680
       PRINT "Kalle: A'ra mo'ga mees!"
       DO
       LOOP UNTIL INKEY$ <> ""
       lookj = 2
       GOTO 100
680 PRINT "Pille: Politsest siis va'?": SLEEP 2
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
      
       INPUT a$
       IF a$ = "No" OR a$ = "no" OR a$ = "Ei" OR a$ = "ei" THEN GOTO 690
       IF a$ = "Jah" OR a$ = "Ja" OR a$ = "Yes" OR a$ = "jah" THEN GOTO 685
       PRINT "Kalle: Mul on tegelt suva, kes sa oled"
       DO
       LOOP UNTIL INKEY$ <> ""
       GOTO 500
685 PRINT "Kalle: Pille, a'ra ytle yhtki s6nakest !": SLEEP 4
      PRINT "Kalle: Teere! Teere!": SLEEP 4
        INPUT a$
        DO
        LOOP UNTIL INKEY$ <> ""
        lookj = 2
        GOTO 500
690 PRINT "Pille: Ahah, vihkaja jah?": SLEEP 2
        INPUT a$
    PRINT "Kalle: No tere armas kallis s6ber. V6ta teadmiseks, et me oleme ka.": SLEEP 5
    PRINT "Kalle: Me tegime oma programmi nimega RTH. Me saadame selle nyyd sulle ka.": SLEEP 6
    GOSUB 250
    rthc = 1
    PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
    COLOR 11
    PRINT "Sisesta yks k6ik millisel RadioTupsude lehekyljel SUURTE ta'htetega  kolm "
    PRINT " ja'rgmist ta'hte:   RTH   ja tunne mo'ksimisest r66mu."
         FOR k = 1 TO 320000
         NEXT k
        DO
        LOOP UNTIL INKEY$ <> ""
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
      
       GOTO 100
 

750 ' Send video
aeg = TIMER - StartTime
        IF aeg > 420 THEN GOTO 10000
       
        PRINT : PRINT : PRINT
        COLOR 15
      PRINT "Send to..."
      PRINT : PRINT " F1 - Back"
      PRINT " F2 - My computer"
      PRINT " F3 - My best friend"
        KEY 1, " Back"
        KEY 2, " My computer"
        KEY 3, " My best friend"
        KEY 4, " "
        KEY 5, " "
        KEY 6, " "
        KEY 7, " "
        KEY 8, " "
        KEY 9, " "
        KEY 10, ""
     PRINT : INPUT "Your choise: ", a$
      IF a$ = "My best friend" THEN GOTO 760
      IF a$ = "My computer" THEN GOTO 800
     GOTO 500
760
   SLEEP 2
   IF sober = 1 THEN GOTO 770
   IF sober = 2 THEN GOTO 780
   COLOR 10
   PRINT " Noo-Noo sending..."
   SLEEP 1
   COLOR 11
   PRINT " Blaa-Blaa sending..."
   SLEEP 1
   COLOR 12
   PRINT " Jenki sending..."
   SLEEP 1
   COLOR 15
   PRINT " >>> Your best friends computer is full of RadioTups !"
     DO
     LOOP UNTIL INKEY$ <> ""
     sober = 1
     GOTO 500
770 COLOR 15
    PRINT " >>> Sorry, your friends computers memory is full. Me must delete some files..."
    DO
    LOOP UNTIL INKEY$ <> ""
    sober = 2
780
    COLOR 15
    PRINT "Kahju kyll, aga su s6ber saadab sulle just e-maili!"
    SLEEP 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION: raadiotupsusuperfann!!!"
    PRINT "FROM: Goodfriend"
    PRINT "TO:", nimi$: PRINT
    PRINT "No kuradi segane inimene! Mis asja sa mulle siia saatsid?"
    PRINT "Mul juba olid k6ik RadioTupsude videod !!! Nyyd on neid "
    PRINT "kogu mu 25 GB va'ikene ma'lu ta'is !!! Sa oled Super Idioot!"
    PRINT "Sasa ka'sib nyyd need videod sulle saata."
    DO
    LOOP UNTIL INKEY$ <> ""
    GOTO 800
800     xxg = 2
        xg = 0
        dlalgaeg = TIMER
801     COLOR 15
        LOCATE 13, 21
        PRINT " ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ "
        LOCATE 14, 21
        PRINT " ³        Downloading videos...          ³ "
        LOCATE 15, 21
        PRINT " ³                                       ³ "
        LOCATE 16, 21
        PRINT " ³        °°°°°°°°°°°°°°°°°°°°°°         ³ "
        LOCATE 17, 21
        PRINT " ³               2KB/sec                 ³ "
        LOCATE 18, 21
        PRINT " ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ "
                
                DO
                 dlaeg = TIMER - dlalgaeg
                 xg = INT(dlaeg / 12)
                 IF xg > xxg AND downl > 2 THEN GOTO 810
                 IF xg > 23 THEN GOTO 820
                 LOCATE 16, 30
                  IF xg = 1 THEN PRINT "²"
                   IF xg = 2 THEN PRINT "²²"
                   IF xg = 3 THEN PRINT "²²²"
                   IF xg = 4 THEN PRINT "²²²²"
                   IF xg = 5 THEN PRINT "²²²²²"
                   IF xg = 6 THEN PRINT "²²²²²²"
                   IF xg = 7 THEN PRINT "²²²²²²²"
                   IF xg = 8 THEN PRINT "²²²²²²²²"
                    IF xg = 9 THEN PRINT "²²²²²²²²²"
                    IF xg = 10 THEN PRINT "²²²²²²²²²²"
                    IF xg = 11 THEN PRINT "²²²²²²²²²²²"
              IF xg = 12 THEN PRINT "²²²²²²²²²²²²"
              IF xg = 13 THEN PRINT "²²²²²²²²²²²²²"
              IF xg = 14 THEN PRINT "²²²²²²²²²²²²²²"
              IF xg = 15 THEN PRINT "²²²²²²²²²²²²²²²"
              IF xg = 16 THEN PRINT "²²²²²²²²²²²²²²²²"
              IF xg = 17 THEN PRINT "²²²²²²²²²²²²²²²²²"
              IF xg = 18 THEN PRINT "²²²²²²²²²²²²²²²²²²"
              IF xg = 19 THEN PRINT "²²²²²²²²²²²²²²²²²²²"
              IF xg = 20 THEN PRINT "²²²²²²²²²²²²²²²²²²²²"
              IF xg = 21 THEN PRINT "²²²²²²²²²²²²²²²²²²²²²"
              IF xg = 22 THEN PRINT "²²²²²²²²²²²²²²²²²²²²²²"
    aeg = TIMER - StartTime                         'Aja valem
    IF aeg > 420 THEN GOTO 10000
                
                 LOOP UNTIL INKEY$ <> ""
            COLOR 4
          PRINT : PRINT : PRINT
          PRINT "                        You cant to stop downloading !            "
          downl = downl + 1
          GOTO 801
810    COLOR 15
    CLS
    PRINT "L6puks ometi midagi toimub! Keegi saadab e-maili Torontost."
    SLEEP 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION: Help"
    PRINT "FROM: John"
    PRINT "TO:", nimi$: PRINT
    COLOR 1
    PRINT "Ma v6in su paa'sta piinadest! (Kui ise soovid muidugi.)"
    PRINT "Loe mu loba la'bi ja peksa <a> klahvi! Nii saad kyll Mission "
    PRINT "Failed'i , aga ma tean omadest kogemustest, et selle videoga "
    PRINT "pole kah midagi teha. (NB! Praegu ma aitan sind, kuid sina"
    PRINT "aita mindki m6nikord. Ma olen nimelt kandideerimas yhte ha'ki-"
    PRINT "organisatsiooni. Bye siis.)            Vajuta siis <a> !"
    downl = 0
    xxg = xxg + 2
   DO
        IF INKEY$ = "a" OR INKEY$ = "A" THEN GOTO 10000
        IF INKEY$ = " " THEN GOTO 801
   LOOP
    
       

820 PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
        COLOR 4
        PRINT " >>> Videod on kohal, aga vahepeal la'ksid kustutusele ja'rgmised failid:"
        SLEEP 8
          COLOR 15
          FILES "c:/"
          COLOR 4
          PRINT "HACKERSW.HAC"
          PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
           FOR k = 1 TO 50000
           NEXT k
          DO
          LOOP UNTIL INKEY$ <> ""
          GOTO 10000
830
    GOSUB 250
    PRINT : PRINT : PRINT
    PRINT "Press any key when ready !"
    DO
    LOOP UNTIL INKEY$ <> ""
      DO
        x = INT(RND * 641)
        y = INT(RND * 481)
        p = INT(RND * 16)
        PSET (x, y), p
     LOOP UNTIL INKEY$ <> ""
     videobonus = 1
     GOSUB 270
     GOTO 100
900 '************** JUTUKAS ****************
       lookb = lookb + 1
       
       CLS
       PRINT : PRINT : PRINT : PRINT
       COLOR 10
       PRINT "          Noo-Noo Jutukas"
       COLOR 11
       PRINT "          Blaa-Blaa Jutukas "
       COLOR 12
       PRINT "          Jenki Jutukas"
       PRINT : PRINT : PRINT : PRINT
       INPUT "Insert Your name >>> ", jnimi$
910       INPUT "Your text >>> ", a$
        IF a$ = "" OR a$ = "Back" THEN GOTO 915
        IF lookb > 3 THEN GOTO 920
        a = INT(RND * 10)
       IF a = 0 THEN PRINT "Kalle: Totaalne ajuvabadus!"
        IF a = 1 THEN PRINT "Kalle: Blaa' blaa' blaaa'!"
        IF a = 2 THEN PRINT "Kalle: No kuidas teie arust saavad kolm nukku nii tobud olla?"
        IF a = 3 THEN PRINT "SenjoritaF: They are best!"
         IF a = 4 THEN PRINT "ChinaMan: All people love You."
         IF a = 5 THEN PRINT "Pille: Koristage oma jura internetist!"
         IF a = 6 THEN PRINT "Pille: Te laulud on tyhjemad kui seitse tyhja kotti."
         IF a = 7 THEN PRINT "Pille: Poroloonist aju ja piiksumisest muusika."
         IF a = 8 THEN PRINT "Landerswer: Yeee! Im still waiting for Yours nexts CDs"
         IF a = 9 THEN PRINT "Andrez: Kui poleks teid, poleks 99 % Maailma elul m6tet."
        KEY 1, " Back": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        GOTO 910
915
           piltvah = 0
          
           DO
           y = INT(RND * 480)
        IF y < 21 THEN LINE (233, y)-(568, y), 1          'Sinine riba
        IF y > 20 AND y < 45 THEN LINE (0, y)-(640, y), 7
        IF y > 44 AND y < 49 THEN LINE (0, y)-(640, y), 0
        IF y > 48 AND y < 89 THEN LINE (0, y)-(596, y), 8       'Exploreri logost vasakul
        IF y > 88 AND y < 114 THEN LINE (0, y)-(640, y), 7
        IF y > 113 AND y < 117 THEN LINE (0, y)-(640, y), 0
        IF y > 116 AND y < 161 THEN LINE (0, y)-(613, y), 2
        IF y > 160 AND y < 335 THEN LINE (0, y)-(210, y), 2: LINE (500, y)-(613, y), 2
        IF y > 334 AND y < 435 THEN LINE (0, y)-(613, y), 2
              
              FOR i = 1 TO 60
              NEXT i
             piltvah = piltvah + 1
           LOOP UNTIL piltvah = 2300
       GOTO 100

920   PRINT "Pille: Kalle, kas ma siin v6in kysida yht ta'htsat asja?": SLEEP 4
      PRINT "Kalle: Miks mitte? Seda loevad ju vaid kirjaoskamatud RT fa'nnid.": SLEEP 5
      PRINT "Pille: Mul on kavas nende video segi ma'tsida.": SLEEP 4
      PRINT "Kalle: Normaale. Hakka aga peale. Olen 10 sekundi pa'rast kohal": SLEEP 6
         VideoAeg = TIMER
         lookb = -1
         lookj = 1
      GOTO 910

1200    '************ LOLL **********************
        xa = 110
        x = 110
        y = 150
        DO
         CIRCLE (x, y), 10, 15
         IF y < 240 THEN xa = xa + .2: y = y + 2: x = INT(xa)
         IF y > 239 AND y < 316 THEN xa = xa - .2: y = y + 2: x = INT(xa)
         IF y > 315 THEN x = x + 2
                FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL x > 195

        x = 250
        y = 215
      
        DO
         x = INT(250 + SQR(-67725 - y * y + 530 * y))
         y = y + 1
         CIRCLE (x, y), 10, 15
                FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL y > 314
       
        DO
        x = INT(250 - SQR(-67725 - y * y + 530 * y))
        y = y - 1
        CIRCLE (x, y), 10, 15
                FOR i = 1 TO 100
                NEXT i
        LOOP UNTIL y < 215
      

        x = 320
        xa = 320
        y = 150
        DO
         CIRCLE (x, y), 10, 15
         IF y < 240 THEN xa = xa + .2: y = y + 2: x = INT(xa)
         IF y > 239 AND y < 316 THEN xa = xa - .15: y = y + 2: x = INT(xa)
         IF y > 315 THEN x = x + 2
                FOR i = 1 TO 150
                NEXT i
        LOOP UNTIL x > 405

        x = 430
        xa = 430
        y = 150
        ya = 316
        DO
         CIRCLE (x, y), 10, 15
         IF y < 240 THEN xa = xa + .25: y = y + 2: x = INT(xa)
         IF y > 239 AND y < 316 THEN xa = xa - .2: y = y + 2: x = INT(xa)
         IF y > 315 THEN x = x + 2: ya = ya + .2: y = INT(ya)
                FOR i = 1 TO 200
                NEXT i
        LOOP UNTIL x > 540
       SLEEP 1
       lollaeg = TIMER
       LOCATE 23, 10
       COLOR 11
       PRINT "          H6hhahhahhahhahhaaa!"
       PRINT "  Ohhoo! Programm ju too'tab lausa va'ga ha'sti!"
       PRINT "Kohe vaatame, mis Bandiliikmete lk-l teha annab!"
       PRINT "Tule chekka ka, a'kki saame sinu k6vaketastki tyhjemaks!"

        RETURN



1000  'MISSION ACCOMPLISEHED***********

     CLS
     KEY OFF
     mission1 = punktid
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:       ", mission1
                PRINT "RADIOTUPSUDE KOHALE SAAMISE EEST:     10000"
     punktid = punktid + 10000
     IF videobonus > 0 THEN PRINT "VIDEO RIKKUMISE EEST:      5000 ": punktid = punktid + 5000
   IF bandbonus > 0 THEN PRINT "BANDI LK RIKKUMISE EEST:      3000": punktid = punktid + 3000
          IF s6ber > 0 THEN PRINT "S5BRALT VIDEOTE EEST:       200": punktid = punktid + 200
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):          ", INT(aeg)
     ajalisa = 600 - aeg
     timebonus = ajalisa * 5
     TIMER OFF
     PRINT "TIMEBONUS:          ", INT(timebonus)
     lopp = punktid + timebonus
     punktid = INT(lopp)
     COLOR 15
     PRINT : PRINT "KOKKU:", INT(lopp)
      DO
      LOOP UNTIL INKEY$ <> ""
      mission = 8
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
      
          RUN "miss8.bas"




