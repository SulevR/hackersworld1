        '<Hacker's World> Mission 4
        'Produced by U&S Reisberg

        'Not for sale or distribution
        'Misuse is criminal

'NB! This game is joke, don't belive anything! All is out of normal & control


'TAHTSAD NUMBRID
'1      Mission4 algustext
'10     Peamenyy
'100    RussiaSoft home page
'200    RussiaSoft News
'250    Download
'280    E-mail
'330    Eksplorator
'350    Antivirus
'370    ScreenSaver
'420    Defragmentor
'423    Cracker
'700    Maffia
'800    Natasa Nukem
'900    Failed


'russiapage=1, kui page on formatitud
'maffia=1 siis on 10000 punkti 1x yle kantud, kui maffia=2 siis 2x jne.
'viirus=1, kui oled saand viirused
'format=1, kui oled 1 page formateerinud, format=2, kui oled 2 formateerinud jne
'mail=1, kui sul on oma e-maili aadress
'screensaver=1, kui sul on screensaver






19 TIMER OFF
'russpass$ = "russia"
aeg = 0
         help1 = 0
         
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY OFF

        OPEN "buffer.txt" FOR INPUT AS #4
        INPUT #4, nimi$, mission, punktid, pin, ok
        CLOSE #4


10     IF russiapage = 1 THEN GOTO 1000
       CLS
       SCREEN 12
11         COLOR 7
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
        KEY 3, " NewGame"
        KEY 4, " LoadGame"
        KEY 5, " SaveGame"
        KEY 6, " Introduction"
        KEY 7, " Credits"
        KEY 2, " Continue"
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
   IF x$ = "Quit" THEN GOTO 15
   IF x$ = "Continue" AND aeg < 4 THEN GOTO 1
   IF x$ = "Continue" THEN GOTO 100
   IF x$ = "SaveGame" THEN GOTO 20
   IF x$ = "LoadGame" THEN GOTO 20
   IF x$ = "NewGame" THEN GOTO 27
   IF x$ = "Introduction" THEN GOTO 30
   IF x$ = "Credits" THEN GOTO 30
   IF x$ = "Mission" THEN GOTO 50
   IF x$ = "Edetabel" THEN GOTO 46
15
        PRINT "                 Really wanna quit?"
        PRINT "                 <Esc>   - Cancel"
        PRINT "                 <Space> - Quit"
        FOR i = 1 TO 2000
        NEXT i
        DO
        IF INKEY$ = " " THEN GOTO 17
        IF INKEY$ = CHR$(27) THEN GOTO 10
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
        OPEN "mission4.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
       DO
       LOOP UNTIL INKEY$ <> ""
       GOTO 10

17  OPEN "buffer.txt" FOR OUTPUT AS #3
        PRINT #3, "Hacker"
         PRINT #3, 1
         PRINT #3, 0
         PRINT #3, 1234
         PRINT #3, 2
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
        GOTO 10

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
                    mission = 4
                    
    
     GOTO 10

25 'MMMMMMMAAAAAANgude loadimime LOADING
        COLOR 7
                INPUT "  Which You load (1-3 or Enter to cancel)>", y$
                IF y$ = "1" THEN mission = bbb: punktid = ccc
                IF y$ = "2" THEN mission = b: punktid = c
                 IF y$ = "3" THEN mission = bb: punktid = cc
                 OPEN "buffer.txt" FOR OUTPUT AS #3
                 PRINT #3, nimi$
                 PRINT #3, mission
                 PRINT #3, punktid
                    PRINT #3, ""
                    PRINT #3, ok
                 CLOSE #3
                 IF mission = 1 THEN RUN "miss1"
                 IF mission = 2 THEN RUN "miss2"
                 IF mission = 3 THEN RUN "miss3"
                 IF mission = 4 THEN RUN "miss4"
                 IF mission = 5 THEN RUN "miss5"
                 IF mission = 6 THEN RUN "miss6"
                 IF mission = 7 THEN RUN "miss7"
                 mission = 4
                
                 GOTO 10
46
  CLS
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
        GOTO 10
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
     GOTO 10
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
     GOTO 10
1       '*************************MISSION 4 ALGAB***************************

       
        russiapage = 0
        maffia = 0
        viirus = 0
        format = 0
        mail = 0
        russ = 0
        russpass$ = ""
        screensaver = 0
       
        CLS
        SCREEN 12
        KEY OFF
        COLOR 11
        OPEN "mission4.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
                DO
                IF INKEY$ = CHR$(27) THEN GOTO 10
                IF INKEY$ = CHR$(32) THEN TIMER ON: StartTime = TIMER: GOTO 100
                LOOP
        
       
