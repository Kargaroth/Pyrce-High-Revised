obj/var
	iweight=0
mob
	proc/UserReset()
		if(src.client)
			src.RestoreUser()
			src << "-----------------------------------------------"
			src << "- Welcome to the Pyrce High Public Beta Test!"
			src << "- Listen to the Host and Admins, they have the authority."
			src << "- Behave yourselves and enjoy the game so it can be fun for everyone."
			src << "- Found a bug or have a suggestion? Visit our forums!"
			src << "- Visit our <a href=http://pyrcehigh.crazy4us.com/forums>forums here</a>"
			src << "--MasterBraska."
	proc/UserReset2()
		if(src.client)
			src.RestoreUser()
mob/client/see_infrared=1
var/const/Title_Secret='titlesecret.ogg'
var/const/Title_Ghost='title_ghost.ogg'
mob/proc/GameTitle()
	if(src.client)
		src << sound(null)
		sleep(2)
		if(gamemode=="Secret"||oldmode=="Secret")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_Secret, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleSecret)
		else if(gamemode=="Normal" || gamemode=="Extended")
			src.loc=locate(/turf/Locations/Title)
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_Normal, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
		else if(gamemode=="Zombie")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_Zombie, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleZ)
		else if(gamemode=="Death Note"||gamemode=="Death Note Classic")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_DN, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleDN)
		else if(gamemode=="Witch")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_Witch, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleWitch)
		else if(gamemode=="Doppelganger")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound('Title_DG.ogg', 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleDoppel)
		else if(gamemode=="Vampire")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound('title_Vampire.ogg', 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/TitleN)
		else if(gamemode=="Ghost")
			if(src.mutemusic==1)goto enderz
			var/sound/S = sound(Title_Ghost, 1, 0, 100, src.mastervolume ) //Output the sound to the client with the desired volume
			src<<S
			src.playi=S
			:enderz
			src.loc=locate(/turf/Locations/Title_Ghost)
	else return 0
var/beatricesee=2
var/adminicon				='crown.dmi'
mob/var
	chatavatar				='speech.dmi'
	charhairavatar=null
	dexterity=20
	charhairavatarcolor=null
	chrslotted=1
	chrslot1hair=null
	chrslot1haircolor=null
	chrslot1name=null
	chrslot2hair=null
	chrslot2haircolor=null
	chrslot2name=null
	chrslot3hair=null
	chrslot3haircolor=null
	chrslot3name=null
	slender=0
	chrslot3gender=null
	chrslot2gender=null
	chrslot1gender=null
	istyping=0
	rpboxwidth=15
	rpchatcolor="#ff8080"
	unlock1="????????"
	unlock2="????????"
	unlock3="????????"
	unlock4="????????"
	unlock5="????????"
	unlock6="????????"
	unlock7="????????"
	unlock8="????????"
	rpchat=0
	mutesfx=0
	showlists=1
	mutemusic=0
	currentrole=null
	classickira=0
	classicshinigamieyes=0
	setage=18
	setprofile=""
	stamupdater=0
	spawnedinroom=null
	playi=null
	alignment=0
	infectionupdater=0
	infspr=0
	mastervolume=100
	dashing=0
	coins=0
	origname=null
	isL=0
	LContacted=0
	hairtype=null
	gsticks=0
	mykey=null
	thirst=0
	var/list/overlayers=new/list()
	nanaya=0
	//s_bubble=99
	fightfont="<font face=Arial><b>"
	glassesoff=0
	vampire=0
	premicon=0
	premiconed=null
	stamgain
	dante=0
	norole=0
	realname=null
	sub=0
	canchop=1
	portal=0
	seewatcher=1
	zombie=0
	toggledflies=0
	bloodstepper=0
	originalnum=0
	cooltime=0
	cursed=0
	teddy=0
	noclickself=0
	rabbit=0
	helpbtn[]=list(new/Buttons/Help)
	realkey=null
	pdanumber=null
	voted=0
	bleeding=0
	numberhold="none"
	numberhold2="none"
	infected=0
	numberhold3="none"
	running=0
	pdaing=0
	infection=0
	suspect=0
	beatrice=0
	butterfly=0
	dragoned=0
	computer=0
	moving=0
	weight=0
	ai=0
	chatcolor="#ff8080"
	chattercolor="#ff8080"
	unlocks=null
	myx=0
	myy=0
	dead=0
	bern=0
	oldicon=null
	bodysearch=0
	myz=0
	myloc=null
	lastloc=null
	alias=null
	stammer=0
	joiner=0
	addresser
	pulling=0
	padding=0
	bloodspot=0
	pulled=0
	slot1=null
	slot2=null
	slot3=null
	slot4=null
	barrier=0
	barriercool=0
	slot5=null
	ronove=0
	cantel=1
	hotkeyuse=null
	target=0
	haircolor=null
	lastmove=0
	attack=1
	usingcamera=0
	koed=0
	isHS=0
	toucheddn=0
	isBoss=0
	shineyes=0
	shinigami=0
	equipped=null
	joined=0
	Resurrected=0
	canlaugh=1
	canattack=1
	wait=0
	looking=null
	killer=0
	virg=0
	washing=0
	kira=0
	shinigamieyes=0
	usingswitchbox=0
	bloody=0
	stamina=100
	equipname=null
	playing=0
	hp=100
	maxhp=100
	watching=0
	logged=0
	frozen=0
	Chatting=0
	movespeed = 1
	Chosen=0
	//ai
	Get_Target=null


