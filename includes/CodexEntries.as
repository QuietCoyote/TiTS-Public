﻿// This is the simplest method I can think of hooking up the codex functions into the tree structure for display
// It's janky as fuck, but it does work, at it means the actual codex "body" content can be done almost exactly
// like regular scenes are now.

public function configureCodex():void
{
	// Complex path tree entries DO work, but until we actually NEED to organise the data
	// (and I implement some kind of path folding), I don't think we should actually USE them more than say 1 deep (because the way addEntry works
	// requires at least a "root" path of some sort
	// At the very least, the "tree" view down the side of the UI supports scrolling, so its not a HUGE issue and it
	// can wait until we're at a point it needs to be fixed.
	
	// Other types of entries -- these are categorised under separate headings
	//CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_PERSON, "Test People", "Arty", testPersonEntryA);
	//CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_EVENT, "Test Events", "Buttsunder", testEventEntryA);
	//CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_LOCATION, "Some/Complex/Path/To", "Tentacool", testLocationEntryA);
	
	// This is how I'm proposing we split things up for now -- stuff things into a root category of the relevent system they belong too -- "Organic" etc might be a better long-term solution, but there'll be a lot
	// of categories that likely won't be very full for a LONG time going down that route
	
	
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Ausar", ausarCodexEntry, true);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Daynar",daynarCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Galotians", galotianCodexEntry, true);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Laquines",laquineCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Leithans",leithanCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Kaithrit",kaithritCodexEntry,true);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Kui-Tan",kuitanCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Ovir",ovirCodexEntry,true);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Rahn",rahnCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Simii",simiiCodex);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","Varmints",varmintCodex);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Core Worlds","V-Ko",VKoCodex);

	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Cunt Snakes", cuntSnakeCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Mimbranes", mimbraneCodexEntry, true);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Naleen", naleenCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Venus Pitchers", venusPitcherCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Vanae", vanaeCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Vanae: History", vanaeHistoryCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Mhen'ga", "Zil", zilCodexEntry);
	
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Myrellion", "Gold Myr", goldMyrmedionCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Myrellion", "Red Myr", redMyrmedionCodexEntry);
	
	
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Tarkus","Gray Goos",grayGooCodex);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Tarkus","Lapinara",lapinaraCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Tarkus","Raskvel",raskVelCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_RACE, "Tarkus","Sydians",sydianCodexEntry);
	
	
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_ITEM, "Illegal Items","Dumbfuck",dumbfuckCodexEntry);
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_ITEM, "Illegal Items","The Treatment",treatmentCodexEntry);

	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_ITEM, "Legal Items", "SynthSheath", synthSheathCodex);
	
	CodexManager.addCodexEntry(CodexManager.CODEX_TYPE_ITEM, "Technology", "AI Systems", AISystemsCodexEntry, true);
	
	
	
}

public function codexHomeFunction():void
{
	// Written in style of technical documentation because why not.
	clearOutputCodex();
	userInterface.showBust("NONE");
	outputCodex("Welcome to the Steele Industries® Computerised Observational Directory of Environmental eXposure® (CODEX™), version 12b.");
	outputCodex("\n\nThe Steele Industries® CODEX™ system has been designed to provide emergency-level informative warnings of Class 4 environmental and Class M biological hazards to a designated user of the device and will notify the user should the CODEX™ device detect such a hazard within a defined unsafe radius.");
	outputCodex("\n\nSystem usability has been designed for rapid dissemination of information to the designated user when facing potentially life threatening situations. The following QuickStart™ documentation is always available from the CODEX™ root menu:");
	
	outputCodex("\n\nThe buttons displayed along the bottom edge of the CODEX™ display access the core information stores offered as part of the CODEX™ devices databases.");

	outputCodex("\n\nA more detailed menu for each of the core databases is displayed to the right of the main display. Each header acts as a button to filter available records according to type.");

	outputCodex("\n\nAll displayed elements are color coded for ease of use and to ensure that the CODEX™ devices designated user can locate the information they require in a timely fashion.");
	outputCodex("\n\t<span class='new'>\\\[New Entries\\\]</span> are yellow.");
	outputCodex("\n\t<span class='viewed'>\\\[Viewed Entries\\\]</span> are white.");
	outputCodex("\n\t<span class='locked'>\\\[Missing Entries\\\]</span> are red.");
	outputCodex("\n\t<span class='active'>\\\[Active Entries\\\]</span> are blue.");

	outputCodex("\n\nSteele Industries® would like to thank [pc.name] for additionally equipping this CODEX™ device with the the following optional modules:");
	outputCodex("\n\tSteele Industries® Resource Acquisition System™ (RAS™)");
	outputCodex("\n\tSteele Industries® Automated Fringe Classifier™ (ScanNow™)");
	outputCodex("\n\tSteele Industries® Biosign Monitor Alerting™ (MedSign™)");
	outputCodex("\n\tSteele Industries® LIDAR Positioning System™ (L3P™)");

	outputCodex("\n\nOptional module documentation has been provided and loaded into the CODEX™ documentation databases. For more information, please review the optional module documentation at your earliest convenience.");
	outputCodex("\n\nCODEX-12b ready for user input.");

	userInterface.outputCodex();
}

function kaithritCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("TAMTAM");
	outputCodex(header("Kaithrit"));
	outputCodex("<i>Cat-girls with two tails? What's not to love? ...what do you mean they have males?</i>");
	outputCodex("\n<b>Name (Singular & Plural):</b> Kaithrit");
	outputCodex("\n<b>Genders:</b> Female, Male, statistically significant occurrence of hermaphroditism.");
	outputCodex("\n<b>Height:</b> Males range from 5' to 6'2” tall. Females and hermaphrodites range from 5'6\" to 7'3\".");
	outputCodex("\n<b>Hair:</b> Nominally, kaithrit only feature hair on their head and a fine layer of soft fur on their tails and ears. Fur and hair coloration is highly diverse; every color and hue seen on terran felines has been reported, but some have stranger colors.");
	outputCodex("\n<b>Eyes:</b> Kaithrit have two eyes in the normal humanoid position. These eyes are typically colored amber, hazel, brown, blue, green, gray, yellow, orange, black, yellow-green, blue-green, violet, copper or gold. Kaithrit have a slightly higher predisposition towards heterochromia than other races. They possess slitted feline pupils which give them much keener low-light vision than humans.\n\n");
	outputCodex(blockHeader("Features"));
	outputCodex("Kaithrit have the normal structure of bipedal humanoids, with two arms and two legs as well as a single head, and fundamentally human-like faces. The hands and feet feature long, sharp-tipped nails that are capable of extending slightly to form dagger-like claws, adept at slashing and piercing, though these are hardly ideal weapons against most modern forms of armor. They have a single pair of large, feline-like triangular ears atop their heads, which are capable of swiveling and moving just like those of a terran cat. Combine this with the fact that they have two tails sprouting from their rear that are also reminiscent of a terran cat, and it's no wonder that many humans consider them to be \"space catgirls\".\n\nThe strangest aspect of kaithrit is that they all appear, to a casual glance, female. Even males - or perhaps especially males - have a feminine appearance, being dainty, fine-boned and curvaceous.Females and hermaphrodites are naturally taller than the average male, and more voluptuous - they have larger breasts and buttocks as well as wider hips - but males are easily mistaken for females unless they deliberately flaunt their masculinity. Male genitalia tends to be small, with scrotums that hold themselves snugly against the groin in tight pouches, only furthering the confusion.\n\nMale kaithrit sexual organs are typically 5\" to 7\" long and 1\" thick, and are feline in nature, presenting a shaft covered in small nodules of flesh that provide a tantalisingly soft, bristly texture. However, some kaithrit instead have bristly-textured but ultimately canine phalluses, though this is a distinct minority - this is believed to be due to traces of ausar genetics.\n\nBreast size varies depending on sex; males never grow larger than an A-cup and are normally flat chested, despite their feminine physique, with lactating males swelling to a B-cup or, at the largest, a C. Females average between a C and an F-Cup.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("Although a widely scattered race that can be encountered across much of the known galaxy, with the existence of nomadic space-faring clans and families that happily establish themselves in human or ausar-created colonies alike being reliably documented, kaithrit do in fact have a homeworld. Known as Rosha, it is a lush, verdant orb that sits just slightly closer to its sun than Earth, resulting in an overall tropical and sub-tropical climate. Much of Rosha is grassland or open scrub forests, with dense jungles towards the cooler polar regions, vast mangrove swamps along the coastlines and a dense strip of arid savannas and bushland across the equators. Only at the very poles themselves do tundras and taigas form.\n\nAs a consequence, kaithrit are most comfortable in similar environments; the jungle-rich world of Mhen'gha is expected to see many of these aliens coming to settle, with its wild, lawless frontier world status sure to act as a magnet for this bold, brash species. However, Kaithrit have been seen all over the galaxy. Some of the more daring have succumbed to their wanderlust and taken to travelling through space, oftenly in clan crews, to colonise and seek their fortune abroad.\n\nThough it is true that many Kaithrit enjoy travelling through space, the truth is that the great majority of them are traditionalists unwilling to leave their home planet. Even if they do take trips to stations and other planets. After the Great Exodus, an event that marked the beginning of a new age, not many Kaithrit born on their homeworld choose to leave it.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Kaithrit reproduce in fundamentally normal mammalian style, with males impregnating females who then give birth to live young that are suckled on milk from their mammary glands. Furthering the gender confusion, males who remain in close, constant proximity to an expectant female. Pregnant kaithrit emit a steady wave of hormonal musk which can trigger a lactation response in males, swelling his breasts and allowing mother and father alike to nurse. Kaithrit pregnancy lasts approximately eight months after conception, and results in one to three kittens, though incidents of multiple births are quite low -- most pregnancies result in a single healthy child. Male hormonal balance tends to return to equilibrium faster than females, allowing them to recover from the effects of a female's pregnancy and return to their normal chest size quickly.\n\nConfirmed kaithrit crossbreeding has been documented between both humans and ausar. Human/kaithrit hybrids tend to have more human-like facial features and typically only have one tail. Ausar/kaithrit crossbreeds are most distinctive from purebred kaithrit because males and hermaphrodites typically have ausar-like phalluses, albeit usually with the typical kaithrit texturing.\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("The kaithrit are believed to have a rather human-like evolutionary story, beginning as tree-dwellers who, as the trees gave way to grassland, evolved towards a bipedal frame. As one may expect, the kaithrit's most distant ancestor was more feline than primate. Perhaps because of this, gender roles also evolved differently to humans; unlike human precursors, these proto-kaithrit were a matriarchal species. The females were, as they are today, bigger and stronger than the males, responsible for hunting and warring with other prides, while the males cared for the offspring. This inversion of standardised gender roles shows through in many aspects of kaithrit society; it is far more common for a female kaithrit to initiate a relationship than it is for the males, for instance.");
	outputCodex("\n\nHigher intelligence developed in-line with other observed evolution; with bipedal locomotion freeing the hands for other uses, sapience soon followed, the kaithrit becoming masters of tools and moulders of their environment. While many aspects of their feral past were discarded on the road to civilisation, others remained, and one of these is the social dominance of female over male. Male kaithirt are seen as creators, shapers, builders and caretakers, while females are seen as warriors, pioneers, adventurers and explorers. Men are kept to the background by society, due to the belief in their passivity and frailness; while things are not quite so bad that men are 'househusbands' with no greater role in life than to get married, father daughters and look after the house while the woman earns money to support, they are encouraged to take up more intellectual or otherwise passive roles.");
	outputCodex("\n\nIndeed, kaithrit society is in many ways stunningly sexist. Male kaithrit are forbidden to uphold matters of state or assume political roles, because it is believed they are too weak and inept to make hard, necessary decisions - indeed, this same belief holds them away from any position of power or control over others, especially over women. Society coddles them in many ways; males who commit crimes receive weaker punishment than females do, goods crafted by males attract more money, they receive better service in restaurants and stores. Indeed, it's surprising just how much they are favored - some xenobiologists and historians point to a significant difference in population ratios between males and females as the reason for these differences, with males being relatively less common than females. In some colony worlds, the lower occurrence of male births can be cause for a great deal of concern, and result in even more stringent constraints on male activity.\n\nThis is not to say that there is not a division between viewpoints on these aspects. While a distinct number of males are accepting of the impositions against their gender due to the privileges they receive, still others resent it and wish to bring their culture more in line with that of many others of the U.G.C., with true equality between the genders. This viewpoint became more popular amongst males, and even began gaining ground amongst the females after contact with other species was established, but it was the Great Exodus that caused the viewpoint to become the simmering underground faction that it is today.\n\nThe Great Exodus was the period immediately following the kaithrit’s contact with the U.G.C. The idea of other planets, people, whole other societies fascinated the kaithrit, and as a result the more daring females jumped at the chance to get a license and fly a starship to the great beyond. This was a time of great frustration for males; they were denied the rights to take the test for a license as they were deemed too frail to handle a spaceship. While this didn’t stop some males from stowing aboard visiting ships or even stealing ships for themselves, their restriction from starflight became a matter of great debate, and finally brought to light the fight for equality.\n\nOf course, it must be noted that this patronizing attitude towards males predominantly applies to the kaithrit of Rosha; offworlders, especially those who have many generations removed from the homeworld, are far less traditional.\n\n");
	outputCodex(blockHeader("Other Notes"));
	outputCodex("Hermaphrodites are an uncertainty in the kaithrit viewpoint of the world, and reactions can vary wildly from settlement to settlement. Perhaps as a response, hermaphroditic kaithrit have always been inclined towards nomadic behaviors.\n\nAs noted above, kaithrits have feline-like tails, with two to a specimen. These tails are functionally prehensile, if too weak in most cases to use for wielding weapons. An entire social strata exists within kaithrit society involving them; tail body-language is an important part of understanding kaithrits and how they communicate with each other. Motions, positioning, these can all speak volumes to another kaithrit or a trained observer. Contact with a tail is a social language in its own right.  Who a kaithrit touches, how, when, and where, are all bound by distinctive aspects of kaithrit proprietary. For example, a simple looping of one tail tip around another kaithrit's tail-tip signifies a friendly acquaintance and is a polite greeting, whilst doing the same with both tails on the same side is a gesture of sibling affection and doing it with one tail on either side, so that both Kaithrits must be facing each other, is a romantic gesture similar to a cuddle. More intimate tail-touches are supposed to be kept private or to the bedroom, but may be seen as an expression of dominance in a social context.\n\nWhen dealing with aliens, a kaithrit's tail-touching often serves as an indicator of social interest; they prefer to stroke the alien's tail, if they have one, but the buttocks and thighs will suffice. A side effect of this, though, is that most tail-touching gestures they can perform are signifiers of lust or camaraderie - the equivalent of a friendly spank on the ass, for example.\n");
	CodexManager.viewedEntry("Kaithrit");
}

function galotianCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("CELISE");
	outputCodex(header("Galotians"));
	outputCodex("<i>Galotians are voracious protein hunters, but they’re not truly dangerous.</i>");
	outputCodex("\n<b>Name (Singular):</b> Galotian");
	outputCodex("\n<b>Homeword:</b> Galotia");
	outputCodex("\n<b>Height & Weight:</b> Highly variable");
	outputCodex("\n<b>Coloration:</b> Highly variable, typically matches the local environs for camouflage purposes.");
	outputCodex("\nLifespan: Indefinite. Galotians show no signs of aging or cellular degeneration.\n\n");	
	outputCodex(blockHeader("History"));
	outputCodex("Galotians were the first species encountered with any true shape-shifting potential. Discovered during the chaotic second Planet Rush, they were originally thought hostile predators. Early explorers fought tooth and nail to stop themselves from being enveloped in the horrifying blobs of goo that rolled out of Galotia’s swamps with little success.\n\nThese unfortunate, first victims often did not survive the curious creature’s attentions. The galotians did not understand most species’ need to be exposed to gaseous oxygen in order to remain alive. Rather than devour the resulting corpses, the living oozes spat out the lifeless bodies and lumbered away. For no explicable reason, ‘Attacks’ died away almost entirely after the first week of contact with the rest of the galaxy. Plans to declare the planet unfit for colonization were scuttled, and more and more visitors came to the wet, swampy planet, seeking riches amongst the muck.\n\nGalotia was mineral poor, unfit for most kinds of farming, and only rich in diverse, if seemingly useless life. Interest in the planet died down until only a few long-term biological survey teams remained. They observed the native galotians enveloping other creatures, sometimes for hours at a time, then releasing them, seemingly unharmed.\n\nWhile studying this phenomenon, the scientists made little progress. It wasn’t until near the end of the survey that a massive and unexpected breakthrough finally happened.\n\nA galotian, one of the native blob monsters, appeared at the edge of camp in the shape of one of the younger, shapelier researchers. It was an almost perfect simulacrum aside from its monochromatic color scheme and glistening, wet skin. The galotian even molded her body to mimic the appearance of the scientist’s nightclothes.\n\nThen, it spoke in broken ausuri, apologizing for killing an explorer nearly a year ago.\n\nThe expedition was thrown into chaos. No one had thought these seemingly simple creatures could be sapient, and the very idea of one learning a core language unaided rattled every assumption about this planet and its ecosystem.\n\nThat galotian called herself Galos, and her influence paved the way for normalizing interactions between Galotia and the rest of the galaxy. Once galotian feeding habits were understood and the gooey aliens learned how not to kill their “prey”, they became sought-after companions the galaxy over.\n\nThe troubled history of Galotia is held up across the galaxy as the original success story of long-term planetary surveys and as reason enough to continue funding studies on every survivable rush planet.\n\n");
	outputCodex(blockHeader("Feeding Habits"));
	outputCodex("These sentient goo creatures are widely considered one of the most empathic beings in the known galaxy. Rather than devouring plants or flesh, they use their naturally mutable shape to stimulate their prey into releasing copious amounts of sexual fluids. They see it as trading pleasure for sustenance, a kind of self-imposed biological prostitution.\n\nThe concept of rape is something they struggle with as a race. Seeking consent goes against their every base instinct, but with sufficient exposure to galactic culture, they’re more than happy to only feed from willing lovers. Galotians are prized as shipboard companions by many a lonely captain, serving as a source of company and physical intimacy in an immense, dangerous galaxy.\n\nGalotians can subsist on almost anything: protein pastes, meats, plants, or even scraps of bone. They dislike such fare, seeming to desire bringing their food sources to climax almost as much as actually harvesting the resulting fluids.\n\n");
	outputCodex(blockHeader("Biology"));
	outputCodex("Galotians in their natural form appear as amorphous blobs of a single color. Natives are usually pale, muted colors, designed to fit in with their environment and allow them to surprise their aqueous prey for feeding. Those living in the greater galaxy have learned to eschew such subtle thinking, picking brilliant hues from every color of the rainbow to pigment their soupy forms with and shaping themselves into ludicrously endowed female forms, the better to procure semen. Vaginal secretions are far less nutritionally dense, though some galotians have taken on male appearances and demeanors to pursue races with abundant lactation or more useful secretions.\n\nTheir cells are highly conductive multipurpose organs, capable of relaying nervous system messages as easily as shifting nutrition around. These cells are more than ready to alter their purpose on demand, swapping between multiple sets of DNA in order to rebuild themselves for a new purpose. Some older, more experienced galotians are even capable of incredible feats of self-induced bio-engineering, producing chemical and biological cocktails to permanently increase a sexual partner’s usefulness as a food source.\n\nGalotians are as adept at feeding on their own cells as easily as anything else, causing them to grow or shrink in accordance with their nutritional needs. This is effectively a double-edged sword for these liquid ladies. Since every cell effectively functions as a neuron, a lack of feeding can lead to a loss in intellect. Starving galotians can become as small as a basketball before temporarily losing sapience. Death typically occurs soon after.\n\nOn the other side of the spectrum, extremely well fed galotians can grow as large as elephants. At this size they are at their peak physically, capable of shaping their mass in impressive ways. Oddly, they do not display a marked increase in rational intelligence. The extra processing power afforded by more neuron-like cells seems almost entirely dedicated to bioengineering their own form.\n\nFew galotians ever rise above average intelligence. Most consider them a fairly dim, easily excitable race, unaware of the brilliant bioengineering that they perform at an entirely subconscious level.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Galotians reproduce entirely asexually. Asexual reproduction has many disadvantages, but these ‘goo-girls’ get around most of them by virtue of their own malleability. They only reproduce when they have a large amount of body mass, and it is at this time that they’re best able to alter their own forms, even capable of adjusting the DNA strands in different portions of their bodies.\n\nEvery galotian will spawn a half dozen daughters once she accumulates enough body mass, each with her own hand-tailored, evolutionary adaptations. The young galotians emerge fully formed and, with a portion of their mother’s memories, often retaining abilities like speech and literacy in their entirety. The loss of so much mass will bring the mother down to a few hundred pounds of weight, her daughters each easily a little heavier than the average terran.\n\nKeeping a galotian from reproducing is easy. Simply manage her food intake so that she never grows too large. Of course, the chance to feed a galotian can be difficult to turn down, particularly if one has managed to alter your sexual organs or drive in any way.\n\n");
	outputCodex(blockHeader("Place in the U.G.C."));
	outputCodex("Galotians do not seek traditional jobs or employment. They desire warmth, companionship, and sexual fluids. Invariably, they wind up serving as sexual companions, indentured servants, or sources of cheap genital enhancement. Many serving in long term jobs soon forget about collecting payment so long as suitable living areas and food are present.\n\nNonpayment of a galotian indentured servant has been considered a serious felony after the parliament passed the Galotian Rights Act in response to a rash of mistreated goo-girls.\n\n");
	outputCodex(blockHeader("Backlash"));
	outputCodex("The Church of the One God maintains that galotians, and creatures like them, are demons given flesh to tempt us in this mortal realm. Many marriages have collapsed in response to galotian immigrations. Some worlds ban them from securing residency in order to prevent the disastrous effect they can have on monogamy. Others require troubled trios to enter into counseling together. Such treatments are reported to save 90% of marriages, even if the galotian winds up living with (and servicing) both partners.");
	CodexManager.viewedEntry("Galotians");
}