100     '**********************RUSSIASOFT HOME PAGE*********************
        help = help + 1
        IF help > 72 THEN GOTO 3300
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

    
        KEY 1, " Back"
        KEY 2, " Info"
        KEY 3, " News"
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

                                 
        LOCATE 1, 1
        PRINT " Macrosoft Internet Explorer "
        LOCATE 7, 9
        PRINT "http://www.russiasoft/"

       
          LOCATE 12, 39: COLOR 4: PRINT "RussiaSoft Home Page"
          LOCATE 14, 36: COLOR 11: PRINT "There is something for You"
          LOCATE 15, 20: COLOR 15: PRINT "    This is RussiaSoft Home Page and it is very good"
          LOCATE 16, 22: PRINT "page, because there are very much different programs"
          LOCATE 17, 23: PRINT "you certainly like."
          LOCATE 18, 22: PRINT " And tomorrow is important day - our new operation"
          LOCATE 19, 26: PRINT "system <OKHO'98> will be presentated by us."
          LOCATE 20, 22: PRINT "This program is the best of RussiaSoft at the moment."
          LOCATE 21, 25: PRINT " And its very cheap - only 999999999 rubles."
          LOCATE 25, 33: COLOR 10: PRINT "F1 Back    F2 Info    F3 News"
       
        'x=116
        'x = 160
        'y = 436
        x = 1
        a = 0
        y = 4
        c = 10
        DO
          a = 0
          LINE (0, 276 - x)-(150, 276 + x), c, BF  '*
          LINE (0, 116)-(150, 276 - x), 0, BF
          LINE (0, 436)-(150, 276 + x), 0, BF
           IF y > 99 THEN y = 0
          x = INT(-.064 * y * y + 6.4 * y)                        '*
         
        
          IF x = 0 AND a = 0 AND c = 2 THEN c = 10: a = 1
          IF x = 0 AND c = 10 AND a = 0 THEN c = 2: a = 1
          y = y + 1
         
            'LOCATE 12, 3: PRINT "F1 Back   "
            'LOCATE 14, 3: PRINT "F2 Info"
            'LOCATE 16, 3: PRINT "F3 News"
        

          FOR i = 1 TO 800
                NEXT i
                LOOP UNTIL INKEY$ <> ""
              DO
              IF russpass$ <> "" THEN EXIT DO

              aeg = TIMER - StartTime
              a = RND * aeg
               ''* * * * * * * * * * * RUSSPASS$ * * * * * * * * * * * *
                russ = INT(RND * 5)
                        IF russ = 0 THEN russpass$ = "russia"
                        IF russ = 1 THEN russpass$ = "moskva"
                        IF russ = 2 THEN russpass$ = "sputnik"
                        IF russ = 3 THEN russpass$ = "viisnurk"
                        IF russ = 4 THEN russpass$ = "sirp"
                ''* * * * * * * * * * * * * * * * * * * * * * * * * * * *
              LOOP UNTIL russpass$ <> ""
    COLOR 15
    LOCATE 7, 31
    INPUT ">", a$
        IF a$ = "Back" THEN GOTO 10
        IF a$ = "Info" THEN GOTO 150
        IF a$ = "News" THEN GOTO 200
    GOTO 100

150     '***************************Info***************************
       
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
         help = help + 1
        CLS
        KEY OFF
        LOCATE 4, 1
        COLOR 10: PRINT "RussiaSoft information"
        COLOR 15: PRINT " We are the best of Russia's hackers and crackers etc."
        PRINT "   So, what else... RussiaSoft is the biggest firm in the world"
        PRINT " and our products are very good, really very very good!"
        PRINT "         History"
        PRINT "         Our big organisation was founded in 1769. The leader of"
        PRINT "         the firm was Mr.Ivan Julm. Since 1940 the group has been"
        PRINT "         led by Russia's best cracker Mr. Saint Mihhail."
        PRINT "         At the moment we have 46534563 employers over the world"
        PRINT "         in RussiaSoft and other corporations."
        PRINT "   So, read our web and you would know more about us!"
                DO
                LOOP UNTIL INKEY$ <> ""
        GOTO 100

200     '**************************RUSSIASOFT NEWS**********************
         help = help + 2
       
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
                KEY 1, " Back"
                KEY 2, " OKHA"
                KEY 3, " Eksplorator"
                KEY 4, " Antivirus"
                KEY 5, " Utilit6"
        KEY ON


        OPEN "russnews.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
      
      
      DO
      INPUT ">", a$
                IF a$ = "Back" THEN GOTO 100
                IF a$ = "OKHA" THEN minek$ = "OKHA": EXIT DO
                IF a$ = "Eksplorator" THEN minek$ = "Eksplorator": EXIT DO
                IF a$ = "Antivirus" THEN minek$ = "Antivirus": EXIT DO
                IF a$ = "Utilit6" THEN GOTO 400
      LOOP
250       '**********************DOWNLOADING*********************
          help = help + 1
       help1 = help1 + 1
       y = 0
       FOR i = 1 TO 240
        LINE (0, y)-(640, y), 0
        y = y + 2
                
       NEXT i
      

        dlalgaeg = TIMER
        LOCATE 13, 21
        PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
        LOCATE 14, 21
        PRINT "³        Downloading program...         ³"
        LOCATE 15, 21
        PRINT "³                                       ³"
        LOCATE 16, 21
        PRINT "³        °°°°°°°°°°°°°°°°°°°°°°         ³"
        LOCATE 17, 21
        PRINT "³               2KB/sec                 ³"
        LOCATE 18, 21
        PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
                x = 0
                DO
                 LOCATE 16, x + 30
                 dlaeg = TIMER - dlalgaeg
                 x = INT(dlaeg * 2)
                 PRINT "²"
                 IF x > 21 THEN GOTO 252
                LOOP UNTIL INKEY$ <> "": LOCATE 16, 30: PRINT "Downloading terminated": minek$ = "": SLEEP 1: GOTO 100
