-- Localization for German Clients.
if GetLocale() ~= "deDE" then return; end
local L = AllTheThings.L;

L.CUSTOM_DIFFICULTIES[-1] = "Schlachtzugbrowser (5.4)";
L.CUSTOM_DIFFICULTIES[-2] = "Flexible (5.4)";
L.CUSTOM_DIFFICULTIES[-3] = "Normal (5.4)";
L.CUSTOM_DIFFICULTIES[-4] = "Heroisch (5.4)";

-- TODO
L.SAVED_TO_DJ_INSTANCES["Violette Festung"] = "Die Violette Festung";
L.SAVED_TO_DJ_INSTANCES["Geschmolzener Kern"] = "Der Geschmolzene Kern";
L.SAVED_TO_DJ_INSTANCES["Echsenkessel: Höhle des Schlangenschreins"] = "Höhle des Schlangenschreins";
L.SAVED_TO_DJ_INSTANCES["Festung der Stürme"] = "Das Auge";
L.SAVED_TO_DJ_INSTANCES["Der Sonnenbrunnen"] = "Sonnenbrunnenplateau";
L.SAVED_TO_DJ_INSTANCES["Eiskronenzitadelle"] = "Die Eiskronenzitadelle";
L.SAVED_TO_DJ_INSTANCES["Rubinsanktum"] = "Das Rubinsanktum";
L.SAVED_TO_DJ_INSTANCES["Terrasse des Endlosen Frühlings"] = "Terrasse d. Endlosen Frühlings";
L.SAVED_TO_DJ_INSTANCES["Herz der Angst"] = "Das Herz der Angst";

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
    [31] = "Alte Löwenstatue",
	[34] = "Alter Henkelkrug",
	[55] = "Ein halb aufgefressener Körper",
	[56] = "Rolfs Leichnam",
	[61] = "Ein verwittertes Grab",
	[256] = "GESUCHT",
	[259] = "Halb vergrabenes Fass",
	[270] = "Unbewachtes Fass mit Donnerbräu Lager",
	[2059] = "Eine Zwergenleiche",
	[2076] = "Blubbernder Kessel",
	[2083] = "Blutsegelkorrespondenz",
	[2701] = "Regenbogenfarbene Splitter",
	[2702] = "Stein der Inneren Bindung",
	[2713] = "Steckbriefbrett",
	[2908] = "Versiegelte Vorratskiste",
	[3972] = "GESUCHT",
	[4141] = "Steuerkonsole",
	[6751] = "Sonderbare fruchtbeladene Pflanze",
	[6752] = "Sonderbare wedelbestückte Pflanze",
	[7510] = "Sprießender Wedel",
	[19023] = "Seite 2351",
	[20985] = "Lockere Erde",
	[20992] = "Schwarzer Schild",
	[21042] = "Abzeichen der Wache von Theramore",
	[35251] = "Karnitols Truhe",
	[112948] = "Verschlossene Geldkassette der 'Kühnheit'",
	[113768] = "Bunt gefärbtes Ei",
	[123329] = "Baelogs Truhe",
	[131474] = "Die Scheiben von Norgannon",
	[131979] = "Große Dunkelholztruhe",
	[138492] = "Splitter von Myzrael",
	[141979] = "Antiker Schatz",
	[142195] = "Schlachtplan der Waldpfoten",
	[142487] = "Der Funkelmat 5200",
	[144063] = "Monolith von Equinex",
	[148502] = "Seite 9",
	[148504] = "Ein verdächtiger Grabstein",
	[156561] = "Steckbrief",
	[160836] = "Reliktkasten",
	[160845] = "Dunkler Kasten",
	[161495] = "Geheimsafe",
	[161504] = "Ein kleines Pack",
	[161505] = "Ein havariertes Floß",
	[161521] = "Forscherausrüstung",
	[161526] = "Kiste mit Lebensmitteln",
	[164820] = "Namensschild des Dunkelbewahrers",
	[164885] = "Verderbter Nachtdrache",
	[164886] = "Verderbte Liedblume",
	[164887] = "Verderbte Windblüte",
	[164888] = "Verderbte Peitscherwurzel",
	[164955] = "Nördlicher Kristallpylon",
	[164956] = "Westlicher Kristallpylon",
	[164957] = "Östlicher Kristallpylon",
	[169243] = "Truhe der Sieben",
	[173232] = "Schmiedekunstpläne",
	[174682] = "Vorsicht, Pterrordax!",
	[175320] = "GESUCHT: Gurgelbacke!",
	[175524] = "Geheimnisvoller roter Kristall",
	[175756] = "Die Geißel von Lordaeron",
	[176090] = "Menschliche Überreste",
	[176091] = "Kessel der Totenwaldfelle",
	[176115] = "Steckbrief: Arnak Grimmtotem",
	[177787] = "Rackmores Logbuch",
	[177904] = "Steckbrief: Besseleth",
	[177964] = "Tiefenstein",
	[179485] = "Beschädigte Falle",
	[179501] = "Knot Zwingschraubs Behälter",
	[179832] = "Verziertes Kissen von Kissenquetscher",
	[179564] = "Tribut der Gordok",
	[179697] = "Arenaschatztruhe",
	[180448] = "Steckbrief: Totenstachel",
	[180503] = "Sandiges Kochbuch",
	[180690] = "Großer Skarabäuskasten",
	[180691] = "Skarabäuskasten",
	[180794] = "Tagebuch von Jandice Barov",
	[180918] = "GESUCHT: Thaelis der Manadurstige",
	[181011] = "Magister Nachtschimmers Tagebuch",
	[181074] = "Arenabeute",
	[181147] = "Steckbrief",
	[181150] = "Staubiges Tagebuch",
	[181153] = "Gesucht: Kel'gash der Boshafte",
	[181333] = "Flamme von Eisenschmiede",
	[181334] = "Flamme von Darnassus",
	[181335] = "Flamme von Unterstadt",
	[181336] = "Flamme von Orgrimmar",
	[181337] = "Flamme von Donnerfels",
	[181748] = "Blutkristall",
	[181756] = "Zerfleddertes altes Buch",
	[181889] = "Steckbrief",
	[182032] = "Galaens Tagebuch",
	[182115] = "Steckbrief",
	[182165] = "Steckbrief",
	[182549] = "Höllenorcpläne",
	[182587] = "Steckbrief",
	[182588] = "Steckbrief",
	[182392] = "Aushang von Garadar",
	[182393] = "Aushang von Telaar",
	[182947] = "Kodex des Blutes",
	[182952] = "Treibgut der Dampfpumpe",
	[183284] = "Steckbrief",
	[183770] = "Steuerkonsole von B'naar",
	[183811] = "Steckbrief",
	[184300] = "Nekromantischer Fokus",
	[184465] = "Behälter der Legion",
	[184660] = "Steckbrief",
	[184825] = "Foliant der Lashh'an",
	[184945] = "Steckbrief",
	[184946] = "Steckbrief",
	[185035] = "Steckbrief",
	[185126] = "Kristallgefängnis",
	[185165] = "Legionskommunikator",
	[185168] = "Verstärkte Teufelseisentruhe",
	[185927] = "Teufelskristallprisma",
	[186426] = "Steckbrief",
	[186648] = "Hazleks Koffer",
	[186667] = "Norkanis Päckchen",
	[186672] = "Kashas Tasche",
	[186881] = "[Dark Iron Sabotage Plans]",
	[186887] = "Große Kürbislaterne",
	[187021] = "Bakkalzus Ranzen",
	[187273] = "Verdächtiger Hufabdruck",
	[187559] = "Freudenfeuer der Horde",
	[187564] = "Freudenfeuer der Allianz",
	[187565] = "Ältester Atkanok",
	[187674] = "Ith'rix' gehärteter Knochenpanzer",
	[187851] = "Kultistenschrein",
	[187905] = "Schweres leuchtendes Ei",
	[187916] = "Freudenfeuer der Allianz",
	[187917] = "Freudenfeuer der Allianz",
	[187921] = "Freudenfeuer der Allianz",
	[187923] = "Freudenfeuer der Allianz",
	[187924] = "Freudenfeuer der Allianz",
	[187927] = "Freudenfeuer der Allianz",
	[187947] = "Freudenfeuer der Horde",
	[187948] = "Freudenfeuer der Horde",
	[187957] = "Freudenfeuer der Horde",
	[187958] = "Freudenfeuer der Horde",
	[187959] = "Freudenfeuer der Horde",
	[188085] = "Verseuchtes Korn",
	[188128] = "Flamme der Exodar",
	[188129] = "Flamme von Silbermond",
	[188261] = "Zerfleddertes Tagebuch",
	[188364] = "Defekte Krabbenfalle",
	[188365] = "Herz der Uralten",
	[188419] = "Ältester Mana'loa",
	[188667] = "Bernsteinsamen",
	[189311] = "Fleischgebundener Foliant",
	[189989] = "Zerstörte Maulwurfmaschine der Dunkeleisenzwerge",
	[189990] = "Zerstörte Maulwurfmaschine der Dunkeleisenzwerge",
	[190020] = "GESUCHT!",
	[190035] = "Eimer mit Süßigkeiten",
	[190037] = "Eimer mit Süßigkeiten",
	[190038] = "Eimer mit Süßigkeiten",
	[190045] = "Eimer mit Süßigkeiten",
	[190051] = "Eimer mit Süßigkeiten",
	[190052] = "Eimer mit Süßigkeiten",
	[190064] = "Eimer mit Süßigkeiten",
	[190079] = "Eimer mit Süßigkeiten",
	[190083] = "Eimer mit Süßigkeiten",
	[190085] = "Eimer mit Süßigkeiten",
	[190104] = "Eimer mit Süßigkeiten",
	[190917] = "Liegengelassene Post",
	[190936] = "Seuchenkessel",
	[191760] = "Konsole der Bibliothek des Erfinders",
	[191761] = "Prototypenkonsole",
	[192060] = "Fjorns Amboss",
	[192072] = "Harpunenkiste",
	[194105] = "Dröhnkiste 413",
	[194122] = "Dröhnkiste 723",
	[194378] = "Gestohlenes Dokument der Forscherliga",
	[194387] = "Gestohlenes Dokument der Forscherliga",
	[194388] = "Gestohlenes Dokument der Forscherliga",
	[194389] = "Gestohlenes Dokument der Forscherliga",
	[194390] = "Gestohlenes Dokument der Forscherliga",
	[194391] = "Gestohlenes Dokument der Forscherliga",
	[194714] = "Widerliche Werkbank",
	[195134] = "Die Bombe",
	[195431] = "Hauptquartierfunkgerät",
	[195433] = "Uralte Schrifttafel",
	[195435] = "Waffenkiste",
	[195438] = "Elunes Kelch",
	[195445] = "Uralter Vortexrunenstein",
	[195497] = "Elunes Kohlenbecken",
	[195517] = "Elunes Dienstmaid",
	[195600] = "Schwelender Stein",
	[195642] = "Kraftstein der Naga",
	[195676] = "Geheimer Laborquäkkasten",
	[196393] = "Zerbrochenes Relikt",
	[196832] = "Oberer Seherstein",
	[196833] = "Unterer Seherstein",
	[201578] = "Rekrutierungsplakat für Schraubgesellen",
	[202080] = "Pfeils Nest",
	[202081] = "Takks Nest",
	[202082] = "Nest der Ravasaurusmatriarchin",
	[202083] = "Nest der Scharfzahnmatriarchin",
	[202135] = "Dadangas Grab",
	[202407] = "Sandscharrers Kiste",
	[202474] = "Vorsintflutliche Kiste",
	[202598] = "Großer fieser Auslöser",
	[202697] = "Auge des Zwielichts",
	[202701] = "Plumpskloversteck",
	[202706] = "Kessel des Schattenhammers",
	[202712] = "Die Zwielichtapokryphen",
	[202741] = "Reiche Elementiumader",
	[202776] = "Ein Schwarm Bergforellen",
	[202777] = "Ein Schwarm Hochlandguppys",
	[202778] = "Ein Schwarm Albinohöhlenfische",
	[202779] = "Ein Schwarm Schwarzbauchmatschflosser",
	[202780] = "Klafteraalschwarm",
	[202871] = "Versunkene Kiste",
	[202975] = "Plumpsklo unter Wasser",
	[203128] = "Zerbrochene Flasche",
	[203134] = "Leeres Podest",
	[203186] = "BETRETEN VERBOTEN!",
	[203207] = "Kodex der Schatten",
	[203733] = "Steckbrieftafel",
	[203734] = "Urkunde von Westfall",
	[203755] = "Rekrutierungsplakat für Schraubgesellen",
	[204050] = "Blaupausen der Feindbrecher",
	[204274] = "Logbuch des Kapitäns",
	[204344] = "GESUCHT!",
	[204351] = "Ettinsteuerungskugel",
	[204406] = "Halb vergrabene Flasche",
	[204450] = "Kapitän Stillwassers Karten",
	[204578] = "Fass mit Doppelrum",
	[204817] = "Lichtgeschmiedete Rute",
	[204824] = "Lichtgeschmiedeter Bogen",
	[204825] = "Lichtgeschmiedetes Wappen",
	[204959] = "Riesiger Painithaufen",
	[205134] = "Logbuch des Schmiedemeisters",
	[205143] = "Verlassenes Plumpsklo",
	[205198] = "Sprengstoffhaufen",
	[205207] = "Maziels Tagebuch",
	[205258] = "Zerbrochene Waffenkiste",
	[205266] = "Aufwendige Scheibe",
	[205332] = "Steckbrief",
	[205350] = "Kommunikationskonsole der Horde",
	[205540] = "Verfallenes Skelett",
	[205874] = "Sandbedeckte Hieroglyphen",
	[205875] = "Leuchtsignal des Kreuzzüglers",
	[206109] = "Auf Befehl des Kriegshäuptlings",
	[206116] = "Auf Befehl des Kriegshäuptlings",
	[206293] = "A.I.D.A.-Terminal",
	[206335] = "Steinplatte",
	[206336] = "Marmorplatte",
	[206374] = "Schatz der Behüter",
	[206569] = "Auge des Zwielichts",
	[206585] = "Totem von Ruumbo",
	[206944] = "Schaufel",
	[207104] = "Hauptkontrollpumpe",
	[207179] = "Kessel",
	[207279] = "Auf Befehl des Kriegshäuptlings",
	[207303] = "Abenteuertafel",
	[207304] = "Abenteuertafel",
	[207320] = "Heldenaufruf",
	[207321] = "Heldenaufruf",
	[207322] = "Heldenaufruf",
	[207323] = "Auf Befehl des Kriegshäuptlings",
	[207359] = "Reines Zwielichtei",
	[207472] = "Silberbeschlagene Schatzkiste",
	[207484] = "Stabile Schatzkiste",
	[207496] = "Schatzkiste der Dunkeleisenzwerge",
	[207512] = "Seidene Schatzkiste",
	[207520] = "Schatzkiste aus Ahornholz",
	[207533] = "Schatzkiste aus Runensteinen",
	[207724] = "Schiffswracktrümmer",
	[207982] = "Freudenfeuer der Allianz",
	[207983] = "Freudenfeuer der Horde",
	[207991] = "Freudenfeuer der Horde",
	[208115] = "Eimer mit Süßigkeiten",
	[208117] = "Eimer mit Süßigkeiten",
	[208118] = "Eimer mit Süßigkeiten",
	[208119] = "Eimer mit Süßigkeiten",
	[208140] = "Eimer mit Süßigkeiten",
	[208157] = "Eimer mit Süßigkeiten",
	[208158] = "Eimer mit Süßigkeiten",
	[208159] = "Eimer mit Süßigkeiten",
	[208311] = "Ein Schwarm Tiefseeweisenfische",
	[208365] = "Vor kurzem aufgewühlter Erdhaufen",
	[208535] = "Getrocknete Eichel",
	[209072] = "Gestohlene Kiste",
	[209076] = "Ansons Kiste",
	[209094] = "Gestohlene Kiste",
	[209095] = "Edgars Kiste",
	[209270] = "Seite 78",
	[209620] = "Dunkelmond-Schatzkiste",
	[211424] = "Alchemieschriftrolle",
	[212389] = "Rolle der Vorzeichen",
	[213362] = "Schiffstruhe",
	[213363] = "Wodins Mantisfetzer",
	[213364] = "Uralte pandarische Spitzhacke",
	[213366] = "Uralter pandarischer Teekessel",
	[213368] = "Pandarische Glücksmünze",
	[213649] = "Truhe mit geklauten Waren",
	[213650] = "Schatztruhe der Shed-Ling",
	[213651] = "Ausrüstungsspind",
	[213653] = "Pandarischer Fischspeer",
	[213741] = "Uralter Stab der Jinyu",
	[213742] = "Hammer der zehn Donner",