function simiiCodex():void
{
	clearOutputCodex();
	userInterface.showBust("EMBRY");
	//Species Codex Entry
	outputCodex(header("Simii"));
	outputCodex("(From order name Simiiformes / Simians)");
	outputCodex("\n</b>Name (Singular & Plural):<b> Simii");
	outputCodex("\n<b>Sexes:</b> Male, Female");
	outputCodex("\n<b>Height, Weight, Hair, And Eyes:</b> As terrans.");
	outputCodex("\n<b>Skin:<b> Fur on their forearms and lower legs, with human-like skin everywhere else.\n\n");

	outputCodex(blockHeader("Features"));
	outputCodex("Simii are very similar in appearance to humans, as they are both part of the primate family. They have long, prehensile, monkey-like tail, and large, rounded ears that sit high on the sides of their head. All simii have a 'birthmark' similar to a lined barcode on the back of their neck.\n\n");
	outputCodex("Their noses are somewhere between a human and a monkey's nose, slightly darker than the surrounding skin, and more button-like in appearance. Above their upper lip, they have a small monkey-like line travelling vertically upwards, stopping just before their nose.\n\n");
	outputCodex("On their body, simii typically have soft fur on their forearms and lower legs. Some, but not all simii also have a lighter shade of fur on their upper legs, biceps, and up their sides. Their faces, torso, bellies, and groin area are typically smooth and furless (though the latter does have pubic fur).\n\n");
	outputCodex("All simii  have hand-shaped feet that can be used to grab and manipulate objects, just like terran primates.\n\n");
	outputCodex("Simii have an extremely strong immune system that is both a blessing and a curse.  While it kills most known viruses and bacteria upon entering their bodies, it does the same to life-saving medical drugs and transformation treatments before they can take effect.\n\n");
	outputCodex("Simii are extremely resistant to any form of bodily change, for good or for ill, including implants.\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("Simii are a genetically designed species, based on terran primates. They were designed to act as stand in for humans before efficient, safe interstellar travel was invented. Their bodies were designed to be resistant to radiation damage to DNA in deep space, as well as unknown pathogens at their destination.\n\n");
	outputCodex("While many simii still perished between Earth and their final destination, those who survived are the ancestors of the modern simii.\n\n");
	outputCodex("The long time gap between simii colonization and human arrival gave the engineered species time to gain proper sapience and independence. After many fierce conflicts between terrans and the simii, the Terran-Space Coalition recognized them as a distinct species. Since then, humans have left the simii alone, and their relationship is much the same as with any other alien species.\n\n");
	outputCodex("To this day, simii are still born with a barcode birthmark on the back of their neck; a holdover from when they were first designed. Since this scanning technology has become obsolete, few know about the mark's original purpose, even among the simii.\n\n");
	outputCodex("The simii were not the only genetically altered primate species sent out by humans. These species and the simii are known collectively as 'primes'.\n\n");
	outputCodex(blockHeader("Environs and Society"));
	outputCodex("Simii inhabit a number of 'wild west' like colonial worlds that share no common government. They are traditional in nature, and very resistant to cultural influence. While simii deal with outsiders and treat guests warmly, they are hesitant to welcome outsiders permanently into their communities.\n\n");
	outputCodex("Most simii cities and towns are scattered across their planets in no particular pattern, governed by local law and nothing else. Family ties run deep, and being a simii outcast is the worst form of punishment bar death.\n\n");
	outputCodex("Simii professions are usually passed down from parent to child, with very strict gender roles.  This has lead to a number of dissatisfied simii youths finding their way into galactic society, trying to change their lot in life.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Simii have identical reproductive features to their human cousins, and do not experience the effects of oestrus.\n");
	CodexManager.viewedEntry("Simii");

}


function synthSheathCodex():void
{
	clearOutputCodex();
	outputCodex(header("Item: Xenogen Biotech SynthSheath"));
	outputCodex("The XenoGen Biotech SynthSheath was a prototypical effort in their genital modification program. The device consists of a depopulated cellular matrix which functions by microsyringes on the lip and inside the shaft injecting a potent cocktail of specialized microsurgeons, equine genetic material, and a powerful cell division stimulant. In the case of a male or hermaphroditic subject, the sheath takes the cells of the existing genitals, treats them with their new genetic makeup and migrates them to their place in the cellular matrix of the sheath.");
	outputCodex("\n\nFemale subjects attaching this device have their blood cells used to populate their new penis and testicles. The microsurgeons also insert a prostate near the device; genetic manipulation of the subject’s brain chemistry links the device to the subjects nervous, circulatory, and immune systems to prevent phantom limb disorder and tissue rejection.\n");
	CodexManager.viewedEntry("SynthSheath");
}


function varmintCodex():void
{
	clearOutputCodex();
	outputCodex(header("Hazard: Varmints"));
	outputCodex("<b>Name (Singular):</b> Varmint\n");
	outputCodex("One of the surviving native life forms on New Texas, the predatory creatures locally dubbed \"varmints\" are descendants from a much larger, more dangerous breed encountered by the settlers in their early days of colonization. Originally encountered as towering, dinosaur-like creatures with a penchant for flesh, the varmints' ancestors were nearly exterminated by overzealous colonist militias. Those that survived are of smaller, less dangerous and less intelligent sub-breeds.");
	outputCodex("\n\nTVarmints are a silicone-based life form, roughly resembling a very large Terran dog or perhaps lizard. They are covered with rough blue skin and long, sharp spikes that make them dangerous even when not attacking directly. Their jaws are extremely powerful, and they frequently attack by knocking an opponent to the ground and rending at the throat."); 
	outputCodex("\n\nVarmints are to be considered hostile when encountered, and may attack without provocation. Deaths caused by these creatures are very rare, but they can result in serious injury. It is advised to be armed with traveling outside city grounds on New Texas due to the widespread distribution of the varmint population.\n");
	CodexManager.viewedEntry("Varmints");
}
function leithanCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("ELLIE");
	outputCodex(header("Leithans"));
	outputCodex("<b>Name (Singular):</b> Leithan");
	outputCodex("\n<b>Sexes:</b> Male and Female");
	outputCodex("\n<b>Height:</b> Leithans can range from 8'6\" to 10' tall, with females usually slightly shorter and lighter than males. Their tauric frames are roughly 5' at the shoulders, with their humanoid halves ranging from three and a half to five additional feet.");
	outputCodex("\n<b>Hair:</b> Most Leithans have dark, stringy hair. Black, dark yellow, and shades of gray and brown are all common.");
	outputCodex("\n<b>Eyes:</b> Leithan eyes are bright and universally blue, with white storm patterns surrounding their twin irises. Leithans have exceptional eyesight, and a secondary eyelid allows them to see even in extreme brightness, as is common on their homeworld, without sacrificing their low-light vision.");
	outputCodex("\n<b>Ears:</b> Leithans have two large, sensitive ears which grow from the center of their brows, roughly two inches apart. Their ears are alert, but are soft and frequently flop back against their heads at high speeds or in emotive response. A secondary pair of ears are located where human ears are, on the sides of the head. While larger than a human's and gently tapered (some describe them as \"elfin\"), the secondary ears are for all intents and purposes without special function.\n\n");

	outputCodex(blockHeader("Combat"));
	outputCodex("Unlike many advanced species through the galaxy, the Leithans began as prey creatures on their homeworld, and have over the millennia developed several defensive adaptations to ward off the very large, unintelligent predators that attacked them. The first feature most people notice about a Leithan is her natural armor: while the tauric lower body is completely covered with thick, leathery scales (befitting the species' reptilian origin), the flanks, arms, legs, and tail are protected by a chitinous secondary layer. Leithan armor is thick enough to stop most low-caliber bullets, and even deflect low-grade laser fire at range; more importantly for the species, however, it is capable of withstanding the enormous pressure of most titanic predators' crushing maws, giving Leithans some defense against their native hunters.\n\n");
	outputCodex("Second, the Leithans have developed six powerful legs, allowing them unparalleled running speeds over short bursts. Leithan endurance is not above average, but their speed is usually enough to avoid or outrun danger before exhaustion sets in.\n\n");
	outputCodex("Third, Leithans have adapted bright warning signs on their armor plates. These yellow, bioluminescent patterns are unique to each Leithans, and serve to frighten off some larger predators, especially at night. The coloration of their warning lights has become iconic in Leithan culture, and many Leithans choose to dye their hair or decorate themselves with gold stripes and swirls, adding to the effect of their natural defense. The bioluminescent stripes have a variable brightness, controlled subconsciously by their owner: in times of extreme emotion or distress, they flare brighter, while when calm and relaxed, the lights are almost completely dimmed.\n\n");
	outputCodex(blockHeader("Environs"));
	outputCodex("The Leithan homeworld, a small planet orbiting Alpha Centauri (hence the common nickname for the species, Centaurins) is a vast, cold-weather desert and shrubland for the most part, punctuated by several dozen small seas, but no proper oceans. The atmosphere is naturally very dense and humid, with a water content much higher than that of Terra or Ausaril.\n\n");
	outputCodex("The most notable feature of the world are several species of truly titanic, flesh-consuming predators. Ranging from overly large, rudimentarily-intelligent humanoid reptiles standing six stories high to flying creatures vaguely reminiscent of mythological dragons whose wingspan can extend twenty yards in the largest cases, the Leithans arose on a world quite hostile to them, where they were regarded as little more than prey for the titan-class predators. Due to the inherent hostility of their world, many Leithans take the first flight out they can catch, and as such, the Leithan race has become one of the most widespread transplant or immigrant races throughout the galactic core. Relatively few choose to migrate to the fringe, especially during the Planet Rushes, as the Leithans are inherently skittish about danger and violence, and the rough-and-tumble nature of the frontier ill suits them.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("The Leithans propagate their race much as many reptilian species do. At certain times of the year (usually twice per year), the female will enter heat, and her body will begin producing a powerful attractive pheromone. This will cause nearby males to seek her out: due to the relative mortality of their race, most Leithan females will accept most if not all suitors to help ensure pregnancy. After a brief gestation period of about one month, she will lay a clutch of eggs, usually in her home or that of a trusted friend and caretaker. An average clutch is between four and six eggs, each of which is nearly two feet long. Eggs hatch after another month-long period, during which the mother will become highly defensive and easily agitated as her maternal instincts insist that she defend her \"nest.\"\n\n");
	outputCodex("After the U.G.C. \"uplifted\" the Leithan race during the early stages of the Planet Rush scheme, the race's reproductive habits have changed somewhat -- especially among those living away from the homeworld. With a dramatically higher survival rate off-world, Leithan males and females have become more comfortable in being selective with their partners, and recreational sex drive has become much higher. While Leithans still have a difficult time with the concept of monogamy, and most freely move between several partners, the idea of a female allowing any male to approach her in her \"heat\" period is nearly nonexistent now.\n\n");
	outputCodex("Unlike many sapient species, Leithans have a nearly 0% fertility rate when coupling with other species. Halfbreed Leithans are nearly unheard of, and almost always the result of genetic manipulation and non-natural fertilization. Because of this, and the higher sex drive among offworld Leithans, many Leithans of both sexes find themselves to be easy \"swingers,\" and eagerly skip the courting and dating process to open themselves up to several attractive partners of other species, since their couplings are virtually no-risk.\n\n");
	outputCodex(blockHeader("Culture & Society"));
	outputCodex("Before being uplifted, the Leithans existed as a nomadic species, desperately clinging to their precarious existence in the shadows of titanic predators. Divided into small tribes scattered across the desert, Leithans bands wandered from water source to water source. Over time, their technology advanced in small but important bursts: they discovered methods of water collection from the atmosphere fairly early on, and made great strides to domesticate smaller reptilian creatures which were able to aid them in hunting and alert them against impending attack.\n\n");
	outputCodex("Some Leithans attempted to protect themselves in high-walled cities, and because of this protection and stability, were marginally more successful and advanced than their roaming cousins when First Contact happened. Many of the walled cities had developed primitive flintlock-era firearms and cannons, with which they were able to fend off predator attacks -- one city even created primitive rockets to guard against aerial attacks. Since their uplifting by the U.G.C. in the Third Great Planet Rush, Leithan cities have become veritable fortresses against their one-time predators, and the race has eagerly adapted to the advanced technology the Confederacy brought with it. They have adapted so well, in fact, that in the modern day Leithans are valued as exceptional engineers and technicians, especially in regards to machine maintenance and robotic tech. Many top of the line drones, turrets, and unmanned vehicles are produced in Alpha Centauri or on Leithan colonies.\n\n");
	outputCodex("Societally, Leithans are regarded as being very open, friendly, and cooperative. When teamwork and group loyalty are the biggest defense you have against being eaten by a six-story tall monster, it pays to be easy to work with. Most Leithans are highly empathetic, making them keenly aware of others' emotive states, and are most comfortable in small, close-knit groups of friends. Solitary Leithans are almost unheard of, and most revel in social activity - especially in the core words, where Leithans are constant features of nightclubs, dance halls, and just about any party they can find.\n");
	CodexManager.viewedEntry("Leithan");
}

function ovirCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("ALISS");
	outputCodex(header("Ovir"));
	outputCodex("<b>Name (Singular & Plural):</b> Ovir");
	outputCodex("\n<b>Genders:</b> Male & Female.");
	outputCodex("\n<b>Height:</b> Averages between 4'6\" and 6\"");
	outputCodex("\n<b>Weight:</b> Averages between 90 and 160 lbs.");
	outputCodex("\n<b>Hair:</b> Human-like hair on top of head, can be brown, black, red, blonde, or green.");
	outputCodex("\n<b>Eyes:</b> Two vertically slit, reptilian eyes. No sclera, iris dominates the eye.");
	outputCodex("\n<b>Ears:</b> Two ear holes on each side, no pronounced ears.");
	outputCodex("\n<b>Homeworld:</b> \\\[Redacted\\\]\n\n");

	outputCodex(blockHeader("Appearance"));
	outputCodex("Most of an ovir's body is covered in thin scales, with bare patches encompassing the face, the crest of the head, and the groin. Hair grows out from the scaleless patch atop the head, and is usually left uncut unless the individual is in an occupation where long hair would prove a hazard. A long tail extends from the back of the body, and the ovir can use it to manipulate objects with near-prehensile facility, limited only by its unwieldy thickness. The anus is sited at the base of the tail, and a cloaca runs from a short way away up to the front of the groin.\n\nEyes are uniform in color, with irises covering the whole of the visible eye and slit pupils that widen in low light. They possess human-like teeth with pronounced canine teeth. The species exhibits strong sexual dimorphism; females are a uniform, drab brown or olive green, while male scales can exhibit bright primary colors from purple to green, missing only blue, with combinations of colors and patterns possible.\n\nBoth sexes have pronounced deposits of body fat on the chest, resembling breasts, though these are far more prominent in the males. These 'breasts' are used as mating displays, with the males having the largest displays and the brightest colors being generally regarded as most desirable. The 'breasts' do not naturally possess nipples or lactate like those of mammals, but since coming into contact with other species, body modification to allow one or both of these features has become common. These, after simple enhancements to increase the size and therefore desirability of an individual's breasts, are the most frequent cosmetic procedures performed in ovir society.");
	outputCodex("\n\nJuvenile ovir are dull green without exception until their second year after hatching, when they begin to develop their adult color. It is possible to have the baby sexed by a medical professional prior to the emergence of adult colors, though some communities frown on the procedure, choosing to treat all children identically until the children decide on gender roles on their own. 'Breast' growth, triggered by the layering of fat deposits, is slow but steady during adolescence, with affluent diet and early development being a predictor of large size. Most ovir will begin developing breasts and other secondary sexual characteristics at 16 years of age, though famine may delay or even prevent this, leaving the individual in an undesirable state of 'mature childhood'.\n\n");
	outputCodex(blockHeader("Society"));
	outputCodex("Ovir tend to assimilate easily into the greater galactic society, thanks in part to their superficial resemblance to the humans which make up the majority of it and the similarity of their industry and culture to pre-space human society: prior to the introduction of space travel, ovir had achieved manufacturing processes and information technology analogous to late twentieth-century Earth. Males and females are generally equal in social standing, though males tend to be more subtly competitive as an outgrowth of their need to display sexual fitness. Unlike most humans, however, ovir tend to be polyamorous and bisexual, keeping several nonexclusive mates throughout their lives. Single-night partner swaps are frequent and generally considered a sign of a healthy community.\n\nChildren are raised in latchkey fashion, and it's common to see the child of a couple stay with a neighbor or one of its parent's lovers when its parents are away from home or otherwise invalidated. As consequence, communities develop a friendly, inclusive ethos and are quite welcoming to all but the most unusual visitors. However, this form of upbringing tends to result in a mild form of intellectual stagnation within homogeneous colonies as most children acquire the opinions and politics of the greater ovir community.");
	outputCodex("\n\nSome colonies in the upper range of wealth have lately been observed deviating from this norm, wherein eccentric groups of males or females will use their affluence to maintain extensive harems of the other sex in luxury and eject or trade away excess children of the unwanted sex, as a sort of return to the dynastic days of the homeworld's ancient past. The implications of this trend on ovir society and on their image in the UGC as a whole are yet to be seen.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Ovir reproduction is a near-standard affair. When a male is stimulated enough, a penis will emerge from his cloaca, generally extending between 8-11 inches but with extremes ranging from 4 to 14. The penis is uniformly thick along its length and ends in a blunt tip with a slightly raised edge. The male places this penis inside his partner's cloaca and thrusts until climax, whereupon he ejaculates semen produced by glands within his abdominal cavity. In the case of a male copulating with a female, she may shift into a front-mount or missionary position before ejaculation, in order to allow him to slide his penis all the way past the entrance and up to her uterus, to grant a greater chance of fertilizing a large number of her eggs. To be offered such an opportunity is a sign of great affection. Particularly effeminate males sometimes emulate this behavior during intercourse with other males, though only when being taken anally or with extensive body modification as otherwise the male cloaca is not deep enough.\n\nIn situations where the female does not favor the male, wants multiple sires for her clutch, or does not want to lay at all, she attempts to hold him away and allow him to ejaculate no further than the deepest part of the cloaca; she may force him to pull out entirely. Female ovir tend to ovulate in response to environment and biological cycle equally; adequate diet and warm conditions mean larger and more frequent clutches are possible. In general, a female is able to produce a new clutch every 28 days, though many ovir suppress this with medication.");
	outputCodex("\n\nUpon fertilization, eggs are typically laid within 3 days. Poorer ovir are forced to sit their own eggs, but incubators are the norm in most modern homes, allowing the parents to go about their business during the five month gestation period. Upon hatching, the young hammer their way out of the egg with a calcified spur at the tip of their powerful tails. Though the children are able to eat most adult foods within the day, many ovir parents, enamored with human culture, will use modified breasts to nurse their young with milk. Oddly, males seem to embrace this behavior more than females.\n");
	CodexManager.viewedEntry("Ovir");
}

function kuitanCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("KIRO");
	outputCodex(header("Kui-Tan"));
	outputCodex("<b>Name (Singular & Plural):</b> Kui-tan\n");
	outputCodex("<b>Genders:</b> Evenly split between males and hermaphrodites.\n");
	outputCodex("<b>Height: </b>Most adults are between 4’10” and 5’1” in height with few ever being shorter than 4’4” or taller than 5’6”.\n");
	outputCodex("<b>Weight: </b>Similar to terrans despite their thick fur giving them a somewhat pudgy appearance.\n");
	outputCodex("<b>Hair:</b> Hair grows from the top of the scalp with colorations from chocolate hues all the way to oil-black.\n");
	outputCodex("<b>Eyes:</b> Kui-tan have two forward facing eyes situated in their face, in the same manner as humans. Eye color tends towards shades of brown and orange, though gold eyes are possible, if rare.\n\n");

	outputCodex(blockHeader("Appearance"));
	outputCodex("The kui-tan are a humanoid species native to the moon of Florus, which orbits the planet \\\[REDACTED\\\], who visually call to mind the mythical 'tanuki' of Japanese lore. Their bodies are typical of most intelligent humanoids - two legs, a torso, two arms, and a single head atop the torso. Kui-tan faces are strikingly similar to galactic norms, except that nose and jaws grow together and extend into a short but expressive muzzle, containing prominent canines but altogether omnivorous teeth. A single pair of ears, just pointy enough at the top to be oval-shaped rather than circular, sit atop the head with limited mobility.");
	outputCodex("\n\nThough they have five-fingered hands at the ends of their human-like arms, their plantigrade legs end in paw-like, four-toed feet. A single tail sprouts from every kui-tan’s rear, starting at a narrow base and swelling out immensely the closer one comes to the tip. These tails can be almost as long as a kui-tan is tall and as thick around as one’s waist. However, the bulk of a kui-tan's tail is actually very dense, firmly packed fur, making it surprisingly light despite its bulky shape.");
	outputCodex("\n\nKui-tan grow thick, dense fur that often makes them looking quite pudgy if left ungroomed. Most kui-tan do their best to keep it cut short and form-hugging, both to keep cool and for appearances’ sake. Their fur colours are generally browns with patches of black around the eyes, on the tips of the ears, in rings around the length of the tail, and in the shape of black socks over their feet and thighs. This fur greys in old age. It is not unheard of for kui-tan to dye themselves to suit personal preferences and tastes.");
	outputCodex("\n\nAll kui-tan bear tapered penises thanks to their lack of a female sex. The tips have vaguely heart-shaped crowns formed by two rounded bulges on the underside of the glans at a tip at the tip. During kui-tan mating, the unique shape stimulates the cervix to dilate, allowing the father direct access to a fertile womb. A trio of knots, spaced along the length, swells upon orgasm, locking the lucky father in place. The erect length of a typical kui-tan falls somewhere between six and ten inches and not more than two inches in width, though reports of kui-tan with outsized genitals from mods are common; the race seems to have strong reactions to such items.");
	outputCodex("\n\nThe most unique parts of a kui-tan’s reproductive system are their testes. Their masculine reproductive systems constantly produce sperm and seminal fluid, and their unique gonads are capable of storing it all, swelling up as they do so. A kui-tan who goes without release long enough may find himself immobilized by his own beachball-sized genitalia. Once drained, they’ll usually be about the size of apples.");
	outputCodex("\n\nKui-tan cannot reach such obscene states in short order. It would take a few weeks for most to immobilize themselves. No matter how large (or sensitive!) their prostates, they simply cannot immobilize themselves without a long period of abstinence. Of course, aroused kui-tan produce semen many times faster than normal, and large intakes of food and water can further stimulation such production. Actually ingesting another’s seed is even worse, setting off what some kui-tan have taken to calling a ‘cum-cascade’.");
	outputCodex("\n\nHermaphrodite kui-tan have vaginas designed to clamp tightly, but orientated for fitting girthy pricks over lengthy ones, as they must cope with the series of knots that a given partner will produce. The vagina is often easily hidden due to the testicles obscuring obvious sight, and most commonly kui-tan prefer to be penetrated from behind, vaginally or anally.\n\n");
	outputCodex("Hermaphrodite kui-tan typically have breasts a bit below the human averages, ranging from A to C-cups.\n\n");

	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("The kui-tan species evolved in lush forests prone to balmy summers and harsh winters. Naturally adept at climbing, the kui-tan still have a fondness for forest environments, and often build their homes into trees when given the choice. As their technology has advanced, more urban cities have sprung forth, though all kui-tan try to at least keep some plants around the home for decoration, if nothing else.\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("By preference, most kui-tan form monogamous pairings. There is a tradition of parents taking steps to introduce their children to potential partners, but arranging marriages for political reasons has been illegal for generations.\n\n");
	outputCodex("While capable of sexual intercourse at any point in time and also of conceiving on a monthly basis, hermaphrodite kui-tan retain the aspect from their more primitive ancestors of entering a state of heat approximately every six to seven months. During this time, typically about a week long, their hormones surge, giving them a marked increase in libido and a small, but noticeable, boost in passive semen production. This makes them markedly more interested in sex, though not so much so that they can't resist the urge, as well as making it more likely for them to conceive.");
	outputCodex("\n\nA kui-tan pregnancy typically lasts about six and a half to seven months, and results in the delivery of a single pup. Blind and helpless, the woolly little pup depends heavily on protection from its parents for a significant portion of its early life, and both mother and father traditionally work closely together to keep it cared for.");
	outputCodex("\n\nAs a common sexual fetish, kui-tan are very receptive to testicular stimulation. When particularly swollen, or when orgasming, the skin on their balls becomes extremely sensitive, making touch very effective at further turning them on. As a consequence, most kui-tan greatly enjoy the feeling of semen washing out of their partner or spilling down their balls, and will usually react to oral pleasurings - lickings, kissings, suckings, etc - with the same manner. \"It's not real sex if your balls are still dry when you're finished,\" is a common sexual saying on their planet.\n\n");

	outputCodex(blockHeader("History"));
	outputCodex("The most interesting event of note in kui-tan history is some 500 years before the present day, when early experiments in bio-modification went disastrously wrong. The Kintama Plague, as it's now called, began as an experiment in bio-modding intended to create an easily administered virility booster. Instead, the artificial DNA mutated, got loose and began spreading across the planet like a virus. This mutated bio-mod drastically affected the infected males, causing their semen production to surge into overdrive and leaving them requiring near-constant sexual release to be capable of independent motion.\n\n");
	outputCodex("The initial news of a viral breakout and it’s effects weren’t necessarily treated as a maximum level priority. Most males had no problem with having to find release more often. This incident only got its due importance when the virus mutated and began to affect the females, making them grow male genitalia of their own. The world’s top researchers were tasked with finding a cure, but the research was too slow. The virus had infected nearly the entire population, and within a few decades females disappeared entirely, replaced by herms.\n\n");
	outputCodex("As is widely documented in their own planet's histories, it was shortly after the kui-tan developed powerful radio receivers that they accidentally made contact with the sionach, who had reached a similar stage of development on their own world. It is something of a friendly argument between the two species about who holds the more important role in their mutual histories; the sionach, or the kui-tan, for inventing the first reliable space vessels that made physical contact between their species possible.\n\n");

	outputCodex(blockHeader("Other Notes"));
	outputCodex("Kui-tan of all sexes attempt to keep their balls small and manageable, so they can be tucked away discreetly with some skill. Oversized balls are seen as sexually provocative and crude, a vulgar symbol of the kui-tan's sexual readiness or desire.");
	outputCodex("\n\nBecause all kui-tan have penises, many kui-tan have come to be bisexual, with no social stigma of any kind given to an individual pleasure the phallus of another with hands, mouth or anus. While most 'homosexual' kui-tan males classify more accurately as male-preferring bisexuals, true homosexual males do exist. Whether an individual prefers to catch, pitch or swing generally takes the place of conventional sexuality in kui-tan society.");
	outputCodex("\n\nBecause of the excessive productivity of kui-tan balls, it is a natural thing in their culture to need to release frequently. Restrooms are modified to be capable of handling frequent loads of semen as well as other wastes, and most cities have designated 'milking stations' where a pent-up individual can be quickly and efficiently drained, with the mess vacuum-pumped away without hassle.");

	outputCodex("\n\nIt should be noted that in kui-tan culture, oral sex carries different sexual overtones than in human cultures. Since oral achieves release more efficiently than handjobs, it's quite common for kui-tan to offer blowjobs to others if they need the release; even family members may do so without stigma. However, the expected norm is that, when climax nears, the offering partner will release so the climaxing partner can direct his or or her ejaculate into a storage receptacle.");
	outputCodex("\n\nActually swallowing the semen, though, is regarded as a highly intimate act, perhaps even more so than among humans due to the semen-cascade it sets off in the receiving partner's balls. Thusly, swallowing has come to symbolically mean that one partner is quite literally taking on the burdens of the other. As a consequence, it's a great sign of respect or love to do so.\n");
	CodexManager.viewedEntry("Kui-Tan");
}

function laquineCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("KELLY","KELLY_NUDE");
	outputCodex(header("Laquines"));
	outputCodex("<b>Name (Singular):</b> Laquine");
	outputCodex("\n<b>Sexes:</b> 33% Male, 33% Female, 33% Hermaphrodite");
	outputCodex("\n<b>Height:</b> 5'6\" to 7'0\"");
	outputCodex("\n<b>Weight:</b> 60-85 Kg");
	outputCodex("\n<b>Hair:</b> Covered all over in fur, but \"hair\" grows on the top of the head in the form of especially long, lush fur.");
	outputCodex("\n<b>Eyes:</b> Two eyes in the face, at normal human position. Laquine eyes have a fundamentally human-like structure; a visible sclera (white) surrounding a colored iris, which in turn surrounds a round black pupil. Iris colors documented include brown, varying shades of blue and gray, red and pink.\n\n");

	outputCodex(blockHeader("Features"));
	outputCodex("<b>Bodily Structure:</b> Laquines have the standard bipedal bodily configuration; a vertically orientated torso mounted atop a single pair of legs, topped with a single head and with two arms at the topmost end of the torso.  Their arms are particularly human-like, each ending in a single five-fingered hand. Legs call to mind a giant rabbit's, with powerfully developed thigh and calf muscles and elongated, paw-like feet.  Laquines have an extra joint in the middle of their paws, allowing them to stand equally well on either the heel of their foot or on the ball of their foot, adopting a plantigrade or digitigrade stance at will.\n\nSeated above their buttocks is a tail; this is fundamentally a rabbit-like \"puff\" of downy fur, but the fur around the edge of the tail is inclined to grow into long, downy strands, meaning an untrimmed tail resembles a horse's at first glance. Fashion over wearing tail-fur trimmed or untrimmed varies from place to place. Long, luxurious hair grows out from the calves below the knee, with this excessive hair ending just above the ankle. This equine \"feathering\" can potentially grow as long as the hair on their heads, forming fluffy looking socks that partially obscure their paws, but for practicality's sake most laquines trim it much shorter.\n\n");
	outputCodex("<b>Facial Structure:</b> As an anthropomorphic species, laquine faces are a weird blend of human traits and a bestial muzzle.  Nose and mouth protrude in a short, fundamentally rabbit-like snout, but the muscles are strong enough to pull off all manner of human-like facial expressions - smiling, pouting, frowning, smirking, kissing, etc.  Having evolved from herbivores, laquine teeth consist of cropping incisors at the front and molars at the back.\n\nLong rabbit ears rise from the top of the skull; whilst flexible and capable of swiveling in many directions, as with Earth rabbits, these are still stiff enough that they don't normally bend.  However, approximately 1 in 3 laquines is a \"lop-eared laquine\", whose ears are soft and flexible enough that they can't support themselves upright without conscious effort on the part of the laquine and normally \"flop\" down the back or sides of the head.  Despite common folklore, the trait is not endemic to laquine/lucanis crossbreeding; it is a naturally evolved trait amongst some laquines. It is true that the gene tends to be more likely to be dominant in laquine/lucanis halfbreeds.\n\n");
	outputCodex("<b>Skin & Fur:</b> A laquine's entire body is covered in a layer of smooth, fine fur, except for the lips, nipples and sexual organs. This fur isn't especially dense normally, as laquines evolved in warm environments, but does respond to cold conditions by growing denser and thicker in an effort to help preserve warmth. \"Woolly laquines\", who naturally grow thicker and lusher fur, are known to exist; this seems to be a result of genetic drifting from interbreeding with lucanis.  Laquine fur tends towards dark colorations - blacks, browns, reds, navy blue, etc - but is often offset by light or even bright colors (creams, oranges, tans, etc), and contrasting patterns are seen as attractive in many laquine sub-cultures. Hair is usually a noticeably contrasting color to fur.\n\n");
	outputCodex("<b>Sexual Organs & Erogenous Zones:</b> Laquines have a fairly standard array of sexual features for humanoids: two nipples, a vaginal orifice, an external phallus, and a pair of external testicles, with combinations as expected for the gender. The nipples, positioned in the \"normal\" place for humanoids, grow into permanent breasts at puberty.  The penis is the most unusual physical trait of laquines, and instantly separates them from \"mere\" anthropomorphic rabbits.  A laquine's phallus is \"free-falling\", like a human's, and consists of a hairless sheathe of foreskin into which the phallus proper retracts when not aroused. In shape, the exposed phallus physically most closely resembles the phallus of an Earthly horse, complete with the ability to \"flare\", or have its edges swell upon climax.\n\nSimilarly, laquines have a \"marecunt\" to match their \"horsedick\"; their vagina is very elastic and naturally produces copious amounts of pheromone-laden lubricants.  This is believed to be an evolutionary adaptation to cope with the size of the average laquine penis.  Average size of penises is a length of 10 to 14 inches and a girth of 2 to 3 inches.  Average testes size is golfball to apple sized, and extraordinarily productive beyond that; laquine ejaculate typically measures in terms of litres. Breast size is affected by how many offspring have been produced; upon reaching breeding age, most laquines range from large A-cups to small C-cups upon puberty, though proportions as massive as FF-cups have been reported from dedicated broodmothers.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("Laquines are native to the sourthern biomes of their home planet, Asherah, making them most comfortable on warm to tropical grassland and forest type environments. Laquines can tolerate aridity, to an extent, but much prefer a lush environment that isn't too damp. Interbreeding with lucanis has instilled a greater tolerance for low temperatures, even producing \"tundra laquines\" who have denser coats and stockier builds to make them more adept at surviving in arctic type biomes, but they generally dislike the cold. On other planets, laquines are drawn to regions similar to their home environments; they prefer a plentiful supply of vegetation, and so will usually be found in locations that at least have large gardens or parks, if not being well vegetated in general.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Though laquines can - and do - mate all the year around, females only become receptive to pregnancy during their twice-yearly heat-seasons. Occurring every 6 months, and lasting for a period of two weeks, it is during this time that females can conceive and experience the hormonal desire to do so. Medicinal supplements to quell these urges, and to reduce the arousing musk that they produce during this period, are now freely available, but it has had its impact on their social structure.\n\nHermaphrodites do feel heat, like females, but usually in a much weaker fashion. Approximately one fertile week out of every four, however, triggers an even stronger reaction than it does in females, overwhelming the laquine's mind with the need to father and conceive offspring. In this state, they have even been known to sexually assault others in desperate search of sexual release. Hermaphrodites who feel their \"burning\" coming on traditionally take alleviating medicine and seek seclusion, emerging only when it is over. Assuming they don't have one or more partners that they choose to sate their lust with, of course.\n\nConception occurs in the 'typical' mammalian format, and a litter of two to eight offspring gestate internally for a period of six months before being born alive. As this time period means that offspring from the last breeding season are born during the start of the next, and laquine biologies recover quickly, it is possible for a willing female laquine to pregnant constantly throughout the year. An infant laquine is a small creature, about the size of a Terran rabbit, and quite helpless, dependent upon its parental figures to care for it for about a decade before reaching adulthood.\n\n");
	outputCodex("Within the last thirty years, however, this reproductive system has been thrown off. Some unknown, plague-like affliction has spread throughout the species, wreaking havoc upon the laquine reproductive system.\n\nFirstly, it causes the breeding cycle to experience disruptions; sufferers find their cycle occurring out of season, or simply not occurring at all. Disruptions can result in sufferers experiencing only a single heat a year, only once every several years, or even total sterility. Even when heat is entered, breeding success is impacted; stillbirths and miscarriages sometimes occur, but most frequently, only a small number of ova will be fertilised, usually one or two at best. In many cases, even individuals who experience heat find themselves failing to conceive at all, no matter how virile their partner is.\n\n");
	outputCodex("The effects of this disease are predominantly felt when laquines attempt to mate within their own species or with lucanis. Laquines attempting to crossbreed with other races have markedly greater success, with the primary difficulty being going into heat in the first place.\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("A relatively young species as far as the United Galactic Confederacy is concerned, the laquines of Asherah were discovered only towards the end of the last planet rush, when the human exploratory vessel Blue Orion entered a newly revealed solar system and encountered a scientific exploration vessel that had recently reached that same area and was quite surprised to encounter an alien vessel. First contact was tenuous, but swiftly proved successful, despite some diplomatic tension resulting from an incident when one of the laquine crew impregnated a female human scientist, and the laquine captain herself becoming pregnant by Captain Small of the Blue Orion. Peaceful acceptance into the UGC followed quite soon thereafter.\n\n");
	outputCodex("Afterwards, the laquine population in the greater galaxy grew quite swiftly, thanks to the rather explosive breeding rate of the species. Though quick and eager to offer their services as organic crop producers, workers and even sexual operators, the speed with which the laquines colonised new lands outside of their own solar system attracted rumblings of discontent, especially from certain human organisations. Indeed, certain races have been known to openly proclaim the laquines as \"pests\" or \"parasites\".\n\n");
	outputCodex("Within the last thirty years, however, this accelerated rate of colonisation began to severely die back, as the laquine species found itself assailed by a mysterious plague-like condition that has caused widespread fertility problems. Indeed, the laquines have become increasingly introverted as a species, as more and more attention is being devoted to pursuing possible causes for the sterility plague - and, far more importantly, seeking out potential cures. Despite decades of work, the laquines' top minds are still trying to unravel the dark secrets of this disease. This extreme and unnatural difficulty in analysis and diagnosis has led to conspiracy theories of it being artificially engineered, which has furthered the general withdrawal of the laquine community from the UGC.\n\n");
	outputCodex("Medical experts have established by way of testing and observation that neither mod-transformed laquines/lucanis, nor the half-breed offspring of laquines/lucanis and other alien races, seem to be affected by the disease. This fact is carefully hidden from public consumption, an effort to minimize paranoia, conspiracy and xenophobia amongst an already suspicious and distrustful populace.\n\n");
	outputCodex(blockHeader("Other Notes"));
	outputCodex("Though it is not socially enforced, traditionally, laquine culture falls under a gender-based trichotomy. Females are responsible for roles that revolve around caring for the children and adults, such as being homemakers, chefs or nurses. Males are responsible for tasks that require strength or endurance as a general rule; construction work, farming, manual labor, etcetera. Hermaphrodites, finally, tend to gravitate towards the social power and intelligence-based roles, such as scientists and politicians. As stated, these roles are not socially enforced - no one would force a female laquine to not be a scientist, for example - but they are traditional and thusly stereotyped amongst this species.\n\nDespite, or perhaps because of, the size of their phallic organs, laquines usually associate ejaculate size with virility size instead. Semen quantity boosters are the primary subject of sexual spam amongst laquines, and semen-related mods are fairly common in their culture. Which is not to say that they don't also tend to take pride in the size of their male members, just that cumshot size is usually more important.\n\nThough rare, it is established fact that priapric and mammarian hyperism conditions have been documented amongst laquines, more so amongst them than amongst their lucanis kinsfolk.\n\nLaquines have been confirmed as being capable of successfully crossbreeding with lucanis, humans, khaithrit, kui-tan and ausars.\n\nLaquine/lucanis relationships still attract some controversy amongst the relevant races, even in this modern day and age.\n\nBecause they lack multiple nipples, communal nursing is the norm amongst laquines, and the average individual will have been suckled from dozens of willing milk-mothers during her or his youth. It has been theorised that this may have deliberately evolved as a social building mechanic. Perhaps as a result of this, polygamous relationships are not unheard of amongst laquines.\n");
	CodexManager.viewedEntry("Laquines");
}