252 LOCATE 17, 27
          COLOR 12
          PRINT "Press any key to run program"
                DO
                LOOP UNTIL INKEY$ <> ""
        IF minek$ = "OKHA" THEN GOTO 300
        IF minek$ = "Eksplorator" THEN GOTO 330
        IF minek$ = "Antivirus" THEN GOTO 350
        IF minek$ = "Utilit6" THEN GOTO 400
        IF minek$ = "Screensaver" THEN GOTO 380
        IF minek$ = "Formator" THEN GOTO 490
        IF minek$ = "Defragmentor" THEN GOTO 420
        IF minek$ = "Cracker" THEN GOTO 423
        IF minek$ = "Natasanukem" THEN GOTO 800
     minek$ = ""

280     '*********************************E MAIL************************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
        IF help1 > 6 THEN GOTO 3000
       
        SCREEN 12
        CLS
        KEY 1, "Back"

        OPEN "mail.txt" FOR INPUT AS #1
        DO
        INPUT #1, rida$
        PRINT rida$
        LOOP UNTIL (EOF(1))
        CLOSE #1
               
                INPUT "Your First Name:", mailen$
                IF mailen$ = "Back" THEN GOTO 400
                INPUT "Your Second Name:", mailpn$
                INPUT "Your Address:", mailaadr$
                INPUT "Your Bank Account PIN:", mailpin$
                IF mailen$ = "" OR mailpn$ = "" OR mailpin$ = "" OR mailaadr$ = "" THEN PRINT "Sa pead ta'itma k6ik lahtrid!": INPUT a$: GOTO 280
               
                PRINT : PRINT "Your address will be UserName@KGB"
                INPUT "Input UserName:", mailnimi$
                PRINT "OK! Your new e-mail address is"
                COLOR 4
                LOCATE 14, 37
                PRINT mailnimi$, "@kgb"
                mail = 1
                COLOR 15
                        DO
                        LOOP UNTIL INKEY$ <> ""
                LOCATE 18, 1
                PRINT "                       Thank You for choosing RussiaSoft!"
                SLEEP 1.2
                GOTO 100




300  '****************************OKHA***************************
         help = help + 2
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
                KEY 1, " Start"

        KEY ON
        PAINT (1, 1), 9

        CIRCLE (200, 120), 40, 15
        PAINT (200, 120), 15
        CIRCLE (150, 115), 30, 15
        PAINT (150, 115), 15
        CIRCLE (260, 120), 32, 15
        PAINT (260, 120), 15

        CIRCLE (400, 300), 40, 15
        PAINT (400, 300), 15
        CIRCLE (350, 295), 30, 15
        PAINT (350, 295), 15
        CIRCLE (460, 300), 32, 15
        PAINT (460, 300), 15

        LOCATE 24, 34
        PRINT "O K H O    9 8"
        LOCATE 26, 25
        PRINT "RussiaSoft Internet Eksplorator"

        SLEEP 3
       

        CLS
        LINE (0, 445)-(640, 480), 7, BF
        LOCATE 29, 2
        PRINT " START "
        SLEEP 2
        LOCATE 2, 1
        PRINT " This program is not ready jet, but try it tomorrow!"
        INPUT b$
        GOTO 100

330    '****************************EKSPLORATOR************************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""

  
        KEY 1, " Exit"
      

        LINE (257, 0)-(568, 20), 12, BF            'Punane riba
        LINE (572, 0)-(592, 20), 15, BF         '"_" nupp
        LINE (596, 0)-(616, 20), 15, BF         '"kast"nupp
        LINE (620, 0)-(640, 20), 15, BF         '"X" nupp
        LINE (0, 24)-(640, 44), 7, BF
        LINE (0, 48)-(596, 88), 4, BF           'Exploratori logost vasakul
        LINE (600, 48)-(640, 88), 12, BF         'Exploratori logo
        LINE (0, 92)-(50, 112), 4, BF           'httpst vasakul
        LINE (590, 92)-(640, 112), 4, BF        'httpst paremal
        LINE (620, 116)-(640, 436), 7, BF       'ules-alla nool
        LINE (54, 92)-(586, 112), 7, BF         'http
        LINE (0, 440)-(640, 465), 4, BF         'all

        LINE (4, 52)-(36, 84), 7, B             'nupu-kastid
        LINE (40, 52)-(72, 84), 7, B
        LINE (76, 52)-(108, 84), 7, B
        LINE (112, 52)-(144, 84), 7, B
        LINE (148, 52)-(180, 84), 7, B
        LINE (184, 52)-(216, 84), 7, B
        KEY ON

                               
        LOCATE 1, 1
        PRINT " RussiaSoft Internet Explorator "
        LOCATE 7, 9
        PRINT "http://"

        LOCATE 7, 16
         DO
         INPUT ">", exit$
         IF exit$ = "Exit" THEN GOTO 100
         PRINT : PRINT : PRINT "Searching..."
         PLAY "mft150o1d4b4a8g8a4d4"
         PRINT "Sorry, I can't find this page, but You certainly want to see some other page!"
         LOOP
     GOTO 100

