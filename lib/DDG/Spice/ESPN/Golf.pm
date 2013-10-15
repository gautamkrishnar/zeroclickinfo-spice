package DDG::Spice::ESPN::Golf;

use DDG::Spice;
use Time::localtime;

description "News and stats for golf players";
name "ESPN Golf";
primary_example_queries "Tiger Woods", "Jeff Maggert";
topics "entertainment", "special_interest";
category "reference";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/ESPN/Golf.pm";
attribution web => ['http://duckduckgo.com', 'DuckDuckGo'],
            twitter => ['http://twitter.com/duckduckgo', 'duckduckgo'];

my %leagues = (
    pga => {
        "jamie abbott" => 5549,
        "warren abery" => 1578,
        "blake adams" => 3227,
        "frank adams" => 1808,
        "alfredo adrian" => 5019,
        "felipe aguilar" => 4240,
        "jaco ahlers" => 4632,
        "antti ahokas" => 4242,
        "thomas aiken" => 1436,
        "steve allan" => 2,
        "robert allenby" => 5,
        "max alverio" => 4243,
        "stephen ames" => 7,
        "byeong-hun an" => 5285,
        "jc anderson" => 781,
        "josh anderson" => 4051,
        "mark anderson" => 1830,
        "fredrik andersson hed" => 872,
        "billy andrade" => 10,
        "kiradech aphibarnrat" => 5771,
        "stuart appleby" => 11,
        "philip archer" => 1437,
        "connor arendell" => 6781,
        "alvaro arizabaleta" => 6671,
        "michael arnaud" => 4412,
        "arjun atwal" => 824,
        "woody austin" => 14,
        "joakim backstrom" => 1439,
        "aaron baddeley" => 16,
        "sang-moon bae" => 4015,
        "ross bain" => 3458,
        "mark baker" => 3480,
        "matthew baldwin" => 5832,
        "danny balin" => 5670,
        "wade ballard" => 6604,
        "eric banks" => 9124,
        "michael barbosa" => 6006,
        "justin bardgett" => 5884,
        "benn barham" => 874,
        "kurt barnes" => 3647,
        "ricky barnes" => 801,
        "scott barr" => 1279,
        "brian bateman" => 690,
        "rich beem" => 29,
        "oliver bekker" => 5097,
        "charlie beljan" => 3777,
        "brad benjamin" => 5286,
        "warren bennett" => 864,
        "frank bensel" => 1322,
        "brett bergeron" => 7077,
        "gaganjeet bhullar" => 4309,
        "john bickerton" => 503,
        "tommy biershenk" => 761,
        "bryan bigley" => 5960,
        "kyle bilodeau" => 8998,
        "lucas bjerregaard" => 6054,
        "thomas bjorn" => 37,
        "jacques blaauw" => 4071,
        "chris black" => 6890,
        "bennett blakeman" => 5498,
        "adam bland" => 1688,
        "rich bland" => 1441,
        "kris blanks" => 1933,
        "ryan blaum" => 1935,
        "jonas blixt" => 3856,
        "rohan blizard" => 3818,
        "michael block" => 3312,
        "jason bohn" => 1173,
        "justin bolli" => 1354,
        "andre bossert" => 1514,
        "desvonde botes" => 1349,
        "marcus both" => 1442,
        "gregory bourdy" => 1443,
        "matt bova" => 7174,
        "steven bowditch" => 1112,
        "gary boyd" => 3820,
        "keegan bradley" => 4513,
        "michael bradley" => 49,
        "david bradshaw" => 3538,
        "paul bradshaw" => 1300,
        "christian brand" => 6146,
        "markus brier" => 506,
        "paul broadhurst" => 1280,
        "billy ray brown" => 57,
        "mark brown" => 4033,
        "mark brown" => 596,
        "scott brown" => 4591,
        "dan buchner" => 1982,
        "dave bunker" => 5583,
        "bob burns" => 61,
        "kevin burton" => 1145,
        "andrew butterfield" => 1445,
        "jonathan byrd" => 508,
        "david byrne" => 6743,
        "angel cabrera" => 65,
        "federico cabrera" => 4690,
        "rafael cabrera bello" => 4321,
        "angel cabrera jr" => 7128,
        "brian cairns" => 597,
        "jonathan caldwell" => 4077,
        "robert calvesbert" => 6672,
        "chad campbell" => 68,
        "michael campbell" => 67,
        "jorge campillo" => 4691,
        "todd camplin" => 5961,
        "rafael campos" => 3683,
        "juan campusano" => 6673,
        "alejandro canizares" => 1763,
        "emanuele canonica" => 69,
        "laurie canter" => 5550,
        "mike carbone" => 1735,
        "kevin carll" => 1355,
        "magnus carlsson" => 70,
        "mark carnevale" => 511,
        "david carr" => 1249,
        "kevin carrigan" => 9125,
        "brian carroll" => 3815,
        "david carter" => 1447,
        "pat carter" => 9033,
        "gregory casagranda" => 1363,
        "paul casey" => 72,
        "roberto castro" => 3740,
        "bud cauley" => 5338,
        "christian cevaer" => 1282,
        "greg chalmers" => 74,
        "kevin chappell" => 3857,
        "neil cheetham" => 516,
        "danny chia" => 1517,
        "k.j. choi" => 77,
        "s.s.p. chowrasia" => 3680,
        "gary christian" => 2044,
        "david chung" => 5903,
        "victor ciesielski" => 1739,
        "stewart cink" => 78,
        "gary clark" => 4323,
        "tim clark" => 81,
        "darren clarke" => 82,
        "will claxton" => 2053,
        "keith clearwater" => 83,
        "jose coceres" => 84,
        "george coetzee" => 5076,
        "robert coles" => 518,
        "wil collins" => 1408,
        "nicolas colsaerts" => 1283,
        "andrew coltart" => 485,
        "erik compton" => 646,
        "corey conners" => 9126,
        "donald constable" => 7078,
        "javier cordova" => 5885,
        "lee corfield" => 6043,
        "matthew cort" => 521,
        "chris couch" => 1177,
        "rob couture" => 6932,
        "ben crane" => 693,
        "jeffrey cranford" => 93,
        "brandon crick" => 5617,
        "andre cruse" => 1448,
        "nick cullen" => 5007,
        "josh cunliffe" => 3821,
        "jeff curl" => 2098,
        "ben curtis" => 523,
        "adilson da silva" => 3460,
        "john daly" => 97,
        "david damesworth" => 6688,
        "steve dartnall" => 3519,
        "olivier david" => 1449,
        "keenan davidse" => 4086,
        "rhys davies" => 3314,
        "brian davis" => 1049,
        "glen day" => 100,
        "jason day" => 1680,
        "brendon de jonge" => 1758,
        "eduardo de la riva" => 4399,
        "floris de vries" => 4832,
        "leigh deagan" => 4088,
        "graham delaet" => 2127,
        "robert-jan derksen" => 1083,
        "chris devlin" => 2140,
        "casey devoll" => 2122,
        "chris dimarco" => 105,
        "robert dinwiddie" => 1797,
        "david dixon" => 524,
        "christopher doak" => 4335,
        "matt dobyns" => 6899,
        "stephen dodd" => 1519,
        "andrew dodt" => 3639,
        "greg doherty" => 6933,
        "luke donald" => 601,
        "jamie donaldson" => 1451,
        "nick dougherty" => 1019,
        "dennis downs" => 6992,
        "bradley dredge" => 865,
        "james driscoll" => 109,
        "warrick druian" => 1452,
        "scott drummond" => 1284,
        "david drysdale" => 1453,
        "victor dubuisson" => 5402,
        "jason dufner" => 110,
        "eric dugas" => 3941,
        "ken duke" => 745,
        "alan dunbar" => 5615,
        "david duval" => 115,
        "simon dyson" => 525,
        "pelle edberg" => 3461,
        "johan edfors" => 1692,
        "matthew edwards" => 6009,
        "simon edwards" => 5555,
        "john ellis" => 1197,
        "ernie els" => 123,
        "jamie elson" => 3822,
        "harris english" => 5408,
        "sean english" => 1323,
        "scott erdmann" => 6158,
        "klas eriksson" => 1285,
        "martin erlandsson" => 1303,
        "derek ernst" => 7004,
        "bob estes" => 125,
        "joaquin estevez" => 5967,
        "gary evans" => 866,
        "matt every" => 1411,
        "nick faldo" => 127,
        "niclas fasth" => 526,
        "gonzalo fdez-castano" => 1455,
        "ben ferguson" => 132,
        "derik ferreira" => 4096,
        "jess ferrell" => 6847,
        "kenneth ferrie" => 1085,
        "darren fichardt" => 868,
        "jack fields" => 6832,
        "edward figueroa" => 6674,
        "tony finau" => 2230,
        "richard finch" => 1456,
        "todd fischer" => 135,
        "zack fischer" => 7158,
        "oliver fisher" => 4274,
        "ross fisher" => 3462,
        "caine fitzgerald" => 9097,
        "matthew fitzpatrick" => 9037,
        "steve flesch" => 136,
        "gavin flint" => 1511,
        "kyle flinton" => 3944,
        "oscar floren" => 1521,
        "martin flores" => 1637,
        "jonathan fly" => 6799,
        "grant forrest" => 6958,
        "alastair forsyth" => 1086,
        "mark foster" => 1087,
        "michael foster" => 4100,
        "rickie fowler" => 3702,
        "steven fox" => 7102,
        "garrett frank" => 2257,
        "marcus fraser" => 1457,
        "harrison frazar" => 144,
        "brad fritsch" => 147,
        "charles frost" => 4589,
        "michael frye" => 6900,
        "tadd fujikawa" => 1649,
        "yoshinori fujimoto" => 6845,
        "hiroyuki fujita" => 694,
        "jim furyk" => 153,
        "brian gaffney" => 4735,
        "tommy gainey" => 1798,
        "stephen gallacher" => 1412,
        "robert gamez" => 156,
        "chris gane" => 1459,
        "stephen gangluff" => 157,
        "jorge garcia" => 7125,
        "sergio garcia" => 158,
        "scott gardiner" => 3236,
        "tom gardner" => 6665,
        "alejandro garmendia" => 6670,
        "ignacio garrido" => 1088,
        "robert garrigus" => 1254,
        "robert gates" => 4590,
        "daniel gaunt" => 4706,
        "robert gaus" => 3514,
        "brian gay" => 159,
        "andrew georgiou" => 5121,
        "nicolas geyger" => 4105,
        "mitchell gillis" => 6606,
        "tom gillis" => 804,
        "david gleeson" => 1462,
        "michael gligic" => 4859,
        "lucas glover" => 676,
        "maximiliano godoy" => 6675,
        "fabian gomez" => 3375,
        "jean baptiste gonnet" => 3823,
        "andres gonzales" => 1748,
        "ricardo gonzalez" => 869,
        "retief goosen" => 167,
        "scott gordon" => 2316,
        "jeff gove" => 171,
        "estanislao goya" => 4244,
        "tano goya" => 4571,
        "paul goydos" => 173,
        "branden grace" => 4383,
        "austin graham" => 6666,
        "richard green" => 528,
        "greg gregory" => 679,
        "christo greyling" => 3606,
        "cody gribble" => 8971,
        "lanto griffin" => 5962,
        "glen griffith" => 7105,
        "david griffiths" => 1315,
        "emiliano grillo" => 5882,
        "adam groom" => 1463,
        "julien guerrier" => 1694,
        "vaita guillaume" => 6953,
        "austin gutgsell" => 6797,
        "luke guthrie" => 6066,
        "bill haas" => 774,
        "jerry haas" => 818,
        "brian hadley" => 2356,
        "joakim haeggman" => 1255,
        "james hahn" => 5025,
        "john hahn" => 8972,
        "anton haig" => 1779,
        "shun yat jason hak" => 4110,
        "paul haley ii" => 6607,
        "gavin hall" => 5663,
        "alex hamilton" => 4515,
        "hunter hamrick" => 6806,
        "chang-won han" => 5314,
        "seung-su han" => 1132,
        "kirk hanefeld" => 1153,
        "anders hansen" => 847,
        "soren hansen" => 532,
        "peter hanson" => 1414,
        "justin harding" => 5825,
        "brian harman" => 1225,
        "padraig harrington" => 186,
        "dudley hart" => 188,
        "andreas hartoe" => 6010,
        "tyrrell hatton" => 5553,
        "richard hattori" => 7096,
        "gregory havret" => 3477,
        "j.p. hayes" => 191,
        "thomas haylock" => 4711,
        "david hearn" => 928,
        "benjamin hebert" => 3824,
        "peter hedblom" => 1288,
        "wes heffernan" => 192,
        "mike heinen" => 193,
        "scott hend" => 1178,
        "scott henderson" => 535,
        "mike hendry" => 4252,
        "fredrik henge" => 1466,
        "nolan henke" => 194,
        "kip henley" => 828,
        "russell henley" => 5409,
        "j.j. henry" => 196,
        "mark hensby" => 197,
        "jim herman" => 3598,
        "eduardo herrera" => 697,
        "tim herron" => 198,
        "justin hicks" => 199,
        "david higgins" => 3464,
        "craig hinton" => 6044,
        "tetsuji hiratsuka" => 1179,
        "bo hoag" => 4780,
        "michael hoey" => 536,
        "charley hoffman" => 205,
        "morgan hoffmann" => 4781,
        "charlie holland" => 8935,
        "j.b. holmes" => 1067,
        "creighton honeck" => 6140,
        "keith horne" => 4311,
        "billy horschel" => 1651,
        "david horsey" => 3825,
        "beau hossler" => 6011,
        "garry houston" => 1468,
        "cole howard" => 6025,
        "jamie howarth" => 3826,
        "david howell" => 537,
        "charles howell iii" => 208,
        "mu hu" => 5322,
        "mark hubbard" => 9143,
        "bobby hudson" => 6002,
        "mackenzie hughes" => 6931,
        "jean hugo" => 538,
        "john huh" => 5797,
        "phillip hui" => 6687,
        "jeppe huldahl" => 4286,
        "shaaban hussin" => 5267,
        "david hutsell" => 790,
        "brian hutton" => 6087,
        "greg huxman" => 6060,
        "jay hwang" => 6646,
        "jung-gon hwang" => 6042,
        "kodai ichihara" => 4318,
        "steven ihm" => 9071,
        "yuta ikeda" => 4712,
        "mikko ilonen" => 213,
        "daniel im" => 3813,
        "trevor immelman" => 215,
        "paul imondi" => 6647,
        "makoto inoue" => 9075,
        "steve irwin" => 6012,
        "ryo ishikawa" => 4047,
        "hiroshi iwata" => 3827,
        "freddie jacobson" => 540,
        "raphael jacquelin" => 541,
        "thongchai jaidee" => 222,
        "faber jamerson" => 6156,
        "scott jamieson" => 3729,
        "steven jeffress" => 3656,
        "marty jertson" => 5769,
        "miguel jimenez" => 224,
        "brandt jobe" => 225,
        "per-ulrik johansson" => 226,
        "amandeep johl" => 1469,
        "dustin johnson" => 3448,
        "zach johnson" => 686,
        "andrew johnston" => 5838,
        "cameron johnston" => 4120,
        "brendan jones" => 1256,
        "matt jones" => 1367,
        "michael jonzon" => 4273,
        "pariya junhasavasdikul" => 5772,
        "erick justesen" => 4014,
        "james kamte" => 4261,
        "anthony kang" => 239,
        "shiv kapur" => 1583,
        "rikard karlberg" => 5349,
        "robert karlsson" => 544,
        "peter karmis" => 3806,
        "shingo katayama" => 240,
        "chris kaufman" => 6676,
        "jeremy kavanagh" => 4636,
        "hiroo kawai" => 6045,
        "martin kaymer" => 3670,
        "ian keenan" => 5828,
        "alpheus kelapile" => 4125,
        "jerry kelly" => 243,
        "troy kelly" => 1416,
        "brad kennedy" => 1470,
        "billy kennerly" => 6171,
        "darrell kestner" => 608,
        "simon khan" => 1471,
        "anthony kim" => 1745,
        "do-hoon kim" => 4503,
        "hank kim" => 832,
        "hyung-sung kim" => 4270,
        "kyung-tae kim" => 8858,
        "lion kim" => 5904,
        "michael kim" => 8974,
        "sunny kim" => 5034,
        "john kimbell" => 2545,
        "james kingston" => 878,
        "chris kirk" => 3449,
        "soren kjeldsen" => 547,
        "colt knost" => 1793,
        "jason knutzon" => 1055,
        "masanori kobayashi" => 7042,
        "satoshi kodaira" => 9076,
        "brooks koepka" => 6798,
        "ben kohles" => 6922,
        "jason kokrak" => 3317,
        "greg kraft" => 253,
        "jbe' kruger" => 4993,
        "jbe kruger" => 4993,
        "kenichi kuboya" => 850,
        "matt kuchar" => 257,
        "hank kuehne" => 791,
        "rick kulacz" => 3641,
        "chad kurmel" => 1773,
        "parker labarge" => 4822,
        "doug labelle ii" => 1057,
        "rob labritz" => 259,
        "maarten lafeber" => 1058,
        "anirban lahiri" => 4989,
        "martin laird" => 2571,
        "chih-bing lam" => 3466,
        "steven lam" => 4131,
        "derek lamely" => 1276,
        "joey lamielle" => 2574,
        "steve lamontagne" => 4409,
        "neal lancaster" => 260,
        "scott langley" => 5506,
        "jose manuel lara" => 1473,
        "brad lardon" => 701,
        "pablo larrazabal" => 3829,
        "mark laskey" => 5440,
        "paul lawrie" => 265,
        "peter lawrie" => 1474,
        "peter laws" => 1160,
        "steve lebrun" => 1381,
        "nelson lautaro ledesma" => 6677,
        "d.h. lee" => 3608,
        "d.h. lee" => 7107,
        "dong-hwan lee" => 3467,
        "han lee" => 741,
        "kyoung-hoon lee" => 7083,
        "richard lee" => 6644,
        "richard lee" => 3318,
        "steve lee" => 6013,
        "marc leishman" => 3351,
        "hugo leon" => 4138,
        "justin leonard" => 269,
        "michael letzig" => 2603,
        "thomas levet" => 551,
        "tom lewis" => 5868,
        "chao li" => 4427,
        "wc liang" => 5862,
        "wc liang" => 5209,
        "frank lickliter ii" => 272,
        "simon lilly" => 4596,
        "jose filipe lima" => 1417,
        "wen-tang lin" => 4232,
        "david lingmerth" => 5574,
        "luke list" => 1059,
        "sam little" => 1476,
        "darryn lloyd" => 4141,
        "brian locke" => 6014,
        "gary lockerbie" => 1696,
        "olafur loftsson" => 6172,
        "jonathan lomas" => 1418,
        "ken looper" => 8881,
        "davis love iii" => 278,
        "mitch lowe" => 279,
        "justin lower" => 9144,
        "randy lowry" => 4926,
        "shane lowry" => 4587,
        "jean-francois lucquin" => 1477,
        "joost luiten" => 4831,
        "bill lunde" => 1060,
        "jarrod lyle" => 1698,
        "david lynn" => 1092,
        "jimmy lytle" => 6235,
        "morten orum madsen" => 6628,
        "jeff maggert" => 283,
        "hunter mahan" => 957,
        "gregor main" => 4053,
        "john mallinger" => 1419,
        "mardan mamat" => 1522,
        "matteo manassero" => 4574,
        "michael maness" => 3542,
        "stuart manley" => 1478,
        "steve marino" => 1170,
        "martin maritz" => 1479,
        "prayad marksaeng" => 3687,
        "fran marrello" => 287,
        "andrew marshall" => 1523,
        "ian marshall" => 6824,
        "matt marshall" => 5657,
        "jeff martin" => 1335,
        "mike martin" => 1133,
        "pablo martin" => 1768,
        "daisuke maruyama" => 1207,
        "shigeki maruyama" => 289,
        "bobby massa" => 7163,
        "david mathis" => 1346,
        "michio matsumura" => 3830,
        "hideki matsuyama" => 5860,
        "troy matteson" => 1041,
        "andy matthews" => 3320,
        "llewellyn matthews" => 3469,
        "nyasha mauchaza" => 6173,
        "brian maurer" => 6051,
        "david may" => 6016,
        "gareth maybin" => 4268,
        "billy mayfair" => 296,
        "mike mccabe" => 3968,
        "brian mccann" => 1722,
        "maxwell mccardle" => 4151,
        "scott mccarron" => 298,
        "sean mccarty" => 1062,
        "robert mcclellan" => 2686,
        "mark mccormick" => 6800,
        "brent mccullough" => 4153,
        "graeme mcdowell" => 301,
        "cory mcelyea" => 8987,
        "richard mcevoy" => 1480,
        "paul mcginley" => 486,
        "william mcgirt" => 3532,
        "jim mcgovern" => 302,
        "ross mcgowan" => 3788,
        "damien mcgrane" => 3831,
        "doug mcguigan" => 1525,
        "francis mcguirk" => 6047,
        "rory mcilroy" => 3470,
        "parker mclachlin" => 1259,
        "andrew mclardy" => 303,
        "alan mclean" => 1481,
        "james mclean" => 4040,
        "john mclean" => 4154,
        "jay mcluen" => 2708,
        "david mcnabb" => 9098,
        "george mcneill" => 808,
        "matt mcquillan" => 2713,
        "spike mcroy" => 304,
        "prom meesawat" => 1780,
        "eric meierdierks" => 4955,
        "john merrick" => 1422,
        "kevin messer" => 5887,
        "shaun micheel" => 307,
        "alan michell" => 1482,
        "phil mickelson" => 308,
        "matthew millar" => 3674,
        "dennis miller" => 2730,
        "jordan mitchell" => 7037,
        "kelly mitchum" => 1024,
        "bryce molder" => 312,
        "edoardo molinari" => 1527,
        "francesco molinari" => 1483,
        "cesar monasterio" => 1484,
        "jonathan moore" => 1654,
        "patrick moore" => 971,
        "ryan moore" => 809,
        "titch moore" => 1485,
        "wilfredo morales" => 1028,
        "scott moran" => 3804,
        "john morgan" => 4042,
        "colm moriarty" => 4672,
        "dustin morris" => 6801,
        "matthew morris" => 1486,
        "james morrison" => 4566,
        "rob moss" => 1552,
        "jesse mueller" => 2767,
        "jimmy mullen" => 9036,
        "grant muller" => 1292,
        "muhammad munir" => 5022,
        "c muniyappa" => 4960,
        "alejandro munoz" => 6668,
        "artemio murakami" => 3789,
        "william murchison, iii" => 7086,
        "mark murless" => 4930,
        "gary murphy" => 1094,
        "george murray" => 4392,
        "grayson murray" => 5462,
        "tom murray" => 6236,
        "toshinori muto" => 1699,
        "david muttitt" => 9099,
        "kevin na" => 318,
        "chris naegel" => 8876,
        "jake narro" => 778,
        "savio nazareth" => 3955,
        "matthew nesmith" => 6954,
        "musolo nethunzwi" => 4165,
        "jack newman" => 4415,
        "john nieporte" => 4245,
        "chapchai nirat" => 3681,
        "daniel nisbet" => 4984,
        "seung-yul noh" => 4267,
        "seung-yul noh" => 5481,
        "alexander noren" => 3832,
        "henrik norlander" => 5573,
        "paul norris" => 2802,
        "glenn northcutt" => 6609,
        "mike northern" => 616,
        "brett nutt" => 324,
        "sean o'hair" => 1359,
        "sean ohair" => 1359,
        "steven o'hara" => 1488,
        "steven ohara" => 1488,
        "dean o'riley" => 4169,
        "dean oriley" => 4169,
        "arron oberholser" => 326,
        "dan obremski" => 9034,
        "john oda" => 6642,
        "koumei oda" => 4713,
        "joe ogilvie" => 327,
        "geoff ogilvy" => 328,
        "david oh" => 1204,
        "james oh" => 2816,
        "jose maria olazabal" => 329,
        "thorbjorn olesen" => 5140,
        "nate olivo" => 5973,
        "dan olsen" => 1182,
        "leif olson" => 1260,
        "eric onesi" => 5817,
        "louis oosthuizen" => 1293,
        "pedro oriol" => 4546,
        "gary orr" => 331,
        "garrett osborn" => 3594,
        "sam osborne" => 4890,
        "william osborne" => 6723,
        "hennie otto" => 1120,
        "jeff overton" => 1564,
        "greg owen" => 560,
        "juvic pagunsan" => 1755,
        "ryan palmer" => 962,
        "cheng tsung pan" => 6017,
        "joe panzeri" => 5920,
        "anthony paolucci" => 5865,
        "deane pappas" => 706,
        "jae-bum park" => 5363,
        "jin park" => 922,
        "unho park" => 1700,
        "jesper parnevik" => 336,
        "andrew parr" => 3445,
        "bryn parry" => 640,
        "john parry" => 4671,
        "steven parry" => 3478,
        "brett patterson" => 6018,
        "carl paulson" => 343,
        "jeff peck" => 2842,
        "eddie pepperell" => 6629,
        "cameron percy" => 1121,
        "pat perez" => 707,
        "rod perry" => 667,
        "justin peters" => 350,
        "carl pettersson" => 856,
        "chinnarat phadungsil" => 4447,
        "kevin phelan" => 5500,
        "scott piercy" => 1037,
        "d.a. points" => 1196,
        "ryan polzin" => 9100,
        "daniel popovic" => 7007,
        "garrick porteous" => 9028,
        "ted potter, jr." => 2883,
        "ian poulter" => 619,
        "kieran pratt" => 4176,
        "alistair presnell" => 3676,
        "anthony price" => 6903,
        "phillip price" => 359,
        "dicky pride" => 360,
        "chad proehl" => 3816,
        "cody proveaux" => 6802,
        "corey prugh" => 2890,
        "rhys pugh" => 6777,
        "ted purdy" => 997,
        "angelo que" => 3833,
        "julien quesne" => 4654,
        "brett quigley" => 363,
        "alvaro quiros" => 3668,
        "siddikur rahman" => 5773,
        "richie ramsay" => 1782,
        "jyoti randhawa" => 1096,
        "jeff rangel" => 6149,
        "nathaniel rau" => 9083,
        "chez reavie" => 769,
        "jake redman" => 4180,
        "patrick reed" => 5579,
        "zack reeves" => 6904,
        "jean-francois remesy" => 870,
        "cory renfrew" => 6935,
        "danny renfro" => 5888,
        "lee rhind" => 5735,
        "clark richardson" => 6003,
        "jerry richardson, jr." => 5681,
        "brian ricketts" => 6765,
        "tag ridings" => 982,
        "chris riley" => 372,
        "george riley" => 5889,
        "dustin risdon" => 2941,
        "robert rock" => 1494,
        "patrick rodgers" => 6825,
        "carlos rodiles" => 1495,
        "tyler rody" => 6955,
        "jason roets" => 5890,
        "jamie rogers" => 1278,
        "john rollins" => 709,
        "andres romero" => 1712,
        "martin rominger" => 1629,
        "jake roos" => 3280,
        "justin rose" => 569,
        "chris ross" => 5586,
        "marco ruiz" => 1123,
        "mike ruiz" => 1351,
        "brett rumford" => 570,
        "dave rummells" => 571,
        "raymond russell" => 882,
        "santiago russi" => 4184,
        "rory sabbatini" => 377,
        "david saka" => 5861,
        "elliot saltman" => 4714,
        "lloyd saltman" => 1531,
        "alberto sanchez" => 6803,
        "david sanchez" => 1714,
        "jarmo sandelin" => 378,
        "ricardo santos" => 4187,
        "jake sarnoff" => 6941,
        "reinier saxton" => 3834,
        "paul scaletta" => 5755,
        "wilhelm schauman" => 1532,
        "neil schietekat" => 5095,
        "phil schmitt" => 1394,
        "jason schmuhl" => 4213,
        "steve schneiter" => 626,
        "dave schultz" => 3247,
        "jesse schutte" => 6611,
        "charl schwartzel" => 1097,
        "zane scotland" => 4401,
        "adam scott" => 388,
        "john senden" => 710,
        "tom shadbolt" => 5850,
        "sean shahi" => 6612,
        "mark sheftic" => 4786,
        "nick sherwood" => 6804,
        "kevin shields" => 1168,
        "conrad shindler" => 7160,
        "wes short, jr." => 758,
        "marcel siem" => 1336,
        "mark silvers" => 5503,
        "webb simpson" => 1614,
        "jeev milkha singh" => 629,
        "vijay singh" => 392,
        "geoffrey sisk" => 1066,
        "joel sjoholm" => 4214,
        "patrik sjoland" => 490,
        "david skinns" => 3257,
        "lee slattery" => 1498,
        "cody slover" => 5923,
        "mike small" => 476,
        "andy smith" => 6048,
        "jesse smith" => 3704,
        "nathan smith" => 5035,
        "sam smith" => 5985,
        "stuart smith" => 1370,
        "brandt snedeker" => 1222,
        "joey snyder iii" => 1362,
        "pierre-henri soero" => 1425,
        "greg sonnier" => 963,
        "shunsuke sonoda" => 5556,
        "jeff sorenson" => 6157,
        "bob sowards" => 631,
        "jordan spieth" => 5467,
        "thammanoon sriroj" => 1534,
        "kevin stadler" => 860,
        "scott stallings" => 3378,
        "nathan stamey" => 4614,
        "jon stanley" => 4815,
        "kyle stanley" => 1778,
        "iain steel" => 943,
        "brendan steele" => 3596,
        "shawn stefani" => 4643,
        "henrik stenson" => 576,
        "richard sterne" => 1499,
        "tim stewart" => 4644,
        "darron stiles" => 984,
        "drew stoltz" => 3735,
        "john stoltz" => 7126,
        "graeme storm" => 1500,
        "ben stow" => 9038,
        "scott strange" => 3836,
        "robert streb" => 5619,
        "kevin streelman" => 1077,
        "paul streeter" => 5554,
        "steve stricker" => 412,
        "chris stroud" => 1352,
        "sven struver" => 1212,
        "brian stuard" => 3599,
        "miguel suarez" => 3684,
        "chip sullivan" => 414,
        "daniel summerhays" => 3452,
        "anthony summers" => 3662,
        "russell surber" => 3810,
        "steve surry" => 4715,
        "kevin sutherland" => 417,
        "adam svensson" => 9127,
        "matthew swan" => 6061,
        "miguel tabuena" => 6266,
        "tadahiro takayama" => 1536,
        "toru taniguchi" => 422,
        "hideto tanihara" => 1099,
        "nick taylor" => 3792,
        "vaughn taylor" => 1185,
        "josh teater" => 1568,
        "justin thomas" => 4848,
        "michael thompson" => 3688,
        "nicholas thompson" => 1586,
        "ryan thompson" => 4198,
        "marius thorp" => 1704,
        "guan tianlang" => 7165,
        "steven tiley" => 1307,
        "michael tobiason, jr." => 6020,
        "brendon todd" => 3454,
        "gator todd" => 6613,
        "derek tolan" => 819,
        "david toms" => 429,
        "aaron townsend" => 3663,
        "d.j. trahan" => 431,
        "martin trainer" => 6151,
        "manuel trappel" => 6201,
        "jose trauwitz" => 3631,
        "cameron tringale" => 4645,
        "ty tryon" => 434,
        "yoshinobu tsukada" => 1295,
        "miles tunnicliff" => 1296,
        "marc turnesa" => 3283,
        "yui ueda" => 8959,
        "peter uihlein" => 1674,
        "gus ulrich" => 3775,
        "inigo urquizu" => 5877,
        "jean van de velde" => 439,
        "bo van pelt" => 712,
        "mike van sickle" => 4709,
        "jaco van zyl" => 1762,
        "nicolas vanhootegem" => 583,
        "harold varner, iii" => 6991,
        "bradford vaughan" => 584,
        "grant veenstra" => 5051,
        "jhonattan vegas" => 1030,
        "scott verplank" => 441,
        "mads vibe-hastrup" => 1501,
        "camilo villegas" => 1264,
        "t.j. vogel" => 7127,
        "doug wade" => 6902,
        "john wade" => 1538,
        "johnson wagner" => 1265,
        "simon wakefield" => 1706,
        "andy walker" => 6667,
        "jimmy walker" => 446,
        "sam walker" => 1502,
        "anthony wall" => 1129,
        "darren wallace" => 1343,
        "paul waring" => 3474,
        "marc warren" => 4276,
        "aaron watkins" => 1379,
        "nick watney" => 1042,
        "bubba watson" => 780,
        "tom watson" => 449,
        "romain wattel" => 5538,
        "michael weaver" => 6711,
        "kane webber" => 1725,
        "steve webster" => 1539,
        "boo weekley" => 713,
        "mike weir" => 453,
        "ross wellington" => 1707,
        "liang wen-chong" => 1724,
        "leif westerberg" => 1503,
        "lee westwood" => 455,
        "riley wheeldon" => 8930,
        "peter whiteford" => 4381,
        "michael whitehead" => 6021,
        "tom whitehouse" => 892,
        "trent whitekiller" => 5669,
        "oliver whiteley" => 1504,
        "dale whitnell" => 4419,
        "charlie wi" => 925,
        "martin wiegele" => 3838,
        "bernd wiesberger" => 4317,
        "danny willett" => 4304,
        "andrew willey" => 1309,
        "chris williams" => 4756,
        "lee williams" => 1426,
        "peter williamson" => 7143,
        "cameron wilson" => 6805,
        "dean wilson" => 459,
        "mark wilson" => 479,
        "oliver wilson" => 1506,
        "thaworn wiratchant" => 1588,
        "casey wittenberg" => 822,
        "eugene wong" => 5587,
        "clayton wonnell" => 7151,
        "chris wood" => 3839,
        "tim wood" => 3645,
        "joshua wooding" => 5230,
        "gary woodland" => 3550,
        "tiger woods" => 462,
        "jay woodson" => 3957,
        "rick woodson" => 5987,
        "adam wootton" => 6049,
        "chase wright" => 7039,
        "gareth wright" => 6177,
        "michael wright" => 1708,
        "a-shun wu" => 4456,
        "wei-huang wu" => 4430,
        "y.e. yang" => 1350,
        "azuma yano" => 1749,
        "simon yates" => 1579,
        "chan yih-shin" => 4973,
        "hao yuan" => 4438,
        "fabrizio zanotti" => 1770,
        "andy zhang" => 6810,
        "lian-wei zhang" => 1223,
        "xin-jun zhang" => 4479,
        "matthew zions" => 3476,
        "ryan zylstra" => 9035,
    }
);

# Transform %leagues into player => { league => "league_name", id => id_number }
# to keep %leagues in a friendly/dry form, but keep fast lookups. This only
# executes once.
my %players = map {
    my $league = $_;
    map {
        $_ => {
            league => $league,
            id => $leagues{$league}{$_}
        }
    } keys $leagues{$_}
} keys %leagues;

triggers any => keys %players;

spice to => 'http://api.espn.com/v1/sports/golf/$1/$2/$3/$4'
            . '?enable=stats,competitors,roster,venues&$5='
            . (localtime->year() + 1900)
            . '&apikey={{ENV{DDG_SPICE_ESPN_APIKEY}}}&callback=$6';

spice from => '(.*)/(.*)/(.*)/(.*)/(.*)/(.*)';

handle query_lc => sub {
    return $players{$_}{league}, "athletes", $players{$_}{id}, "foo", "bar", "ddg_spice_espn";
};

1;