--	[213743] = "Jade Infused Blade",	-- No translation
	[213748] = "Pandarischer Ritualstein",
	[213749] = "Stab des verborgenen Meisters",
	[213750] = "Steintafel der Saurok",
	[213751] = "Stoffkiste des Berggeists",
	[213765] = "Tafel von Ren Yun",
	[213767] = "Versteckter Schatz",
	[213768] = "Kriegerspeer der Ho-zen",
	[213769] = "Schatztruhe der Ho-zen",
	[213770] = "Gestohlene Berggeiststatue",
	[213771] = "Statue von Xuen",
	[213774] = "Besitztümer des verschollenen Abenteurers",
	[213782] = "Terrakottakopf",
	[213793] = "Rikktiks Schatulle",
	[213842] = "Stapel mit Yaungolwaffen",
	[213844] = "In Bern eingeschlossene Motte",
	[213845] = "Der Hammer der Torheit",
	[213956] = "Fragment des Schreckens",
	[213959] = "Erstarrtes Harz von Kri'vess",
	[213960] = "Feuerträger der Yaungol",
	[213961] = "Zurückgelassene Warenkiste",
	[213962] = "Schnellstoßdolch des Windschnitters",
	[213964] = "Maliks tapferer Speer",
	[213966] = "In Bern eingeschlossene Halskette",
	[213967] = "Klinge des Ersten",
	[213968] = "Schwärmendes Spaltbeil von Ka'roz",
	[213969] = "Mutationsstab des Sezierers",
	[213970] = "Blutgetränktes Chitinfragment",
	[213971] = "Medaillon des Schwarmwächters",
	[213972] = "Klinge des vergifteten Geistes",
	[213973] = "Schallrelais der Klaxxi",
	[214062] = "Leuchtender Bern",
	[214325] = "Vergessene Schließkassette",
	[214337] = "Edelsteinkästchen",
	[214338] = "Opfergabe des Erinnerns",
	[214339] = "Kiste mit Vorräten",
	[214340] = "Bootsbauanweisungen",
	[214403] = "Papierstapel",
	[214407] = "Mo-Mos Schatztruhe",
	[214438] = "Uralte Mogutafel",
	[214439] = "Fass mit Bananenrum",
	[214562] = "Sha-besessener Kristall",
	[215705] = "Schrein der Ackerbauern",
	[218750] = "Arbeitsaufträge",
	[220641] = "Donnerfürstentruhe",
	[220820] = "Seite 1127",
	[220821] = "Seite 845",
	[220832] = "Versunkener Schatz",
	[221376] = "Fragment des alten Zeichens",
	[221413] = "Schriftrolle der Familie Lin",
	[222685] = "Kranichnest",
	[223533] = "Friedliche Opfergabe",
	[224228] = "Blubbernder Kessel",
	[224306] = "Gesprengte Fesseln",
	[224392] = "Sklavengeheimvorrat",
	[224613] = "Zuschauerkiste",
	[224616] = "Obsidianpetroglyphe",
	[224623] = "Wackelndes Ei",
	[224633] = "Vorräte der Eisernen Horde",
	[224686] = "Darmstein des Verschlingers",
	[224713] = "Truhe der Felsbrecher",
	[224750] = "Hängender Ranzen",
	[224753] = "Schuppiges Rylakei",
	[224754] = "Vollgelaufene Truhe",
	[224755] = "Tribut der Eisernen Horde",
	[224756] = "Alchemistenbeutel",
	[224770] = "Schatz des Exilanten des Schattenmondklans",
	[224780] = "Opferdolch des Schattenmondklans",
	[224781] = "Zerfallender Korb",
	[224783] = "Behälter mit doppeltem Boden",
	[224784] = "Truhe des Verteidigers",
	[224785] = "Dämonentruhe",
	[225501] = "Friedliche Opfergabe",
	[225502] = "Friedliche Opfergabe",
	[225503] = "Friedliche Opfergabe",