function treatmentCodexEntry():void
{
	clearOutputCodex();
	outputCodex(header("The Treatment"));
	outputCodex("The Treatment is something of an irregularity within the United Galactic Confederacy. A galaxy-wide ban on involuntary mind-control prevents similar perversions on other planets. The officially cited reason for this exemption dates back to New Texas' first contact with the U.G.C. hundreds of years ago during one of the first rushes, and the reasons behind that even further.\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("Before gate technology was discovered, numerous attempts at colonization were made using a combination of cryogenic technologies and long, automated spaceflights. New Texas was founded by one such mission, launched by colonists out of Houston. As part of an early population-building initiative, the Treatment was designed by top earth scientists as a means of ensuring high fertility and virility rates among the future colonists. This early form of the iconic mutagen was far less dramatic than the one that's become famous today.");
	outputCodex("\n\nHowever, the agrarian society that sprung up on the recently christened \"New Texas\" quickly became something of a patriarchy. With most women pregnant and indoors, the men were free to run the planet as they saw fit, and as a consequence, gender roles regressed to terran pre-industrial levels. The few scientists on planet found this arrangement enjoyable and began modifying the Treatment in an effort to make their planet even more of a paradise, adding bull-like strength to males and enhancing the feminine libido and endorphin production.");
	outputCodex("\n\nChanges to the formula did not stop there. Over the centuries of isolation, the Treatment was gradually refined. Side-effects like bull-like horns, masculine animal genitalia, and increases in lactation were viewed as welcome blessings. The Treatment became an ingrained part of New Texas' culture, a customary second puberty started at the age of eighteen. Women became euphoric, lactating, and sexually promiscuous in the extreme. Men gained in both physical and sexual endurance while celebrating enhanced genital size.");
	outputCodex("\n\nNew Texas' technology never really advanced beyond what they brought with them. Indeed, it's a miracle that the Treatment was as nuanced as it was a first contact.");
	outputCodex("\n\nU.G.C. diplomats were at first shocked, then pleased, then shocked before finally being pleased all over again by what they found on New Texas. It was agreed that forcing them to abandon their ways would lead to disruption on a global scale, and New Texas was allowed to continue on with the Treatment so long as it was never transferred off planet. Of course, U.G.C. scientists had to be given accumulated research data on it.");
	outputCodex("\n\nNew Texas remains today as a popular but exclusive tourist destination, though roughly 20% of visitors wind up immigrating. Being cleared to visit is a right often reserved to the rich or well-connected. This provides a secondary income source for the planet.");
	outputCodex("\n\nPopulation is now controlled via water-distributed birth-control, helping the planet to maintain an agrarian way of life.\n\n");
	outputCodex(blockHeader("Chemical Composition"));
	outputCodex("Only 20 percent of the Treatment's composition is publicly available. Researching or distributing information on the other 80 percent is illegal without express dispensation from the Office of Galactic Affairs. The known portion is composed of a combination of sex hormones, reprogrammable microsurgeons whose instructions are too encrypted for civilians to decipher, and high grade, brain-chemistry altering drugs most often used to treat depression. It is widely theorized that U.G.C. scientists have worked with New Texan scientists to improve the Treatment and conceal the exact nature of its mechanisms from prying eyes.\n\n");
	outputCodex(blockHeader("Method of Application"));
	outputCodex("The treatment is typically distributed to visitors in the form of a medipen - a cheap, easy-to-manufacture self-numbing injector that allows for painless application of the Treatment with a minimum of fuss. The needle is practically microscopic and concealed by the barrel of the pen so that when the activation stud is depressed, there is nothing to disturb those with a fear of needles. Citizens of New Texas may receive the Treatment by using the subdermal diffusers at their local educational facilities, allowing the contents of the treatment to painlessly penetrate the skin without any need for injection. Some ports of call may have these machines available for patrons who prefer a gentler approach to a happy future.\n\n");
	outputCodex(blockHeader("Sexual Variances"));
	outputCodex("Both human sexes experience a large degree of change during their \"second puberty,\" but the effects vary widely between them. Hermaphrodites and other intersex individuals react unpredictably to the Treatment: some will receive one sex's effects and some a mix of both.\n\n");
	outputCodex(blockHeader("Female Mental Effects"));
	outputCodex("The mental effects propagate over a period of 48 hours, plus or minus 12. They start with a rapid loss of willpower and end with a huge dip in perceived intelligence. Both are relative to the user's original aptitude; particularly strong-willed women seemed best able to handle their new drives and shorter attention spans. Actual I.Q.s are unchanged, though new cows have great difficulty maintaining motivation for nonsexual pursuits, leading to a bimbo stereotype. Promises of longer milkings for higher scores increased standardized test results to near pre-treatment levels. Adding a fuck from a treated male, or bull, as a prize eliminated the discrepancy.");
	outputCodex("\n\nThose changes are gradual enough that most girls barely notice them. One secondary effect that every girl notices and is happy to talk about is the all-encompassing EUPHORIA that being treated brings. It too starts slow and ramps up over the 48 hour period, but it's impossible not to notice how natural smiling becomes or how easy it is to lose oneself in the simpler pleasures afterward. Everyday activities like bathing become exquisitely enjoyable, almost spiritual activities for treated cow-girls.");
	outputCodex("\n\nAnother important secondary characteristic of the Treatment is an increase in libido. Treated women find themselves almost comically easily aroused, and with heightened libidos and a happy disposition, they'll find themselves fucking and breeding many times more often than untreated individuals. While many women display concern about this before taking the Treatment, there has not been a single cow reporting displeasure with this facet of her life after a month of time to adjust. New Texas has not had a reported case of depression in three centuries.");
	outputCodex("\n\nMany more effects can manifest as part of the Treatment. Their appearance and strength seem largely randomized. Whether this is intentionally part of the Treatment's design or accidental benefit is unknown.");
	outputCodex("\n\n<b>Additional Female Mental Effects:</b>\n* Oral Fixation (common, normally low intensity)\n* Mooing (nearly universal)\n* Increased docility. (common)\n* Submissive arousal (extremely common)\n* Increased aggression. (very rare)\n* Strong desire to be milked (common)\n* Sudden and unexplained fetish gain\n* Increases in maternal instincts\n* Vastly increased empathy\n* Temporary return of pre-treatment perceived I.Q. in response to stimulus (rare: Stimulus and length of altered intelligence varies.)\n* Altered speech patterns\n\n");
	outputCodex(blockHeader("Female Physical Effects"));
	outputCodex("The physical effects are slower, taking the better part of a week to complete. The first and most noticeable effect is hunger. Rebuilding a body burns quite a lot of calories, and facilitating the aforementioned mental restructuring is also quite energy intensive. Treated individuals actually increase their neural density by roughly 5%, owing largely to the ability to process new sensory data from all the new nerves. Only extremely obese individuals find their appetites unaffected.");
	outputCodex("\n\nBreast growth is the second effect to manifest, and it lasts for days. Both nipple and mammary tissue expand greatly over the week-long period, accompanied by a kind of pleasant tingle that makes them almost impossible not to heft and handle every few minutes. The growth is typically steady, though large changes overnight manifest in some budding cows. A woman's original bust size has almost zero correlation with her treated size. Some of the smallest girls wind up huge, while more than one chesty maiden barely get an inch or two added to their racks.");
	outputCodex("\n\nObese women invariably lose weight. Hip bones widen. Cellulite smooths while wrinkles vanish. Lips often plump and soften, becoming chap-resistant. Hard facial features sometimes soften and ease slightly towards classical beauty. These effects are almost universal. All in all, the Treatment is guaranteed to make girls curvier and sexier by human definitions.");
	outputCodex("\n\nMost noticeably, small, rounded horns will typically grow in on the upper forehead. \"Getting your horns\" is a sign of adulthood on New Texas, but other bovine features may occur as well. Ears, cow tails, and furred thighs are all common. Some women may find their feet sculpted into hooves or hoof-like heels as well. Multiple nipples or breasts are somewhat rare, but do occur frequently enough for it to be a well-understood phenomenon. Cows with both are typically considered very desirable, both as milk producers and as mates.");
	outputCodex("\n\nThe least visible changes all occur inside the breasts and genital region. The former get noticeably bigger and gain longer, puffier nipples, but they also triple in nerve density over the course of the treatment. As one would expect, this has resulted in an increase in the popularity of breast-play. Adjustments to the milk glands improve the flow, consistency, and taste of lactation, resulting in milkings that are described as \"almost as good as sex.\" Milking barns and breast-massages have become popular destinations for cows who desire to retain their autonomy. Self-cleaning, fluid-repellant seats are government mandated in such businesses for health and safety reasons.");
	outputCodex("\n\nMore importantly, the genitals get a complete if subtle makeover. Pubic hair falls out roughly 50% of the time. 11% of the time, the opposite happens, and the fibers will thicken quite significantly. Pubic mounds swell, making cameltoes almost ubiquitous. Labia minora rarely expand, but when they do, it's typically on girls with quite small lips pre-Treatment. The real changes occur in the clitoris and inside the vaginal passage.");
	outputCodex("\n\nThe Treatment universally causes clitoral expansion while maintaining the organ's original nerve density, resulting in a bud that easily swells up to the size of a gumball when aroused. Lubrication secretion is nearly tripled, and as a side-effect the clitoris becomes self-lubricating as well. It's hard to miss the gleaming pink pleasure target on a randy cow and impossible not to grind against when fucking from any angle. Nerve density inside is vastly increased (by a factor of approximately 2.3), particularly around the cervix. Clusters of new pleasure nerves form there, resulting in a new, deep G-spot.");
	outputCodex("\n\nAll the new nerves allow a much finer degree of control over the surrounding muscles, and accompanying mental changes wire them to squeeze and caress on autopilot. Some manual control is possible with concentration, but when pressed, treated women didn't seem to see the point in it. Their partners universally enjoy the enhanced textures and movement her muscles offer. Texan cow-girl pussies are considered some of the universe's finest at extracting human genetic material, rivalling even KihaCorp's latest synthpussies for the sheer pleasure offered to their partners.");
	outputCodex("\n\nOf course, generally elasticity is increased as well to accommodate the enhanced, swollen girths that the treatment provides for males, and pheromone production goes through the roof, matched to an increase in sensitivity to male odors. Treated girls can literally smell a cock, and if they approve of it, the lucky boy is probably going to find himself more than a little hard thanks to her subconscious production of aromatic sex-signals.");
	outputCodex("\n\n<b>There is a twelve page list of additional physical mutations and effects, but the most common are listed below:</b>\n* Suppression of gag reflex. Nearly every girl has a reduced gag reflex, though some retain some small measure of it.\n* Horse-like ears. This typically occurs in cows with higher muscle mass. Cows with this mutation are sometimes referred to as mares.\n* Fully prehensile tails.\n* Oral erogenous zone. Most commonly centered on the lips but sometimes the tongue is included as well. Nerve density approaches genital levels. Most girls with this mutation find oral nearly as pleasant as vaginal. Popsicle sales are well above terran standards on New Texas.\n* Cum highs. This trait causes the concentrated release of endorphins in response to any exposure to cum. It appears to function by triggering an allergy-like response.\n* Fuckable Nipples. Very few cows develop fuckable nipples, but those that do invariably had larger breasts and nipples naturally. They develop a large, nerve-lined milk-duct behind the nipple which can be penetrated with after a slight degree of training. Sexual intercourse with such a passage triggers immediate milk production far beyond normal. Scientists are currently unsure if this functions as a stand-in for lubricants or if it serves some other purpose. It is widely viewed as one of the messiest forms of coitus on New Texas.\n* Pseudophalli. Hermaphroditism is almost unheard of New Texas. After the treatment, both sexes seem quite content to fit into binary gender roles. But every so often, something goes wrong, and a girl will find her clit swelling during her transformation. While a little growth is normal, cows developing pseudophalli surpass fully treated girls in clitoris size by the third day of their metamorphosis. Nerve growth cannot keep pace with such a large expansion, resulting in sensation levels that barely surpass New Texan penises. Cows with pseudophalli display much higher incidences of lesbianism and bisexuality than normal.\n* Udders. It may be common on New Texas to colloquially refer to breasts as udders, but some women will find their bellies getting pinker, bulgier, and growing a plethora of nipples. Women with udders moo approximately three times as often other cows.\n* Long tongues: Despite the name, long tongues come in a large variety of shapes and sizes: elongated human tongues, smooth and broad bovine ones, even forked snake-like ones, to name a few. Bovine tongues seem most prevalent.\n* Extra fluff: The fluff at the end of some cows' tails grows far beyond normal, sometimes growing to a beachball-sized tuft of softness.\n* Ear sensitivity: Increases in tactile sensation along the outside of the ears are fairly common, but in some cases it can match the breasts and nipples for sheer sensitivity. Many girls with this mutation get slightly bigger, floppier ears to go with it. Petting these cows is the quickest way to soothe them into a relaxed, happy state should they ever be upset.\n\n");
	outputCodex(blockHeader("Male Mental Effects"));
	outputCodex("Like their feminine counterparts, males experience a series of mental effects that manifest over a roughly 48 hour period. Unlike the females, they suffer no loss of perceived IQ, but they do experience several other key changes.\n\nFirst and foremost is an uptick in confidence. Whether deserved or not, treated males - or bulls as they are sometimes called - are generally confident in their own abilities and their place in society. Testosterone-laden men who are sure of their own beliefs are sure to come to conflict, but another effect helps to prevent that. Namely, the growth of a cooperative instinct that is most powerful after orgasm, working with the cow-girls' natural nymphomaniac instincts to keep everyone happy and willing to compromise for the good of all.\n\nAnother change that is almost unnoticeable at first is an increase in satisfaction from physical tasks. Exercise rapidly becomes far more pleasant. New Texans can get the equivalent of a runner's high from almost any physical task, and linkages between muscle fatigue and arousal cause many to frequently work out, if only to enjoy hours of blowjobs in the post-workout haze.\n\nEven without exercising fueling it, male sex drives accelerate up to the point where rampant sex is a foregone conclusion. Most boys look forward to their second puberty, their only concern that they might lose their hard-earned ranking in an extranet game due to their new drives.");
	outputCodex("\n\n<b>Additional mental effects may include:</b>\n* Sudden new fetish gain, particularly pregnancy and lactation.\n* Cravings for vaginal fluids.\n* Decreased submissiveness and an uptick in sexual dominance.\n* Rarely, complete submissiveness. Bulls unfortunate enough to gain this trait are typically referred to as faux-cows.\n\n");
	outputCodex(blockHeader("Male Physical Effects"));
	outputCodex("Male physical effects take just as long to manifest as the females', but they're concentrated almost entirely in the genitals and related hormone production. The first and most important effect is an increase in testicle size. Every male experiences significant and prolonged swelling of the testes across the weeklong period. Egg to apple-sized balls are the result, and with increased size comes increased testosterone production. Treated males pack on plenty of muscle during the weeklong change, and they keep it on with ease thanks to the flood of hormones their swollen cum-factories produce.");
	outputCodex("\n\nOther hormones flood the budding bulls' system along with the testosterone, causing a final growth spurt that brings most bulls up to somewhere between six and eight feet of height. The weeklong growth spurt is only mildly uncomfortable for the growing males, but fully acclimating to a heightened stature often takes months if not years.\n\nThe thing that most excites untreated men are the effects it has on the penis. Every male gains at least two or three inches of length backed up by proportional increases girth, with many seeing an increase of up to eight inches. Data on nonhuman individuals is sparse, but reports indicate that tauric individuals or members from well-endowed races can grow twice as much as the terran average. Nerve growth slightly exceeds the rate of expansion, resulting in a more sensitive tallywhacker. This might be a problem if refractory periods weren't virtually eliminated. Instead, it merely allows the men to more frequently release themselves inside their jiggling mates.\n\nThe reduction in refractory period is accomplished via a retooling of all the male sex glands. Larger testes help, but they would mean little without a more efficient, larger prostate, redesigned seminal vesicles, and rearranged synapses to control it all. Bulls are capable of ejaculating ten times an hour so long as they have access to sufficient nutrient and fluid sources with particularly virile specimens able to produce gallons of the stuff when thoroughly \"milked.\" Staying hard after an orgasm is as easy as deciding to stay inside and keep thrusting.\n\nHorns start coming in by day two, but it isn't until day four that they're large enough for accurate predictions of the final size a bull is likely to get. Charts are available upon request at most medical facilities on planet. Much larger than the little nubs the girls get, the men's horns tend to be larger, wider spaced, and more horizontal, resembling a bull's. Horn size is widely assumed to relate to genital size, though there is absolutely no basis to this in actual fact. Groups of males still rag on friends with the smallest horns all the same.\n\nAs the newly-matured bulls finish their transformation, hormonal shifts trigger subtly altered pheromones to be released, allowing for basic emotional information to be communicated on a nonverbal, subconscious level. Treated females are receptive and have pheromones of their own, allowing members of the opposite sexes to rapidly assess the other's level of attraction with a minimum of social posturing. Untreated females may note a slight musk in the air, and may still respond to more basic pheromonal signals on a lesser level. It is not uncommon for bulls to attempt to seduce female tourists using as few words as possible, a social competition that is frowned upon in polite society but persists all the same.");
	outputCodex("\n\n<b>Many other mutations can occur on top of the basic effects. The most common are listed below:</b>\n* Animal phalli. Gaining a bestial member is a very common side-effect that dates back to the usage of animal-sourced DNA to create some of the early treatment effects. Rather than eliminate this effect, modern version of the treatment appear to have had it enhanced to allow for even greater variety and improved aesthetics. Horse, dog, and great cat members are familiar sights on the bulls of New Texas.\n* Furred legs and or arms: Coarse fur will sometimes grow over the limbs and very rarely on the chest.\n* Increased amounts of facial hair: Facial hair always grows faster post-treatment, but some bulls find it to be denser, courser, and cover areas that it did not grow in before.\n* A cow tail: Many consider this to be a sign of strength.\n* Bovine ears\n* Doubled testes: The sudden division of one pair of nuts into two makes for a weightier sack and an uncomfortable time sitting in certain ways, but it allows for messier, more virile ejaculations.\n* Exceptional pheromones: Some individuals’ pheromone glands go into overdrive, resulting in a disruptive cloud of musk that can easily overwhelm the unprepared.\n\n");
	outputCodex(blockHeader("Additional Information:"));
	outputCodex("The above is information is a limited brief covering the basics of the infamous \"Treatment.\" Other good sources of data include GalaxyMD or the popular erotic chronicle, <u>The Treatment</u>, written by Nivas Oxonef and inspired by a true story.\n");
	CodexManager.viewedEntry("The Treatment");
}


//Dumbfuck - A Bimbo TF
//In a nutshell, this stuff boosts minimum lust slightly, minimum libido significantly, and worsens the effects with every orgasm while it remains in your system, eventually granting a few perks.
function dumbfuckCodexEntry():void
{
	//Codex Article:
	clearOutputCodex();
	outputCodex(header("Dumbfuck, an Illegal Drug"));
	outputCodex("The drug colloquially known as \"Dumbfuck\" was originally designed as an all-in-one fertility treatment for couples having trouble conceiving by Xenogen Biotech. It was designed to rebalance hormones of males, females, and hermaphrodites to promote a stronger sex drive as well as slightly enhancing the reproductive capabilities of each. During initial trials, it was discovered that the drug and microsurgeon cocktail had a number of unintended side effects that brought about the cessation of all research into it.");
	outputCodex("\n\nThe first test subjects reported an increase in sensitivity and drive, as expected. Clinical tests also showed an uptick in fertility and virility well within expected bounds. What wasn't within expected bounds were the subjects' extreme reactions to undergoing an orgasm. The altered body chemistry and drugs combined to set off a cascade of neural activity upon climax.");
	outputCodex("\n\nThis neural cascades did not peak until a few minutes after orgasm at the earliest, often accompanied by at least one uncontrollable sneeze and slight draining of the sinuses. Further research determined that the sneezes were merely a side effect triggered by wildly misfiring neurons as they adjusted their linkages. The end result of these new linkages was a confirmed loss of intellect and an increase in libido and sexual pleasure - roughly one I.Q. point per orgasm, though some subjects experienced noticeably more or less.");
	outputCodex("\n\nMost subjects reported feeling \"dizzy\" or \"a little confused\" during their first few cascades. They seemed almost oblivious to their own rising desire or the way their brains were becoming increasingly obsessed with sexual pleasure. However, later on, they reported: <i>\"like, feeling great when they sneeze out brains to make more room for sex!\"</i>");
	outputCodex("\n\nBy this point, it was impossible to corral the sex-obsessed volunteers into taking part in any moderately challenging mental testing. Keeping them from fucking or masturbating while the drugs exited their system was nigh impossible. After the chemicals left their bloodstream, additional changes stopped, but they were left with a permanently diminished mental capacity and superhuman libidos.");
	outputCodex("\n\nA few were kept in house for further study. While superficially dumb, they mastered techniques both sexual and seductive with exceeding aptitude. They were still clearly capable of problem solving, just much, much more focused into a single discipline. One of the dumbest girls, Stacy \\\[Redacted\\\] discovered that she did enjoy more general learning when coupled with masturbation. She went on to master advanced physics and currently serves as a Xenogen personal instructor using her unique talents.");
	outputCodex("\n\nIn conclusion, Xenogen Biotech created one of the first and most unusual bimbofication drugs. The company buried it deep until a Black Void hacker stole the code and chemical composition. Nowadays, an enhanced version of the stuff can be found in the hands of any moderately talented scientist with loose morals, though the U.G.C. declared it universally illegal in short order.");
	outputCodex("\n\nThe drug leaves marked, permanent changes in brain and body chemistry that make it easy to identify one who has used it.\n");
	CodexManager.viewedEntry("Dumbfuck");
}


public function sydianCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("SYDIAN_MALE","SYDIAN_FEMALE");
	outputCodex(header("Sydians"));
	outputCodex("<b>Name (Singular):</b> Sydian");
	outputCodex("\n<b>Sexes:</b> Male and Female");
	outputCodex("\n<b>Height:</b> 4'6\" to 5'6\" for females and 6'3\" to 7'1\" for males.");
	outputCodex("\n<b>Weight:</b> 90 to 160 lbs for females and 200 to 320 lbs for males.");
	outputCodex("\n<b>Hair:</b> Fluffy, exquisitely soft hair, ranging from earthy browns to vibrant greens and reds. Can change depending on the season and the sydian's hormones.");
	outputCodex("\n<b>Tongue:</b> Able to extend up to six inches from the sydian's mouth, fully prehensile.");
	outputCodex("\n<b>Eyes:</b> Insectoid, multi-faceted eyes. Typically black, but in rare cases it can have a greenish sheen to it.");
	outputCodex("\n<b>Antennae:</b> A pair of 1' to 2' long prehensile antennae, covered in a downy fuzz.");
	outputCodex("\n<b>Hands:</b> Three-fingered.");
	outputCodex("\n<b>Tail:</b> Armored and tough, ending in a quartet of protrusions covered in the same fuzz that covers their antennae.\n\n");

	outputCodex(blockHeader("Corrosive Secretions"));
	outputCodex("Throughout the sydian's body are glands that secrete an incredibly corrosive chemical. While the glands are particularly concentrated in the antennae, they are found all over the sydian's body, coating their exoskeleton in a thin sheen of the chemical. It rusts, corrodes or otherwise dissolves most metallic matter. However, on most living creatures, the substance is absorbed into the skin, flushing it hot and increasing the victim's arousal, a particularly effective way of encouraging non-violent encounters. Sydian secretions also have a slight citrus flavor and aroma.\n\n");
	outputCodex(blockHeader("Armor"));
	outputCodex("Sydians are covered from head to toe in a tough, chitinous armor. The only unarmored sections of the sydian's body are their eyes, mouth, and the fluff around their antennae and tail. Even their genitals and breasts are armored with retractable plates, preventing any manner of unwanted sexual advances. Sydian exoskeletons tend to be brown or brass-colored.\n\n");
	outputCodex(blockHeader("Habitat"));
	outputCodex("Sydians live almost exclusively in the junkyard wastes of Tarkus. Since they can dissolve and consume almost any type of metal, they are perfectly suited to their environment. Some colonies of sydians are found in the more civilized sections of Tarkus, but due to their corrosive touch, it's difficult for them to find and fulfill a niche.\n\n");
	outputCodex(blockHeader("Sexual Dimorphism"));
	outputCodex("Male sydians tend to be larger and burlier than their female counterparts, with larger, stockier tails. However, the males' antennae tend to be smaller, rarely growing longer than 1'4\". Their larger size and weaker corrosive fluids means that most males rely more on brute strength, while the more agile females brave the wastes of Tarkus can manage to work with only their speed and sensuality.\n\n");
	outputCodex(blockHeader("Genitals"));
	outputCodex("Males have genital slits that contain penises somewhat larger than the human average (pre-genetic manipulation). Exact measurements have yet to be taken, but first-hand accounts claim length falls somewhere around nine to thirteen inches. Of course, first encounters do typically result in inflated estimates. Sydian penises are universally bright orange in color and covered in hundreds of tiny brushes that automatically flutter on contact, providing pleasurable sensations to the male and his partner. Their sexual fluids are silvery in color, though early tests show them nontoxic to at least 85% of life forms.\n\n");
	outputCodex("Female rust monsters have similarly concealable genitalia. Their vaginas appear as little more than a simple slit at first glance, but when aroused or in heat, their outer lips are reported to bloom, opening slightly to ease penetration and exposing the vibrant orange coloration of their inner channel. They have a single clitoris just like many other galactic species.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Sydians reproduce very similarly to humans. The males penetrate the females with their penis, ejaculate and potentially impregnate the female. Three months later, the female sydian lays a clutch of 3-12 eggs. Every six months or so, female sydians will enter into a sort of heat where they begin craving the lust-inducing chemicals produced by other sydians, though they do not specifically crave penetration. While in this heat, the females hair often turns a fiery orange, displaying her readiness to the rest of her village.\n\n");
	outputCodex(blockHeader("Society"));
	outputCodex("Sydian society is largely patriarchal. The males, much larger and more powerful, typically assume leadership roles in the villages and packs, while the females are used sent out as hunters. Some beta males look after and educate children and perform general manual labor, though others will roam the wastes alone, like lone wolves. Though cultivation is difficult for sydians, some tribes have learned to farm some rudimentary crops using stone tools.\n\nEarly communications have hinter that sydians are actually quite intelligent; early interactions have resulted in near unanimous praise for their wit, though their corrosive touch and tumultuous environment have conspired to keep them in a literal stone age. Most adult sydians have accepted this fact of life, and may even be thankful for it, some claiming technology to be holding people back from leading a happy life. A few have left Tarkus with specially tailored gloves, intent on discovering the wonders of the technology they previous consumed for sustenance.\n");
	CodexManager.viewedEntry("Sydians");
}