var/motd={"
	<html>
	<title>MOTD - Pyrce High</title>
	<body>
	<STYLE>BODY{background-color: black; color:white}</STYLE>
	<table cellpadding="0" cellspacing="0" border="0" align="center">
	<td>
	<center><u><font size=4><font color=red>Pyrce High</center></u></font></font size><p>

	[motdmessage]<p>
	</td>
	</table>
	</body>
	</html>
	"}
var/motdmessage={"
<center>
Welcome to Pyrce High.<BR>
This game is strictly roleplay and can be very fun!<BR>
Please abide by the rules the host states.<p>
</center>
"}
var/rpmode="Light Roleplay"
var/hours=10
//var/aaim=1
//var/pvp=0
//var/max_lives=3
var/escapedoor="On"
var/autopoll=1
var/maploading=0
var/multikey="Off"
var/voting=1
var/mapp="Default"
var/computeruse="On"
var/attackdelayer=0
var/gamesleephours=4200
var/attackdelay="Off"
var/hoarddelay="Off"
var/requestended=0
var/hushchat=0
var/timer=0
var/tapes=null
var/vents="On"
var/llevel="Normal"
var/kiradisabled=0
var/bossspawned=0
var/bosssa=0
var/autohostdelay=3000
var/autohostshowdelay=5
var/autohostcount=0
var/nomounting=1
var/protect=0
var/spawnrate="Normal"
var/gamemode="Death Note Classic"
var/worldstatus=null
var/gamehour=6
var/gameminute=00
var/ampm="PM"
var/hoardlimit="Off"
var/classiccharacterpick=0
var/gamehours=5
var/redkills=0
var/td=0
var/joined=null
var/femaleslot=0
var/maleslot=0
var/playersjoined=0
var/hoarddelayer=0
var/maxplayers=22
var/uniform=0
var/monitorhair=null
var/lj=0
var/gversion="2.5.7c"
var/GameStarting=0
var/list/deadlist=new/list()
var/list/escapelist=new/list()
var/list/alivelist=new/list()
var/list/joinedpeople=new/list()
var/list/zombielist=new/list()
var/list/joinlist=new/list()
var/Custom=0
var/suspectuse=0
var/timeleft=12
var/zombiesleft=0
var/GameOver=0
var/polldelay=600
var/pollshowdelay=5
var/gamehoursleep=4200
var/hostedcolor="black"
var/rebooting=0
var/GameOn=0
var/host=null
var/joiner=null
var/Host="Unknown"
var/doornumber=100
var/maxpeople=16
var/berk="Off"
var/autohost=0
var/zombiego=1
var/pagesfound=0
var/tapesfunction="On"
var/keycardfunction="On"
var/newlightingallmodes=0
proc/WorldReset()
	maploading=0
	voting=0
	suspectuse=0
	oldmode=null
	attackdelayer=0
	requestended=0
	hoarddelayer=0
	hushchat=0
	timer=0
	tapes=null
	bossspawned=0
	bosssa=0
	nomounting=1
	protect=0
	gamehour=6
	gameminute=00
	ampm="PM"
	gamehours=5
	redkills=0
	td=0
	joined=null
	femaleslot=0
	maleslot=0
	playersjoined=0
	pagesfound=0
	monitorhair=null
	lj=0
	gversion="2.5.7c"
	GameStarting=0
	sleep(1)
	deadlist=new/list()
	sleep(1)
	escapelist=new/list()
	sleep(1)
	alivelist=new/list()
	sleep(1)
	joinedpeople=new/list()
	sleep(1)
	zombielist=new/list()
	sleep(1)
	joinlist=new/list()
	sleep(1)
	charpopper=new/list()
	killerpopper=new/list()
	sleep(1)
	timeleft=12
	zombiesleft=0
	GameOver=0
	beatricesee=2
	rebooting=0
	GameOn=0
	host=null
	joiner=null
	Host="Unknown"
	doornumber=100
	berk="Off"
	zombiego=1
	namedlist=new/list()
	namedlist2=new/list()
	malecharacters=list("Blue","Black","Silver","Red","Purple","Orange","Amber","Blonde","Green","Gray","Brown")
	femalecharacters=list("Blue","Black","Silver","Red","Purple","Orange","Blonde","Pink","Green","Gray","Brown")
	//femalechar=list('whitehairedgirl.dmi','girlwithpigtails.dmi','pinkhairedgirl.dmi','greenhairedgirl.dmi','redhairedgirl.dmi','bluehairedgirl.dmi','brownhairedgirl.dmi','blackhairedgirl.dmi','orangehairedgirl.dmi','silverhairedgirl.dmi','purplehairedgirl.dmi')
	//malechar=list('sunglassedboy.dmi','orangehairedboy.dmi','brownhairedmale.dmi','bluehairedboy.dmi','goggledboy.dmi','grayhairedmale.dmi','greenhairedboy.dmi','purplehairedboy.dmi','silverhairedboy.dmi','redhairedboy.dmi','blackhairedmale.dmi')
	LastNames=list("Furude",
"Houjou",
"Sonozaki",
"Tohno",
"Ryuugu",
"Nagato",
"Asahina",
"Suzumiya",
"Nakamura",
"Kobayashi",
"Saito",
"Tanaka",
"Watanabe",
"Takahashi",
"Ito",
"Yamamoto",
"Sasaki",
"Seta",
"Hayashi",
"Kimura",
"Mori",
"Maeda",
"Endo",
"Miura",
"Matsuda",
"Nakagawa",
"Yagami",
"Tenma",
"Osaka",
"Rando",
"Kawada",
"Sugimura",
"Tachibana",
"Kimiji",
"Nanahara",
"Kotohiki",
"Liebert",
"Saeki",
"Saginomiya",
"Kiriyama",
"Mimura",
"Matsui",
"Mido",
"Chigusa",
"Aizawa",
"Sunderland",
"Phoenix",
"Amane",
"Asagami",
"Ryogi",
"Yumizuka",
"Uryu",
"Ayasaki",
"Emiya",
"Katsura",
"Kijima",
"Nishizawa",
"Nonohara",
"Takamachi",
"Kira",
"Komuro",
"Washizu",
"Mudo",
"Andou",
"Ishida",
"Busujima",
"Hirano",
"Takagi",
"Yagami",
"Amano",
"Itou",
"Hideki",
"Takana",
"Ito",
"Suzuki",
"Watanabe",
"Sasaki",
"Meguruno",
"Ushiromiya",
"Houjou",
"Gasai",
"Kurisu",
"Rintarou",
"Mayuri",
"Katsuragi",
"Yuzuru",
"Tachibana",
"Amane",
"Saito",
"Prescott",
"Yura",
"Mishiba",
"Atta",
"Etsu",
"Tohno",
"Katsura",
"Hirano",
"Komuro",
"Takagi",
"Minami")

	FemaleFirstNames=list("Aisa",
"Aishun",
"Akako",
"Akae",
"Akane",
"Akemi",
"Akeno",
"Beni",
"Chiaki",
"Chinatsu",
"Choyo",
"Eho",
"Hana",
"Harue",
"Harui",
"Hirari",
"Ino",
"Inoue",
"Iori",
"Ito",
"Itsuko",
"Jori",
"Joruri",
"Jun",
"Junka",
"Kae",
"Kagami",
"Kagome",
"Kaho",
"Kahori",
"Kahoru",
"Kana",
"Kanae",
"Kana",
"Kukiko",
"Kuma",
"Kyoumi",
"Leiko",
"Machi",
"Mai",
"Mami",
"Manami",
"Mari",
"Mio",
"Mizuko",
"Moanna",
"Moe",
"Momoko",
"Morie",
"Moto",
"Nishie",
"Nori",
"Noriko",
"Nui",
"Nyoko",
"Ochiyo",
"Oharu",
"Oki",
"Okichi",
"Ori",
"Orie",
"Orika",
"Orimi",
"Osami",
"Poemu",
"Raiko",
"Raira",
"Raku",
"Rakuko",
"Risu",
"Ritsuko",
"Roku",
"Rokuko",
"Romi",
"Rui",
"Ruka",
"Ruri",
"Ruriko",
"Ruru",
"Ryouko",
"Ryu",
"Sachi",
"Sachiko",
"Sada",
"Sai",
"Sako",
"Sae",
"Sayo",
"Sakura",
"Sato",
"Satsue",
"Sayo",
"Sukie",
"Sumi",
"Tani",
"Taru",
"Tatsu",
"Tetsu",
"Toki",
"Umika",
"Una",
"Wakiko",
"Wako",
"Wayoko",
"Wazuka",
"Yachi",
"Yae",
"Yaeko",
"Yufu",
"Yui",
"Yuiha",
"Yuka",
"Yukaho",
"Yumisa",
"Yuna",
"Yuno",
"Chiesa",
"Lain",
"Arisu")


	MaleFirstNames=list("Akako",
"Akemi",
"Akihiko",
"Akio",
"Akito",
"Akira",
"Bakin",
"Bakusui",
"Basho",
"Bishamon",
"Bokusui",
"Bokuyo",
"Botan",
"Chika",
"Chikaaki",
"Chikamasa",
"Chikao",
"Chishin",
"Dai",
"Daichi",
"Daigoro",
"Daishiro",
"Daisuke",
"Daitaro",
"Den",
"Denji",
"Doho",
"Doni",
"Eiichi",
"Eiji",
"Fuyu",
"Gen",
"Genjiro",
"Gendo",
"Genji",
"Genkei",
"Ginjiro",
"Gohachiro",
"Gokomatsu",
"Goro",
"Hachiuma",
"Haro",
"Haru",
"Harujiro",
"Haruka",
"Hideaki",
"Hideo",
"Hiro",
"Hiromasa",
"Hiroshi",
"Ichiro",
"Ietaka",
"Ike",
"Iku",
"Isamu",
"Isas",
"Ishi",
"Ishio",
"Isoroku",
"Izumi",
"Jien",
"Jiro",
"Joji",
"Jun",
"Junichi",
"Kaito",
"Kamenosuke",
"Kane",
"Kanji",
"Katsutoshi",
"Kazu",
"Ken",
"Kenichi",
"Kenji",
"Kenta",
"Kenzo",
"Kin",
"Kinshiro",
"Kiosho",
"Kita",
"Kiyoshi",
"Kobo",
"Koichi",
"Koji",
"Koki",
"Kouhei",
"Kumakichi",
"Masahiro",
"Masajun",
"Masashi",
"Masato",
"Masayoshi",
"Minoru",
"Nagataka",
"Naoko",
"Naoki",
"Noboru",
"Nobu",
"Ren",
"Rikio",
"Riku",
"Ringo",
"Ryouichi",
"Ryouta",
"Ryuu",
"Seiji",
"Sen",
"Shigeru",
"Shin",
"Shinjiro",
"Shouji",
"Shouhei",
"Shunshi",
"Shunsuke",
"Shuzo",
"Souta",
"Susumu",
"Tadashi",
"Takehiro",
"Takeshi",
"Takumi",
"Takuya",
"Tani",
"Taro",
"Tasou",
"Tatsuru",
"Tatsuya",
"Tetsuo",
"Tobikuma",
"Tokujiro",
"Toshi",
"Toyohisa",
"Tsubasa",
"Tsutomu",
"Umi",
"Yasahiro",
"Yasos",
"Yasuo",
"Yukio",
"Yutaka",
"Zen",
"Zero")
	charpopper=new/list()
	killerpopper=new/list()
	kiradie=new/list()
	updateworld()
