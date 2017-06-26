use master
create database pokedex
go
use pokedex
GO
/****** Object:  Table [dbo].[tb_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tipo] ON
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (1, N'Grass')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (2, N'Bug')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (3, N'Fire')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (4, N'Water')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (5, N'Ice')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (6, N'Electric')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (7, N'Psychic')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (8, N'Ghost')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (9, N'Poison')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (10, N'Fighting')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (11, N'Ground')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (12, N'Rock')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (13, N'Dark')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (14, N'Steel')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (15, N'Normal')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (16, N'Flying')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (17, N'Fairy')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (18, N'Dragon')
SET IDENTITY_INSERT [dbo].[tb_tipo] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo2](
	[id_tipo2] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo2] PRIMARY KEY CLUSTERED 
(
	[id_tipo2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tipo2] ON
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (1, N'Grass')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (2, N'Bug')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (3, N'Fire')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (4, N'Water')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (5, N'Ice')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (6, N'Electric')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (7, N'Psychic')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (8, N'Ghost')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (9, N'Poison')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (10, N'Fighting')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (11, N'Ground')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (12, N'Rock')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (13, N'Dark')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (14, N'Steel')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (15, N'Normal')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (16, N'Flying')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (17, N'Fairy')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (18, N'Dragon')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (19, N' ')
SET IDENTITY_INSERT [dbo].[tb_tipo2] OFF
/****** Object:  Table [dbo].[tb_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_pokemon](
	[id_pokemon] [int] IDENTITY(1,1) NOT NULL,
	[num_pokedex] [varchar](50) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[id_tipo] [int] NOT NULL,
	[id_tipo2] [int] NOT NULL,
 CONSTRAINT [PK_tb_pokemon] PRIMARY KEY CLUSTERED 
(
	[id_pokemon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
insert into tb_pokemon values('#001','Bulbasaur',1,9),
('#002','Ivysaur',1,9),
('#003','Venusaur',1,9),
('#004','Charmander',3,19),
('#005','Charmeleon',3,19),
('#006','Charizard',3,16),
('#007','Squirtle',4,19),
('#008','Wartortle',4,19),
('#009','Blastoise',4,19),
('#010','Caterpie',2,19),
('#011','Metapod',2,19),
('#012','Butterfree',2,16),
('#013','Weedle',2,9),
('#014','Kakuna',2,9),
('#015','Beedrill',2,9),
('#016','Pidgey',15,16),
('#017','Pidgeotto',15,16),
('#018','Pidgeot',15,16),
('#019','Rattata',15,19),
('#019','Alolan Rattata',15,13),
('#020','Raticate',15,19),
('#020','Alolan Raticate',15,13),
('#021','Spearow',15,16),
('#022','Fearow',15,16),
('#023','Ekans',9,19),
('#024','Arbok',9,19),
('#025','Pikachu',6,19),
('#026','Raichu',6,19),
('#026','Alolan Raichu',6,7),
('#027','Sandshrew',11,19),
('#027','Alolan Sandshrew',5,14),
('#028','Sandslash',11,19),
('#028','Alolan Sandslash',5,14),
('#029','NidoranF',9,19),
('#030','Nidorina',9,19),
('#031','Nidoqueen',9,11),
('#032','NidoranM',9,19),
('#033','Nidorino',9,19),
('#034','Nidoking',9,11),
('#035','Clefairy',17,19),
('#036','Clefable',17,19),
('#037','Vulpix',3,19),
('#037','Alolan Vulpix',5,19),
('#038','Ninetales',3,19),
('#038','Alolan Ninetales',5,17),
('#039','Jigglypuff',15,17),
('#040','Wigglytuff',15,17),
('#041','Zubat',9,16),
('#042','Golbat',9,16),
('#043','Oddish',1,9),
('#044','Gloom',1,9),
('#045','Vileplume',1,9),
('#046','Paras',2,1),
('#047','Parasect',2,1),
('#048','Venonat',2,9),
('#049','Venomoth',2,9),
('#050','Diglett',11,19),
('#050','Alolan Diglett',11,14),
('#051','Dugtrio',11,19),
('#051','Alolan Dugtrio',11,14),
('#052','Meowth',15,19),
('#052','Alolan Meowth',13,19),
('#053','Persian',15,19),
('#053','Alolan Persian',13,19),
('#054','Psyduck',4,19),
('#055','Golduck',4,19),
('#056','Mankey',10,19),
('#057','Primeape',10,19),
('#058','Growlithe',3,19),
('#059','Arcanine',3,19),
('#060','Poliwag',4,19),
('#061','Poliwhirl',4,19),
('#062','Poliwrath',4,10),
('#063','Abra',7,19),
('#064','Kadabra',7,19),
('#065','Alakazam',7,19),
('#066','Machop',10,19),
('#067','Machoke',10,19),
('#068','Machamp',10,19),
('#069','Bellsprout',1,9),
('#070','Weepinbell',1,9),
('#071','Victreebel',1,9),
('#072','Tentacool',4,9),
('#073','Tentacruel',4,9),
('#074','Geodude',12,11),
('#074','Alolan Geodude',12,6),
('#075','Graveler',12,11),
('#075','Alolan Graveler',12,6),
('#076','Golem',12,11),
('#076','Alolan Golem',12,6),
('#077','Ponyta',3,19),
('#078','Rapidash',3,19),
('#079','Slowpoke',4,7),
('#080','Slowbro',4,7),
('#081','Magnemite',6,14),
('#082','Magneton',6,14),
('#083','Farfetch-d',15,16),
('#084','Doduo',15,16),
('#085','Dodrio',15,16),
('#086','Seel',4,19),
('#087','Dewgong',4,5),
('#088','Grimer',9,19),
('#088','Alolan Grimer',9,13),
('#089','Muk',9,19),
('#089','Alolan Muk',9,13),
('#090','Shellder',4,19),
('#091','Cloyster',4,5),
('#092','Gastly',8,9),
('#093','Haunter',8,9),
('#094','Gengar',8,9),
('#095','Onix',12,11),
('#096','Drowzee',7,19),
('#097','Hypno',7,19),
('#098','Krabby',4,19),
('#099','Kingler',4,19),
('#100','Voltorb',6,19),
('#101','Electrode',6,19),
('#102','Exeggcute',1,7),
('#103','Exeggutor',1,7),
('#103','Alolan Exeggutor',1,18),
('#104','Cubone',11,19),
('#105','Marowak',11,19),
('#105','Alolan Marowak',3,8),
('#106','Hitmonlee',10,19),
('#107','Hitmonchan',10,19),
('#108','Lickitung',15,19),
('#109','Koffing',9,19),
('#110','Weezing',9,19),
('#111','Rhyhorn',11,12),
('#112','Rhydon',11,12),
('#113','Chansey',15,19),
('#114','Tangela',1,19),
('#115','Kangaskhan',15,19),
('#116','Horsea',4,19),
('#117','Seadra',4,19),
('#118','Goldeen',4,19),
('#119','Seaking',4,19),
('#120','Staryu',4,19),
('#121','Starmie',4,7),
('#122','Mr. Mime',7,17),
('#123','Scyther',2,16),
('#124','Jynx',5,7),
('#125','Electabuzz',6,19),
('#126','Magmar',3,19),
('#127','Pinsir',2,19),
('#128','Tauros',15,19),
('#129','Magikarp',4,19),
('#130','Gyarados',4,16),
('#131','Lapras',4,5),
('#132','Ditto',15,19),
('#133','Eevee',15,19),
('#134','Vaporeon',4,19),
('#135','Jolteon',6,19),
('#136','Flareon',3,19),
('#137','Porygon',15,19),
('#138','Omanyte',12,4),
('#139','Omastar',12,4),
('#140','Kabuto',12,4),
('#141','Kabutops',12,4),
('#142','Aerodactyl',12,16),
('#143','Snorlax',15,19),
('#144','Articuno',5,16),
('#145','Zapdos',6,16),
('#146','Moltres',3,16),
('#147','Dratini',18,19),
('#148','Dragonair',18,19),
('#149','Dragonite',18,16),
('#150','Mewtwo',7,19),
('#151','Mew',7,19),
('#152','Chikorita',1,19),
('#153','Bayleef',1,19),
('#154','Meganium',1,19),
('#155','Cyndaquil',3,19),
('#156','Quilava',3,19),
('#157','Typhlosion',3,19),
('#158','Totodile',4,19),
('#159','Croconaw',4,19),
('#160','Feraligatr',4,19),
('#161','Sentret',15,19),
('#162','Furret',15,19),
('#163','Hoothoot',15,16),
('#164','Noctowl',15,16),
('#165','Ledyba',2,16),
('#166','Ledian',2,16),
('#167','Spinarak',2,9),
('#168','Ariados',2,9),
('#169','Crobat',9,16),
('#170','Chinchou',4,6),
('#171','Lanturn',4,6),
('#172','Pichu',6,19),
('#173','Cleffa',17,19),
('#174','Igglybuff',15,17),
('#175','Togepi',17,19),
('#176','Togetic',17,16),
('#177','Natu',7,16),
('#178','Xatu',7,16),
('#179','Marrep',6,19),
('#180','Flaafy',6,19),
('#181','Ampharos',6,19),
('#182','Bellossom',1,19),
('#183','Marill',4,17),
('#184','Azumarill',4,17),
('#185','Sudowoodo',12,19),
('#186','Politoed',4,19),
('#187','Hoppip',1,16),
('#188','Skiploom',1,16),
('#189','Jumpluff',1,16),
('#190','Aipom',15,19),
('#191','Sunkern',1,19),
('#192','Sunflora',1,19),
('#193','Yanma',2,16),
('#194','Wooper',4,11),
('#195','Quagsire',4,11),
('#196','Espeon',7,19),
('#197','Umbreon',13,19),
('#198','Murkrow',13,16),
('#199','Slowbro',4	,7),
('#200','Misdreavus',8,19),
('#201','Unown',7,19),
('#202','Wobbuffet',7,19),
('#203','Girafarig',15,7),
('#204','Pineco',2,19),
('#205','Forretress',2,14),
('#206','Dunsparce',15,19),
('#207','Gligar',11,16),
('#208','Steelix',14,11),
('#209','Snubbull',17,19),
('#210','Granbull',17,19),
('#211','Qwilfish',4,9),
('#212','Scizor',2,14),
('#213','Shuckle',2,12),
('#214','Heracross',2,10),
('#215','Sneasel',13,5),
('#216','Teddiursa',15,19),
('#217','Ursaring',15,19),
('#218','Slugma',3,19),
('#219','Magcargo',3,12),
('#220','Swinub',5,11),
('#221','Piloswine',5,11),
('#222','Corsola',4,12),
('#223','Remoraid',4,19),
('#224','Octillery',4,19),
('#225','Delibird',5,16),
('#226','Mantine',4,16),
('#227','Skarmory',14,16),
('#228','Houndour',13,3),
('#229','Houndoom',13,3),
('#230','Kingdra',4,18),
('#231','Phanpy',11,19),
('#232','Donphan',11,19),
('#233','Porygon2',15,19),
('#234','Stantler',15,19),
('#235','Smeargle',15,19),
('#236','Tyrogue',10,19),
('#237','Hitmontop',10,19),
('#238','Smoochum',5,7),
('#239','Elekid',6,19),
('#240','Magby',3,19),
('#241','Miltank',15,19),
('#242','Blissey',15,19),
('#243','Raikou',6,19),
('#244','Entei',3,19),
('#245','Suicune',4,19),
('#246','Larvitar',12,11),
('#247','Pupitar',12,11),
('#248','Tyranitar',12,13),
('#249','Lugia',7,16),
('#250','Ho-oh',3,16),
('#251','Celebi',7,1),
('#252','Treecko',1,19),
('#253','Grovyle',1,19),
('#254','Sceptile',1,19),
('#255','Torchic',3,19),
('#256','Combusken',3,10),
('#257','Blaziken',3,10),
('#258','Mudkip',4,19),
('#259','Marshtomp',4,11),
('#260','Swampert',4,11),
('#261','Poochyena',13,19),
('#262','Mightyena',13,19),
('#263','Zigzagoon',15,19),
('#264','Linoone',15,19),
('#265','Wurmple',2,19),
('#266','Silcoon',2,19),
('#267','Beautifly',2,16),
('#268','Cascoon',2,19),
('#269','Dustox',2,9),
('#270','Lotad',4,1),
('#271','Lombre',4,1),
('#272','Ludicolo',4,1),
('#273','Seedot',1,19),
('#274','Nuzleaf',1,13),
('#275','Shiftry',1,13),
('#276','Taillow',15,16),
('#277','Swellow',15,16),
('#278','Wingull',4,16),
('#279','Pelliper',4,16),
('#280','Ralts',7,17),
('#281','Kirlia',7,17),
('#282','Gardevoir',7,17),
('#283','Surskit',2,4),
('#284','Masquerain',2,16),
('#285','Shroomish',1,19),
('#286','Breloom',1,10),
('#287','Slakoth',15,19),
('#288','Vigoroth',15,19),
('#289','Slaking',15,19),
('#290','Nincada',2,11),
('#291','Ninjask',2,16),
('#292','Shedinja',2,8),
('#293','Whismur',15,19),
('#294','Loudred',15,19),
('#295','Exploud',15,19),
('#296','Makuhita',10,19),
('#297','Hariyama',10,19),
('#298','Azurill',15,17),
('#299','Nosepass',12,19),
('#300','Skitty',15,19),
('#301','Delcatty',15,19),
('#302','Sableye',13,8),
('#303','Mawile',14,17),
('#304','Aron',14,12),
('#305','Lairon',14,12),
('#306','Aggron',14,12),
('#307','Meditite',10,7),
('#308','Medicham',10,7),
('#309','Electrike',6,19),
('#310','Manectric',6,19),
('#311','Plusle',6,19),
('#312','Minun',6,19),
('#313','Volbeat',2,19),
('#314','Illumise',2,19),
('#315','Roselia',1,9),
('#316','Gulpin',9,19),
('#317','Swalot',9,19),
('#318','Carvanha',4,13),
('#319','Sharpedo',4,13),
('#320','Wailmer',4,19),
('#321','Wailord',4,19),
('#322','Numel',3,11),
('#323','Camerupt',3,11),
('#324','Torkoal',3,19),
('#325','Spoink',7,19),
('#326','Grumpig',7,19),
('#327','Spinda',15,19),
('#328','Trapinch',11,19),
('#329','Vibrava',11,18),
('#330','Flygon',11,18),
('#331','Cacnea',1,19),
('#332','Cacturne',1,13),
('#333','Swablu',15,16),
('#334','Altaria',18,16),
('#335','Zangoose',15,19),
('#336','Seviper',9,19),
('#337','Lunatone',12,7),
('#338','Solrock',12,7),
('#339','Barboach',4,11),
('#340','Whiscash',4,11),
('#341','Corphish',4,19),
('#342','Crawdaunt',4,13),
('#343','Baltoy',11,7),
('#344','Claydol',11,7),
('#345','Lileep',12,1),
('#346','Cradily',12,1),
('#347','Anorith',12,2),
('#348','Armaldo',12,2),
('#349','Feebas',4,19),
('#350','Milotic',4,19),
('#351','Castform',15,19),
('#351','Sunny Castform',3,19),
('#351','Rainy Castform',4,19),
('#351','Snowy Castform',5,19),
('#352','Kecleon',15,19),
('#353','Shuppet',8,19),
('#354','Banette',8,19),
('#355','Duskull',8,19),
('#356','Dusclops',8,19),
('#357','Tropius',1,16),
('#358','Chimecho',7,19),
('#359','Absol',13,19),
('#360','Wynaut',7,19),
('#361','Snorunt',5,19),
('#362','Glalie',5,19),
('#363','Spheal',5,4),
('#364','Sealeo',5,4),
('#365','Walrein',5,4),
('#366','Clamperl',4,19),
('#367','Huntail',4,19),
('#368','Gorebyss',4,19),
('#369','Relicanth',4,12),
('#370','Luvdisc',4,19),
('#371','Bagon',18,19),
('#372','Shelgon',18,19),
('#373','Salamence',18,16),
('#374','Beldum',14,7),
('#375','Metang',14,7),
('#376','Metagross',14,7),
('#377','Regirock',12,19),
('#378','Regice	',5,19),
('#379','Registeel',14,19),
('#380','Latias',18,7),
('#381','Latios',18,7),
('#382','Kyogre',4,19),
('#383','Groudon',11,19),
('#384','Rayquaza',18,16),
('#385','Jirachi',14,7),
('#386','Deoxys',7,19),
('#386','Deoxys Attack Form',7,19),
('#386','Deoxys Defense Form',7,19),
('#386','Deoxys Speed Form',7,19),
('#387','Turtwig',1,19),
('#388','Grotle',1,19),
('#389','Torterra',1,11),
('#390','Chimchar',3,19),
('#391','Monferno',3,10),
('#392','Infernape',3,10),
('#393','Piplup',4,19),
('#394','Prinplup',4,19),
('#395','Empoleon',4,14),
('#396','Starly',15,16),
('#397','Staravia',15,16),
('#398','Staraptor',15,16),
('#399','Bidoof',15,19),
('#400','Bibarel',15,4),
('#401','Kricketot',2,19),
('#402','Kricketune',2,19),
('#403','Shinx',6,19),
('#404','Luxio',6,19),
('#405','Luxray',6,19),
('#406','Budew',1,9),
('#407','Roserade',1,9),
('#408','Cranidos',12,19),
('#409','Rampardos',12,19),
('#410','Shieldon',12,14),
('#411','Bastiodon',12,14),
('#412','Burmy Plant Cloak',2,19),
('#412','Burmy Sandy Cloak',2,19),
('#412','Burmy Trash Cloak',2,19),
('#413','Wormadam Plant Cloak',2,1),
('#413','Wormadam Sandy CLoak',2,11),
('#413','Wormadam Trash Cloak',2,14),
('#414','Mothim',2,16),
('#415','Combee',2,16),
('#416','Vespiquen',2,16),
('#417','Pachirisu',6,19),
('#418','Buizel',4,19),
('#419','Floatzel',4,19),
('#420','Cherubi',1,19),
('#421','Cherrim',1,19),
('#422','Shellos East Sea',4,19),
('#422','Shellos West Sea',4,19),
('#423','Gastrodon East Sea',4,11),
('#423','Gastrodon West Sea',4,11),
('#424','Ambipom',15,19),
('#425','Drifloon',8,16),
('#426','Drifblim',8,16),
('#427','Buneary',15,19),
('#428','Lopunny',15,19),
('#429','Mismagius',8,19),
('#430','Honchkrow',13,16),
('#431','Glameow',15,19),
('#432','Purugly',15,19),
('#433','Chingling',7,19),
('#434','Stunky',9,13),
('#435','Skuntank',9,13),
('#436','Bronzor',14,7),
('#437','Bronzong',14,7),
('#438','Bonsly',12,19),
('#439','Mime Jr.',7,17),
('#440','Happiny',15,19),
('#441','Chatot',15,16),
('#442','Spiritomb',8,13),
('#443','Gible',18,11),
('#444','Gabite',18,11),
('#445','Garchomp',18,11),
('#446','Munchlax',15,19),
('#447','Riolu',10,19),
('#448','Lucario',10,14),
('#449','Hippopotas',11,19),
('#450','Hippowdon',11,19),
('#451','Skorupi',9,2),
('#452','Drapion',9,13),
('#453','Croagunk',9,10),
('#454','Toxicroak',9,10),
('#455','Carnivine',1,19),
('#456','Finneon',4,19),
('#457','Lumineon',4,19),
('#458','Mantyke',4,16),
('#459','Snover',1,5),
('#460','Abomasnow',1,5),
('#461','Weavile',13,5),
('#462','Magnezone',6,14),
('#463','Lickilicky',15,19),
('#464','Rhyperior',11,12),
('#465','Tangrowth',1,19),
('#466','Electivire',6,19),
('#467','Magmortar',3,19),
('#468','Togekiss',17,16),
('#469','Yanmega',2,16),
('#470','Leafeon',1,19),
('#471','Glaceon',5,19),
('#472','Gliscor',11,16),
('#473','Mamoswine',5,11),
('#474','Porygon-Z',15,19),
('#475','Gallade',7,10),
('#476','Probopass',12,14),
('#477','Dusknoir',8,19),
('#478','Froslass',5,8),
('#479','Rotom',6,8),
('#479','Mow Rotom',6,1),
('#479','Heat Rotom',6,3),
('#479','Wash Rotom',6,4),
('#479','Frost Rotom',6,5),
('#479','Fan Rotom',6,16),
('#480','Uxie',7,19),
('#481','Mesprit',7,19),
('#482','Azelf',7,19),
('#483','Dialga',14,18),
('#484','Palkia',4,18),
('#485','Heatran',3,14),
('#486','Regigigas',15,19),
('#487','Giratina Altered Form',8,18),
('#487','Giratina Origin Form',8,18),
('#488','Cresselia',7,19),
('#489','Phione',4,19),
('#490','Manaphy',4,19),
('#491','Darkrai',13,19),
('#492','Shaymin Land Form',1,19),
('#492','Shaymin Sky Form',1,16),
('#493','Arceus',15,19),
('#493','Arceus',1,19),
('#493','Arceus',2,19),
('#493','Arceus',3,19),
('#493','Arceus',4,19),
('#493','Arceus',5,19),
('#493','Arceus',6,19),
('#493','Arceus',7,19),
('#493','Arceus',8,19),
('#493','Arceus',9,19),
('#493','Arceus',10,19),
('#493','Arceus',11,19),
('#493','Arceus',12,19),
('#493','Arceus',13,19),
('#493','Arceus',14,19),
('#493','Arceus',16,19),
('#493','Arceus',17,19),
('#493','Arceus',18,19),
('#494','Victini',7,3),
('#495','Snivy',1,19),
('#496','Servine',1,19),
('#497','Serperior',1,19),
('#498','Tepig',3,19),
('#499','Pignite',3,10),
('#500','Emboar',3,10),
('#501','Oshawott',4,19),
('#502','Dewott',4,19),
('#503','Samurott',4,19),
('#504','Patrat',15,19),
('#505','Watchog',15,19),
('#506','Lillipup',15,19),
('#507','Herdier',15,19),
('#508','Stoutland',15,19),
('#509','Purrloin',13,19),
('#510','Liepard',13,19),
('#511','Pansage',1,19),
('#512','Simisage',1,19),
('#513','Pansear',3,19),
('#514','Simisear',3,19),
('#515','Panpour',4,19),
('#516','Simipour',4,19),
('#517','Munna',7,19),
('#518','Musharna',7,19),
('#519','Pidove	',15,16),
('#520','Tranquill',15,16),
('#521','Unfezant Male',15,16),
('#521','Unfezant Female',15,16),
('#522','Blitzle',6,19),
('#523','Zebstrika',6,19),
('#524','Roggenrola',12,19),
('#525','Boldore',12,19),
('#526','Gigalith',12,19),
('#527','Woobat',7,16),
('#528','Swoobat',7,16),
('#529','Drilbur',11,19),
('#530','Excadrill',11,14),
('#531','Audino',15,19),
('#532','Timburr',10,19),
('#533','Gurdurr',10,19),
('#534','Conkeldurr',10,19),
('#535','Tympole',4,19),
('#536','Palpitoad',4,11),
('#537','Seismitoad',4,11),
('#538','Throh',10,19),
('#539','Sawk',10,19),
('#540','Sewaddle',2,1),
('#541','Swadloon',2,1),
('#542','Leavanny',2,1),
('#543','Venipede',2,9),
('#544','Whirlipede',2,9),
('#545','Scolipede',2,9),
('#546','Cottonee',1,17),
('#547','Whimsicott',1,17),
('#548','Petilil',1,19),
('#549','Lilligant',1,19),
('#550','Basculin',4,19),
('#551','Sandile',11,13),
('#552','Krokorok',11,13),
('#553','Krookodile',11,13),
('#554','Darumaka',3,19),
('#555','Darmanitan',3,19),
('#555','Darmanitan Zen Mode',3,7),
('#556','Maractus',1,19),
('#557','Dwebble',2,12),
('#558','Crustle',2,12),
('#559','Scraggy',13,10),
('#560','Scrafty',13,10),
('#561','Sigilyph',7,16),
('#562','Yamask',8,19),
('#563','Cofagrigus',8,19),
('#564','Tirtouga',4,12),
('#565','Carracosta',4,12),
('#566','Archen',12,16),
('#567','Archeops',12,16),
('#568','Trubbish',9,19),
('#569','Garbodor',9,19),
('#570','Zorua',13,19),
('#571','Zoroark',13,19),
('#572','Minccino',15,19),
('#573','Cinccino',15,19),
('#574','Gothita',7,19),
('#575','Gothorita',7,19),
('#576','Gothitelle',7,19),
('#577','Solosis',7,19),
('#578','Duosion',7,19),
('#579','Reuniclus',7,19),
('#580','Ducklett',4,16),
('#581','Swanna',4,16),
('#582','Vanillite',5,19),
('#583','Vanillish',5,19),
('#584','Vanilluxe',5,19),
('#585','Deerling',15,1),
('#586','Sawsbuck',15,1),
('#587','Emolga',6,16),
('#588','Karrablast',2,19),
('#589','Escavalier',2,14),
('#590','Foongus',1,9),
('#591','Amoonguss',1,9),
('#592','Frillish Female',4,8),
('#592','Frillish Male',4,8),
('#593','Jellicent Female',4,8),
('#593','Jellicent Male',4,8),
('#594','Alomomola',4,19),
('#595','Joltik',2,6),
('#596','Galvantula',2,6),
('#597','Ferroseed',1,14),
('#598','Ferrothorn',1,14),
('#599','Klink',14,19),
('#600','Klang',14,19),
('#601','Klinklang',14,19),
('#602','Tynamo',6,19),
('#603','Eelektrik',6,19),
('#604','Eelektross',6,19),
('#605','Elgyem',7,19),
('#606','Beheeyem',7,19),
('#607','Litwick',8,3),
('#608','Lampent',8,3),
('#609','Chandelure',8,3),
('#610','Axew',18,19),
('#611','Fraxure',18,19),
('#612','Haxorus',18,19),
('#613','Cubchoo',5,19),
('#614','Beartic',5,19),
('#615','Cryogonal',5,19),
('#616','Shelmet',2,19),
('#617','Accelgor',2,19),
('#618','Stunfisk',11,6),
('#619','Mienfoo',10,19),
('#620','Mienshao',10,19),
('#621','Druddigon',18,19),
('#622','Golett',11,8),
('#623','Golurk',11,8),
('#624','Pawniard',13,14),
('#625','Bisharp',13,14),
('#626','Bouffalant',15,19),
('#627','Rufflet',15,16),
('#628','Braviary',15,16),
('#629','Vullaby',13,16),
('#630','Mandibuzz',13,16),
('#631','Heatmor',3,19),
('#632','Durant',2,14),
('#633','Deino',13,18),
('#634','Zweilous',13,18),
('#635','Hydreigon',13,18),
('#636','Larvesta',2,3),
('#637','Volcarona',2,3),
('#638','Cobalion',14,10),
('#639','Terrakion',12,10),
('#640','Virizion',1,10),
('#641','Tornadus Incarnate Form',16,19),
('#641','Tornadus Therian Form',16,19),
('#642','Thundurus Incarnate Form',6,16),
('#642','Thundurus Therian Form',6,16),
('#643','Reshiram',18,3),
('#644','Zekrom',18,6),
('#645','Landorus Incarnate Form',11,16),
('#645','Landorus Therian Form',11,16),
('#646','Kyurem',18,5),
('#646','Black Kyurem',18,5),
('#646','White Kyurem',18,5),
('#647','Keldeo Ordinary/Resolute Form',4,10),
('#648','Meloetta Aria Form',15,7),
('#648','Meloetta Pirouette Form',15,10),
('#649','Genesect',2,14),
('#650','Chespin',1,19),
('#651','Quilladin',1,19),
('#652','Chesnaught',1,10),
('#653','Fennekin',3,19),
('#654','Braixen',3,19),
('#655','Delphox',3,7),
('#656','Froakie',4,19),
('#657','Frogadier',4,19),
('#658','Greninja',4,13),
('#658','Ash-Greninja',4,13),
('#659','Bunnelby',15,19),
('#660','Diggersby',15,11),
('#661','Fletchling',15,16),
('#662','Fletchinder',3,16),
('#663','Talonflame',3,16),
('#664','Scatterbug',2,19),
('#665','Spewpa',2,19),
('#666','Vivillon',2,16),
('#667','Litleo',3,15),
('#668','Pyroar',3,15),
('#669','Flabébé',17,19),
('#670','Floette',17,19),
('#671','Florges',17,19),
('#672','Skiddo',1,19),
('#673','Gogoat',1,19),
('#674','Pancham',10,19),
('#675','Pangoro',10,13),
('#676','Furfrou',15,19),
('#677','Espurr',7,19),
('#678','Meowstic Male',7,19),
('#678','Meowstic Female',7,19),
('#679','Honedge',14,8),
('#680','Doublade',14,8),
('#681','Aegislash',14,8),
('#682','Spritzee',17,19),
('#683','Aromatisse',17,19),
('#684','Swirlix',17,19),
('#685','Slurpuff',17,19),
('#686','Inkay',13,7),
('#687','Malamar',13,7),
('#688','Binacle',12,4),
('#689','Barbaracle',12,4),
('#690','Skrelp',9,4),
('#691','Dragalge',9,18),
('#692','Clauncher',4,19),
('#693','Clawitzer',4,19),
('#694','Helioptile',6,15),
('#695','Heliolisk',6,15),
('#696','Tyrunt',12,18),
('#697','Tyrantrum',12,18),
('#698','Amaura',12,5),
('#699','Aurorus',12,5),
('#700','Sylveon',17,19),
('#701','Hawlucha',10,16),
('#702','Dedenne',6,17),
('#703','Carbink',12,17),
('#704','Goomy',18,19),
('#705','Sliggoo',18,19),
('#706','Goodra',18,19),
('#707','Klefki',14,17),
('#708','Phantump',8,1),
('#709','Trevenant',8,1),
('#710','Pumpkaboo',8,1),
('#711','Gourgeist',8,1),
('#712','Bergmite',5,19),
('#713','Avalugg',5,19),
('#714','Noibat',16,18),
('#715','Noivern',16,18),
('#716','Xerneas',17,19),
('#717','Yveltal',13,16),
('#718','Core Zygarde',18,11),
('#718','Cell Zygarde',18,11),
('#718','Zygarde 10% Form',18,11),
('#718','Zygarde 50% Form',18,11),
('#718','Zygarde 100% Form',18,11),
('#719','Diancie',12,17),
('#720','Confined Hoopa',7,8),
('#720','Unbound Hoopa',7,13),
('#721','Volcanion',3,4),
('#722','Rowlet',1,16),
('#723','Dartrix',1,16),
('#724','Decidueye',1,8),
('#725','Litten',3,19),
('#726','Torracat',3,19),
('#727','Incineroar',3,13),
('#728','Popplio',4,19),
('#729','Brionne',4,19),
('#730','Primarina',4,17),
('#731','Pikipek',15,16),
('#732','Trumbeak',15,16),
('#733','Toucannon',15,16),
('#734','Yungoos',15,19),
('#735','Gumshoos',15,19),
('#736','Grubbin',2,6),
('#737','Charjabug',2,6),
('#738','Vikavolt',2,6),
('#739','Crabrawler',10,19),
('#740','Crabominable',10,5),
('#741','Oricorio',3,16),
('#741','Oricorio',6,16),
('#741','Oricorio',7,16),
('#741','Oricorio',8,16),
('#742','Cutiefly',2,17),
('#743','Ribombee',2,17),
('#744','Rockruff',12,19),
('#745','Lycanroc',12,19),
('#746','Wishiwashi',4,19),
('#747','Mareanie',9,4),
('#748','Toxapex',9,4),
('#749','Mudbray',11,19),
('#750','Mudsdale',11,19),
('#751','Dewpider',4,2),
('#752','Araquanid',4,2),
('#753','Fomantis',1,19),
('#754','Lurantis',1,19),
('#755','Morelull',1,17),
('#756','Shiinotic',1,17),
('#757','Salandit',3,9),
('#758','Salazzle',3,9),
('#759','Stufful',15,10),
('#760','Bewear',15,10),
('#761','Bounsweet',1,19),
('#762','Steenee',1,19),
('#763','Tsareena',1,19),
('#764','Comfey',17,19),
('#765','Oranguru',15,7),
('#766','Passimian',10,19),
('#767','Wimpod',2,4),
('#768','Golisopod',2,4),
('#769','Sandygast',8,11),
('#770','Palossand',8,11),
('#771','Pyukumuku',4,19),
('#772','Type:Null',15,19),
('#773','Silvally',15,19),
('#773','Grass Silvally',1,19),
('#773','Bug Silvally',2,19),
('#773','Fire Silvally',3,19),
('#773','Water Silvally',4,19),
('#773','Ice Silvally',5,19),
('#773','Electric Silvally',6,19),
('#773','Psychic Silvally',7,19),
('#773','Ghost Silvally',8,19),
('#773','Poison Silvally',9,19),
('#773','Fighting Silvally',10,19),
('#773','Ground Silvally',11,19),
('#773','Rock Silvally',12,19),
('#773','Dark Silvally',13,19),
('#773','Steel Silvally',14,19),
('#773','Flying Silvally',16,19),
('#773','Fairy Silvally',17,19),
('#773','Dragon Silvally',18,19),
('#774','Minior',12,16),
('#775','Komala',15,19),
('#776','Turtonator',3,18),
('#777','Togedemaru',6,14),
('#778','Mimikyu',8,17),
('#779','Bruxish',4,7),
('#780','Drampa',15,18),
('#781','Dhelmise',8,1),
('#782','Jangmo-o',18,19),
('#783','Hakamo-o',18,10),
('#784','Kommo-o',18,10),
('#785','Tapu Koko',6,17),
('#786','Tapu Lele',7,17),
('#787','Tapu Bulu',1,17),
('#788','Tapu Fini',4,17),
('#789','Cosmog',7,19),
('#790','Cosmoem',7,19),
('#791','Solgaleo',7,14),
('#792','Lunala',7,8),
('#793','Nihilego',12,9),
('#794','Buzzwole',2,10),
('#795','Pheromosa',2,10),
('#796','Xurkitree',6,19),
('#797','Celesteela',14,16),
('#798','Kartana',1,14),
('#799','Guzzlord',13,18),
('#800','Necrozma',7,19),
('#801','Magearna',14,17),
('#802','Marshadow',10,8),
('Mega','Mega Venusaur',1,9),
('Mega','Mega Charizard X',3,18),
('Mega','Mega Charizard Y',3,16),
('Mega','Mega Blastoise',4,19),
('Mega','Mega Beedrill',2,9),
('Mega','Mega Pidgeot',15,16),
('Mega','Mega Alakazam',7,19),
('Mega','Mega Slowbro',4,7),
('Mega','Mega Gengar',8,9),
('Mega','Mega Kangaskhan',15,19),
('Mega','Mega Pinsir',2,16),
('Mega','Mega Gyarados',4,13),
('Mega','Mega Aerodactyl',12,16),
('Mega','Mega Mewtwo X',7,10),
('Mega','Mega Mewtwo Y',7,19),
('Mega','Mega Ampharos',6,18),
('Mega','Mega Steelix',14,11),
('Mega','Mega Scizor',2,14),
('Mega','Mega Heracross',2,10),
('Mega','Mega Houndoom',13,3),
('Mega','Mega Tyranitar',12,13),
('Mega','Mega Sceptile',1,18),
('Mega','Mega Blaziken',3,10),
('Mega','Mega Swampert',4,11),
('Mega','Mega Gardevoir',7,17),
('Mega','Mega Sableye',13,8),
('Mega','Mega Mawile',14,17),
('Mega','Mega Aggron',14,19),
('Mega','Mega Medicham',10,7),
('Mega','Mega Manectric',6,19),
('Mega','Mega Sharpedo',4,13),
('Mega','Mega Camerupt',3,11),
('Mega','Mega Altaria',18,17),
('Mega','Mega Banette',8,19),
('Mega','Mega Absol',13,19),
('Mega','Mega Glalie',5,19),
('Mega','Mega Salamence',18,16),
('Mega','Mega Metagross',14,7),
('Mega','Mega Latias',18,7),
('Mega','Mega Latios',18,7),
('Mega','Mega Rayquaza',18,16),
('Mega','Mega Lopunny',15,10),
('Mega','Mega Garchomp',18,11),
('Mega','Mega Lucario',10,14),
('Mega','Mega Abomasnow',1,5),
('Mega','Mega Gallade',7,10),
('Mega','Mega Audino',15,17),
('Mega','Mega Diancie',12,17),
('Primal','Primal Kyogre',4,19),
('Primal','Primal Groudon',11,3)
/****** Object:  StoredProcedure [dbo].[sp_update_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
/****** Object:  StoredProcedure [dbo].[sp_update_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Update record in tb_fabricante table
-- Parameters:     @p_id_fabricante INT - PK
--                 @p_nome      VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_tipo]
    @p_id_tipo INT
  , @p_nome      VARCHAR(50)
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_tipo
           SET nome  = @p_nome
         WHERE id_tipo = @p_id_tipo;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_fabricante table
-- Parameters:     @p_nome  VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_tipo] 
	-- Add the parameters for the stored procedure here
	@p_nome  VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_tipo
	         (
			   nome
			 )
      VALUES (
	           @p_nome
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_fabricante table
--                 by id
-- Parameters:     @p_id_fabricante INT - PK
-- Return values:  id_fabricante INT
--                 nome      VARCAHR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================

/****** Object:  StoredProcedure [dbo].[sp_select_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_fabricante table
-- Parameters:
-- Return values:  id_fabricante INT
--                 nome      VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        SELECT id_tipo
             , nome
          FROM tb_tipo;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
CREATE PROCEDURE [dbo].[sp_update_tipo2]
    @p_id_tipo2 INT
  , @p_nome      VARCHAR(50)
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_tipo2
           SET nome  = @p_nome
         WHERE id_tipo2 = @p_id_tipo2;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_fabricante table
-- Parameters:     @p_nome  VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_tipo2] 
	-- Add the parameters for the stored procedure here
	@p_nome  VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_tipo2
	         (
			   nome
			 )
      VALUES (
	           @p_nome
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_fabricante table
--                 by id
-- Parameters:     @p_id_fabricante INT - PK
-- Return values:  id_fabricante INT
--                 nome      VARCAHR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================

/****** Object:  StoredProcedure [dbo].[sp_select_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_fabricante table
-- Parameters:
-- Return values:  id_fabricante INT
--                 nome      VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo2] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        SELECT id_tipo2
             , nome
          FROM tb_tipo2;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_produto_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_produto table
--                 by id
-- Parameters:     @p_id INT - PK
-- Return values:  id_produto   INT
--                 nome        VARCAHR(50)
--                 id_fabricante   INT
--                 nome_fabricante VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================

/****** Object:  StoredProcedure [dbo].[sp_select_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_produto table
-- Parameters:
-- Return values:  id_produto   INT
--                 nome        VARCAHR(50)
--                 id_fabricante   INT
--                 nome_fabricante VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_pokemon] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
            SELECT b.id_pokemon
			,b.num_pokedex
                 , b.nome
                 ,b.id_tipo
				 , c.nome      as nome_tipo
				 ,b.id_tipo2
				 , d.nome      as nome_tipo2
              FROM tb_pokemon b
        INNER JOIN tb_tipo c
                ON b.id_tipo = c.id_tipo
				INNER JOIN tb_tipo2 d
                ON b.id_tipo2 = d.id_tipo2
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_produto table
-- Parameters:     @p_nome      VARCHAR(50)
--                 @p_id_fabricante INT
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage  VARCHAR(2000)
--                 @ErrorSeverity TINYINT
--                 @ErrorState    TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_pokemon] 
	-- Add the parameters for the stored procedure here
	@p_num_pokedex            VARCHAR(50)
	,@p_nome            VARCHAR(50)	
  , @p_id_tipo       INT
   , @p_id_tipo2       INT
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_pokemon
	         (
			 num_pokedex
			   ,nome
			 , id_tipo
			 , id_tipo2
			 )
      VALUES (
	  @p_num_pokedex
	           ,@p_nome
             , @p_id_tipo
			 , @p_id_tipo2
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Update record in tb_produto table
-- Parameters:     @p_id_produto INT - PK
--                 @p_nome      VARCHAR(50)
--                 @p_id_fabricante INT
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_pokemon]
    @p_id_pokemon INT
	,@p_num_pokedex            VARCHAR(50)
  , @p_nome      VARCHAR(50)
  , @p_id_tipo INT
  , @p_id_tipo2 INT
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_pokemon
           SET num_pokedex = @p_num_pokedex 
		     ,nome         = @p_nome
             , id_tipo    = @p_id_tipo
			 , id_tipo2    = @p_id_tipo2
         WHERE id_pokemon = @p_id_pokemon;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  ForeignKey [FK_tb_produto_tb_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
ALTER TABLE [dbo].[tb_pokemon]  WITH CHECK ADD  CONSTRAINT [FK_tb_pokemon_tb_tipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tb_tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[tb_pokemon] CHECK CONSTRAINT [FK_tb_pokemon_tb_tipo]
GO
ALTER TABLE [dbo].[tb_pokemon]  WITH CHECK ADD  CONSTRAINT [FK_tb_pokemon_tb_tipo2] FOREIGN KEY([id_tipo2])
REFERENCES [dbo].[tb_tipo2] ([id_tipo2])
GO
ALTER TABLE [dbo].[tb_pokemon] CHECK CONSTRAINT [FK_tb_pokemon_tb_tipo2]
GO