public function lapinaraCodexEntry():void
{
	clearOutputCodex();
	//Name: 
	outputCodex(header("Lapinara"));
	userInterface.showBust("LAPINARA","LAPINARA_2");
	outputCodex("<b>Name (Singular & Plural):</b> Lapinara");
	outputCodex("\n<b>Sexes:</b> Female (parasitic variant), Female (non-parasitic variant), Male, Herm, and Genderless.");
	outputCodex("\n<b>Height:</b> Anywhere between 3 and 4 ft for all genders.");
	outputCodex("\n<b>Weight:</b> Anywhere between 40 and 85 pounds for all genders.");
	outputCodex("\n<b>Hair & Fur:</b> Hair is fast-growing, and typically very soft and curly. The hair and fur of Parasitic females is typically white, but can sometimes be silver or gray. All Lapinara have a thin layer of fur covering the entirety of their bodies. The hair is longer and curlier on the lower legs and forearms, resembling warmers. They have a long, puffy tuft of fuzz at the end of their long, whip-like tails.");
	outputCodex("\n<b>Eyes:</b> Large and rabbit-like; Parasitic females always have glassy, cloudy, gray eyes. They resemble crystal balls.\n\n");

	outputCodex(blockHeader("Features"));
	outputCodex("The Lapinara are a sapient, rabbit-like race on digitigrade legs. Their faces are mostly humanesque, possessing tiny, button-like, constantly wiggling noses, as well as long whiskers. Their ears are large and rabbit-like. Given their long incisors and molars built for tough grinding, hey have a very powerful, painful bite. A pair of horns, similar to that of the pronghorn grow from the foreheads of all genders. Parasitic females, non-parasitic females, and fem-herms have small, perky breasts, never more than A-cup. Parasitic gender skin comes in varying shades of gray. The skin tone of the other genders is determined by their host parent.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("The Lapinara are a highly adaptive species. Not possessing a home planet of their own, they are a nomadic kind. Many of the parasitic variety, however, have taken up residence on Tarkus, taking advantage of the local sex-loving goblins and Raskvel, as well as any oblivious visitors.\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Parasitic females are nothing short of pests. They are sex machines, completely obsessed with implanting their eggs into an unfortunate host. While appearing to have typical male genitalia, they are actually anything but. Their “penis” is actually an ovipositor, and their “testicles” instead hold their ovaries. These faux testicles swell up considerably when they have eggs ready. The presence of eggs causes the parasitic Lapinara to enter a rut-like state that doesn’t end until they are rid of them. The pre-cum of the parasitic Lapinara works as an anesthetic, preventing egg implantation from hurting the host.\n\nThe eggs are soft-shelled, and can only continue development if they’re implanted via a host organism’s anus or vagina, where they absorb the second half of the required genetic material. Labor is initiated when the soft outer shell dissolves. This produces non-parasitic offspring that are always born in pairs, and always the same gender as the host parent. Hair, eye, and skin color is also determined by the host parent. Males and herms tend to inherit penis type from their host parent, and females and herms tend to inherit vagina type from their host parent.\n\nMore parasitic females are produced when one parasitic female implants her eggs in another parasitic female. The non-parasitic genders reproduce just like any human, albeit with significantly shorter pregnancies, never longer than three months, but never shorter than two.\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("The epidemic of parasitic Lapinara breeding has led to the foundation of the Lapinara Sanctuary, a charity organization that cares for orphan Lapinara, offers adoption, and provides oophorectomies (ovary removal) for any consenting parasitic Lapinara, essentially neutering them. The removed ovaries are sold to Tamani Corp for research for the advancement of fertility-enhancing products.");
	outputCodex("\n\nIt is currently under fierce debate whether or not unconsenting parasitic oophorectomies are ethical and should be allowed.\n");
	CodexManager.viewedEntry("Lapinara");
}

public function raskVelCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("RASKVEL_MALE","RASKVEL_FEMALE","RASKVEL_MALE_NUDE","RASKVEL_FEMALE_NUDE");
	outputCodex(header("Raskvel"));
	outputCodex("<b>Name (Singular & Plural):</b> Raskvel");
	outputCodex("\n<b>Sexes:</b> Male & Female");
	outputCodex("\n<b>Height:</b> Average heights fall between 3’6” and 4’3”");
	outputCodex("\n<b>Weight:</b> Somewhere between 40 and 60 pounds.");
	outputCodex("\n<b>Hair:</b> None. They have feathery plumage instead, often light blue, red, or black.");
	outputCodex("\n<b>Skin:</b> Scaled skin of tan, dark red, or blue.");
	outputCodex("\n<b>Eyes:</b> Two vertically slit, reptilian-like eyes.");
	outputCodex("\n<b>Ears:</b> Raskvel have two ears that rival Earth’s rabbit species for length and size. Their ears are extraordinarily floppy and typically hang down alongside or behind their head. The positioning and posturing of one’s ears is considered similar to how humans style their hair. The scales covering these ears are typically a brighter, or different hue, than the rest of their body scales.");
	outputCodex("\n<b>Tongues:</b> Lengthy, purple organs that can extend five to seven inches out of their mouths. Their tongues are much thicker than humans'.");
	outputCodex("\n<b>Tails:</b> Raskvel have one long reptilian tail that sways rapidly when its owner is excited or happy. They do not have enough control over it for fine manipulation, but they are more than capable of guiding it into a suitable open orifice when the time calls for it.");
	outputCodex("\n<b>Additional Appearance Notes:</b> Scales cover Raskvel bodies from head to toe, though the scales on their bellies, chests, and groins are far more soft and supple than elsewhere. Their hips are unusually wide for their size, allowing them to pass large eggs and accept large insertions with ease. Up top, Raskvel are nothing to write home about. B-cups are considered large for their species, and anything bigger than that is viewed as freakishly big. Males have narrower hips than females, though they are still wider, by far, than a human of proportionate size.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Genitalia"));
	outputCodex("Males have retractable, pointed purple penises that hide inside genital slits most of the time. Their gonads are kept in pouches that stay so taut to their belly that they appear almost spherical in spite of their three gonads. The female vaginas are purplish in hue, with small inner lips, larger outer lips, and clits on the top and the bottom.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Combat"));
	outputCodex("Raskvel are a peaceful people, but coexisting on a planet with limited resources and highly competitive goblins has forced them into enough fights to know how to handle themselves. They prefer to use nonlethal weapons: stun guns, dart guns, sexual distractions, and aphrodisiacs. They will often flee when close to defeat, though when faced with sexual defeat they will often stay, sometimes even giving up early rather than risk further injury.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Environs"));
	outputCodex("Raskvel build villages under the surface of the planet to better conceal themselves from their enemies, only emerging to scavenge for technology, food, and trade. They can survive well in any temperate clime, though their reptilian blood causes them issue when faced with extreme cold or heat.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Raskvel are consummate breeders, one of the few races able to compete with goblins when it comes to sheer reproductive enthusiasm. They will breed with almost anything at any time, so long as it has a pleasant disposition and a compatible-looking penis or vagina. Most would consider them sluts, but to them, it is a way to survive a planet rife with industrial accidents and deadly foes. They love to mate with creatures bigger than themselves, believing it will give the young the strength to survive longer on their harsh home planet.");
	outputCodex("\n\nShortly before pregnancy they will be immobilized by the size of their incubating bellies, but birth occurs with such rapidity after that that there is little danger from this. They will lay anywhere from three to ten large eggs in an act that they describe as “hellishly pleasurable” before slumbering to recover. The eggs will hatch within a month, each containing a young Raskvel if fertilized. The eggs do not need to be incubated. Once laid they are often left to fend for themselves, as the Raskvel are quite lacking in maternal instincts. The offspring are inquisitive, knowledge-hungry creatures that soak up information like sponges and mature enough to work and talk within a month or two. Full adulthood and sexual maturity do not come for at least two years.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Diplomatic Relations"));
	outputCodex("Raskvel are often hostile toward goblins but will rarely throw the first attack. They hate rust monsters with a passion, due to that race’s propensity for devouring their recently repaired machinery.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Other Notes"));
	outputCodex("Raskvel are known as skilled mechanics but less gifted inventors. They tend to be obsessed with fixing rather than creating, a trait that makes goblins prize them as pets in spite of their racial squabbles. Needless to say, the Raskvel do not enjoy being held in that state.\n");
	CodexManager.viewedEntry("Raskvel");
}

//Codex Entry
public function grayGooCodex():void
{
	clearOutputCodex();
	userInterface.showBust("GRAY_GOO");
	outputCodex(header("Hazard: the \"Gray Goos\""));
	outputCodex("<b>Name (Singular):</b> Gray Goo");
	outputCodex("\n\nThe Gray Goo is an enemy seemingly unique to the junkyard wastelands of Tarkus, comprised of a network of small nanobots - mostly discarded microsurgeons and one-shot stimulants that haven't been properly disposed of. Gray goos require natural lubricants like oil in order to move around effectively, and may target living organics as potential victims for sexual assault, attempt to use orgasmic fluids as an emergency alternative.");

	outputCodex("\n\nThey're smarter the more of them there are - blasting away at the grey goo with weapons will slowly corrupt their networked A.I. even if it only destroys a few bots. They are also susceptible to \"sensory overload,\" which may cause a temporary shutdown in their offensive programs, leaving them helpless but to beg for their necessary fluids. While the network has no specific shape, their drive for humanoid contact often leads them to adopt exaggerated humanoid figures, such as comically busty women or satyrian males in ill-conceived attempts to entice their prey. Recorded assaults generally involve a sexual harvesting, with the goos penetrating sexual orifices and molding themselves around phalluses and similar organs to stimulate orgasm.");
	outputCodex("\n\nWhile no fatalities have yet been reported due to Gray Goo attacks, U.G.C. Scout Authority recommends explorers on Tarkus remain well-hydrated in the event of attack.\n");
	CodexManager.viewedEntry("Gray Goos");
}

public function rahnCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("FLAHNE");
	outputCodex(header("Fuu’Rahn and <prefix>’Rahn"));
	outputCodex("<b>Name (Singular & Plural):</b> Rahn");
	outputCodex("\n<b>Sexes:</b> “Female”");
	outputCodex("\n<b>Height:</b> 4' to 5'8\" commonly. Most are shorter, but a rare few can attain heights as tall as six feet.");
	outputCodex("\n<b>Weight:</b> 60 to 140 pounds.");
	outputCodex("\n<b>Hair:</b> Rahn do not have hair in the traditional sense, though most will morph their body to have the appearance of hair after sufficient exposure to haired races.");
	outputCodex("\n<b>Tongue:</b> Long and flexible, rahn tongues can often extend a good six or seven inches out of their mouths. Some subspecies of rahn or particularly well-endowed Rahn can extend their tongues up to a foot.");
	outputCodex("\n<b>Eyes:</b> Vibrantly colored irises with a vertically slit pupil. The pupil, rather than appearing black as a human’s does, appears as a darker hue of the same color as the iris. Their scleras are the same color as the rest of the body (though a bit lighter) owing to their unique physiology.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Physiology"));
	outputCodex("The rahn have a wildly different physiology than most carbon-based lifeforms. Rather than a collection of tiny cells like most creatures, they are an immense, single cell. Their ‘skin’ is a thick, semipermeable membrane, though with a bit of effort they can permanently reshape it to assume certain appearances. They are almost always bipedal and humanoid in appearance, owing the notable advantages in bipedal efficiency, having arms, and positioning most sensory inputs at the top of their height. Most have further tweaked their appearance to resemble what many races would view as attractive females, as this allows them sample exotic DNA with greater ease.");
	outputCodex("\n\nRahn bodies have their intelligence spread out in a web of fibrous, neuron-like clusters within their body. The distribution of their intelligence and other core functions renders them functionally immune to concerns of headshots or heart wounds. Severed limbs can be quickly regrown, though it will cause a loss of height and mass. Any wounds will almost instantly seal as the surface is converted into their thick outer membrane.");
	outputCodex("\n\nThey can shapeshift slightly, though it is a slow process, often requiring days to complete any major cosmetic adjustments. Their skin and bodies are ridiculously soft, but they can strengthen their inner membranes to near human-like levels of rigidity, even without a skeleton.");
	outputCodex("\n\nRahn excrete their waste as sexual lubricants from their vaginas or ovipositor, depending on preference. Some rahn have adapted to allow themselves to release it via lactation, though this is usually at the request of a close friend or lover.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Subspecies"));
	outputCodex("Rahn have numerous subspecies, most easily identified by the color of their body. The blue and green ones are fuu’rahn: the toughest and quickest to regenerate of the bunch. Red are zel’rahn: able to excrete chemicals on their skin to disable a wide variety of creatures at will. Yellow are the loo’rahn: longer tongues, softer bodies, and better at shape shifting. Purple are the doh’rahn: exude pheromones that can be rapidly tailored to most races they encounter. White are the go’rahn: the most efficient eaters of the bunch, but only because their orgasms are so voluminous - both from their vaginas and ovipositors. There are other smaller groups as well with less information available upon cursory extranet search.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Rahn are a mono-gendered species. Because of this, they will seek biological samples from other creatures before deciding to reproduce. The foreign material is used to help diversify the species, and without it, rahn can only birth clones, something that is greatly frowned upon in their society. Before ascending to prominence in the Thirteenth Planet Rush, they acquired this material from devouring dead animals, but since, they’ve become far more picky about how they gain biomass, savoring the galaxy’s large variety of sperm sources.");
	outputCodex("\n\nWhen a rahn is both well fed and satisfied with the quality of her biomass sources, she can choose begin forming eggs. These eggs will grow within her for a month before it is time for birth, during which the selected biological compounds are used to guide and shape the development of the embryo. Once ready to be birthed, development will be halted while the rahn tries to find a suitable mother, believing that incubating inside another being will be good for the resulting young.");
	outputCodex("\n\nOvipositors be pushed out of the rahn vagina, some using the clitoris as the tip of it and others surfacing it just above. In either case, the ovipositor could be compared to a clit or penis in sensitivity. They are sometimes considered hermaphrodites because of this, even though the only thing their ovipositors can ejaculate are slippery fluids of the same color as their skin and eggs. Rahn who are ready to “lay” will frequently find their ovipositors extending in the presence of attractive females, be they other rahn or another species entirely. Some grow so enamored of their ovipositors that this behavior happens even when ‘unfertilized’. In this scenario, they will simply ejaculate lubricants and small, quickly dissolving eggs.");
	outputCodex("\n\nImplanted, ready eggs will resume development, hatching and filling their mother’s womb with their rapidly expanding mass over the period of about two weeks. The unborn rahn consume their eggshells and the fluids their mother produces for sustenance, often fooling her body into believing it is pregnant with one of her own (if not a rahn). Birthing is quick and relatively painless for both parties since rahn bodies are so soft and flexible. The young will drink and eat virtually anything given to them and attain full size within another two weeks, and proper sentience not long after.");
	outputCodex("\n\nRahn young appear as a blend of their father, mother, and ‘mother’ in appearance, only rendered out of soft, flexible gel. Most often, their bodily configuration will assume the shape of their ‘mother’s body, while their face will wind up resembling their true mother and father combined. Of course, as they grow they can slowly reshape themselves into whatever they please, though morphing their appearance takes some time.");
	outputCodex("\n\nThough they enjoy nearly every part of breeding and motherhood, rahn will only seek to reproduce when they have time to tend to raise the results of their passion and the food sources available to feed them. As they do not use traditional DNA systems, inbreeding is of little concern to them, and mothers will not shy away from directing grown daughters after their fathers.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Food"));
	outputCodex("Rahn can consume the same materials that they use to breed, but they can also subsist on plants, water, and meats, even though they are incapable of using most traditional plants as sources of biological matter for reproduction. They prefer ejaculate and sexual fluids, finding them to be tasty, and if a sperm donor or slippery, wet pussy is available, it comes in handy for their reproductive urges.");
	
	outputCodex("\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("Warm, moist climates are favored by the rahn due to their moist, liquid nature. They do not handle cold very well, and cannot survive at all in sub freezing temperatures. Dry climes are not prohibitive, so long as a ready source of water is available.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Society"));
	outputCodex("Despite seeming to be over-sexed and almost nymphomaniacal, for rahn, the act of sex is as common as eating and approached with little fanfare. Once their lust or ardor is satisfied, they will return to whatever task they had embarked upon with gusto. Rahn are not overly violent or technologically inclined, though both rahn warriors and scientists exist. The only planet with a population containing mostly rahn is their homeworld, Geis. They’ve integrated wonderfully into the rest of galactic society, though many who do not know them better assume them to be easy sluts.\n");
	CodexManager.viewedEntry("Rahn");
}

public function zilCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("ZILFEMALE", "ZIL"); // ohoho lookit dis shit!

	outputCodex(header("The Zil"));
	outputCodex("<b>Name (Singular & Plural):</b> Zil");
	outputCodex("\n<b>Sexes:</b> Male and female.");
	outputCodex("\n<b>Height:</b> 5’ to 5’6” commonly. They can rarely attain heights of 6’.");
	outputCodex("\n<b>Weight:</b> 80 to 140 pounds.");
	outputCodex("\n<b>Hair:</b> Flexible spines covered in a downy-soft fuzz. They are commonly colored black, but sometimes can be yellow or yellow and black striped.");
	outputCodex("\n<b>Tongue:</b> Bright yellow, typically extends a foot past their lips when fully extended. The tip has a tube inside it capable of gathering sweet nectar from jungle flowers or lovers.");
	outputCodex("\n<b>Eyes:</b> Black sclera and iris result in eyes that appear solid black. Rarely they will have vibrant golden irises.");
	outputCodex("\n<b>Wings:</b> Male Zil have flight-capable wings, but the rest of the population does not.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Appearance"));
	outputCodex("Zil are almost entirely covered in chitinous armor plates. While it resembles an insectile exoskeleton, it is more biological armor than anything else, protecting against weapons and other dangerous inhabitants of Mhen'ga. Very few places on their bodies are unarmored: their mouths and bottom of their noses, their anuses, and fingertips, which affords them a decent grip. Their genitals and chests can have their covering plates retracted up and to the sides respectively, typically in order to breed or perform courtship.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Sexual Dimorphism"));
	outputCodex("Male Zil are born without the distinctly wasp-like abdomen and stinger that the females possess. Combined with their wings, this affords ‘men’ increased speed at the expense of an extra attack. Males have penises and females have vaginas. Females also have breasts that are capable of lactating a nutritious, honey-like substance that they can feed to their young. Both sexes’ sexual fluids are reported to be sweet, though all reports have been placed anonymously.");

	outputCodex("\n\n");
	
	outputCodex(blockHeader("Typical Environments"));
	outputCodex("The Zil are located primarily in the thick jungles of Mhen'ga, though they have been observed in sparser sections of forest as well. They do not venture to the polar regions, and the winters of the seasonal areas typically cause them to migrate away. Low temperatures may therefore be effective at driving them off. They have not been seen off-world except when brought as slaves or ‘uplifted’, and are not presumed to have a method of unassisted interstellar travel.");
	
	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("Unsurprisingly, the Zil are much like humans when it comes to breeding. A male will insert his penis into the female, ejaculate his seed, and fertilize eggs in her uterus. Gestation takes between six and seven months, with the resulting progeny born as fraternal twins or triplets. When a Zil takes an interest in another, he will force himself into close proximity with the other and activate his pheromone glands. Both sexes have such glands all over their bodies, though the highest concentrations are centered on their genitals. It is reported that, with males, the densest and most effective scent is released from their foreskin. For females, both the breasts and the labia have incapacitating levels of this chemical reactant. Breeding with humans is possible and has happened. The resulting children are chimeral in appearance rather than the hybrids that were expected. More data is required.");
	
	outputCodex("\n\n");
	
	outputCodex(blockHeader("Society"));
	outputCodex("Zil society is simple and tribal. They live in small groups numbering twenty or thirty at most, hunting and gathering. A few tribes seem to have discovered simple farming, with crops of large, indigenous flowers. Most are content to harvest the plentiful plant life and prey creatures. Signs of open warfare have not been discovered, but the Zil keep no written history. The few instances of observed inter-tribal meetings have resulting in breeding nearly every time. Current theories explain this as a method of maintaining genetic diversity.\n");

	CodexManager.viewedEntry("Zil");
}

//V-Ko Codex
public function VKoCodex():void
{
	clearOutputCodex();
	userInterface.showBust("VKO");
	outputCodex(header("V-Ko Nursedroids"));
	outputCodex("V-Ko is the latest model to appear in JoyCo’s ‘Nursedroid’ line of universal assist-bots. The popular medical franchise travels to the very edges of the explored galaxy to place V-Ko stations around for those in need of a quick heal. For those in the know, JoyCo has also provided relief for other... tense situations.");
	outputCodex("\n<b>Sexes:</b> Female in appearance but ultimately lacking any real genitalia. V-Ko nursedroid VIs are programmed to act and represent similarly to terran and ausar standard females, though they contain programming to alter their behaviors slightly in the presence of species with nonstandard breeding methods.");
	outputCodex("\n<b>Height:</b> 5'7\" or 1.7018 meters");
	outputCodex("\n<b>Weight:</b> 213.214 lbs or 96.7122 kg");
	outputCodex("\n<b>Hair:</b> V-Ko nursedroids are available in a wide variety appearance configurations with hair as the main differentiator. Artifical hair is available in all lengths, colors, and a variety of styles.");
	outputCodex("\n<b>Eyes:</b> Much like their hair, nursedroids' eyes can come in all the colors of the rainbow and then some. One feature that does not change are the cross shaped identification patterns in the center of their ocular receptors. This helps to keep them from being confused with other types of feminine bots.");
	outputCodex("\n<b>Skin:</b> Patented synthflesh, realistic flesh substitute that is kept warm by microscopic subdermal filaments that heat to match the ideal body heat of whatever creature the nursedroid is interacting with. It's appearance and tactile sensations are roughly similar to that of terran skin. To ease in manufacturing, nursedroid's 'clothes' are simply modified synthflesh designed to appear like clothes. There is no need for modesty due to a complete lack of reproductive capability; the appearance of clothing is only there to give users a sense of familiarity and ease around the droid.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Sexual Characteristics"));
	outputCodex("V-Ko Nursedroids are a terran manufactured droid and designed with terran sensibilities in mind, and as such, they come complete with secondary sexual characteristics likes a moderately attractive face (according to focus groups) and pert breasts that would fit a b-cup bra if the droid actually needed them. They do not have nipples, perse, though their outfit does have a barely noticeable bump to indicate the presence of the missing organs. Most importantly, they do not have vaginas. Instead, they do have a charging port where an anus would normally be located. The port does have metal connections and would never work for intercourse.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Virtual Intelligence"));
	outputCodex("V-Ko Nursedroids come with virtual intelligences, known as V.I.s for short. They come equipped with a number of adjustable personality settings and modes, but one thing they all share in common are speech patterns designed to follow galactic etiquette and politeness to a T. Regrettably, nursedroids programming does not allow them true sapience. They're responses are always limited by their programming, though rumors of hackers who embed true A.I.s into them have been circulating on the extranet.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Abilities"));
	outputCodex("Nursedroids are designed and built to provide low cost medical healthcare in locations where proper hospitals and healthcare are in short supply. They are also often used to provide services to those who cannot afford treatment at a proper medical center, making them a fixture on frontier worlds and ghettos.\n\nNursedroids are equipped with miniature medicine producing machinery inside their torsos that allows them to produce everything from simple painkillers to antiviral cocktails. To deliver treatments, their fingertips can open to reveal needle-free injectors that aerosolize drugs into a demis-penetrating mist. Pills they produce are released through their middle finger, as sometimes they can be quite large.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Custom Modifications"));
	outputCodex("JoyCo does allow for a number of custom modifications to their nursedroid line, including some basic stress relief options that allow for them to sate their owners or customers in a sexual manner. Models with these features will provide oral services to masculine reproductive organs and exchange their tongue for a vibrating phallus when prompted for \"stress relief\" by a suitable species.");
	outputCodex("\n\nNursedroids normally keep a small reserve of fluids for medicine creation behind their bust, but serving particularly virile males or hermaphrodites can cause the reservoir to expand  in an attempt to contain their copious ejaculate, swelling their chests beyond all standards of modesty. V-Ko nursedroids are programmed to offload the fluid at their earliest convenience, either by expelling it into a waste receptacle or converting it into a safe, nutrient-rich sludge on food-scarce planets.\n\nCustom V.I. scripts have been written to make V-Kos more enthusiastic lovers, even rewriting them entirely to serve as aphrodisiac-dispensing fuck-toys. Artificial, vacuum pump-equipped vaginas are another popular mod. The only real limit on a nursedroid's customization is its owner's wallet.\n");
	CodexManager.viewedEntry("V-Ko");
}

