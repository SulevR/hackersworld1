# Hackers World 1

See repositoorium sisaldab arvutimängu "Hackers World" mängude sarja 1. osa lähtekoodi. Mäng on tehtud Sulev ja Urmas Reisbergi poolt 1998. aastal.

Mängule tehtud järg "Hackers Worldi II" on saadaval [eraldi repos](https://github.com/SulevR/hackersworld2).

## Mängu reklaam

Soovid midagi uut ja huvitavat?

Tahad lahendada probleeme jõu ja arukusega?

Tahad mängimisel kasutada ka mõistust?

SOOVID, ET ELU OLEKS VEELGI KIIREM?

OTSID KÕIKJALT RISKI JA OHTUSID?

Oled nõus pingutama oma elu suurima eesmärgi nimel?

SIIN ON KIIREIM VÕIMALUS!!!!

VEENDU ISE!

NAUDI EESTLASTE TEHTUD MÄNGU JA SA EI KAHETSE IIAL!

## Mängu põhimõte

Sina pead enamjaolt vajutama F-nuppe (F1, F2, F3 jne) (Macis tuleb seda teha koos Fn-klahviga) ja peale F-i ENTERit (st F-d on vastusevariandid). Aga muidu ei tasu eriti närviline olla, eriti mitte nuppe taguda!!!!!!

Ja teiseks veel see, et kui midagi küsitaxe, siis vastake küsimusele, mitte ärge toppige teisi ebanormaalseid sõnu!

Vabandame ebanormaalsuste pärast!

## Eeltingimus mängimiseks

Mängu on lubatud mängida üksnes juhul, kui oled nõus järgnevaga:

*Olen teadlik, et Hackers World on 100% väljamõeldis ja selles ei ole kujutatud ühtki reaalselt tegutsevat isikut ega ettevõtet. Mitte ühtki mängus leiduvat sõna ega lauset ei tule võtta tõena, solvamise ega pahatahtliku mahategemisena. Luban, et ei esita mängu autoritele mingeid pretensioone ega kaebusi. Juhul kui mäng mulle ei meeldi, on mul võimalus seda mitte mängida.*

*Hackers World on arvutimäng, mis on levitatav täiesti tasuta. Mängu eest tasu küsimine on ebaseaduslik.*

## Kuidas mängida

Mäng on loodud DOS keskkonna jaoks, täpsemalt QBasic programmeerimiskeeles, arvestades omaaegseid arvutite jõudlusi (Pentium 166MMX), nii et tänapäeval on võimalik seda mängida mõnda DOS-emulaatorit, näiteks [DOSBox](https://www.dosbox.com), kasutades. Lühike juhis selleks on järgmine:

1. Tõmba siinne repo endale arvutisse, näiteks kausta `"~/Downloads/hackers world 2"`. Selleks vajuta githubis rohelist nuppu "Code" ja vali "Download ZIP".
2. Paigalda endale [DOSBox](https://www.dosbox.com)
3. Käivita DOSBox
4. Mounti see "Hackers world" mängu kaust DOSBoxis külge kui kataloog "C:\". Selleks kirjuta DOSBox konsoolis: `mount c "~/Downloads/hackers world 1"` (jah, me teame, et seal aknas ei tööta keerulised märgid samade klahvide alt, mis muidu - tuleb katsetada. Kui viitsid rohkem jännata, siis [https://www.dosbox.com/DOSBoxManual.html#KeyboardLayout](https://www.dosbox.com/DOSBoxManual.html#KeyboardLayout) peal on õpetus, kuidas saada teisi klaviatuuri paigutusi tööle). Ilmuma peaks teade stiilis `Drive C is mounted as local directory /.../Downloads/hackers world 1/`
5. Navigeeri DOSBox konsoolil C-kettale: `C:\`
6. Kui paned nüüd DOSBox konsoolil `dir`, peaks ta näitama vastava kausta sisu, mis näeb välja umbes selline:
```
	.         <DIR>
	..        <DIR>
	MISSION5   TXT
	MISSIUN6   TXT
	QBASIC     EXE
	jne
```
7. Käivita mäng, trükkides DOSBox konsoolile `qbasic` ja vajuta ENTER.
8. Qbasicu avaekraanist saad lahti, kui vajutad uuesti ENTER
9. Vali hiirega Qbasicu menüüst `"File" > "Load"` ja seejärel fail `"HACKERSW.HAC"`
10. Mängu käivitamiseks vajuta `F5` (Macis `Fn+F5`)

### Mõned DOSBox trikid ja nipid

* Täisekraani režiimi ja tagasi saad nupukombinatsiooniga ALT+ENTER (Macis Option+ENTER)
* Protsessori emulaator ei pruugi töötada iga koha peal päris sama kiiresti kui peaks - siis saad kiirust juurde panna või vähemaks võtta, kasutades lühiklahve CTRL+F11 ja CTRL+F12 (Macis Fn+Control+F11 ja Fn+Control+F12)
* Muid DOSBox lühiklahve vaata [https://www.dosbox.com/wiki/Special_Keys](https://www.dosbox.com/wiki/Special_Keys)

## Kui jääd mõne missiooniga jänni

Eks fännid aeg-ajalt meile ikka kirjutasid ja palusid vihjeid, kuidas mängus edasi pääseda. Kui sinulgi tekib sama probleem, siis vaata vihjeid siit.

Hackers World 1 missioonide vihjed:

* [Missioon 1](vihjed/abi_hw1_1.md)
* [Missioon 2](vihjed/abi_hw1_2.md)
* [Missioon 3](vihjed/abi_hw1_3.md)
* [Missioon 4](vihjed/abi_hw1_4.md)
* [Missioon 6](vihjed/abi_hw1_6.md)
* [Missioon 7](vihjed/abi_hw1_7.md)