350     '*************************HOPTOH ANTIVIRUS*******************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        KEY OFF
        COLOR 15
        PRINT "HOPTOH ANTIVIRUS IS PROTECTING YOUR COMPUTER..."
        SLEEP 2
        PRINT : PRINT : PRINT "Today's report: 1 virus found"
        SLEEP 2
        PRINT "Removing virus"
        PRINT "What a hell is that!"
        PRINT "2 virus found"
        PRINT "Removing..."
        SLEEP 1
        PRINT "4 virus found"
        PRINT "Removing..."
        SLEEP 1
                x = 5
                DO
                x = x + 1
                PRINT "Viruses found:", x
                        FOR i = 1 TO 300
                        NEXT i
                LOOP UNTIL x > 100

       x = 3000
       y = .1
       DO
        SOUND x, y
        x = x - 100
        y = y + .015
       LOOP UNTIL x < 300
       PRINT "Not enough memory to run more viruses!"
       PRINT "Out of range /HOPTOH ANTIVIRUS CAN'T DO ANYTHING"
                DO
                LOOP UNTIL INKEY$ <> ""
       viirus = 1
       GOTO 100

380     '******************SCREEN SAVER******************************
         help = help + 3
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        screensaver = 1
        CLS
        SCREEN 12
        KEY OFF
        COLOR 14
        LOCATE 14, 30
        PRINT "RussiaSoft ScreenSaver"
        SLEEP 2
        CLS
        LOCATE 13, 28
        PRINT "Produced by Sulev Reisberg"
        LOCATE 14, 39
        PRINT "1998"
        LOCATE 15, 31
        PRINT "Some Rights Reserved"
        SLEEP 3
        CLS
                x = 6
                y = 2
                a = 0
                b = 0
              COLOR 4
                DO
                LOCATE y, x - 1
                PRINT "               "
                LOCATE y + 1, x + 1
                PRINT "RussiaSoft"
                LOCATE y + 2, x - 1
                PRINT "              "
                IF a = 0 THEN y = y + 1
                IF b = 0 THEN x = x + 2
                IF a = 1 THEN y = y - 1
                IF b = 1 THEN x = x - 2
                IF y > 24 THEN a = 1
                IF x > 65 THEN b = 1
                IF y < 5 THEN a = 0
                IF x < 7 THEN b = 0
                        FOR i = 1 TO 1500
                        NEXT i
                LOOP UNTIL INKEY$ <> ""
     CLS
     LOCATE 5, 34
     COLOR 14
     PRINT "THANX TO:"
        FOR i = 1 TO 40000
        NEXT i


   i = 0
     DO
        OPEN "scretanx.txt" FOR INPUT AS #1
         help = help + 1
                DO
                INPUT #1, rida$
                PRINT rida$
                LOOP UNTIL (EOF(1))
        CLOSE #1
        rida$ = ""
       i = i + 1
     LOOP UNTIL i > 8

     PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
    COLOR 15
    GOTO 100



400     '**************************UTILIT6**********************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
                KEY 1, " Back"
                KEY 2, " e-mail"
                KEY 3, " ScreenSaver"
                KEY 4, " Formator"
                KEY 5, " Defragmentor"
                KEY 6, " Cracker"
                KEY 7, " NatasaNukem"
        KEY ON


        OPEN "utilit.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
    
      DO
      INPUT ">", a$
                IF a$ = "Back" THEN GOTO 200
                IF a$ = "e-mail" THEN GOTO 280
                IF a$ = "ScreenSaver" THEN minek$ = "Screensaver": GOTO 250
                IF a$ = "Formator" THEN minek$ = "Formator": GOTO 250
                IF a$ = "Defragmentor" THEN minek$ = "Defragmentor": GOTO 250
                IF a$ = "Cracker" THEN minek$ = "Cracker": GOTO 250
                IF a$ = "NatasaNukem" THEN minek$ = "Natasanukem": GOTO 250
      LOOP



420     '****************************DEFRAGMENTOR***********************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        CLS
        SCREEN 12
        COLOR 15
        SLEEP 1
        x = 1
        y = 1
            DO
                LOCATE x, y
                PRINT CHR$(176)
                y = y + 1
                IF y > 80 THEN y = 1: x = x + 1
            LOOP UNTIL x > 25
          
            x = 1
            DO
            a = INT(RND * 25) + 1
            b = INT(RND * 80) + 1
            LOCATE a, b
            PRINT CHR$(177)
            x = x + 1
            LOOP UNTIL x > 500

  

       
        SLEEP 2
       
        CIRCLE (320, 220), 20, 0
        LINE (320, 200)-(320, 190), 0
                x = 5
                a = 0
                DO
                c = INT(RND * 15)
                LINE (320 - x, 197)-(320 + x, 183), c
                        FOR i = 1 TO 100
                        NEXT i
                x = x - 1
                IF x < -4 THEN x = 5
                a = a + 1
                LOOP UNTIL a > 500
       
        z = 1
        w = 1
      
        DO
        CIRCLE (320, 200), z, 0
        PAINT (320, 200), 0
        z = z + 3
        LOOP UNTIL z > 500
     
        z = 1
        DO
        CIRCLE (320, 200), z, 0
        PAINT (320, 200), 0
        z = z + 2
        LOOP UNTIL z > 500
    
        z = 1
        DO
        CIRCLE (320, 200), z, 0
        PAINT (320, 200), 0
        z = z + 1
        LOOP UNTIL z > 500

        z = 1
        DO
        CIRCLE (321, 200), z, 0
        PAINT (321, 200), 0
        z = z + 3
        LOOP UNTIL z > 500
    
        CLS
        PRINT "Sorry, some files have destroyed..."
        PRINT "Press any key"

                DO
                LOOP UNTIL INKEY$ <> ""

        GOTO 100