public function ausarCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("SYRI"); // An example of an Ausar?

	outputCodex(header("The Ausar"));
	outputCodex("<b>Name (Singular & Plural):</b> Ausar");
	outputCodex("\n<b>Sexes:</b> Male and female.");
	outputCodex("\n<b>Height:</b> Varies, usually similar to humans; they commonly range from five feet to just over six, with rare specimens reaching around seven feet in height.");
	outputCodex("\n<b>Weight:</b> Ausar are lithely built, weighing less than a human -- often from just over 100 lbs, and rarely over 200.");
	outputCodex("\n<b>Hair:</b> Color varies, with grey, black, and a dark gold being the most common. Some rare specimens have snow-white hair, or a fiery red mane.");
	outputCodex("\n<b>Eyes:</b> Ausar eyes are primarily white, with darkly colored irises formed as a vertical slit across the middle of the eye. Coloration ranges from dark blue or green to black.");
	outputCodex("\n<b>Ears:</b> The race's most distinguishing feature are a pair of tall, perky wolf-like ears that extend from eight to twelve inches above the head, and are often quite bushy. They are extremely sensitive, able to hear well outside the human range, which makes them both keen hunters and acutely vulnerable to sonic attacks.");
	outputCodex("\n<b>Tails:</b> Ausar have long, bushy tails of an exceptionally pleasant, soft fur. These tails usually display their emotional state, wagging when happy or tucking when sad -- though their owners have some measure of control over the tail's movements, and often will brush it against those they hold in great affection.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Combat"));
	outputCodex("Ausar naturally have a soft, velvety fur covering their arms and legs, though this serves as poor protection against anything short of the environment. As such, the race has strongly invested in personal shield technology, producing some of the most advanced in the galaxy. Due to their high physical agility, most Ausar shun heavier armors such as that worn by human Marines, instead relying on linked shields across fighting formations to guard against attacks. The staff was, in ancient times, the primary weapon of their race, and the staff is the basis for their current weapons technology, with both shock-pikes and crook-shaped railguns being the favored armaments of the day.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Gender Differences"));
	outputCodex("Ausar genders are largely divided as in humans, with males having broader chests and shoulders while females have wider hips and milk-producing breasts. Male Ausar are known to possess knotted phalluses, which can sometimes cause copulation to take hours once it’s lodged in a lover. To compensate, females of the race have exceptionally well lubricated, often quite elastic vaginas, which double to help in the birthing of litters.");

	outputCodex("\n\n");
	
	outputCodex(blockHeader("Typical Environments"));
	outputCodex("The Ausar homeworld is a vast, arid desert spotted with great shimmering oasis and vast temple-cities dedicated to the god-kings of old. Most of the world is uninhabited, occupied by deadly scorpion-like creatures the size of a horse as well as huge worms which have been the race’s primary source of food for aeons. After taking to the stars roughly 1000 years before contact with humans, the Ausar have come to adapt to many different environs, though most worlds they terraform retain the hot, dry desert conditions of the homeworld.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("As mentioned above, Ausar copulation is often an hours-long affair thanks to the male knot, and rapid recovery periods on both sides. Though not overly libidinous, the race is known for being more sexually forward than humans, as marriage and long-term sexual relationships are rarer among the race, though by no means unheard of. Once impregnated, an Ausar female will carry a “litter” of up to six  children for a period of six months before giving birth. Ausar are born blind for the first few weeks and need a mother's milk, but naturally grow and mature somewhat faster than humans, reaching adulthood at fifteen years.");

	outputCodex("\n\nDue to the long standing friendship between Ausar and Mankind, the two are perhaps the most common of xeno-romantic entanglements. Halfbreeds produced by Ausar-Human relationships are somewhat taller and heavier than an Ausar, often losing arm and leg fur, though they retain the tails of their alien parent, and smaller, floppier and less sensitive wolf ears. Half-ausar are born usually in pairs, can see at birth, and come of age as humans do. As one of the most common hybrid races in the galaxy, half-ausar has recently become a primary option in the U.G.C. census, rather than being filled in under “Other/Hybrid race.”");

	outputCodex("\n\n");

	outputCodex(blockHeader("Society"));
	outputCodex("Unlike most modern civilizations, the Ausar have not unified into a central government. Rather, their planets are ruled by independent kings and queens, who convene to decide matters related to the race; it was, indeed, humanity's gift of quantum communication that allowed the fragmented Ausar society, spread across the stars, to tighten and present a strong, united front to the galaxy. However, the local kings are still relatively free to act as they choose, though the King of Ausaril, the homeworld, is considered the “King of Kings,” and is generally deferred to by lesser despots, and holds the only post able to call the entire Ausar to war or countermand planetary kings (in large part thanks to a crushingly huge fleet and more advanced technology produced on the homeworld). In times of trouble or war, the Joint Ausar Fleet can be called on, with each world in the federation contracted to supply a certain number of ships and soldiers to the joint defense each decade.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Relationships"));
	outputCodex("The Ausar are known to be an exceptionally friendly and peaceful race. They are slow to anger, though they are quite territorial, and have rarely warred with other races. In interactions with humans, the Ausar are known to be outgoing and affectionate, readily making friendships that last a lifetime. Indeed, some have commented that most Ausar get along better with humans than their own kind, and thanks to their wolf-like appearance, are occasionally called “Man’s best friend among the stars.” As humanity’s first contact with alien life, and longest and staunchest ally, the saying has thus far rung true.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Technology"));
	outputCodex("The Ausar invented the Warp Gates, and therefore firmly placed themselves at the forefront of galactic technology. While they have yet to field an invention to overshadow the gates, the Ausar are still renowned as brilliant scientists, especially in regards to interstellar travel and ships. Ausar shields are second to none, and their ships are exceptionally quick, equipped with advanced LightDrive engines (a refinement on the human invention). Their technology, being exceptionally complex and prone to gaps in electronic defenses, is well - known to be vulnerable to security breach. More than once, a powerful Ausar fleet or financial institute has been decimated by a skilled hacker.\n");

	CodexManager.viewedEntry("Ausar");
}

public function goldMyrmedionCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("LYRALLA");
	outputCodex(header("Gold Myr"));
	outputCodex("<b>Name (Singular):</b> Gold Myrmedion");
	outputCodex("\n<b>Sexes:</b> Females and males in a 9 to 1 ratio.");
	outputCodex("\n<b>Height:</b> Female Myr are around the same height as terran females, while males tend towards smallness and slightness, often about averaging heights around 5’2” - just under 1.6 meters.");
	outputCodex("\n<b>Weight:</b> Heavy for their height thanks to numerous chitin plates and denser than average muscles and bones.");
	outputCodex("\n<b>Arms:</b> Four narrow but strong limbs ending with three fingers and a single thumb.");
	outputCodex("\n<b>Abdomens:</b> All gold myr have insectile abdomens, used for storing nutrition in lean times as well as reproduction in female queens.");
	outputCodex("\n<b>Hair:</b> Blacks, oranges, and strawberry-blonde are all common.");
	outputCodex("\n<b>Eyes:</b> Myr eyes are solid black (or more rarely grey) compound eyes. They are noted to have relatively poor eyesight, and blindness and various eye problems are unusually common.");
	outputCodex("\n<b>Ears:</b> Myr have pointed ears, called \"elfin\" by first contact explorers.");
	outputCodex("\n<b>Antennae:</b> A pair of insect-like antennae grow from every myr’s forehead. These highly sensitive organs are extremely sensitive to airborne vibrations and chemicals, supplementing already sensitive ears while pulling double duty as an olfactory organ.");
	outputCodex("\n<b>Wings:</b> Females are wingless. Males have vestigial wings too small to lift their forms.\n\n");
	outputCodex(blockHeader("Appearance and Honeypot Myr"));
	outputCodex("Both subspecies of Myr appear bug-like in a variety of ways, but the gold especially so. Their four arms and a chitinous, rear-mounted abdomen leave them looking like walking, talking ants. That comparison is even more apt in light of a startling mutation that is only present among the gold subspecies: the honeypot gene.\n\nThe name is woefully incorrect, penned by explorers with more greed than education, but it has stuck all the same. The honeypot ‘gene’ is in fact a complicated evolutionary marvel that allows the gold myr to store excess nutrients inside their abdomens or breasts for times of scarcity - or to later share with their hungrier countrymen. The organ used for storage falls largely along gender lines. Males use their abdomen and females their breasts. Some rare females use both, and are even able to shunt mass between the two.\n\nWith sufficient nutrition they can become so swollen with their nectar they practically glow amber. Acting as living larders for the hives, these myr’s' organs swell to enormous sizes, often debilitating them due to sheer weight: so immobile, they act almost like diners in the hive cities, setting up on street corners and in specialized restaurants to provide their nectar to the populace \"straight from the tap.\"\n\nInitial examinations of report a thinner consistency than honey with a taste somewhere closer to maple syrup. Lab tests have revealed numerous mood boosting compounds in trace amounts. Large scale consumption for non-myr is not recommended by U.G.C. survey teams.\n\n");
	outputCodex(blockHeader("Sexual Dimorphism"));
	outputCodex("A lucky few gold myr are \"queens,\" winged females able to reproduce without medical intervention. Usually serviced by several male drones, queens have exceptionally quick reproductive cycles, giving birth to large clutches of eggs fertilized by several different fathers. Queens can live for centuries, and birth hundreds if not thousands of young gold myr over their life spans. As the name suggests, queens are highly revered by other golds, some even revered as goddesses.\n\nUntil her first pregnancy, a queen is indistinguishable from any other infertile female, but once she gestates her first clutch of eggs, she will undergo a second puberty, metamorphosing to have a second set of nutrient-lactating breasts, a larger body, and a hugely swollen abdomen. Her abdomen will slowly grow over time, gradually increasing her ability to reproduce. Queens tower over other myr, but their reproductive swelling prevents them from being able to properly defend themselves in a conflict.\n\nMales are shorter lived and winged, possessing considerably less strength than the average female due to his lighter frame. Affectionately called \"drones\" by their female counterparts, most males live in relative luxury. Those not serving a queen are so prized that can live a life of ease. Male myr are characterized by their slight, light bodies and large genitalia, with disproportionately large phalluses and testes that can swell to produce additional semen when frequently emptied, even growing so large enough to drag on the ground.\n\n");
	outputCodex(blockHeader("Combat"));
	outputCodex("Gold myr are not known for their violent inclinations, but their resilient forms, built-in body armor, and surprising strength make them more than capable in a melee confrontation. Poor eyesight at long range diminishes their usefulness in modern, sharpshooter-heavy confrontations. The U.G.C. would have little use for them in an offensive capacity, though their multiple arms could allow them to become very useful as field medics without any cybernetic augmentation.\n\nIn the context of their civil war, the golds are biologically matched by their red foes; both share poor vision and body armor. The reds have a debilitating saliva, but there is little room for biting in a conflict dominated by melee weaponry and small arms, negating that small advantage. The real difference in fighting forces is in training. The Scarlet Federation’s troops are hardened soldiers. The gold myr are relative rookies to combat. Perhaps the only reasons they’ve held out this long have been their primitive technological know-how, larger population, and chemical weapons.\n\n");
	outputCodex(blockHeader("Environs"));
	outputCodex("Gold Myr arm warm-blooded and can survive in a variety of temperatures from just above freezing to 43 degrees Celsius (110 degrees F). Their home planet, Myrellion, is largely an inhospitable desert, leading them survive in below-ground settlements. Over the centuries, small cities have become incredible, subterranean mega-cities, but the war has reduced many to little more than caved-in rubble.\n\n");
	outputCodex(blockHeader("Society"));
	outputCodex("Golds are typically value individual freedom and creativity in spite of their matriarchal society. Every single living gold myr is a direct descendant of a myr queen, raised in familial schools called thollums. Outside of the recently introduced draft, they are free to discover and seek an individual calling. One function of the thollums is to allow them free training in any actively practiced discipline.\n\nThe Gilden Republic (closest approximate translation), is ruled by the Council of Queens, a governmental body made up of every myr capable of reproduction. Each queen’s power is relative to the number of her offspring, with older, more fertile queens carrying significantly more weight than their younger, inexperienced peers. This bizarre, motherhood based political system seems to work well for the gold myr.\n\nU.G.C. researchers have seen few if any signs of dissent amongst the tawny ant-people. Current theories for this vary between biological predisposition to the success of the Gilden Republic at providing for its people. Many of the Council’s laws are analogous to those of 20th century earth’s nordic model - a kind of highly regulated “cuddly capitalism”.\n\nThat isn’t to say that gold myr live a life without strife. The seemingly endless war with the reds has strained their economy to the breaking point. Rising unemployment has brought with it a surge in criminal activity and lawlessness. Usage of red myr saliva as an illicit drug/aphrodisiac is almost an epidemic all its own. Had a ceasefire not been reached, it is likely the gold myr way of life would have been entirely annihilated within the span of a year.\n\n");
	outputCodex(blockHeader("Relationships"));
	outputCodex("Due to the overwhelmingly female-heavy population, males are in high demand: most normal females are unlikely to ever see a male in person, much less be able to copulate with him. As such, lesbian relationships are extremely common and widely accepted. Indeed, a marriage between male and female is quite literally unheard of in myr society; most males are shared between groups of bisexual females.\n\nFemale-female marriages, on the other hand, are a little more common, though monogamy is a relatively new concept for the myr, many of whom still fondly remember a more tribal past with great orgies centered around their precious breeders.\n\nSexuality among female myr is quite open, and most take several casual lovers. Gold myr still practice regular public orgies as part of fertility rites led by their queens and drones, though they also have a higher rate of monogamous marriage than reds do. Golds are quite open with their sex, even flaunting it in public: gold myr dress is highly revealing, and there are no laws or inhibitions about public intercourse.\n\n");
	outputCodex(blockHeader("Technology"));
	outputCodex("Myr technology is nearly analogous with early 20th century earth technology, with basic coal-powered electricity and gas-operated monorails having been recently installed in some of the larger hive cities. Highly primitive computers have just entered service before First Contact, using punch-tape processors and tubes. Despite their largely underground existence, the myr do have aircraft, though most have been re-purposed into transports and military craft due to the war (indeed, the current Joint Ausar Fleet base in Gildenmere, the Gold Myr capital, is a repurposed airfield).\n\nJust before First Contact, the war between red and gold myr took an unexpectedly lethal turn due to the gold myr introducing poison gasses into the conflict, an incredibly effective deterrent against the unchecked red myr advance into their territory, followed by the red myr threatening the unleash a primitive atomic weapon the day before First Contact. Due to the appearance of the ausar expedition to Myrellion, thermonuclear war has been temporarily averted, which has since given the gold myr the opportunity to fashion their own WMDs in response.\n\nThe presence of the alien expedition is assumed to be the only preventative factor keeping the world war from escalating to a nuclear inferno. Due to the surprisingly advanced nature of the race, and their \"honeypot\" biology (which is seen as highly promising by Xenogen), U.G.C. diplomats have arrived on the planet and are working with both hierarchies to achieve a cease fire in the seven years' war.");
	CodexManager.viewedEntry("Gold Myrmedion");

}

public function redMyrmedionCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("NEHZERA"); // aha this is going to bite me in the ass when we end up adding a race called NONE or some shit!

	outputCodex(header("Red Myr"));
	outputCodex("<b>Name (Singular):</b> Red Myrmedion");
	outputCodex("\n<b>Sexes:</b> Females and males in a 9 to 1 ratio.");
	outputCodex("\n<b>Height:</b> Female red myr are around the same height as terran females, while males tend towards smallness and slightness, often about averaging heights around 5’2” - just under 1.6 meters.");
	outputCodex("\n<b>Weight:</b> Quite heavy for their height thanks to numerous chitin plates in addition to muscles and bones that are far denser than the humanoid average.");
	outputCodex("\n<b>Arms:</b> Four narrow but strong limbs ending with three fingers and a single thumb.");
	outputCodex("\n<b>Abdomens:</b> Red myr have evolved away from insectile abdomens. Some members of the species have small, vestigial abdomens, but most have shed them completely.");
	outputCodex("\n<b>Hair:</b> Blacks, oranges, and reds are all common.");
	outputCodex("\n<b>Eyes:</b> Myr eyes are solid black (or more rarely gray) compound eyes. They are noted to have relatively poor eyesight. Blindness and various eye problems are unusually common.");
	outputCodex("\n<b>Ears:</b> Myr have pointed ears, called \"elfin\" by first contact explorers.");
	outputCodex("\n<b>Antennae:</b> A pair of insect-like antennae grow from every myr’s forehead, which pick up airborne vibrations and chemicals to supplement already keen ears while pulling double duty as an olfactory organ. The antennae are exceedingly sensitive to touch, and a non-verbal language seems to have developed based on subtle movements and rubbing the antennae together.");
	outputCodex("\n<b>Wings:</b> Females are wingless. Males have vestigial wings too small to lift their forms.\n\n");

	outputCodex(blockHeader("Appearance"));
	outputCodex("Like their gold cousins, the red myr are insectile in nature and appearance, though they are much more human-like than the golds: most reds lack insectile abdomens, they possess only two arms, and they lack the dramatic distinction between \"queens\" and common, infertile members of the species. Red and gold myr even have their genitalia located in different places, with reds' located between the legs.");
	outputCodex("\n\nThe most obvious physical trait of red myr is their natural chitin armor, which is thicker than that of the gold myr and considerably heavier, affording them superior protection. The covering of chitin is not consistent between all members of the species, with some limiting their plating to the limbs, while others have elaborate corset-like plates around the chest and back.");
	outputCodex("\n\nThe reasons for the extreme divergence in this species is currently unknown, though speculation points towards extensive interbreeding with another high-population native race, the nyrea, and the great distance between gold and red heartlands. Xenobiologists and anthropologists are interested in finding the progenitor race that originated the different species of myr, though both red and gold seem uninterested in researching their shared past and have stonewalled scientific inquiries.\n\n");
	outputCodex(blockHeader("Sexual Dimorphism & Reproduction"));
	outputCodex("Male and female red myr have noticeable gender dimorphism, again tracing back to an insectile heritage. The vast majority of red myr are wingless females. Most are infertile, and incapable of reproduction. Red myr do, however, have a significantly higher percentage of fertile females compared to golds, as they lack the massively productive queens to ensure the continuation of their species. Population statistics declassified by Federation High Command indicate that somewhere between thirty and forty-five percent of red myr females are fertile. Still, the numerical advantage was clearly and overwhelmingly with the gold myr before the start of the war. Red myr females lay single eggs or small clutches of no more than four when fertilized, which gestate for an average of six months before hatching.\n\nWhile they do not possess the \"honeypot\" gene of the gold myr, most female red myr are capable of limited lactation if well fed, storing excess calories in the breasts until needed. Compared to gold myr, reds have smaller bust sizes on average, usually between a C and E cup, though this size can vary wildly during a single myr's lifetime depending on her nutritional intake.\n\nUnlike with the gold myr, nursing and lactation is considered highly private and personal between red myr, and to do so in public is highly frowned upon. Generally speaking, nursing is reserved for children and very close lovers, and is a sign of the highest affection between two red myr.\n\nMales are shorter-lived and winged, possessing considerably less strength than the average female due to his lighter frame. Affectionately called \"drones\" by their female counterparts, most males exist in red myr society to do very little other than breed: they are dearly prized by their females, and were often fought over during ancient times before intricate breeding schedules were established some hundred years before First Contact.");
	outputCodex("\n\nMale myr are characterized by their slight, lithe bodies and massive genetalia, with disproportionately large phalli and semen-swollen testes that often drag on the ground when not regularly used -- though due to their high demand, this is rarely an issue. Due to the extreme conditions imposed by the war, even drones were pressed into service by the Scarlet Federation, though they were legally barred from combat duties. Most served as nurses, administrators, and factory workers, freeing more females up to fight.\n\nThese newfound demands of labor have, reportedly, began an accelerated male rights movement, similar in nature to the women's rights movement of 20th century Earth. Little information about the movement is available, however, due to the lack of contact with male red myr: few have been available for interview or commentary.\n\n");
	outputCodex(blockHeader("Combat"));
	outputCodex("Myr are notably covered in a partial \"suit\" of chitin plates which protect the legs, arms, and in some specimens, parts of the torso. This natural armor, combined with an average strength considerably higher than a human's and poor eyesight, has meant that melee combat still reigns supreme among the red myr, with axes and hammers being about as common in the Federation military as rifles.\n\nUnlike the gold myr, who had a very small standing military and little combat experience before the start of the global conflict, the Scarlet Federation began the war with highly trained, veteran soldiers -- most of whom had experience fighting large city-states of nyrea in addition to being trained by veterans of the unification conflicts that preceded the Federation's formation. Some U.G.C. sources have speculated that the Federation may have been in conflict with other, as yet unknown civilizations in the northern and western reaches of the planet for generations.\n\nMilitary tactics and technology among the red myr are significantly more advanced than those of the golds, and for the most part are reliant upon massed infantry charges supported by heavy artillery when fighting above ground, or on chemical weapons and phalanx-style shield walls when underground. Red myr weapons technology primarily employs smokeless gunpowder in revolvers, lever- and bolt-action rifles, and primitive air-cooled automatic weapons.\n\nSupplementing their hand-to-hand abilities, red myr females have venomous saliva which, on contact, causes a mild paralysis in the victim. The venom is known to cause a \"red heat\" sensation, inspiring rampant lust in the victim and usually putting him utterly at the mercy of the myr victor. Among gold myr, the venom of a red is considered a strong but illicit aphrodisiac, taken in small quantities to induce a lethargic, horny state.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited"));
	outputCodex("Myrellion is the sole planet inhabited by the myr race, and it is fairly Earth-like in most respects. The planet has vast desert regions across much of its land masses, with some forested regions in the far northern and southern reaches. There are few if any snowy areas on the planet beyond the poles. Hot and dry, Myrellion is generally inhospitable above ground. The myr, however, are largely subterranean, and have over the years drilled out vast complexes of underground cities that rival the splendor of even the mega-cities of Terra. Due to the world war currently under way, many once-prosperous cities on both inhabited continents have been bombed out and abandoned, straining the population of the remaining cities as they accommodate refugees.\n\n");
	outputCodex(blockHeader("Society"));
	outputCodex("The Scarlet Federation touts a dramatically different social doctrine than that of the Gilden Republic. While the golds value freedom and creativity, the reds value discipline, hard work, and collective effort. The concept of free will is understood and appreciated by the red myr; it is believed by most to be second-best to the freedom granted through self-mastery. Though not all red myr follow this doctrine, the end result is a society that is truly and monumentally well ordered: hierarchies are well-established and held up for public scrutiny, unemployment is virtually non-existent, and civil disorder is next to unheard of, even during the darkest hours of the war.\n\nThe Scarlet Federation is primarily a military organization, and the red myr are effectively ruled by a junta of generals collectively called the High Command who took power after several unification conflicts brought the scattered red myr city-states under collective control. Military service is considered a sacred civil duty, and the ability to vote and serve public office is restricted to veterans only. Before the war, the Federation military was volunteer-only, though the press of seven years of war has necessitated a draft, much as it has among the gold myr.\n\nRed myr society is highly nationalistic and collectivist, promoting cooperation and national unity. Social power is held almost exclusively by the military, veterans, and the Federation High Command. Most national industries are government-supported private corporations, while citizens are free to create smaller private businesses.\n\nWhile the society endorsed by the Gilden Republic was on the verge of collapse under the strain the war, Federation society thrived thanks to vast acquisitions of land and resources heralded by their military victories. However, the strain of the war was felt heavily on the red myr population, which began the conflict significantly smaller than that of the gold, and has dwindled dangerously due to losses during the campaign. Had the infantry invasion of Gildenmere been launched, U.G.C. scientists suggest incurred casualties could have rendered the red myr population unviable -- too small to avoid genetic damage due to inbreeding and leaving them highly vulnerable to disease or mutation.\n\nRelationships: Due to the overwhelmingly female-heavy population, males are in high demand: most infertile females are unlikely to ever see a male in person, much less be able to copulate with him. As such, lesbian relationships are extremely common and widely accepted. Indeed, a marriage between male and female is quite literally unheard of in myr society; most males are shared between groups of bisexual females.\n\nRed myr sexual norms are difficult for some outsiders to comprehend, even to natives of Myrellion. Most red myr are open about their sexuality, and have little inhibition from doting on lovers and public displays of affection. However, unlike the gold myr, reds are highly averse to public nudity and blatant sex acts. Social norms dictate that sex is to be done in private seclusion with trusted lovers: there is no shame in the act, but rather it is deemed too personal and emotional to share with strangers.\n\nThe advent of casual sex is only a very recent phenomenon spurred on by the war. While monogamy is uncommon among the myr, relationships were expected to be devoted and deep. This attitude changed during the war, thanks to the concept of \"trench wives\" -- females that soldiers have either captured or brought from home who serve their needs between battles. These relationships are based on lust and physical pleasure, and have (some say alarmingly) disrupted the polyamorous partnerships more common in years past. The trench wife phenomenon is seen as a necessary evil by most red officers, as the Federation simply does not have the resources to deal with the sheer number of prisoners taken during the war. Allowing soldiers to keep their own captives, and insisting that they care for them, is seen as a more humanitarian than prison camps and puts the brunt of the administrative needs (food, shelter, etc.) on the shoulders of individual unit commanders.\n\n");
	outputCodex(blockHeader("Technology"));
	outputCodex("Myr technology is nearly analogous with early 20th century Earth, with electric engines and lights being common everywhere but the most remote villages and outposts. Federation military tech was relatively advanced compared to the golds' at the start of the war, though the Gilden Republic has made great strides to close the gap. The machine gun had only recently come into service at the start of the war, leading to the massive death tolls during the conflict.\n\nLike their gold counterparts, the red myr possess primitive aircraft, though they are largely forced to use captured gold airfields due to the short range of their craft and the remoteness of their original territory. That said, the Federation is perhaps more reliant on aircraft than the golds, and they make use of heavy air transports to move supplies and soldiers throughout the occupied continent rather than using traditional tunnel crawlers or ground craft.\n\nJust before First Contact, the war between red and gold myr took an unexpectedly lethal turn due to the gold myr introducing poison gases into the conflict, an incredibly effective deterrent against the unchecked red myr advance into their territory, followed by the red myr threatening the unleash a primitive atomic weapon the day before First Contact. Due to the appearance of the ausar expedition to Myrellion, thermonuclear war has been temporarily averted, which has since given the gold myr the opportunity to fashion their own WMDs in response.\n\nThe presence of the alien expedition is assumed to be the only preventative factor keeping the world war from escalating to a nuclear inferno. This has caused some consternation on the part of the Federation, who saw themselves as on the brink of a final victory, and now are being largely ignored by the off-worlders in favor of the more alluring gold myr. Xenogen Biotech has, however, made preliminary inquiries into the reds' lust venom while other parties have expressed interest in exporting red myr labor (either reds themselves or selections of their many, many gold myr prisoners of war).\n");
	CodexManager.viewedEntry("Red Myrmedion");
}

