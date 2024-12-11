








                                  'THE END'








CLS
SCREEN 12
SLEEP 1
 OPEN "buffer.txt" FOR INPUT AS #1
  INPUT #1, nimi$
  INPUT #1, punktid
  INPUT #1, mission
  INPUT #1, pin
  INPUT #1, ok
  CLOSE #1
 IF ok <> 0 THEN GOTO 400
 COLOR 4
 LOCATE 10, 32
 PRINT "GAME ACCOMPLISHED"
  DO
  LOOP UNTIL INKEY$ <> ""
 CLS
 COLOR 15
 PRINT " Uaaou! Guud kongratsiolasions! Aga nyyd loe e-maili:"
 PRINT
 PRINT DATE$
 PRINT TIME$
 PRINT "Description: LOE NYYD ! ! !"
 PRINT "To: ", nimi$
 PRINT
 COLOR 11
 PRINT " Tervist. Suured 6nnesoovid Hackers Worldi Missionite edutu ta'itmise"
 PRINT "eest. Me oleme siin juba mitu korda arytanud sinu liikmeksv6tmist, kus"
 PRINT "juures iga kord on su pooldajate arv suurenenud. Eriti oleme aruteludel"
 PRINT "arvestanud sinu synnipa'rast v6imete puudumist. Ka meie organisatsiooni"
 PRINT "on viimasel ajal hakanud arvestama va'hemuste vajadust. Hetk tagasi sel-"
 PRINT "gusitki uute liikmete nimed. Paraku ja'id sa seekord ta'pselt nimekirjast"
 PRINT "va'lja... Yks hetk !"
  FOR k = 1 TO 50000
  NEXT k
  DO
  LOOP UNTIL INKEY$ <> ""
 CLS
 COLOR 15
 PRINT " Kuule mees, mis kirjavahetust sa siin pead?"
 PRINT
 PRINT DATE$
 PRINT TIME$
 PRINT "Description: LOE NYYD ! ! !"
 PRINT "To: ", nimi$
 PRINT
 COLOR 11
 PRINT " Oo! Tead mis? Selgus, et me vanim liige andis oma otsad ja nyyd v6tsime me"
 PRINT "veel yhe liikme. Arva a'ra, kes see on? Sa peaksid teda tundma. ta nimi on"
 PRINT "John, ha'kkerite maailmas tegutseb varjunime Help all. Checkcasime, et ta on"
 PRINT "ka sinule teteid saatnud. Niisiis ja'id seekord me nimekirjadest va'lja, ent"
 PRINT "kui meil m6ni mees ja'lle kypsema peaks, siis meilime sulle !"
  FOR k = 1 TO 50000
  NEXT k
  DO
  LOOP UNTIL INKEY$ <> ""
  GOTO 200
100 SLEEP 1
        IF INKEY$ <> "" THEN SYSTEM
      RETURN
200 CLS
 COLOR 14
 LOCATE 28, 1
 PRINT "                              HACKERS WORLD    v 174 ": GOSUB 100
  PRINT : GOSUB 100
 COLOR 11
 PRINT "                 Produced by :": GOSUB 100
 PRINT : GOSUB 100
 PRINT "                        Sulev Reisberg": GOSUB 100
 PRINT "                        Urmas Reisberg": GOSUB 100
 PRINT "                                in 1998": GOSUB 100
 PRINT : GOSUB 100
 COLOR 7
 PRINT "          Ha'kkerid elavad igavesti, olenemata nende surelikkusest.": GOSUB 100
 PRINT "       Ha'kkerid on ainus j6ud, mis v6imaldab meil v6ita Suuri Vaenlasi,": GOSUB 100
 PRINT "       raa'gib Independence Day varjatud m6te. ": GOSUB 100
 PRINT "       Neil on 6igus.": GOSUB 100
 PRINT : GOSUB 100
 PRINT : GOSUB 100
 PRINT : GOSUB 100
 PRINT "       Nii palju on muutunud, alates sellest hetkest, mil sa esimest korda": GOSUB 100
 PRINT "       sisestasid oma nime Hackers Worldi sisenedes, ja l6petades selle ": GOSUB 100
 PRINT "       hetkega, mil sa no'rdinult igaveseks oma k6vakettalt kustutad selle": GOSUB 100
 PRINT "       mitmeid World Best Game tiitleid v6itnud ma'ngu.": GOSUB 100
  PRINT : GOSUB 100
  PRINT : GOSUB 100
 PRINT : GOSUB 100
 PRINT "            A'ra ole loll, mees! Seda ma'ngu on v6imatu kustutada": GOSUB 100
 PRINT : GOSUB 100
 PRINT : GOSUB 100
  DO
  LOOP UNTIL INKEY$ <> ""
  SYSTEM
400 CLS
 COLOR 15
 PRINT " Ohhoo. Ha'ki organisatsioonist tuleb teade."
 PRINT
 PRINT DATE$
 PRINT TIME$
 PRINT "Description: SA OLED KOBA"
 PRINT "To: ", nimi$
 PRINT
 COLOR 11
 PRINT " Selgus, et sa oled kasutanud mingisuguseid koode. Sorri, aga sihukesi sobi "
 PRINT "sobitegijaid me oma organisatsiooni ei vaja. Nii, et see on su oma viga. Kui"
 PRINT "sul 6nnestuks nyyd 10 minuti jooksul k6ik Missionid ka ausal teel la'bi teha,"
 PRINT "siis me kaalume veel sinugi liikmeks v6tmist. Kiirusta, pahara'tt."
 DO
 LOOP UNTIL INKEY$ <> ""
 RUN "miss1.bas"