423     '*************************CODE CRACKER**************************
         help = help + 3
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        SCREEN 12
        CLS
        COLOR 15
        OPEN "cracker.txt" FOR INPUT AS #1
                DO
                INPUT #1, rida$
                PRINT rida$
                LOOP UNTIL (EOF(1))
             CLOSE #1

        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, " Exit"
        KEY 2, " Computer"
        KEY 3, " Tuudkool"
        KEY 4, " LinnapankPIN"
        KEY 5, " WebPages"

                       DO
                        INPUT a$
                        IF a$ = "Exit" THEN GOTO 100
                        IF a$ = "Computer" THEN GOTO 425
                        IF a$ = "Tuudkool" THEN GOTO 430
                        IF a$ = "LinnapankPIN" THEN GOTO 450
                        IF a$ = "WebPages" THEN GOTO 470
                        KEY ON
                       LOOP
425

430     PRINT "Hacking..."
        SLEEP 2
        PRINT "Too strong for me!"
                DO
                LOOP UNTIL INKEY$ <> ""
        GOTO 423

450     PRINT "Checking from http://linnapank.com/..."
        SLEEP 1
        PRINT "Web site found"
        PRINT "Connecting to Linnapank server2..."
                FOR i = 1 TO 60000
                NEXT i
        PRINT "Insert code: %RussiaSoft Code Cracker%"
        PRINT "Searching PIN's..."
        SLEEP 1
        PRINT "PIN register found..."
                FOR a = 1 TO 40000
                NEXT a
        PRINT "Password protected"
        PRINT "Insert client's first name, which PIN you want to know:"
        INPUT a$
        PRINT "Checking..."
        SLEEP 1
         help = help + .5
        PRINT : PRINT "Bad user"
        PRINT "Be sure that name is correct or in Linnapank is no alarm or all its"
        PRINT "security computers work"
        PRINT "      Press any key"
                DO
                LOOP UNTIL INKEY$ <> ""
        GOTO 423

470     KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, " Back"
        KEY ON
             
                PRINT "Insert URL:"
                INPUT "http://", url$
                        uu = 0
                        IF url$ = "www.russiasoft.com" THEN uu = 1
                        IF url$ = "www.tuudkool.ee" THEN uu = 2
                        IF url$ = "www.nasa.com" THEN uu = 3
                        IF url$ = "Back" THEN GOTO 423
                       
             
      
        KEY OFF
        PRINT "Page found"
        PRINT "Checking information..."
                SLEEP 1
        PRINT "Please wait..."
        SLEEP 1
        i = 0
        DO
                a = INT(100 * RND) + 30
                PRINT CHR$(a)
                i = i + 1
        LOOP UNTIL i > 30
        PRINT "Starting Code Cracker Accelerator..."
                x = 40
                y = .9
                DO
                  SOUND x, y
                  x = x + 40
                LOOP UNTIL x > 2000
        PRINT "Accelerator is ready to crack..."
        SLEEP 1
        IF uu = 2 OR uu = 3 THEN PRINT "Code is: noneidkoodeonmulkyllpaljuvaja": DO: LOOP UNTIL INKEY$ <> "": GOTO 423
        IF uu = 0 THEN PRINT "Code is: olenlolljaeioskakirjutada": DO: LOOP UNTIL INKEY$ <> "": GOTO 423
        PRINT "Russiasoft protection working..."
        SLEEP 1
        PRINT "Waiting for connecting with server..."
        PRINT "Done."
        PRINT "NOTICE: Anyway, you have 10 seconds to go when you have a code!"
        PRINT "Press any key"
                DO
                LOOP UNTIL INKEY$ <> ""
        PRINT "Code is:", russpass$
                IF codeaeg = 0 THEN codeaeg = 20
                i = 0
                DO
                PRINT codeaeg
                SOUND 1000, 1
                        FOR i = 1 TO 20000
                        NEXT i
                codeaeg = codeaeg - 1
                IF codeaeg = 0 THEN GOTO 700
                LOOP UNTIL INKEY$ <> ""
        GOTO 423
       
490     '**************************FORMATOR**************************
         help = help + 1
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
       
        KEY OFF
        CLS
        SCREEN 12
        COLOR 14
        LOCATE 14, 28
        PRINT "RussiaSoft Quick Formator"
        COLOR 4
                DO
                LOCATE 16, 20
                PRINT "I want to delete all your important files"
                        SLEEP 2
                LOCATE 16, 20
                PRINT "                                         "
                        SLEEP 1
                LOOP UNTIL INKEY$ <> ""
       
        CLS
        COLOR 15
        PRINT " Loading Quick Formator..."
        SLEEP 2
        PRINT " Done"