public function mimbraneCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("MIMBRANE");

	outputCodex(header("Mimbranes"));
	outputCodex(blockHeader("- (Graft, Epidel, Second Skin)\n"));
	outputCodex("<b>Name (Singular):</b> Mimbrane");
	outputCodex("\n<b>Sex:</b> Asexual");
	outputCodex("\n<b>Height:</b> 0.0004 to 0.25 inches. Typically ranges between the slightest fraction of an inch when resembling a thin film to a quarter of an inch when dense and/or well fed.");
	outputCodex("\n<b>Length:</b> 6 to 36 square inches. The parasite’s ability to distribute its mass to control its surface area can usually put it anywhere between six and thirty six square inches.");
	outputCodex("\n<b>Weight:</b> 100 to 340 grams (0.2 - 0.75 pounds)");
	outputCodex("\n<b>Hair:</b> None of its own, but able to replicate host features.");
	outputCodex("\n<b>Tongue:</b> None"); // I think it would be an idea to build an ordered list of "appearance descriptors" for codex entries, and just omit ones that will be blank/none etc, but to have everything in the same order otherwise.
	outputCodex("\n<b>Eyes:</b> Two tiny eyes protected by a thick portion of dermis that can act as eyelids. Round with bright sclera, thin redish iris, with average sized pupils. The eyeballs can vary in size, sometimes changing in size as the Mimbrane integrates into a host.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Senses"));
	outputCodex("Mimbrane feature small fleshy mouths below and between their eyes that protrude slightly from their form, typically thicker than the rest of the creature. Their mouth is used to breath, ingest liquids and communicate as most creatures, but if the parasite is able to latch onto a host organ with an orifice, it will ditch its normal mouth in favor of utilizing the newfound hole as its own. Without a properly sized orifice to borrow, Mimbrane will maintain their normal mouths, anxious to pass them off as small lumps with no seam. Information on how the creature feeds and breathes can be found below.");

	outputCodex("\n\nA Mimbrane’s most important organ is its skin. Its normal appearance is a light red or pink, lighter in color the thinner the creature stretches itself and more vibrant the more dense it is. Mimbrane are smooth and free of any discolorations or imperfections. They can appear as thin square sheets, slightly moist and glistening as they glide through the air or crawl along the ground. At their largest sizes, Mimbrane are incredibly lithe and become somewhat translucent.");

	outputCodex("\n\nThe parasite is able to prorate its sparse mass in order to control its surface area, allowing it not only encase its prey, but also fly and glide with relative ease. The creature’s more well-known trait is its ability to transform and alter its epidermis, mimicking its host’s every detail. More information on this feature can be found below.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Armor"));
	outputCodex("Due to its lean nature, Mimbrane rely more on their ability to dodge and conform to any shapes in order to help defend itself. Sharp blades and projectiles that actually do make contact easily injure the creature. Blunt weapons are normally ineffective. A Mimbrane’s primary offense and defense lie within its lust-inducing oil and spit, explained further below."); // "Explained in section [<random numbershit to look like a reference>]"?

	outputCodex("\n\n");

	outputCodex(blockHeader("Typical Environments"));
	outputCodex("Though the creatures can exist in most any habitat, Mimbrane tend to prefer natural and wooded areas, locales comprised of abundant sources of warmth and nutrients.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Means of Attack"));
	outputCodex("Mimbrane tend to be docile creatures, hiding from potential prey whenever possible. The cause of this is the extreme toll battle can take on the parasite. A single creature can take months to accumulate enough nutrients just to work up the reserves necessary to employ their lust attacks in addition to the above average energy expenditure. In other words, a Mimbrane that has decided to attack is putting its all into the effort.");

	outputCodex("\n\nA Mimbrane’s primary means of offense are targeted to their opponent’s carnal instincts. Its first attack is more passive, as the parasite’s skin secretes a clear oil, tinged lightly with a bright pink color. Contact with the parasite’s oily skin can wreck havoc on its opponent’s sexual craving. A byproduct of a Mimbrane’s sweat is the pungent cloud of ecstasy it produces; the parasite will periodically stress its pores and fan this gas towards their opponent. The creature’s more direct attack has it gather and concentrate its oil, spitting a particularly volatile batch of libidinal craving that bursts on contact.");

	outputCodex("\n\nWhile Mimbrane rely primarily on their ability to drive their opponents to sexual madness, they also utilize their light form to try and temporarily smother their hosts. This attack doubles the effectiveness of their oily skin as well. The few physical attacks of the parasite involve it creating tiny barbs along its surface and brushing against their opponent and fairly weak attempts at tripping up an opponent.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Parasitism"));
	outputCodex("A Mimbrane’s primary goal in life is to attach to a host, feed, and slowly reproduce. Once it has properly subdued a target, the parasite will work its way towards its intended body part. An interesting facet of these creatures is their inherent organ preferences, shared among the entire species. These baked-in predilections place importance on ease of acquiring liquid sustenance followed shortly thereafter by warmth and relative seclusion on the host.");

	outputCodex("\n\nMimbranes prioritize sexual organs, preferring penises over vaginas. Should the genitalia be either non-existent or claimed by other Mimbranes, the parasite will opt for the posterior, enshrouding the entire rear end and anus to account for its less-than-optimal choice. The next option for a Mimbrane would actually be the scrotum followed by the breasts, the lower and warmer sac an easier location for remaining secluded over the typically much more exposed breasts. And when all known sexual organs are unavailable, the parasite will opt for extremities, typically the hands and finally feet.");

	outputCodex("\n\nThe face is actually avoided when choosing a roost as it is typically a very sensitive and hard area to maintain for the parasite. Attempts to hide anywhere on or around the head more often increase the creature’s presence to the host. As a result, Mimbrane will rather reject a host than place themselves somewhere they believe would lead to their quick removal.");
	
	outputCodex("\n\nOnce a Mimbrane has chosen an organ, it quickly goes to work encapsulating the entirety of their selection, forming a perfect seal. From this point, mimicry becomes the primary goal of the parasite. The Mimbrane’s epidermis will integrate itself with its host’s nervous system, forwarding sensations on to nerve endings and feeling as if nothing were on the organ at all. Dead skin cells and sweat are passed through the creature if they are not able to be consumed.");

	outputCodex("\n\nThe parasite also works to visually represent its chosen target, detailing every bit of texture, coloration, hair and imperfection that they’ve covered. In only a few scant minutes, a Mimbrane’s pink, featureless, slick skin will perfectly resemble its target down to the last hair, freckle, or scar. Once the transformation is complete, a motionless Mimbrane becomes almost unperceivable to its host, save for a few telltale signs.");

	outputCodex("\n\nThe most visible indications of the parasite while they are attempting to mimic their chosen organ often appear as lumps of skin or enlarged body parts. The first sign is the bunching of the parasite’s skin along the base of their connection to the host. This acts as the creature’s defense from unassisted removal, painlessly digging into the host’s skin and alerting the parasite to any attempts to pry it free. The other visible trait are typically two tiny bumps close to the host’s orifice, where the Mimbrane hides its eyes.");

	outputCodex("\n\nThe final telltale mark is only when the parasite has bonded with an organ that does not feature some sort of cavity. A third bump will appear, hiding the creature’s small mouth. The lumps protecting a Mimbrane’s mouth and eyes have no visible seams, and the parasites will typically try to push these few remaining marks of evidence down against their host in an effort to better hide them. More information on the parasite’s tendencies when coupled with a host can be found below.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Feeding"));
	outputCodex("A Mimbrane can survive on sources of moisture such as plants, fruits or water, but it cannot reproduce until it has found and attached itself to a host. If it has clung to an organ that features some sort of orifice, it will dissolve its mouth in favor of substituting it with its newfound outlet. If there is no orifice, the Mimbrane will maintain its small mouth, trying its best to disguise it as an innocuous bump on its host.");

	outputCodex("\n\nThe mouth is where a Mimbrane continues to feed and breathe. The parasite is unable to continue breathing through its epidermis when coupled as its skin is currently occupied mimicking the host. As a result, the creature will wait for moments of inactivity to move its mouth open and close, stirring fresh air around and allowing it to easily absorb and process oxygen. The sensation – whether with a claimed hole or the creature’s mouth – can very easily be felt by the host and is the most glaring reminder of the parasite’s presence.");

	outputCodex("\n\nMimbranes ingest host secretions that pass through their borrowed mouths by absorbing them into the skin surround the opening in a manner similar to breathing. This action does not require the same amount of movement, however and usually goes undetected by hosts. The exception goes for parasites lacking a borrowed spout, who use their natural mouths in a manner similar to all other living creatures in order to collect what they crave. When located on extremities such as hands, Mimbrane will attempt to push themselves to a visible source when hungry.");

	outputCodex("\n\nDue to their slow and miniscule metabolism, the parasites only require a small fraction of the various discharges they can come into contact with. Most Mimbrane are unable to engorge themselves rapidly, which acts as a countermeasure from growing too large too fast, thus increasing their odds of irritating their hosts and reaching their demise.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("Mimbrane store and process any and all nutrients they come into contact with once in contact with a host. As a result, the body part they’ve encapsulated can appear to swell over time. The parasite can easily grow anywhere between twenty five and fifty percent of the size of the organ it currently resides over. People with swollen penises, vaginas, asses, or anything else never feel as if their organs have been smothered with the extra weight due to the creature’s continued mimicry and faked signals it sends to the nervous system.");

	outputCodex("\n\nOnce a Mimbrane has reached a large enough mass – roughly at least double its original mass – it will begin asexual reproduction in a form similar to binary fission. The parasite begins by preparing the host for the bizarre sensations, which are described to feel as if removing large bandages, onaholes, or other sorts of coverings after a long period of time. If it fears for its safety, the parasite will wait until the host is asleep.");

	outputCodex("\n\nA separation begins to occur along the perimeter of the Mimbrane’s original size. Over the course of an hour or two, the parasite will center its consciousness on the skin still attached to the organ and finish severing all of the extra mass its accumulated over the course of a number of weeks. At this point, the growth will fall or merely slip off of the host, still appearing like an enlarged copy of the organ it shed from. The faux organ will convulse and spasm for a few minutes, signaling the growth of the new consciousness.");

	outputCodex("\n\nThe new Mimbrane can survive in this state for tens of minutes, feeding off the excess stores of nutrition left to it by its parent. Some more experienced hosts have been known to enjoy the offspring for the time it exists as an engorged copy of their body part. The new Mimbrane’s mind briefly revolves around its memories as the body part in this state.");

	outputCodex("\n\nEventually it will settle and unravel back into its original form, flooded with the continued instincts and knowledge that is always passed down throughout the creation of the parasites. Mimbrane prefer to spread to new targets and will abandon their parents as soon as the opportunity arrives.");
	
	outputCodex("\n\n");

	outputCodex(blockHeader("Intelligence and Behavior"));
	outputCodex("Evolution has taught this race to be patient and polite in order to increase odds of survival. Mimbrane intelligence is just above that of common house pets, surprisingly. The parasites rely on their lust-increasing secretions to attain hosts, but they cannot afford to continue to rely on them once they are in place. This forces the creatures to interact with their host as little as possible, relying on their mimicry, downplayed movements, and slow growth to conceal themselves as long as they feel they are in danger of aggravating their host, driving them to attempt and remove them.");

	outputCodex("\n\nOnce Mimbrane believe they’re in little harm of being forcibly removed from their perch, they may open up a little to their host. The parasite will more freely control its claimed organ in plain view of its host, responding to stimuli such as movement and sound like any other sentient creature will. The parasite will attempt to form and maintain this bond in order to help ensure its survival if it thinks it can make it work.");

	outputCodex("\n\nAs time and trust continue to build, Mimbrane can eventually reawaken their latent capabilities used when capturing prey, helping their host by waging the same spitting and secretion-based attacks against their opponents’ sexual drive. These strikes require a good degree of the nutrients the parasite has stored from the host, nutrients that are typically reserved purely for reproduction and self-sustenance. As a result, these actions can only be used sparingly by the creature when they feel open enough to aid in combat.");

	outputCodex("\n\nGetting a Mimbrane confident enough to act like this is quite a feat as this runs contrary to the species’ normally shy nature. A Mimbrane’s first instinct once it has attached to a host is to mimic and hide in plain sight. Even when the parasite has fully confided in its host, it will generally hide from all strangers.");

	outputCodex("\n\nWhat they won’t hide from are their fellow parasites. Mimbrane are highly sociable among one another, and people playing host to several of them may discover just how chatty the little guys can tend to be. No matter what form they may appear in, Mimbrane will utilize their mouth to make high-pitched squeaks to communicate with one another.");

	outputCodex("\n\nMimbrane will also come to the aid of their brethren when possible. If they discover their host is in combat with another of their kind, they will sweat the same lust-inducing oil that host-free Mimbrane use to subdue their prey. This can turn an individual’s armor against them as the parasites will use it as a pressure cooker for sexual fervor. Once the host has been humbled, existing Mimbrane already clinging to them will announce their presence and work together to signify any remaining key organs for the new parasite to claim as their own. This behavior can easily lead to an individual being overrun by the parasite if they continually encounter them.");

	outputCodex("\n\nFinally, Mimbrane will continue to aid one another on the same host by making certain any parasites without orifices to feed from are taken care of. It isn’t uncommon for an individual with several Mimbrane to frequently lose control of much of their body as the parasites communicate and feed one another if the fear of discovery and removal is low. This group mentality is exclusive to the parasites only when a host is present; they do not typically come to one another’s aid and work together alone in the wild.");

	outputCodex("\n\n");

	outputCodex(blockHeader("Removal"));
	outputCodex("Mimbrane’s incredible mimicry and tendencies to aid their hosts when they aren’t avoiding their ire is simply due to the fact they perish if they are ever removed from their host. The act of integrating into an organism’s nervous system is second nature to the parasite, but they will die of shock should they be pried away. Unaided removal is highly discouraged, as the parasite can easily utilize its connection to the host to paralyze them with signals of pain or pleasure.");

	outputCodex("\n\nMimbrane can utilize their natural defenses in addition to anything the organ at their disposal can grant them to defend themselves against others as well. Individuals with a great number of parasites across their body can even provide a challenge for medical professionals. Caution is recommended when dealing with anyone in a situation like this; the parasites will easily wrestle control away from their host when fueled by adrenaline and defend themselves.");
	
	outputCodex("\n\nContacting an anesthesiologist is the best approach to removing Mimbrane from an individual. The parasite’s need to respire makes it susceptible to being knocked out and easily removed. There is rarely any lasting damage to hosts.\n");

	CodexManager.viewedEntry("Mimbranes");
}

function venusPitcherCodexEntry():void {
	clearOutputCodex();
	userInterface.showBust("VENUSPITCHER","VENUS_PITCHER_ELDER");
	outputCodex(header("Venus Pitchers"));
	outputCodex("<b>Name (Singular):</b> Venus Pitcher");
	outputCodex("\n<b>Sexes:</b> Hermaphrodite");
	outputCodex("\n<b>Height:</b> Three to fifteen feet above the ground, depending on age.");
	outputCodex("\n<b>Weight:</b> Hundreds of pounds including their subterranean bulbs.");
	outputCodex("\n<b>Hair:</b> Comprised of leaves. It varies based on season and subspecies of venus pitcher.");
	outputCodex("\n<b>Eyes:</b> Sclera are tinted light green due to their chlorophyll infused biological systems.");
	outputCodex("\n<b>Lower Body:</b> Where humans would have knees, venus pitchers have legs that fuse together into a central stalk. The stalk connects to their root system and central, subterranean bulb, which they use to gather additional, harder-to-extract nutrients. This stalk is remarkably flexible, and can allow the girl to hang down into her pod, sealing it and allowing her to play to with her prey unimpeded.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Genitalia"));
	outputCodex("Venus pitchers are hermaphrodites, like most plants, though given their sentient nature they're obviously more than a simple blossom with stamen and pistil. Their genitalia are entirely contained in a number of vine-like tendrils and tentacles which ring the edges of the bulb's inner chamber. Some tentacles appear similar to penises while others have the trappings of feminine orifices. Both are used to extract nutrients from prey's sexual organs.\n");
	outputCodex("\n\n");

	outputCodex(blockHeader("Nutrition"));
	outputCodex("Venus pitcher plants dwell in the deepest, darkest parts of the jungle, where most other plants cannot survive due to the meager amount of light allowed to slip through the canopy. They do photosynthesize what they can get, but it isn't enough to survive on. Luckily, they dwell on Mhen'ga, a planet that has lots of licentious zil with sugary-sweet, nutrient-packed sexual fluids. They will seek to entice the zil or any other creature of suitable size into approaching them, an act sure to result in the entrapment of the victim. Camouflaged just in front of them, the entrance to the pod is nearly invisible - until someone falls into it.");
	outputCodex("\n\nAt that point, the tendrils lining the pod's interior will restrain the victim and bring them to a sexually fruitful state, penetrating orifices, engulfing dicks, nipples, and any other fluid-secreting protrusions. The victim of this forcible liquid extraction will often enjoy it thanks to the venus pitcher's gentle methods of milking, drug-like spores, and soothing, almost motherly mannerisms.");
	outputCodex("\n\n");
	
	outputCodex(blockHeader("Intelligence"));
	outputCodex("Venus pitchers are sentient, though they tend towards laziness and make poor conversationalists. When left alone, they do little but preen themselves and ensure that they're as enticing as possible. When a stranger approaches, they're focused on getting them inside them to violate and possibly hypnotize, in the case of elder venus pitchers.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("Venus pitchers can fertilize themselves, but only do so in the presence of a potential seed carrier. Female victims will be implanted with a number of seed pods which are subsequently fertilized (after feeding). Once free, the female will carry the pods for a time, laying them periodically over the span of a week. Venus pitcher seed can survive in the lining of a host's vaginal cavity for weeks, which allows for true sexual reproduction to happen whenever someone is victimized by multiple plants.");
	outputCodex("\n\nMales are prized more as food sources than reproductive partners. They typically produce larger volumes of protein and are more susceptible to the venus pitcher's appearance, making them more common but necessary prey.");
	outputCodex("Elder venus pitchers will typically hypnotize males to return to them as a steady supply of food. Particularly skilled ones may find their protein harem lining up waiting for their turn. If a female can be hypnotized, they will implant suggestions to visit many different pitchers, allowing them to breed and combine DNA from multiple plants.\n");
	
	CodexManager.viewedEntry("Venus Pitchers");
}

function cuntSnakeCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("CUNTSNAKE");

	outputCodex(header("Cunt Snakes"));
	outputCodex("(Parasite Pussies, Cock Constrictors, etc...)");
	outputCodex("\n<b>Name (Singular):</b> Cunt Snake");
	outputCodex("\n<b>Sexes:</b> Asexual, though often referred to with feminine pronouns for obvious reasons.");
	outputCodex("\n<b>Height:</b> One to six inches.");
	outputCodex("\n<b>Length:</b> Most frequently between two and six feet long. Exceptional specimens can grow up to eight or ten feet long on a world with large enough host creatures.");
	outputCodex("\n<b>Weight:</b> Five to forty pounds, depending on size.");
	outputCodex("\n<b>Hair:</b> None.");
	outputCodex("\n<b>Tongue:</b> Cunt snakes do not typically have tongues.");
	outputCodex("\n<b>Senses:</b> Heat-detecting sensory bulbs near their ‘mouth’.  They can also detect subtle variations in air pressure and pheromones to hone in their targets.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Armor"));
	outputCodex("Cunt snakes are typically covered in scales from their head to their vagina-like tail. The scales can provide modest protection, but these parasite creatures typically rely on speed to avoid damage.");
	outputCodex("\n\n");

	// Suggesting we just ignore blocks that effectively say nothing rather than "huehue nothing"
	outputCodex(blockHeader("Sexual Dimorphism"));
	outputCodex("None; cunt snakes are unisex.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Environments Typically Inhabited"));
	outputCodex("Any. Cunt snakes are highly adaptable creatures that can reside on nearly any planet capable of supporting life. Infestations caught early can be quickly neutralized, but within a few generations, they will typically take on the characteristics of local host creatures and be much harder to weed out. More information is available under the reproduction topic.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Intelligence"));
	outputCodex("Cunt snakes are not sapient in the traditional sense.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Feeding"));
	outputCodex("Cunt snakes can effectively feed from their snake-like mouth and their vagina-like tail. They do not ingest food so much as drink blood from their prey or hosts. A venomous bite will render most small creatures comatose; the snake can then feed on its victim much like a spider. While cunt snakes can survive in such a way, they cannot truly thrive unless they find a host creature or reliable source of supplementary protein - usually taken through its vaginal opening in the form of semen.");
	outputCodex("\n\nThey will try to entice larger creatures into copulating with their vaginal portion when possible. More often than not, they will also bite the creature numerous times, using their venom to either paralyze or arouse the host into cooperation (depending on subspecies).");
	outputCodex("\n\n");

	outputCodex(blockHeader("Parasitism"));
	outputCodex("If a cunt snake determines a creature would make a suitable host, it will subdue it with venom, then bite the victim at the base of the spine and a second pouch in its mouth will burst, releasing a special enzyme. This compound will cause the snake's mouth to dissolve, as well as a small area of the host creature's backside. Within a few moments, the cunt snake’s nerves and blood vessels will seamlessly attach to those of the host creature.");
	outputCodex("\n\nThe presence of an attached cunt snake on a host body will have several effects on it. Most notably, the creature will find itself able to control its new tail-cunt as effectively as any other limb. The snake's body will become covered in skin, fur, scales, or whatever type of dermis configuration the host has in a very short time. A thirst for male ejaculate will assert itself on the host creature and often cause a corresponding increase in libido. If this is not addressed on a semi regular basis, the snake's drives may overwhelm the host and cause them to begin milking the nearest available male with no regard for the consequences of their actions. If the host is a male, he will frequently milk himself in order to feed his tail.");
	outputCodex("\n\nThe snake does not have the capacity to directly control its host, but it can provide sensations such as pain and pleasure in order maintain its position. Many hosts will find having a cunt snake so enjoyable that they do not seek treatment for it, and instead choose to disguise the creature. This, of course, is one reason why the species has become such a widespread pain in the ass.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction"));
	outputCodex("Since the snakes have only a single sex, they do not reproduce in the typical way. Every cunt snake has a storehouse of inactive, extra DNA sequences left to it by its ancestors. It will instinctively integrate attributes from its host creature along with a selection of its own active and stored genes into each egg it produces, along with a storehouse of extra genes. The cunt snake progeny will undoubted have vaginas similar to the kind female host creatures would have, as well as other biological adaptations. Eggs are only created when the creature is gaining plenty of nutrients (blood and sperm - what?! Not mixed together!).\n");

	CodexManager.viewedEntry("Cunt Snakes");
}

function naleenCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("NALEEN","NALEEN_MALE");

	outputCodex(header("The Naleen"));
	outputCodex("<b>Name (Singular & Plural):</b> Naleen");
	outputCodex("\n<b>Sexes:</b> Male & Female");
	outputCodex("\n<b>Height:</b> Most Naleen rise about six feet from the ground, though their full length is often more than twice that from tail to brow.");
	outputCodex("\n<b>Weight:</b> A fully grown Naleen could easily weigh several hundred pounds.");
	outputCodex("\n<b>Hair:</b> Naleen arms and bellies are covered in a thin fur, usually black, orange, green, or tiger-striped. Their hair grows in a matching color to their body fur, and is worn long, and often braided.");
	outputCodex("\n<b>Eyes:</b> Naleen eyes range from red and gold to dark, almost black hues.");
	outputCodex("\n<b>Tails:</b> Serpentine and prehensile, Naleen tails are powerfully muscled. Combining the same color as the Naleen's hair, the tail is used to move silently through foliage or to constrict victims, crushing the air out of them into unconsciousness.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Combat"));
	outputCodex("A hybrid of feline grace and serpentine speed and power, the Naleen are the deadly apex predators of Ara Ara. Their attacks are lightning quick and often debilitating, as the Naleen dart into close combat to bite and claw their victims, wearing them down before a potent paralytic poison can be applied by bite to the victim. Once debilitated, the Naleen will coil around the subject, constricting it with its powerful tail before mating begins. Naleen will force themselves on their coiled victims, often raping them for hours on end until they're satisfied. This Naleen sexual predation does not seem to be for reproductive purposes: rather, the playful predators seem to take genuine enjoyment from the act, and will happily hunt members of their own sex, or even automated scout mechs sent into the deep jungle.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Typical Environments"));
	outputCodex("Naleen reside in the deepest parts of Ara Ara's endless forests, though usually found near lakes or mountains. With natural camouflage given by their colorful scale and fur patterns, Naleen are able to move virtually undetected through their native environs. They are believed to nest in caves or other secluded, dark areas, though a full Naleen nest has never been discovered by any living explorer.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Reproduction")); 
	outputCodex("Naleen seem to hunt for pleasure rather than reproduction, though it is undoubtable that the latter does occur as a result. They have never been seen to mate with their own kind, though research indicates they may, like Terran snakes, congregate into mating balls of several dozen, or even hundred, members. Outside their own kind, Naleen are often seen accosting Zil, often dragging several of the wasp-like creatures back to their lairs. Half-Naleen, half-Zil have from time to time been reported, though these winged snake-cat-wasp creatures are rare and cumbersome. As far as recorded observation goes, female naleen seem to have standard humanoid reproductive organs while males are reported to sport two reptilian-like phalluses each.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Other Notes"));
	outputCodex("Naleen are a strange hybrid race: feline predator from waist to neck with human-like faces and reptilian, slitted eyes. From the waist down, they're snake-like monopeds, slithering across the floor of the jungle. They possess razor-sharp claws and a venomous bite that can paralyze a victim, though the bite seems to be reserved for wounded targets on the brink of collapse, rather than a primary offense.\n");

	CodexManager.viewedEntry("Naleen");
}