--	[226468] = GetSpellInfo(155344),		-- Buffeting Galefury
--	[226469] = GetSpellInfo(154259),		-- Spirit of the Wolf
	[226831] = "Kiste des Astrologen",
	[226854] = "Gepanzerter Elekkstoßzahn",
	[226861] = "Ronokks Habseligkeiten",
	[226862] = "Riesiger Mondweidenzapfen",
	[226865] = "Fracht der Rabenkönigin",
	[226955] = "Kriegshorn des Arenameisters",
	[226956] = "Haufen mysteriöser Früchte",
	[226961] = "Steckbrieftafel",
	[226967] = "Lagunenteich",
	[226976] = "Deceptias schwelende Stiefel",
	[226983] = "Klippenspringertruhe",
	[226990] = "Versorgungslager",
	[226993] = "Vorratslager eines Überlebenskünstlers",
	[226994] = "Grimmfrostschatz",
	[226996] = "Gorenessensreste",
	[227134] = "Lieferung der Eisernen Horde",
	[227504] = "Stachelspeer der Donnerfürsten",
	[227527] = "Lichtbringer",
	[227587] = "Yuuris Geschenk",
	[227654] = "Knochenmalmerspeer",
	[227743] = "Fantastischer Fisch",
	[227793] = "Aarkos Familienschatz",
	[227806] = "Vom Kampf gezeichnetes Frostwolfbanner",
	[227859] = "Hoffnung",
	[227868] = "Glitzernder Teich",
	[227951] = "Rooks Angelzubehör",
	[227953] = "Krug gealterten Eisenweins",
	[227954] = "Leuchtende Muschel",
	[227955] = "Amethylkristall",
	[227956] = "Schließkiste des Vorarbeiters",
	[227996] = "Seltsames Todesnetzei",
	[227998] = "Ockbars Bündel",
	[228012] = "Verkohltes Schwert",
	[228013] = "Schatz des Bauern",
	[228014] = "Relikt von Aruuna",
	[228015] = "Eiserne Truhe",
	[228016] = "Fass mit Fischen",
	[228017] = "Draeneiwaffen",
	[228018] = "Reliquiar des Seelenbinders",
	[228019] = "Eingesponnener Sack",
	[228020] = "Relikt von Telmor",
	[228021] = "Schatz der Ango'rosh",
	[228022] = "Licht des Meeres",
	[228023] = "Knochenmalmerüberreste",
	[228024] = "Minenlore von Aruuna",
	[228025] = "Keluus Habseligkeiten",
	[228026] = "Purer Kristallstaub",
	[228483] = "Rostiger Tresor",
	[228570] = "Ketyas Vorratskiste",
	[229328] = "Botenbeutel",
	[229330] = "Mysteriöser Ring",
	[229333] = "Mysteriöse Stiefel",
	[229354] = "Glänzende Münze",
	[229367] = "Gefrorenes Orcskelett",
	[229640] = "Gefrorene Frostwolfaxt",
	[230252] = "Brennende Perle",
	[230401] = "Versiegelter Krug",
	[230402] = "Glücksmünze",
	[230424] = "Schneebedeckte Schließkassette",
	[230425] = "Abgenagter Knochen",
	[230611] = "Beutesack der Fahlen",
	[230643] = "Terokrallennest",
	[230664] = "Torvaths Kristallklinge",
	[230909] = "Vergessene Vorräte",
	[231064] = "Madame Senas anderer Materialvorrat",
	[231069] = "Seltsam aussehender Dolch",
	[231100] = "Eisranke",
	[231103] = "Geplünderte Beute",
	[231644] = "Gehörnter Schädel",
	[231903] = "Rauschebarts Bericht",
	[232066] = "Versunkener Schatz",
	[232067] = "Gestohlener Schatz",
	[232406] = "Bündel eines Abenteurers",
	[232416] = "Kommandotafel",
	[232492] = "Verdammnisgeschoss",
	[232494] = "Pilzbedeckte Truhe",
	[232579] = "Kaliriei",
	[232582] = "A'kumbos Asche",
	[232583] = "Geschnitztes Trinkhorn",
	[232586] = "Rovos Dolch",
	[232587] = "Uzkos Krimskrams",
	[232588] = "Grekas Urne",
	[232589] = "Veemas Kräuterbeutel",
	[232590] = "Leerenerfüllter Kristall",
	[232591] = "Gabe unter Geliebten",
	[232596] = "Großaxt der Ahnen",
	[232621] = "Seltsame Spore",
	[232624] = "Mikkals Truhe",
	[233101] = "Versunkenes Fischerboot",
	[233126] = "Schattenmondschatzkiste",
	[233137] = "Schatz der Brennenden Klinge",
	[233139] = "Uralte Titanentruhe",
	[233149] = "Schatz des Lachenden Schädels",
	[233206] = "Zurückgelassene Fracht",
	[233218] = "Bündel eines Abenteurers",
	[233241] = "Leuchtender Höhlenpilz",
--	[233263] = GetSpellInfo(154253),		-- Blessing of the Wolf
})
do a[key] = value; end