492             OPEN "formator.txt" FOR INPUT AS #1
                DO
                INPUT #1, rida$
                PRINT rida$
                LOOP UNTIL (EOF(1))
                CLOSE #1

        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
        KEY 1, " Back"
        KEY 2, " ThisGame"
        KEY 3, " Computer"
        KEY 4, " WebPages"

                       DO
                        INPUT a$
                        IF a$ = "Back" THEN GOTO 100
                        IF a$ = "ThisGame" THEN GOTO 493
                        IF a$ = "Computer" THEN GOTO 495
                        IF a$ = "WebPages" THEN GOTO 496
                        KEY ON
                       LOOP
493   help = help + 1
     CLS
        KEY OFF
        COLOR 12
        LOCATE 14, 26
        PRINT "Are you sure to format this game?"
        SOUND 1000, 2
                DO
                LOOP UNTIL INKEY$ <> ""
        LOCATE 15, 35
        COLOR 5
        PRINT "If OK then OK!"
        SLEEP 1
                x = 1
                DO
                LOCATE x, 1
                PRINT "                                                                            "
                COLOR 4
                PRINT "  ......... .... ......... .... ......... .... ......... .... ......... ...."
                COLOR 14
                PRINT "  '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^"
                COLOR 12
                PRINT "  inooiiooi liio inooiiooi liio inooiiooi liio inooiiooi liio inooiiooi liio"
                        FOR i = 1 TO 3500
                        NEXT i
                SOUND 2000, 1
                x = x + 1
                LOOP UNTIL x > 18
        COLOR 15
        PRINT : PRINT "                               Are you really sure?"
      
        INPUT a$
                IF a$ = "Yes" OR a$ = "yes" OR a$ = "Y" OR a$ = "y" OR a$ = "YES" OR a$ = "ye" OR a$ = "YE" OR a$ = "Ye" THEN GOTO 900
494     COLOR 15
        PRINT : PRINT "                                  I hate jokes!"
        SLEEP 2
        CLS
        GOTO 492
495     CLS
        KEY OFF
        COLOR 11
        i = 0
        DO
         PRINT "  Important file Important file Important file Important file Important file"
         i = i + 1
        LOOP UNTIL i > 25
                SLEEP 1
      
        x = 1
        DO
                LOCATE x, 1
                PRINT "                                                                            "
                COLOR 4
                PRINT "  ......... .... ......... .... ......... .... ......... .... ......... ...."
                COLOR 14
                PRINT "  '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^ '^^^''^^' '''^"
                COLOR 12
                PRINT "  inooiiooi liio inooiiooi liio inooiiooi liio inooiiooi liio inooiiooi liio"
                        FOR i = 1 TO 3500
                        NEXT i
                SOUND 2000, 1
                x = x + 1
                IF INKEY$ <> "" THEN PRINT "I hate jokes": GOTO 494
        help = help + 1

        LOOP UNTIL x > 24
        CLS
        COLOR 4
        LOCATE 14, 33
        PRINT "Reporting: Done"
        SLEEP 1
        GOTO 900
496     CLS
        COLOR 13
        LOCATE 14, 26
        PRINT "Insert URL which you don't like:"
        LOCATE 15, 28
        INPUT "http:// ", url$

            z = 0
            b = 1
            DO
                LOCATE 15, 36
                uuu = INT(RND * 1D+16 - b)
                PRINT uuu
                b = b + b * b / 8
                z = z + 1
                        FOR a = 1 TO 2000
                        NEXT a
            LOOP UNTIL b > 1D+16
               IF url$ = "www.russiasoft.com" OR url$ = "www.Russiasoft.com" OR url$ = "www.russiasoft.com/" OR url$ = "www.Russiasoft.com/" THEN GOTO 498
             
497         LOCATE 15, 36
            PRINT "0000000000000000000000000"
            LOCATE 16, 32
            PRINT "Web Page formated!"
            format = format + 1
            COLOR 15
            SLEEP 2
            CLS
            GOTO 492


              
498     PRINT "Password protected"
        INPUT "Insert password:", ruspass2$
                IF ruspass2$ = russpass$ THEN russiapage = 1: GOTO 497
       
      
        PRINT "Hey, what do you want to do?"
        SLEEP 1
        PRINT "Who the hell are you???"
        SLEEP 1
        GOTO 700



700     '**************************MAFFIA**********************
         help = help + 4
        aeg = TIMER - StartTime
        IF aeg > 600 THEN GOTO 900
       
        CLS
        SCREEN 12
        COLOR 15
        KEY 1, "": KEY 2, "": KEY 3, "": KEY 4, "": KEY 5, "": KEY 6, "": KEY 7, "": KEY 8, "": KEY 9, "": KEY 10, ""
                KEY 1, " Format"
                KEY 2, " Death"
                KEY 3, " I Pay"
        KEY ON
      
        OPEN "maffia.txt" FOR INPUT AS #2
        DO
        INPUT #2, rida$
        PRINT rida$
        LOOP UNTIL (EOF(2))
        CLOSE #2
  
      maffiakord = 1
      DO
      INPUT ">", a$
                IF a$ = "Format" THEN GOTO 730
                IF a$ = "Death" THEN GOTO 730
                IF a$ = "I Pay" THEN EXIT DO
      IF maffiakord = 1 THEN PRINT "Forget jokes, man!"
      IF maffiakord = 2 THEN PRINT "You have 1 choice to live!"
      IF maffiakord > 2 THEN GOTO 730
      maffiakord = maffiakord + 1
      LOOP

      PRINT "What????????"
      SLEEP 1
      PRINT "Are you sure, hehe?"
        FOR i = 1 TO 25000
        NEXT i
      PRINT "It takes you..."
      SLEEP 1
      PRINT "...mmm..."
        FOR i = 1 TO 20000
        NEXT i
      PRINT "100000 rubles"
        INPUT a$
      PRINT "KANNAN RAHA YLE...."
      SLEEP 1
        maffia = maffia + 1
      GOTO 100