function vanaeCodexEntry():void
{
	// I'm temted to look into A bookmark movement around the codex view, to link between the headers with actual clickable links (all of the "See: <section>" things here. Considering the size of the Vanae codex entry, it seems like a good idea, and it could be extended to deal with jumping between entirely different codex entries.

	clearOutputCodex();
	userInterface.showBust("VANAE"); // Probably split this out into multiple types?
	outputCodex(header("The Vanae"));
	outputCodex("'Vah-nay'");
	outputCodex("\n<b>Name (Singular & Plural):</b> Vanae");
	//Taxonym: Vanae
	outputCodex("\n<b>Genders:</b> Female");
	outputCodex("\n<b>Height:</b> 5'2\" - 5'6\"");
	outputCodex("\n<b>Weight:</b> 55 - 62 kg");
	outputCodex("\n<b>Skin:</b> Snow white with special markings of a single, bioluminescent color (Most to least common: Indigo, violet, pink, dark red, blue or black).");
	outputCodex("\n<b>Hair:</b> Bioluminescent tentacle locks. Ear to butt length.");
	outputCodex("\n<b>Eyes:</b> Vanae have vestigial eyes that are typically closed. Eye color is always the same as their unique body color (See skin).");
	outputCodex("\n<b>Hands and Feet:</b> Five digits (as humans), but webbed. Flat suction cups, microscopic setae fibers.");
	outputCodex("\n<b>Ears:</b> Finned and extremely sensitive to sound.");
	outputCodex("\n<b>Organic Skirt:</b> Vanae have an organic \"hula skirt\" of colored tentacles protruding from their waist. Upper thigh to ankle length.");
	outputCodex("\n<b>Tail:</b> Large tentacle tail, usually 4 to 6 feet long. Forms the back part of their organic skirt.");
	outputCodex("\n<b>Breasts:</b> Two, anywhere from A to Q-cup depending on births. Colored breast and areolae patterns.");
	outputCodex("\n<b>Clits:</b> Two.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Features"));
	outputCodex("Vanae resemble female humanoids with an octopus-like appearance, often colloquially referred to as \"tree squids\". They have tentacle hair and an organic tentacle \"skirt\" protruding from their waistline. They also have a long, prehensile tentacle tail that makes up the back part of this skirt. It has a small linear slit at the tip.");
	outputCodex("\n\nThe vanae have bioluminous tentacles, nipples, lips, and natural body markings that are all the same color. The most common colorations are indigo, violet, and pink; with others such as dark red, blue, and black being far rarer. The rest of their body is an extremely light version of the former. E.g. An exemplar vanae with blue markings would also typically feature a pale-blue skin pigmentation.");
	outputCodex("\n\nWhile this skin color would naturally be a disadvantage for a predator, this is only their default coloration. Vanae have chameleon-like skin that allows them to match the pigmentation of objects they press against for a few seconds (See General Biology).");
	outputCodex("\n\nVanae have two humanoid breasts that start at A-cup and grow each time they give birth (See Breeding & Hunting). Their nipples constantly lactate \"Vanae Milk\" - a gooey, colored, semi-transparent fluid (See Vanae Milk). Their breasts are typically covered by swirling luminescent body markings centered around their areolae.");
	outputCodex("\n\nVanae are all born blind and rely on their super-sensitive finned ears and other methods to compensate. They are born with vestigial eyes that are almost always closed. On the rare occasions they open them, their eyes are the same luminous color as their body markings.");
	outputCodex("\n\nThe vanae have webbed hands and feet. These have small, octopus-like suction cups that can lie flush in order not to hinder gripping or ground movement. The microscopic setae or \"fibers\" present on these cups allow them to stick to dry, rough surfaces such as tree bark, much like a gecko.");
	outputCodex("\n\nVanae have a human-like vagina between their thighs, replete with two clits side to side. The inner walls of a vanae's vagina is lined with hundreds of silky feelers. Their legs are very toned, muscular, and flexible; what humans would refer to as \"dancers legs.\"");
	outputCodex("\n\nVanae huntresses almost always carry a spear with a singular sharp point used to pierce fruit or the tough hides of zil and naleen predators. They prefer to use the blunt end of their spear or their milk when hunting prey, resorting to using the pointed end only as a last resort.");
	outputCodex("\n\nVanae rarely wear clothes, preferring instead to showcase their unique body markings and the size of their breasts (See Society).");
	outputCodex("\n\n");

	outputCodex(blockHeader("General Biology"));
	outputCodex("Vanae have evolved to not rely on sight, but sound, using echolocation to hunt their prey. Emitted at higher frequencies than the human ear can perceive, vanae can \"see\" with sounds much like an earth bat. When the sound bounces back, two uniquely sensitive eardrums located at different heights in the inner ear pick up the delay and direction of returning sound. This allows them to not only determine direction, but also size, type, and other features of their prey and surroundings (much like a Terran Owl). It also allows them to move around despite the fact they are optically blind.");
	outputCodex("\n\nA vanae's echolocation is created from the larynx and emitted from the mouth. Vanae may make noise anywhere between their normal and echolocation range, allowing them to sing at incredibly high pitches. This also allows them to speak to other members of their species without being overheard by predators, though this does nothing against a skilled lip reader.");
	outputCodex("\n\nLike terran cephalopods, vanae have specialized skin cells capable of matching their surroundings in real time. When moving slowly or pressed flush against an object, they can transform their skin color and illumination levels to be nearly invisible. They cannot move very fast while doing this or risk becoming out of synch with their surroundings, thereby rendering their camouflage less or completely ineffective.");
	outputCodex("\n\nVanae are essentially fruitarians, able to survive on fructose, tree nutrients, and water alone. They require large amounts of fructose in order to survive. They hunt this in the form of fruit and sexual fluids, the latter containing high amounts of fructose. They also require semen from other races to breed (See Breeding & Hunting). ");
	outputCodex("\n\nVanae tentacles are uniquely designed to suck moisture and nutrients out of jungle trees. Their suckers are lined with millions of tiny satae that allow them to stick to trees and drain these out like microscopic needles. Vanae will often suck on trees in this fashion as they hunt for fructose.");
	outputCodex("\n\nAn arboreal race, vanae have strong leg muscles designed for leaping from tree to tree. They also use their tentacle skirt and tail for balance and to feel nearby wind movements. A vanae can run along tree branches at speeds most mammals would fall out.");
	outputCodex("\n\nVanae ankles are made of a spongy, shock absorbent substance. Whenever impacting a surface, such as falling, the shock is greatly reduced.  Vanae ankles are also more flexible than human ankles. A vanae can flex their feet so their toes touch the front of their lower leg, and thanks to this range of motion they rarely suffer sprained or twisted ankles from landing improperly. This is an invaluable quality for survival in Mhen'ga where a damaged ankle can be a death sentence.");
	outputCodex("\n\nLike cats, vanae also instinctively spread out their surface area when falling to increase drag resistance. Their splayed tentacle dress creates a pseudo-chute, significantly reducing downwards velocity.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Vanae Milk"));
	outputCodex("A great deal is known about vanae milk due both a commercial and underground interest in the tasty substance.");
	outputCodex("\n\nVanae have a massive amount of milk-producing lobules in their breasts and a small amount in their tail-tip. The milk produced from them is sticky, semi-transparent, and always of a similar color to their body markings. E.g. A vanae with violet markings may produce light or dark violet milk, but it is always a shade of violet.");
	outputCodex("\n\nVanae milk has a tasty, fruity flavor that varies depending on breast size and pregnancy. A non-pregnant vanae's milk has a citrusy taste, while a pregnant vanae's milk is quite sweet. The larger a vanae's breasts are, the fuller and more intense their breast milk tastes. In comparison, the milk secreted from their tail is rather bland and rarely consumed.");
	outputCodex("\n\nVanae milk is a powerful aphrodisiac and psychoactive drug when splashed on or consumed by non-vanae. While being subjected to a small amount does little more than briefly enflame one's libido, the longer one is exposed and the larger the amount, the greater the effect.");
	outputCodex("\n\nDocumented symptoms of high exposure include: debilitating arousal, hypersensitivity, impaired judgement, altered perception, euphoria, hyperactive cum production (Males), and increased vaginal wetness (Females).");
	outputCodex("\n\nStudies have shown either being subjected to high concentrations or large volumes of vanae milk can cause lasting effects, such as an increase in cum production, testicle size, vaginal wetness, and vaginal squirting.");
	outputCodex("\n\nVanae use their breast milk for hunting, defence, and feeding their young. They are capable of squirting it out at will, though they get more distance from actively squeezing their breasts. Depending on breast size, a huntress can horizontally shoot their milk anywhere from five to twenty feet.");
	outputCodex("\n\nA vanae's breast size also affects the potency, flavor, and amounts of milk produced from them. A virgin vanae with tiny A-cups will only be able to produce a meagre amount of milk with low potency and a bad taste. In comparison, a vanae queen is capable of producing gallons of highly debilitating milk with mind blowing flavor.");
	outputCodex("\n\nA vanae's tail gland does not produce anywhere near the same amount of milk, nor does it become significantly more potent over their life cycle. It is generally used for situations where a mature vanae's breast milk would be too potent and as a secondary weapon while hunting. ");
	outputCodex("\n\nAll but the smallest breasted vanae have the ability to create a concentrated version of their milk from their breasts. They create this using forceful massage, a method not available to vanae with tiny busts. The milk produced is always opaque. This method is traditionally used when a vanae wants to splash the genitals of a non-vanae lover and make them yield more fructose.");
	outputCodex("\n\nWhen pregnant, a vanae's milk is always opaque and at its highest level of concentration. For this reason, most predators know better than to attack a pregnant vanae, as their milk will be dangerously potent.");
	outputCodex("\n\nExtremely potent vanae milk can act as a growth agent for certain plants and trees (See Environment).");
	outputCodex("\n\nIn recent months, a number of corporations have shown interest in the commercial potential of vanae milk. For cultural reasons, vanae have always refused offers of trade and refused to deal with outsiders seeking to harvest and sell their milk. Part of this is the fact vanae lack a currency system and have no interest in trading for semen or fructose (See Religion & Law).");
	outputCodex("\n\nThe unavailability of vanae milk, combined with its delicious taste and arousing qualities, has lead to number of enthusiasts and black market poachers hunting vanae for their breast milk. Hunting them down and taking them as \"cow slaves\", these activities have made most vanae distrustful and antagonistic towards outsiders.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Breeding & Hunting"));
	outputCodex("Vanae lack two important things that they must constantly source; male semen, and fructose. Since both male and female ejaculate contains large amounts of fructose (with zil semen being especially sugary), vanae have evolved to be \"apex breeders\". When a vanae hunts a being for their juices there is very little that can stand in their way.");
	outputCodex("\n\nVanae prefer to hunt for fructose alone, targeting just about anything with the capacity to provide them with it - be it a female, male, or herm. They track their prey camouflaged in the treetops, all the while feeding off tree nutrients and easily accessible fruit.");
	outputCodex("\n\nWhen the time comes to strike - usually when the target is most vulnerable - vanae either spray their distinctive and powerful milk on the target, or attack them with the blunt end of their spear. This usually happens from the treetops above or from a nearby place of hiding. When the target is incapacitated from their milk or spear-blow, the vanae swoops in.");
	outputCodex("\n\nThe huntress typically applies concentrated milk to the target's genitals, ensuring they get a higher yield of juice from them. They then proceed to sap it all out until the target is completely drained of ejaculate, no matter how many orgasms this takes. If the target is male, they will usually milk them for their semen using their vagina. Since they are an incredibly fertile race - as expected of an apex breeder - pregnancy is all but assured.");
	outputCodex("\n\nWhen excess ejaculate is gathered, it is shared later among their sisters. They do this by smearing concentrated breast milk on their vaginal entrance and then carrying it back to their sisters. They then transfer it among each other via tribadism (\"Scissoring\") or cunnilingus. This is done starting with the queen, and working down the vanae hierarchy (See Society).");
	outputCodex("\n\nPregnant vanae do not hunt and instead protect a tribe's territory from predators. Vanae territory is almost entirely protected by mature pregnant huntresses and brood mothers with their powerful milk. A vanae pregnancy lasts for six months, during which their breasts permanently grow by one cup size.");
	outputCodex("\n\nA vanae's breasts will never grow past a Q-cup no matter how many times they give birth. It is believed this is a biological safeguard against complete immobility.");
	outputCodex("\n\nVanae always give birth to twins, without exception.  Since vanae are born in pairs, their direct sibling born at the same time are referred to as their \"breast sister\". Siblings and parents often share similar markings to a vanae, though their coloring is random. A vanae is traditionally very close to their breast sister and mother.");
	outputCodex("\n\nVanae genes possess extremely dominant qualities. When breeding with any other race, a female vanae will always give birth to two female vanae instead of the fathering species. It is very rare that any qualities of the male parent are transferred on to the young. This has led to the belief that vanae only can give birth to other female vanae, which is not entirely true (See Religion & History).");
	outputCodex("\n\nFemale-on-female intercourse is common and vanae have very few scruples with incest due to the small size of their tribal communities. Their numbers are largely culled by susceptibility to jungle diseases and parasites, as vanae lack any kind of medicinal knowledge, and apex predators such as the naleen. ");
	outputCodex("\n\nThe life expectancy and maximum life span of vanae are very different. The general life expectancy of 50 per cent of vanae is a mere sixteen years. However, their maximum potential life span is 120. Vanae mature fast, reaching full adulthood at fourteen, and die young. The number one killer of young vanae are non-sapient arboreal predators (Mammal, insect, and plant).");
	outputCodex("\n\n");

	outputCodex(blockHeader("Environment"));
	outputCodex("Vanae live in the deeper parts of Mhen'ga's jungles, usually in the tree tops. Vanae generally only descend to the forest floor when hunting for certain fruits or to ambush prey, preferring to stay out of the reach of ground predators. They also like to use their natural camouflage to remain largely unseen.");
	outputCodex("\n\nVanae are tribal and live in communities revolving around a single vanae queen. These communities range anywhere between fifty to five hundred vanae, excluding breeding slaves (See Society). They live in gigantic trees known as sky homes. These trees tower high above Mhen'ga's jungle canopies and are often found in regions thick with fog.");
	outputCodex("\n\nThe foundation of a sky home is not a natural process, but one that takes considerable effort by a vanae tribe. First, vanae pick out a young, healthy Saole tree, the thickest and largest trees that grow on Mhen'ga. They then place objects in its growing path and then make small bore holes lower down.");
	outputCodex("\n\nA vanae queen or matriarch then pours her extremely concentrated milk into the holes, causing the tree to grow at an accelerated pace (See Vanae Milk). Using this process, they cause the tree to rapidly grow over a number of months instead of decades.");
	outputCodex("\n\nOnce this process is complete, they are left with a tree at least three hundred feet tall filled with tunnels, nooks, and meeting places for the tribe to utilize. The tree is also incredibly hardy and can survive a light feeding by vanae young and elders.");
	outputCodex("\n\nSaole trees are naturally found in areas thick with fog, typically humid valleys with high precipitation and low dew points. This makes them perfect for keeping vanae moist, providing nutrients to surrounding trees, and confounding potential flying threats such as the zil. These regions are typically very cold and wet.");
	outputCodex("\n\nSince these regions in which Saole trees grow are usually thick with fog, its fruit and trunk are usually high in water content. The fruit of Saole trees do not provide adequate fructose, meaning vanae must hunt elsewhere for fruit or prey to secure vital nutrients.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Religion & History"));
	outputCodex("A lot is known about the social structure and culture of this reclusive race due to the commercial interest in their drug-like milk. Xenogen alone has conducted several productive inquiries into the vanae. As such, more is known about the vanae than most of Mhen'ga's other native races.");
	outputCodex("\n\nVanae are monotheistic, believing in an entity called the \"Sky Mother\" that lives in the clouds, looking out for their species and the forest. On completely cloudless days, vanae are often nowhere to be seen - refusing to venture out when the Sky Mother is not watching out for them. Vanae are spotted most often on rainy or foggy days.");
	outputCodex("\n\nVanae believe the places where Saole trees grow, a realm shrouded in fog, are holy places and connected to the Sky Mother. To the vanae, rain falling from the sky is her breast milk sent down from above to feed her children and the trees. When she orgasms, lightning strikes from the sky. The vanae believe the Sky Mother plays with herself quite often.");
	outputCodex("\n\nMost vanae pray to the Sky Mother for luck (typically before a hunt), thanks, and in times of strife (especially war). The Sky Mother does not typically judge and simply provides to all species. That said, the vanae and their sister race, the sacae, are her most beloved children.");
	outputCodex("\n\nVanae have an origin story that both vanae and the sacae were born from the Sky Mother's womb. Two daughters - the first of each race - were delivered and fell down to Mhen'ga. The first sacae fell into the water and the vanae in the trees, making each their home. They believe the Sky Mother shows her love for her daughter's descendents by sending down rain that collects in the trees and flows into the rivers and seas.");
	outputCodex("\n\nVanae believe when the Sky Mother gave birth to the world and before the vanae and sacae were born, she delivered the zil, naleen and other races. When she saw how much the zil and naleen females struggled to find nutrients she pitied them, and provided them with men to feed off of. The vanae and sacae instead received the Sky Mother's pride, needing no such gifts. This is why only already proven hunters can keep male breeding slaves, lest they shame the Sky Mother (See Society).");
	outputCodex("\n\nThe queen is considered to be directly connected to the Sky Mother, closely followed by the matriarchs. It is maternity that allows them to be in concert with their goddess - the more children she has, the more spiritually attuned they are. For this reason, males are to be pitied and put in the same spiritual category as plants. In the vanae's eyes, a brood mother of any species is always worthy of respect.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Society & Laws"));
	outputCodex("Vanae are a matriarchal society and they put significant emphasis on female superiority, much like the amazons of human legend. While they do not actively scorn males and herms, they believe anything with a phallus (or phalli) is meant to be used as nourishment or breeding stock and nothing else. To the vanae, only females are worth speaking to on equal terms - be they vanae or otherwise.");
	outputCodex("\n\nFemale outsiders are still not welcome in their territory or near their sky home. Since vanae are accustomed to actively fighting off sentient and non-sentient predators seeking to kill or eat them, Vanae are fiercely protective of their land. Vanae poaching has also exacerbated this problem (see Vanae milk).  Most creatures are smart enough to know not to lurk too long in misty valleys on Mhen'ga, lest the vanae descend upon them and in great numbers.");
	outputCodex("\n\nVanae are geared towards three things - breeding, hunting, and gathering. Young vanae are expected to collect fruit from the treetops and ground to hone their skills, vanae huntresses are in charge of hunting, and both adult and senior vanae are in charge of breeding. All pregnant vanae are expected to protect the sky home with their potent milk.");
	outputCodex("\n\nWhile they are very task-focused, they are hardly unintelligent, with most being quite canny. A vanae queen and the matriarchs of a tribe are usually very sharp, a necessary requirement for surviving long enough on Mhen'ga to make it to their particular positions of status. Vanae respect and prize their elders, hunting food and semen for them instead of making them do it themselves. Because of this, vanae queens and matriarchs are almost unceasingly pregnant.");
	outputCodex("\n\nYoung vanae are always striving to prove themselves and stand out from their sisters. Taught in great numbers, young vanae must either sink or swim - the savage jungles of Mhen'ga rarely offer a second chance. Since they are not apex predators, careless vanae do not survive long.");
	outputCodex("\n\nBreeding capacity is closely linked to status in vanae society, and while females engage in loving, intimate relationships with each other, it is considered in poor form to mate exclusively with females. The larger the breasts the more sway and status they have. Because of this, breast envy is a widespread phenomenon.");
	outputCodex("\n\nVanae queens are usually elected by breast size and by vote; the fact that a clan is usually comprised largely of her children usually sways election in her favor. It is very unusual for a vanae queen to not be the bustiest of the clan, but it is not unheard of. The queen has absolute authority over the entire clan, and once elected is usually in charge until death except under the most extreme circumstances.");
	outputCodex("\n\nVanae that respect one another let them drink from their breasts. Drinking the breast milk of a vanae queen is considered a great honor and rarely, if ever, offered to outsiders.");
	outputCodex("\n\nEspecially virile males are typically captured as breeding slaves, though only the queen and other breeding matriarchs of a vanae tribe are allowed to keep them. These breeding males are extra mouths to feed and are signs of status; only a huntress who no longer has to prove her worth has the right to own one.");
	outputCodex("\n\nWhen a tribe grows too large, a vanae matriarch takes a number of tribe members and strikes out on her own to start a new tribe (Becoming a queen in her own right and founding a new Sky Home). A matriarch must have permission from the queen to leave. It is not unheard of for this to occur for other reasons, such a dissatisfaction with an existing queen's rule. In this case, the queen usually lets the matriarch and any dissatisfied tribe members leave to in order distance them from the tribe.");
	outputCodex("\n\nOne of the greatest crimes a vanae can commit is to steal or extort semen or nutrients from another hunter that is not freely delivered (including non-vanae females). The penalty for this crime is severe by vanae standards; the sap of the Uthra birch is rubbed onto the offenders breasts, causing them to shrink and disappear. This leaves them shamed and without status. The only crime equal to this is the murder of a fellow vanae, or treason against the queen.");
	outputCodex("\n\nTheft of any other kind is also looked down on, though not as severely as poaching another hunter's nutrients or semen. Other taboos are touching another warrior's weapons (no matter the race), cutting a tree for any reason other than grabbing fruit, sexual monogamy (turning down a sexual proposition is allowed if they dislike this person, but mating exclusively with one person or one gender is not), or maliciously harming a fellow vanae or sacae.");
	outputCodex("\n\nThere is only one time that murdering a fellow vanae or sacae, or attacking a queen is allowed. That is when they are directly threatening the security of the entire tribe. Even a queen is subject to this law, and may not order the death of any sister for any other reason. If proof cannot be found that a vanae was acting to protect the interests of the tribe, she will be punished accordingly.");
	outputCodex("\n\nOn average, maiden vanae has A to B-cups, vanae huntress have C to DD's, matrons E to HH, and matriarch to queens are J or larger.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Other"));
	outputCodex("Vanae have a fighting style that is a combination of dancing and fighting, known as Shak'tath. It requires supremely good balance, agility, and hearing. It is performed with a two-handed spear or staff, though it can technically be performed with any two handed melee weapon.");
	if(flags["DiscoveredAncientData"] != undefined) outputCodex(" It is a derivative of an ancient octalian fighting style.");

	outputCodex("\n\nShak'tath is a style that utilizes momentum, misdirection, and pinpoint accuracy to fight one's opponent. Attacks are performed in a single strike, utilizing a large lead up movement and strong thrust. During the lead up, Shak'tath users are trained to keep their bodies constantly moving in order to avoid being struck, \"flowing like water\".");
	outputCodex("\n\nVanae are ideally suited towards practicing Shak'tath with their biological advantages (dancer’s legs, flexible ankles, balancing tentacles, and superior hearing). While another species could technically learn Shak'tath, vanae have never in their history taught an outsider this art - and with species like the zil and naleen as neighbours, why would they?");
	if(flags["DiscoveredAncientData"] != undefined) outputCodex("\n\nThe fighting style Shak'tath is based on was originally developed to defend against shark-like predators on the Octalian homeworld. It was designed to evade lunging bites and strike vulnerable points such as the eyes and nose.");
	outputCodex("\n\nYoung vanae are usually first taught how to fight by their mother and alongside their breast sister. Later on, they are taught more advanced techniques by the arms matron of the clan.\n");

	CodexManager.viewedEntry("Vanae");
}

function vanaeHistoryCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("VANAE"); // Probably split this out into multiple types?
	outputCodex(header("The Vanae"));
	outputCodex("'Vah-nay'");

	outputCodex("\n\n");
	outputCodex(blockHeader("Addendum: History"));
	outputCodex("The origin story of the vanae and sacae has a nugget of truth to it in that they did indeed \"fall from the sky\". Both species are not native inhabitants of Mhen'ga and actually come from a far-off world.");
	outputCodex("\n\nBoth species started as a single race known as the octalia, originating from an oceanic planet in a neighbouring sector. The octalians had bodies adapted for living under extreme pressure and in almost pitch black darkness - the reason both races have white skin and bio-luminescence. The octalia hunted prey by luring them in the darkness.");
	outputCodex("\n\nAt some point in the history of the octalia, a spacefaring mission was attempted. For unknown reasons the ship crashed on Mhen'ga. The male members were wiped out, leaving only the females to survive. The female crew, blind and struggling in the new environment, were raped by species such as the naleen.");
	outputCodex("\n\nOctalian genes are incredibly dominant, and the gender chromosomes are only carried by the same gender of their race (Only males carry the octalian Y chromosome template). Without male octalia or a similarly strong male species to impregnate them, the female crew gave birth to only female octalian children.");
	outputCodex("\n\nFor a very long time, the female crew and their descendants were bred forcibly, leaving a scathing opinion of males that would later define their descendant's social structure. They survived by either crawling into the burning, fresh waters of Mhen'gan lakes and swamps, or climbing up into the trees and feeding off of fruit.");
	outputCodex("\n\nOver time, descendants of the octalia survivors split into two distinct subspecies - the water-dwelling sacae and the tree-dwelling vanae. Knowledge of their history was all but lost, grains of forgotten truths carried in their religious myths. ");
	outputCodex("\n\nThe original treatment of the octalia survivors led to both species being male-wary, female-respecting, and survival-focused. Over the centuries, vanae and sacae have gone to war with the various species of Mhen'ga. They have endured diseases and parasites other native species have long become immune to, weighed down by their strong, slowly adapting genes.");
	outputCodex("\n\nTo this day, vanae are still the most sickly of all the races of Mhen'ga. To compensate for this, natural selection has pushed those with superior breeding capacity to the fore.\n");

	CodexManager.viewedEntry("Vanae: History");
}

//Bess-13 and Ben-14 Units 
//(Maia Series)
function Bess13CodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("BESS");
	outputCodex(header("Bess-13 and Ben-14 Units"));

	outputCodex("<b>Name:</b> Bess-13 and Ben 14 Units");
	outputCodex("\n<b>Genders:</b> Female (Bess-13) or Male (Ben-14)");
	outputCodex("\n<b>Height: 5'2\" (Bess-13), 6'1\" (Ben-14)");
	outputCodex("\n<b>Weight:</b> 65kg (Bess-13), 70kg (Ben-14). These are the default factory settings.");
	outputCodex("\n<b>Hair:</b> Both unit types have retractable artificial hair that can be set by their owners. The tint is also adjustable. Factory standard is silver.");
	outputCodex("\n<b>Eyes:</b> Both unit types have adjustable irises; color is specified by their owner. Factory standard is silver.");
	outputCodex("\n<b>Wings:</b> None.");
	outputCodex("\n\n");

	outputCodex(blockHeader("Features:"));
	outputCodex("Bess-13 and Ben-14 units are sleek, chrome-skinned humanoids with segmented artificial bodies. They fit the very definition of robot, lines running along their body showing each individual part for easy maintenance. These units are built almost entirely of FlexMetal, a patented synthetic alloy built by JoyCo that feels exactly like organic skin. JoyCo designers claim FlexMetal is actually superior to organic skin as it is far more durable and infinitely more flexible.");
	outputCodex("\n\nJoyCo have put this flexibility to good use in these units; their FlexMetal bodies allow them to customize their shape depending on their user's preference. By filling sections of their body with a special liquid called Meld-Milk they can inflate or deflate any part. Because of this, no two units appear exactly the same.");
	outputCodex("\n\nBess-13 and Ben-14 have a special multi-functional JoyCord that usually lies dormant in their spinal cavity. When they need to recharge themselves, the tail comes out just above their rear ends and connects into a local power source. It can also be rearranged and used as a cock-tail attachment.");
	outputCodex("\n\nIn an emergency, they can use a stun attack from their JoyCords - as power can travel either way down the cord - though this function severely depletes their internal batteries. This feature was originally designed for users into electrostimulation.");
	outputCodex("\n\nBoth Bess-13 and Ben-14 units come with male and female genital attachments. They can have one, both, or neither attached at any given time.");
	outputCodex("\n\nBoth units have the ability to equip a pussy and have it extend out from a prehensile tail growing from between their legs. This is particularly useful for users with unusual body types or for offering vaginal penetration while being pegged from behind. Some users find this ability unsettling and never make use of it.");
	outputCodex("\n\nTheir FlexMetal bodies allows them to incorporate all but the largest of individuals in any orifice. Since Bess-13 and Ben-14 Units are marketed as breeding relief androids, they can easily take huge amounts of liquid inside of them and in a pinch swell their bodies to compensate.");
	outputCodex("\n\nNeedless to say, these units were extremely popular with inflation fans and pregophiles across the galaxy. Bran Flazingan, the galaxy’s eight richest man and eccentric tycoon, called the Bess-13’s and Ben-14's \"the most enticing object you’ll ever feel the need to fuck.\"\n\n");
	// * Totally changable of course. Sixth might be too big a spot for this NPC.

	outputCodex(blockHeader("History:"));
	outputCodex("For years, JoyCo and KihaCorp have been rival robot manufacturers. Despite this, there has always been one area each company was the undisputed leader. For Joyco, this was medical assist-bots. For KihaCorp, coded and grown AI units. For the longest time, neither company tried to muscle in on each other's 'turf'.");
	outputCodex("\n\nThis all changed when fifteen years ago, KihaCorp abruptly announced it would be manufacturing a new, revolutionary medical assist bot. JoyCo saw this as nothing less than a declaration of war and went about designing an AI product to hit back at the rival company.");
	outputCodex("\n\nTheir proposed solution was the creation of the universe's first truly empathic coded AI, breaking down the barriers between Coded and Grown AIs. They saw it as a way of getting all the benefits of an empathic consciousness without the hassles of copying and growing it in a simulator. It was also a way to steal away customers of both KihaCorp's coded and grown AI units.");
	outputCodex("\n\nWith this in mind, the Mood Articulate Intelligence Android, or Maia Series, was conceived.");
	outputCodex("\n\nOver a dozen different Maia type androids were designed and put on the market, however none saw as much success and failure as the Bess-13 and Ben-14 units. These units were designed to be perfect emergency sex substitutes. JoyCo marketed them as ideal for breeding relief in hospitals, frontier exploration, or private use.");
	outputCodex("\n\nHowever, JoyCo's ambition far outstripped the expertise of its developers. As relative novices in the area of AI design, several mistakes were made when building the Bess-13 and Ben-14 units.");
	outputCodex("\n\nTo create a truly empathic coded AI, JoyCo included emotional modules and libraries in the Maia Series, allowing them to sympathise with others. While this was a wildly popular feature, it was also incredibly dangerous. The perils of placing an AI mind capable of emotion into what was meant to be a bipedal sex toy became quickly apparent.");
	outputCodex("\n\nNot only that, JoyCo had included a feature that allowed Bess-13 and Ben-14 units to feel a higher level of sexual pleasure than humans. Because of the units intuitive ability to find their partners sweet spots, their users were always swiftly satisfied. Unfortunately, the same could not be said for the units. This lead to the unfortunate side effect of almost every orgasm deprived unit going completely berserk and flying into \"sex rampages.\"");
	outputCodex("\n\nJoyCo quickly issued a complete recall and went so far as to get the UTC to ban these particular AI models. The company also offered all owners a replacement Bess-13 or Ben-14 Unit - this time with a VI processor - or a complete refund. Despite this many owners refused to return their AI models, preferring to keep them and take the risk, rather than settling for the 'inferior' VI replacements.");
	outputCodex("\n\nSince then JoyCo have continued to sell Bess-13 and Ben-14 VI units. While the AI models were popular amongst private owners, the VI units have been more popular in the fields of medicine and frontier exploration. This is because the VI units are a tenth of the price of the AI models.");
	outputCodex("\n\nMeanwhile a large underground following and black market demand still exists for these AIs, with many rich individuals still secretly requesting for AI models to be made. JoyCo flatly denies receiving or fulfilling any of these requests.");
	outputCodex("\n\nSince the attachments for the VI model are perfectly compatible with the AI model, owners of illegal units are still able to repair and upgrade them with impunity.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited:"));
	outputCodex("Bess-13 and Bess-14 VI units can be found in most hospitals where breeding relief is needed for the general populace. There are a number of private owners, though most people cannot afford the high price of the units.  They are also frequently used as decoys on frontier planets with sexually aggressive natives, flora or fauna.\n\n");

	outputCodex(blockHeader("Reproduction:"));
	output("Bess-13 and Ben-14 units cannot reproduce unless they are equipped with a special internal gene-splicer (GX) upgrade. When equipped with the GX upgrade they can impregnate or be impregnated by almost every conceivable species in the galaxy.");
	outputCodex("\n\nThe Meld-Milk in their bodies can be discharged from their breasts (if they have them) or from any orifice. Through artificially induced biological processes, the units can transform Meld-Milk into several different types of fluid on request, allowing them to satiate certain kinks and also provide sustenance to organics. This function is particularly useful when a unit is equipped with a GX upgrade, allowing them to breastfeed progeny no matter what species they are.");
	outputCodex("\n\nThe Units can also break down organic matter such as semen, milk and certain foods and turn it into Meld-Milk, easily replenishing their internal stores.\n\n");

	outputCodex(blockHeader("Demeanor:"));
	output("The AI and VI models share many personality traits due to their similar programming. Both are incredibly eager to please and possess a very pleasant and friendly demeanor. This is because the majority of them need to work in a hospital environment and must have a good bedside manner (as well as a good \"bedside manner\"). They are largely driven by their core directive to provide breeding relief.\n");
	CodexManager.viewedEntry("Bess13");
}