730  CLS : LOCATE 14, 35: PRINT "That's all": SLEEP 1: GOTO 900

800     '***********************NATASA NUKEM***********************
         help = help + 1
        CLS
        SCREEN 12
        KEY OFF
        SLEEP 1

        c = 94    '******************Plahvatus**********************
        b = 115
        a = 320
        b = 240
    
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
                      FOR f = 1 TO 100
                      NEXT f
              NEXT i
     COLOR 12
     LOCATE 14, 33: PRINT "N"
         GOSUB 810
     LOCATE 14, 36: PRINT "A"
         GOSUB 810
     LOCATE 14, 39: PRINT "T"
         GOSUB 810
     LOCATE 14, 42: PRINT "A"
         GOSUB 810
     LOCATE 14, 45: PRINT "S"
         GOSUB 810
     LOCATE 14, 48: PRINT "A"
         GOSUB 810
     LOCATE 17, 34: PRINT "N"
         GOSUB 810
     LOCATE 17, 37: PRINT "U"
         GOSUB 810
     LOCATE 17, 40: PRINT "K"
         GOSUB 810
     LOCATE 17, 43: PRINT "E"
         GOSUB 810
     LOCATE 17, 46: PRINT "M"
         GOSUB 810
        SLEEP 1
      
        CLS          '********************SYSTEM REQUIREMENTS************
        COLOR 10
        LOCATE 13, 31: PRINT "SYSTEM REQUIREMENTS"
        LOCATE 15, 29: PRINT "Operating System: OKHO'95"
        LOCATE 16, 22: PRINT "CPU Type & Speed: 1 MHz 86086 processor"
        LOCATE 17, 25: PRINT "Hard Drive Specs: 1 GB free space"
        LOCATE 18, 32: PRINT "Memory: 64 MB RAM"
        LOCATE 19, 31: PRINT "10 MB PCI video card"
                DO
                LOOP UNTIL INKEY$ <> ""

        '*******************TESTING MEMORY*********************
        CLS
        COLOR 15
        PRINT "Loading video..."
        SLEEP 2
        PRINT "Not enough virtual memory."
        PRINT "Screen mode"
        PRINT
        PRINT "   2 x 2"
        PRINT " 100 x 100"
        PRINT " 640 x 480"
        COLOR 12
        PRINT "1280 x 960"
        SLEEP 1
         help = help + 1
        COLOR 15: PRINT "AutoDetecting..."
                FOR i = 1 TO 10000
                NEXT i
        LOCATE 7, 1: COLOR 12: PRINT " 640 x 480"
        COLOR 15: PRINT "1280 x 960"
                GOSUB 820
        LOCATE 6, 1: COLOR 12: PRINT " 100 x 100"
        COLOR 15: PRINT " 640 x 480"
                GOSUB 820
        LOCATE 5, 1: COLOR 12: PRINT "   2 x 2"
        COLOR 15: PRINT " 100 x 100"
               SLEEP 1
                CLS
        '************************NATASA GAME ALGAB*******************
     c1 = c2 = c3 = c4 = x = 0
     gameover = 0
     DO
     c1 = INT(RND * 15)
     c2 = INT(RND * 15)
     c3 = INT(RND * 15)
     c4 = INT(RND * 15)
     LINE (0, 0)-(319, 239), c1, BF
     LINE (320, 0)-(640, 239), c2, BF
     LINE (0, 240)-(319, 480), c3, BF
     LINE (320, 240)-(640, 480), c4, BF
                FOR i = 1 TO 7500
                NEXT i
     x = x + 1
     IF x > 39 THEN gameover = 1: EXIT DO
     LOOP UNTIL INKEY$ <> ""
     IF gameover = 0 THEN gameover = 2
                FOR i = 1 TO 10
                SOUND 100, 1
                        FOR a = 1 TO 5000
                        NEXT a
                NEXT i
     LOCATE 15, 35
     COLOR 12
     PRINT "GAME OVER, MAN!"
     LOCATE 17, 33
     PRINT "You are loser, man!"
     LOCATE 18, 32: IF gameover = 1 THEN PRINT "Why didn't you shoot?"
     LOCATE 18, 29: IF gameover = 2 THEN PRINT "He was your own man, idiot!"
        DO
        LOOP UNTIL INKEY$ <> ""
     GOTO 100

810     SOUND 150, 1
        FOR i = 1 TO 10000
        NEXT i
        RETURN
820     FOR i = 1 TO 20000
        NEXT i
        RETURN