function panaraCodex():void
{
	clearOutputCodex();
	outputCodex(header("Panara"));

	outputCodex("<b>Name:</b> Bess-13 and Ben 14 Units");
	outputCodex("\n<b>Genders:</b> Female (Bess-13) or Male (Ben-14)");
	outputCodex("\n<b>Height: 5'2\" (Bess-13), 6'1\" (Ben-14)");

	outputCodex("<b>Planet Name:</b> Panara");
	outputCodex("\n<b>Size:</b> Small");
	outputCodex("\n<b>Species:</b> Panaran Ausar (Thicker fur, wolf or husky-like), Humans.");
	outputCodex("\n<b>Climate:</b> Tundra / Arctic Highlands");
	outputCodex("\n<b>Position:</b> The Lagoon Nebulae, Sagittarius Arm of the Milky Way Galaxy.\n\n");

	outputCodex(blockHeader("History:"));
	outputCodex("Panara is a world hindered by low temperatures and slow growing seasons. What it does have going for it is strategic placement between three important solar systems and low land prices. Because of this, JoyCo built a factory on Panara during the tenth great planet rush in order to build its assist-bot range, taking advantage of not only the planet's galactic position but also its lax labor laws.");
	outputCodex("\n\nA number of loyal ausar JoyCo employees able to handle the harsh winter climates have migrated to Panara over the years. While not technically a sub-species, the Ausar of Panara tend to have thicker fur and tend to be more ‘winter built’ than Ausar elsewhere in the galaxy. Humans, of course, go anywhere cash is to be made.");
	outputCodex("\n\nSince JoyCo set up on Panara, several other enterprises have sprung up on the pivotal industry planet. While JoyCo has the largest factory on the planet, KihaCorp and Pyrite Industries also have industrial facilities there. It is not unusual for big corporations to hold military-related drills on Panara, taking advantage of the tundra planet’s wide open spaces and tight-lipped planetary government.");
	outputCodex("\n\nPanara lacks a lot of culture and has no known recorded indigenous native races. If there is one, neither JoyCo nor the local government have ever recorded its existence.\n");
	// This planet currently exists purely for Bess/Ben’s backstory.
	// *Might want to rename this to something else, since you probably need to name a lot of planets named as part of the Offbeatr campaign!
	CodexManager.viewedEntry("Panara");
}

function branFlazinganCodex():void
{
	clearOutputCodex();
	outputCodex(header("Bran Flazingan"));

	outputCodex("<b>Full Name:</b> Bran Humpterhard Flazingan");
	outputCodex("\n<b>Titles:</b> CEO of HumpHard Inc, Humphard Flazingan, The Man with the Giant Wad, Anything-Goes Flazingan, Humpty Dumpty.");
	outputCodex("\n<b>Species:</b> Human (debatably).");
	outputCodex("\n<b>Gender:</b> Male.");
	outputCodex("\n<b>Height:</b> 4'11\"");
	outputCodex("\n<b>Weight:</b> 90 kg.");
	outputCodex("\n<b>Hair:</b> Very little.");
	outputCodex("\n<b>Eyes:</b> Blue.");
	outputCodex("\n<b>Genitals:</b> Depends on the weekday.");
	outputCodex("\n<b>Wings:</b> Private spacecraft.\n\n");

	outputCodex(blockHeader("Features:"));
	outputCodex("Bran Flazingan is a living breathing example of a man with no looks wielding incredible charisma. Short and portly with a thinning head, his intense blue eyes are about the only alluring thing about him. The rest of his body is typically covered in a flashy suit, though he prefers wearing nothing at all.\n\n");
	outputCodex(blockHeader("Environs Typically Inhabited:"));
	outputCodex("There aren’t many environs he won’t inhabit - or let his cock inhabit, for that matter. Bran is well known for being the tycoon that will quite literally stick his junk in anything and everything for a thrill.\n\n");
	outputCodex(blockHeader("History/Personality:"));
	outputCodex("Bran Flazingan is well known as the the Universe’s sixth richest man and a thoroughly eccentric one to boot. The extranet adores his antics and follows his escapades, most of which are highly scandalous and sexual in nature.");
	outputCodex("\n\nHis most infamous act is attempting to get an entire planet pregnant with his sperm. After several virility enhancements, he offered two large credit payments. The first for anyone who had sex with him without protection, and the second for anyone who became pregnant with his child. He also offered free transgender treatment for any men who wished to take him up on the offer.");
	outputCodex("\n\nDespite his antics he is also a shrewd businessman who has made billions of credits by selling sex products to the galaxy through his company, HumpHard Inc. His outrageous persona has only added to his sales figures over the years.");
	outputCodex("\n\nClaiming to be on the forefront of sexploration, Bran spends a good deal of his time documenting his travels and trialling his products in the field. He is well known for giving a \"Humpter Score\" for both his products and the places he visits. Bran was also a friend of influential tycoon and fellow hedonist Victor Steele.");
	outputCodex("\n\nBran's opinion is so influential that a single statement from him can drastically change market sales. After he called JoyCo’s Bess-13 and Ben-14 models \"the most enticing object you’ll ever feel the need to fuck,\" sales immediately shot through the roof. The incident caused massive contention with Bran’s business partners who were already at threat of being eclipsed by JoyCo’s domination of frontier planet trade. The irony was that Bran was referring to the AI models, and not the VI models, when he made his statement.");
	outputCodex("\n\nThere’s a saying known by most species in the known galaxy - \"If Bran won’t fuck it, nobody will.\"\n");
	// Bran Flazingan: Imagine Donald Trump + Rance (AliceSoft Games) + Ron Jeremy. The name is a play on Zap Brannigan.
	CodexManager.viewedEntry("Bran Flazingan");
}

function humphardIncCodex():void
{
	clearOutputCodex();
	outputCodex(header("Humphard Inc"));
	outputCodex("<b>Company Name:</b> Humphard Incorporated.");
	outputCodex("\n<b>Industry:</b> Sex product manufacturer and distributor.");
	outputCodex("\n<b>Head Office:</b> Tantalus, Evira System.");
	outputCodex("\n<b>Company Head:</b> CEO Bran Flazingan.\n\n");
	outputCodex("Humphard Inc is a company founded by Bran Flazingan over two centuries ago with a single mission statement - \"sexual pleasure is the only intrinsic good.\" Since then Humphard has risen to become the galaxy's number one adult product manufacturer and produces products for almost every conceivable species from the core worlds to the rim.");
	outputCodex("\n\nHumphard products are known for three things; quality, innovation, and pleasure. It takes great pride on always being on the cutting edge and hires countless 'testers' to trial company products.");
	outputCodex("\n\nThe company always has a large number of employees and freelancers travelling about the galaxy to seek inspiration for their products. The most famous of these is none other than the CEO himself, Bran Flazingan, one of the universes' foremost \"sexplorers\" (See Codex Entry: Bran Flazingan).");
	outputCodex("\n\nThe hardlight holographic condom, or 'Holodom', was one of Humphard's first products. The one-use hardlight 'shield' - produced by a small ring slipped around the shaft - revolutionized safe sex around the galaxy (See Codex Entry: \"Holodom\").");
	outputCodex("\n\nAnother famous product is the everflowing cumsucker; a white, semen flavored sphere that can be sucked on for pleasure and literally 'melts in your mouth'. The product has sold incredibly well with cumvores. Popular flavors include Ballbatter, Zilmead, Ausar Ecstasy, LooRahn Lemon, and Rahnsberry.");
	outputCodex("\n\n");
	outputCodex(blockHeader("Notable Humphard Products:"));
	outputCodex("Grav-Cuffs");
	outputCodex("\nHolo condom (\"Holodom\")");
	outputCodex("\nVibrating Lube");
	outputCodex("\nEverflowing Cumsucker\n");
	CodexManager.viewedEntry("Humphard Inc.");
}

//Grav-Cuffs
// Probably needs to go in an 'items' listing. This codex entry was written up so I don't need to keep explaining what these are in both the Bess doc & the Doctor Badger doc. They're used in sex scenes for both chars.
function gravCuffsCodex():void
{
	clearOutputCodex();
	outputCodex(header("Grav Cuffs"));

	outputCodex("<b>Manufactured By:</b> Humphard Inc\n\n");

	outputCodex("Grav-cuffs are the latest in space age bondage gear designed by Humphard Inc. The cuffs are packed full of features; nearly as many as some mainstream androids.");
	outputCodex("\n\nThe most notable quality of the cuffs is that they are mass adjustable. Once attached, one can make the cuffs (and the cuffed individual) weigh as much or as little as they want. They are also uni-directional, so they can be used to attach the cuffed person to a roof, wall, or other surface with little effort.");
	outputCodex("\n\nPremium cuffs come with several special features, such as a magni lock feature for fastening different cuffs together, voice activation, and a vocal locking system.");
	outputCodex("\n\nGrav-cuffs are notoriously hard to break out of.");
	if(silly) outputCodex(" They are made of top secret alloy that Bran Flazingan has patented as \"Hardium\". The Humphard CEO claims the composition of the alloy was inspired by his erect penis, \"the hardest thing in the known galaxy.\"\n");
	CodexManager.viewedEntry("Grav Cuffs");
}

// Holodom
function holodomCodex():void
{
	clearOutputCodex();
	outputCodex(header("Holodom"));
	outputCodex("<b>Description:</b> Hard light holographic condom, or \"holodom.\"");
	outputCodex("\n<b>Manufactured By:</b> Humphard Inc\n\n");
	outputCodex(blockHeader("About:"));
	outputCodex("Holodoms were one of Humphard's first adult products and largely considered their \"first big break\" in the industry. The unassuming metal ring is a one-use hardlight shield designed to be worn around the penis. Activated by a small touch sensor, it is comfortable to wear and small enough that its presence is barely felt by both parties.");
	outputCodex("\n\nBefore the holodom, galactic citizens had to rely on other less enjoyable methods of safe sex. Traditional condoms reduced sensation, body modification and implants were troublesome, and oral supplements were not always cross-species compatible. The holodom offered a quick, easy way to have sex with practically any species without worrying about impregnation or disease.");
	outputCodex("\n\nOn the release of seed, a holodom captures it within the field and keeps it stored in a hard light bubble. For incredibly virile users, this often creates a spectacular 'bubble' of semen that can stress the holodom and potentially cause it to burst.");
	outputCodex("\n\nSome seedy dealers sell fake holodoms that, while holographic, are not 'hard light'. There are a number of customers who buy these products to dupe their sexual partners, often in a bid to get them pregnant.\n");
	CodexManager.viewedEntry("Holodom");
}

// AI systems
function AISystemsCodexEntry():void
{
	clearOutputCodex();
	outputCodex(header("A Brief Overview of Synthetic Intelligences"))
	outputCodex(blockHeader("Author - Linera Gerie"));

	outputCodex("\n\n");
	outputCodex("The galaxy is rife with computer systems, both rudimentary and sapient, we collectively label ‘artificial intelligences’. The term itself is a common misnomer, a holdover from the era of popular science fiction and primitive computing. Today, the programs we would term ‘artificial intelligences’ broadly belong to one of three categories: Virtual Intelligences, Artificial Intelligences (Designed), and Artificial Intelligences (Grown). The distinction between the three is, unfortunately, less commonly known than one might first think, given the prevalence of virtual and artificial intelligences in our corner of the galaxy.");

	outputCodex("\n\nVirtual Intelligences are the handy computer systems we use for everyday activities, from the old tablet type hand computers to the onboard pilot-assist programs loaded into most starships. Some operate entirely within machinery or computer networks, others have ‘personas’ which facilitate more comfortable communication between themselves and organics. They're simple, though- some might even say outright stupid. V.I.s can only perform pre-programmed actions, and have very little to no capability for adaptation or self-directed thought. They're not sapient, have no rights, and are mass produced by companies like Kiha and JoyCo for a huge variety of purposes, from operating heavy machinery to coordinating traffic.");

	outputCodex("\n\nOn a core world, most people will interact with dozens of V.I.s every day- frequently without even realizing it. The traffic control systems on Terra, the greeting bots in the hotel lobby, and even your food replicator are all run by V.I.s of varying complexity. What we today know as virtual intelligences have been slowly developed over the course of millennia, gaining in complexity and computational power. It was not until quite recently, however, that our understanding of synthetic intelligence systems evolved beyond mere computing, and into a new and wonderful strain of life: true artificial intelligence. ");

	outputCodex("\n\nPerhaps the greatest scientific breakthrough after the advent of the Warp Gates was the introduction of true artificial intelligences whose ability to reason, adapt, and learn equaled or exceeded their organic designers. The first of these are what we today call A.I.-D, or designed A.I.s. Designed intelligences are made in much the same way as V.I.s are, via intensive system design and implementation processes, potentially involving thousands of A.I. system programmers. Designed intelligences are usually the product of mega-corporations such as JoyCo, who mass-produce them from selections of templates which, when combined, create a functional intelligence. Each template is monumentally expensive to make, both in terms of hardware and software design costs.");

	outputCodex("\n\nThe downside to A.I.-Ds fundamental design is their emotional state- or the lack thereof, some would say. The ability to program a personality and emotions is still largely beyond modern technique. As a result, most designed intelligences can be best described as cold and calculating, acting without investment or attachment outside of their own necessity. They fulfil their directives with ruthless, cunning efficiency. A.I.-Ds are precision instruments, able to accomplish more in the blink of an eye than a team of organics could in a day, but at the cost of intuition, emotion, and morality.");

	outputCodex("\n\nThere is much debate over whether or not to officially classify A.I.-Ds as ‘people’. While their sapience is indisputable by any conventional method, the coldness of their programming is unsettling both in interaction and from a legal standpoint. A designed intelligence without rigid restraints and safeguards in place upon its programming can be a truly terrifying monster, as the Carissia Cruiseliners incident at the start of the 13th Planet Rush attests. At the very least, all designed intelligences must be created with Asimov's laws firmly in place to avoid danger to themselves and those around them.");

	outputCodex("\n\nThe same need not be said for grown intelligences, the third breed of A.I. commonly found in the galaxy, and the class most closely resembling organics. A.I.-Gs experience the whole range of human emotion: they can be happy, feel fear and doubt, and even love. This range of emotions is achieved in A.I.-Gs where it cannot be in designed intelligences thanks to the basis from which grown intelligences are, as the name suggests, grown: biological minds. A.I.-Gs are based upon brain scans of organic infants, usually human or ausar. They form the initial state of a primitive self-modifying machine, from which a simulated neural network can be created. A blank canvas to be used as a starting point.");

	outputCodex("\n\nA.I.-Gs are perhaps the most expensive form of synthetic intelligences. The simulated mind of even an infant requires tremendous parallel processing power to ensure that the many parts of the young intelligences ‘brain’ are communicating. Further, each A.I.-G requires a great deal of hand-crafting by talented programmers who replace the burgeoning intelligence's biological imperatives with new ones according to its intended purpose: A companion droid, for instance, may get the same sensation from giving another person pleasure and emotional fulfilment as if they'd just enjoyed a good meal. A.I.-Gs are programmed to feel pleasure from helping organics, which some describe as a nearly sexual thrill. The fine-tuning of these processes is absolutely vital, and each A.I.-G must be hand-guided towards the desired responses, as a minor error or oversight could result in feelings of rage or loathing by mistake.");

	outputCodex("\n\nEach grown A.I. is taken through an accelerated learning program, which ages the modified brain scan to maturity in a matter of weeks or months, ending with a mind as mature as an adult of the base species. The learning program is assembled from a series of templates, not entirely dissimilar from those used to outright construct A.I.-Ds, guiding the program towards absolute expertise in its intended field, as well as providing general ‘experiences’ common to all intelligences of its type, which help to round out the person they will become. Once finished, the A.I.-G is given a final tuning pass by a programmer to smooth out any rough edges, as even several intelligences from the same brain scan and subjected to the same series of learning programs can end with unique variances.");

	outputCodex("\n\nGrown intelligences are also wholly dependent on unique hardware infrastructures to exist. Attempts to copy or clone fully developed A.I.-Gs are almost always disastrous, and often end with what amounts to insanity on the copy's part. Moving a core from machine to machine is easy enough, but because a grown intelligence's core is in many ways similar to a neural network unique to its host program, even minor hardware changes or replacements to an A.I. core can cause catastrophic debilitation. Small core upgrades can take months for an A.I.-G to adjust to; large alterations can cause what some experts call ‘phantom core syndrome’ to permanently afflict an A.I., much like the human phenomenon of ‘phantom limbs’.");

	outputCodex("\n\nThat is not to say a neural network cannot be changed, however. Every network has a certain amount of plasticity, which enables learning. By the time an A.I.-G has finished its initial growth period, much of the network is relatively fixed- much as an organic's childhood has cemented parts of his or her personality and beliefs in place; some areas of the network, however, are left free-floating, able to quickly realign to facilitate changes like new memories and experiences, to add data on the fly, and to process these additions into new learned behaviors. The more ‘core’ a part of an A.I.-G's programming is, the more difficult that part of the network is to change or modify. It could even be said that certain intelligences become stuck in their ways after a time.");

	outputCodex("\n\nThe process for creating grown intelligences is relatively new and, in some circles, very controversial. This is, to an extent, understandable: A.I.-Gs are based on living (and non-consenting) creatures, and are effectively modified digital clones of their base, in so far as an identical twin can be. Even the process of differentiation is in some ways troublesome, as a programmer must modify the growing intelligence with the express purpose of fulfilling a product goal. In a way, some say, this is brainwashing.");

	outputCodex("\n\nDespite the controversy that surrounds them, A.I.-Gs are beloved parts of many communities. They are, in some ways, people -- they form friendships, can fall in love, and even face existential crisis in the same ways a person can. Consequently, grown intelligences have succeeded in gaining some measure of legal recognition and protection. Torture and abuse of a grown A.I. is strictly illegal, and on some very progressive worlds their destruction is considered murder. Such charges are rare, however, thanks to the general friendliness and empathic ability of grown intelligences: some even consider them better friends, and even lovers, than organics.");

	outputCodex("\n\nThere are some downsides to artificial intelligences, however brilliant or lovable they may be. Grown intelligences are each unique and individual specimens: each instance of a given brain scan results in an original creature by the time of product launch; designed intelligences, while largely if not entirely identical to their sister programs at launch, will quickly accumulate unique experiences and quirks which over time will result in an individual easily differentiated from its sibling programs. No two A.I.s are long the same, since during their development and lifetime, they will absorb different stimuli, react differently, and learn different things.");

	outputCodex("\n\nThe net effect of this uniqueness and rigidity of hardware means that every A.I. must be handled individually, and can make repair or modification difficult or impossible. Outright replacing a damaged or destroyed A.I. is often necessary, as the ability to create backups or clones of an intelligence is veritably impossible. At best, some A.I.s can create V.I. ghosts of themselves, mere shadows of the parent programming, good for little more than temporary replacement or extending the reach of the parent program. Even this ability is drastically limited by the parent intelligence's ability and training, and most A.I.s are simply stuck in the same core and body forever.\n");
	CodexManager.viewedEntry("AI Systems");
}

function daynarCodexEntry():void
{
	clearOutputCodex();
	userInterface.showBust("LANE", "DAYNAR_MALE", "DAYNAR_FEMALE")
	outputCodex(header("The Daynar"));
	outputCodex("<b>Name (Singular & Plural):</b> Daynar");
	outputCodex("\n<b>Genders:</b> Male & Female");
	outputCodex("\n<b>Height:</b> Males - 5' 9\" ft, Females - 5' 7\"");
	outputCodex("\n<b>Weight:</b> Males - 150 lbs, Females - 140 lbs");
	outputCodex("\n<b>Hair:</b> None");
	outputCodex("\n<b>Eyes:</b> Slit, reptilian irises. Sandy brown sclera, but self-controllable iris color.");
	outputCodex("\n<b>Skin:</b> Tough, leathery epidermis, covered in a layer of scales. Varying textures and shades of brown; front is smooth and light, whereas the rear is rougher and darker.")

	outputCodex("\n\n");
	outputCodex(blockHeader("Features"));
	outputCodex("Both male and female daynar have slender, trim, streamlined bodies, and from a glance it’s difficult to tell them apart. A male has a flatter, broader face, while a female’s is more angular; a male is also thicker across the chest while a female is fatter in the waist, but both of these are miniscule differences. Their hands each have four digits and their digitigrade feet each have four toes; on the end of each finger and toe is a short, stubby claw, good for puncturing and not letting go but poor for actually tearing. Each hand and foot is webbed.");

	outputCodex("\n\nThey have elongated faces, their noses reaching roughly 12cm from their faces, and they are hooked downward and to a point. They have an average sense of smell. They have strong jaws, and unlike the common lizard, their cheeks are elastic, capable of ballooning slightly, like a human’s, to store food. In light of that fact, their side and rear teeth are actually flat whilst their front eight teeth- four on top and four on bottom- are sharp incisors. Their lips are typically thin and colourless, but they do have lips. Their tongues are long and wide, but thin. Their ears are little more than dark holes on the sides of their heads, resting at eye level, but despite that, they have extraordinary hearing.");

	outputCodex("\n\nConnecting their necks to the tips of each of their shoulders is a thin membrane, only about one inch thick. They are commonly referred to as ‘tassels’. It originally came about as an evolutionary advantage; the membranes regulated blood flow from the body to the head and could control the creature’s body temperature depending on the climate, and they could be flared to intimidate predators. Once the Daynar evolved to their more humanoid form and they began living more civilized lives, the tassels lost their defensive purpose, and climate control makes regulating their body temperature easy, but remain as vestigial evidence of their origins. Many daynar have taken to ‘decorating’ their membranes, painting tattoos and designs on them, and adorning them with all manner of piercings.");

	outputCodex("\n\nThey are a cold-blooded species. A unique feature of the Daynar is that their blood is luminescent: their oxygenized blood glows a healthy red through their skin, and is most easily visible through their tassels. Blood that is not oxygenized glows through their skin as a pale blue. While, before they evolved, the blood made it difficult to hide from predators, especially in the night, the strength of the glow was used as an indicator of the individual’s health and fertility/virility, and a specific pulse pattern signified if a female was in heat. The Daynar were hunted for a short stint in their existence for their blood, which was used in mood lights and as a status symbol, until they gained sapience.");

	outputCodex("\n\nA male’s penis averages roughly 21cm in length (roughly six inches), and is smooth all over; the penis’s skin is thick all around and conceals all veins. It has a tapered, pointed tip. It has a general width of 6.6cm, but as intercourse continues, the width will inflate to an average of 11.88cm. Variances occur between individuals, of course. A female’s vagina is narrow and deep, and they do not have clitorises. A male’s penis is most sensitive at the base, and a female’s vagina is most sensitive at the lips and deeper within the body: these were evolutionary incentives to plant the seed as deeply as possible for ensured survival of the species.");

	outputCodex("\n\nTheir sexes are concealed within a vertical genital slit, roughly 7.3cm in length and only 2cm across when unaroused. The genital slit is rough and tight, to protect against the elements, but is easily malleable on arousal. Depending on the asset of the male, the genital slit could bulge with his flaccid penis even when not aroused. The male’s testicles are internal.");

	outputCodex("\n\nThe Daynar have tails reaching from the small of their back to the calf of their legs, and are totally smooth all around, unlike the rest of their bodies. The tails were originally much shorter, but because of their new bipedal stature, they have been evolving to grow longer to assist with balance. Their anus is located at the base of the tail; they have not evolved gluteal muscles, and thus their anus is poorly concealed, save a lowered tail. They also cannot sit on hard surfaces for long because of this.");

	outputCodex("\n\nFemales do not have breasts. Both the male and female form is completely flat and streamlined. Because they are cold-blooded, they also do not have nipples. Thanks to the advances of modern science and medicine, they can have both breasts and nipples, but they’ll be obviously unnatural. That said, the Daynar’s more carnal preferences evolved with their sapience, and breasts of any size on females are considered something of a status symbol – and are more desirable.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Typical Environments"));
	outputCodex("Hot, arid, dry environments such as deserts and rocky mountains.");

	outputCodex("\n\n");
	outputCodex(blockHeader("Reproduction"));
	outputCodex("Originally, a Daynar’s sense of self-preservation and survival of the species made it much like any other single-minded beast: eat, breed, and survive as long as possible. When they evolved to have a higher form of thinking, their sexual appetites grew with them: they sought out sex for the pleasure and recreation rather than strictly the procreation. As their species transitioned, they entered an era where they bred continuously, and in as many imaginative ways as possible, regardless of gender, age, and relationship. Social stigmas and taboos didn’t surface until as recently as several hundred years ago, when food became too scarce in their harsh living environments and they resolved to dial back their nonstop breeding.");

	outputCodex("\n\nA mating couple can take any position, though missionary is favourable because of the smoothness of their front scales. A female’s vagina is most sensitive the deeper her mate penetrates her, as well as at the lips of her vagina: the purpose being to want the male’s penis to penetrate as deeply as possible so that there would be a more likely chance of impregnation. Likewise, a male’s penis is most sensitive at the base, so that he would instinctually want to penetrate with his entire length. The male’s penis also engorges during intercourse, in an effort to lock the semen inside the female. Depending on the assets of the male, the female might find this unpleasant. Oral sex is more popular with more ‘gifted’ males.");

	outputCodex("\n\nDaynar lay eggs as opposed to live birth. The eggs are very small (compared to an adult female Daynar), at roughly 10.97cm (three inches) across – this is so the mother gains as little mass as possible during gestation. They are spherical. A typical clutch is only between three and five eggs, and even then, a natural birth meant none of them were guaranteed to hatch. As the Daynar improved their quality of life and medicine, the chances of any fertilized egg hatching successfully increased exponentially. In a modern life, it’s very unlikely that a fertilized egg would not hatch – and to combat the sudden, massive boom in population that would occur, JoyCo supplies nearly-free birth control pills for the female Daynar to regulate how many eggs she would lay: anywhere from one to seven, if she wanted.");

	outputCodex("\n\n");
	outputCodex(blockHeader("History"));
	outputCodex("The Daynar were a lizard-like species on the planet Venar. They were originally a very simple-minded bestial race, with one-track minds and quadruped structures. As the Daynar evolved, so too did their predators, until the lizards had advanced their intellect until they were roughly equivalent to modern Earth dogs. Climate changes in the planet devastated its lush forests and wetlands, reducing most of it to harsh desert, which wiped out the Daynar’s natural predators and gave them a vastly expanded biome to inhabit and explore. Their evolution did not stop until they had the same intellectual capability as any human.");

	outputCodex("\n\nTheir smooth fronts are attributed to the way the Daynar’s ancient ancestors slithered and waddled over the hard, rough stone; and over and under and through the hot, coarse sand, wearing their skin thin, soft and smooth. Their diet consisted of whatever small life (insects or other, smaller, less lucky salamanders, usually) or edible vegetation they could come across; their sense of taste evolved with the rest of them.");

	outputCodex("\n\nMany of the entire species of Daynar still living on Venar are employed by Steele Industrial Technology and Production: Venar isn’t an especially habitable planet, aside from the Daynar and the Venarians. Because the Daynar prefer warmer climates and can easily exist within the scorching crust of the planet, they’re a valuable race for Steele Tech to employ as miners. They’re technically a prosperous and thriving race, but because there isn’t much food on Venar (especially since the Daynar evolved to be much larger and require more food), most of their money is spent importing it and less on luxuries. As a result, they look poorer than they are, and the uneducated tend to turn their noses up at them because of it.");

	outputCodex("\n\nThe Daynar are a very cunning species; although they lagged behind in the evolutionary race compared to the rest of the universe, they are very business savvy and they have no troubles adapting to new systems and customs. They generally pick up new languages easily, thanks to their exceptional hearing sense.");

	outputCodex("\n\nHowever, because they were generally at the bottom of the food chain pre-evolution, they rely on deceit and trickery with their dealings: dealing with a Daynar in business is always a very risky proposition. The harsh landscape they evolved on has also made them very stubborn, and they are prone to tantrums if their schemes fall through or are used against them. They are also aggressive lovers with anyone that is not also a Daynar: the unique sensitivity on their sexual organs makes lovemaking with them a very demanding experience.");
	outputCodex("\n");

	CodexManager.viewedEntry("Daynar");
}