900     '******************************FAILED*************************
        CLS
                        COLOR 4
                        KEY OFF
                        LOCATE 11, 32
                        PRINT "MISSION FAILED"
                        COLOR 11
                        LOCATE 13, 1
                        SLEEP 3
                        PRINT TAB(12); "Nagu sa isegi na'ed ei 6nnestu sul mitte midagi. Ei saand "
                        SLEEP 3
                        PRINT TAB(12); "sa isegi nende imikuile m6eldud Missionidega hakkama"
                        SLEEP 2
                        PRINT TAB(12); "Ta'ielikust sitast lollpea oled, muideks. "
                        SLEEP 1
                        LOCATE 15, 1
                        PRINT TAB(12); "Tarkust jaab sul natuke va'heks"
        SLEEP 3
        PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT TAB(34); ">>> Click any key"
        DO
        LOOP UNTIL INKEY$ <> ""
        TIMER OFF
        aeg = 0
         help = help + 5
        GOTO 19
        
3000    KEY OFF
        CLS
        COLOR 15
    PRINT "Just praegu tuli e-mail kelleltki Moskvast, checki seda!"
    SLEEP 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION: Help"
    PRINT "FROM: John"
    PRINT "TO:", nimi$: PRINT
    COLOR 9
    PRINT "   Kas sind ei ole juba a'ra tyydanud see igav programmide"
    PRINT "downloadimise ajal seisva pildi vaatamine? Mul on sulle yks"
    PRINT "hea 6petus: V6ta ette utiliidid ja kl6psuta seal F3 - lisaks"
    PRINT "graafikale saad missioni ta'itmise korral ka 1000 punga oma"
    PRINT "kontole lisaks. Ciao siis"
    help1 = 1
    COLOR 15
    DO
    LOOP UNTIL INKEY$ <> ""
    CLS
    GOTO 100
3300        CLS
        COLOR 15
    PRINT "Just praegu tuli e-mail kelleltki Vietnamist, checki seda!"
    SLEEP 2
    PRINT TIME$
    PRINT DATE$
    PRINT "DESCRIPTION: Help"
    PRINT "FROM: John"
    PRINT "TO:", nimi$: PRINT
    COLOR 9
    PRINT "   No oled ikka higistanud kyll juba, v6i mis?"
    PRINT " Nyyd ole aga tubli ja vaata oma ekraanivahtimisest vaevatud"
    PRINT " silmakestega minu saladust. Sind v6ivad aidata vaid 3 asja:"
    PRINT " 2 utiliidi programmi, www.russiasoft.com .Aga loomulikult ka "
    PRINT " sinu plahvatav protsessor, mis sinu vihaseid ka'eloo'ke ei"
    PRINT " talugi."
   
    PRINT " Ciao siis."
    help = 1
    COLOR 15
    DO
    LOOP UNTIL INKEY$ <> ""
    CLS
    GOTO 100




1000 PRINT "P'ris lopp, punktid"
     CLS
     COLOR 4
     PRINT : PRINT : PRINT : PRINT TAB(16); "Mission Accomplished"
     COLOR 7
     PRINT "Eelmisest missionist:       ", punktid
     punktid = punktid + 10000
     PRINT "Korraliku t66 eest:                        10000"
     IF maffia <> 0 THEN miinuspunktid = -2000 * maffia
     IF maffia <> 0 THEN PRINT "Maffiaga tegemist tegemise eest:        ", miinuspunktid: punktid = punktid + miinuspunktid
     IF mail = 1 THEN punktid = punktid + 1000: PRINT "Korraliku e-maili aadressi eest           +1000"
     IF viirus = 1 THEN punktid = punktid - 1000: PRINT "Viiruste saamise eest                 -1000"
     IF format <> 0 THEN punktid = punktid + format * 300: PRINT "Veebilehtede formateerimise eest", format * 300
     IF screensaver = 1 THEN punktid = punktid + 1000: PRINT "ScreenSaveri eest                      +1000"
     aeg = TIMER - StartTime 'Aja valem
     PRINT "AEG (sek):                      ", INT(aeg)
     ajalisa = 600 - aeg
     timebonus = ajalisa * 20
     TIMER OFF
     PRINT "TIMEBONUS:                  ", INT(timebonus)
     lopp = punktid + timebonus
     punktid = INT(lopp)
     COLOR 15
     PRINT : PRINT "KOKKU:", punktid
      mission = 5
      KEY OFF
       
   
     OPEN "buffer.txt" FOR OUTPUT AS #1
            PRINT #1, nimi$
            PRINT #1, mission
            PRINT #1, punktid
            PRINT #1, pin
            PRINT #1, ok
     CLOSE #1
   
    TIMER OFF
       
        DO
        LOOP UNTIL INKEY$ <> ""
     COLOR 15
     PRINT : PRINT
     PRINT "          Good work, guy, we love You! You give us back our work"
     PRINT "         and our salary. We and our families are thankful to You! "
     PRINT "          May-be Your work is criminal, but this is righteous for"
     PRINT "     thousands of people - they are we."
     PRINT "            If You ever need something, just call us!"
     PRINT "            We help You everywhere and everytime"
     PRINT
     PRINT "        Thank You for all:"
     PRINT "                    Macrosoft Corporation"
                SLEEP 30
                IF INKEY$ = "" THEN PRINT "Good joke, Michael! Let's waste him!": PRINT "I have called police jet!"
        DO
        LOOP UNTIL INKEY$ <> ""
                
     '*********************************************************************
     '*********************************************************************
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
        
        RUN "miss5.bas"

