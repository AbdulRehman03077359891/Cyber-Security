// Add more keywords as needed
// Define a synonym map for keywords
final Map<String, List<String>> synonymMap = {
  // Base verbs and their synonyms
  "create": ["make","invent","build","form","produce","generate","develop","constructe","design","assemble","craft","establish","create",
  ],
  "uses": ["works","operates","utilizes","employs","applies","handles","exploits","leverages","manages","implements","uses"
  ],
  "get": ["download","obtain","fetch","acquire","receive","retrieve","collect","gather","procure","earn","pick up","get"
  ],
  "go": ["move","travel","proceed","advance","head","leave","depart","venture","navigate","journey","walk","move on","go"
  ],
  "stop": ["halt","cease","terminate","discontinue","end","pause","finish","suspend","break","block","conclude","stop"
  ],
  "run": ["operate","function","perform","execute","carry out","manage","control","administer","direct","launch","run"
  ],
  "make": ["create","form","produce","build","generate","construct","develop","assemble","design","fabricate","manufacture","devise","make"
  ],
  "help": ["assist","aid","support","guide","advise","serve","back","encourage","facilitate","enable","boost","help"
  ],
  "see": ["view","look","observe","watch","perceive","glance","inspect","spot","examine","consider","survey","detect","notice","see"
  ],
  "find": ["discover","locate","uncover","identify","spot","detect","reveal","trace","search","come across","encounter","stumble upon","unveil","find"
  ],
  "like": ["enjoy","love","appreciate","prefer","admire","desire","fancy","delight in","take pleasure in","cherish","value","like"
  ],
  "take": ["grab","seize","collect","pick","receive","obtain","acquire","capture","fetch","gather","snatch","accept","procure","take"
  ],
  "give": ["donate","offer","present","provide","supply","contribute","hand over","deliver","grant","yield","offer up","bestow","pass","give"
  ],
  "speak": ["talk","converse","discuss","chat","communicate","express","utter","articulate","voice","declare","announce","speak"
  ],
  "talk": ["speak","chat","converse","discuss","communicate","gab","banter","chatter","discourse","dialogue","talk"
  ],
  "read": ["study","peruse","scan","look at","examine","inspect","analyze","review","browse","check","skim","read"
  ],
  "write": ["compose","pen","draft","scribble","record","note","jot down","type","create","formulate","produce","write"
  ],
  "call": ["dial","ring","contact","reach","phone","buzz","hit up","get in touch","page","message","call"
  ],
  "rush": ["jog","sprint","dash","race","hurry","move","scurry","hightail","speed","run","rush"
  ],
  "eat": ["consume","devour","ingest","chew","gobble","munch","snack","chomp","swallow","bite","eat"
  ],
  "sleep": ["rest","doze","nap","slumber","snooze","repose","hibernate","lie down","bed down","turn in","sleep"
  ],
  "drink": ["sip","gulp","swallow","quench","imbibe","chug","slurp","swig","pour","down","drink"
  ],
  "think": ["ponder","contemplate","consider","reflect","meditate","ruminate","deliberate","muse","devise","imagine","think"
  ],
  "learn": ["study","understand","grasp","absorb","comprehend","master","know","fathom","realize","pick up","educate oneself","learn"
  ],
  "teach": ["educate","instruct","train","coach","guide","mentor","tutor","lecture","demonstrate","explain","teach"
  ],
  "build": ["construct","assemble","form","create","erect","raise","establish","manufacture","forge","design","build"
  ],
  "buy": ["purchase","acquire","get","obtain","shop for","pay for","procure","pick up","invest in","order","buy"
  ],
  "sell": ["trade","market","offer","auction","exchange","dispose of","retail","peddle","vend","deal","sell"
  ],
  "begin": ["start","commence","initiate","launch","embark","open","trigger","set in motion","kick off","begin"
  ],
  "finish": ["complete","end","conclude","close","terminate","wrap up","finalize","seal","bring to a close","finish"
  ],
  "lose": ["misplace","discard","fail to find","drop","forfeit","waste","give up","surrender","sacrifice","lose"
  ],
  "win": ["victor","succeed","triumph","prevail","overcome","conquer","beat","defeat","achieve","capture","win"
  ],
  "wait": ["pause","delay","hold on","bide","linger","stay","remain","wait around","be patient","wait"
  ],
  "search": ["look","seek","hunt","explore","scan","probe","examine","scrutinize","investigate","inquire","search"
  ],
  "push": ["press","shove","thrust","drive","propel","force","advance","move","jostle","ram","push"
  ],
  "pull": ["draw","tow","drag","haul","tug","yank","jerk","reel","wrench","haul","pull"
  ],

  // Past tense verbs and their synonyms
  "created": ["made","built","formed","produced","generated","developed","constructed","designed","assembled","crafted","established","invented","created"
  ],
  "used": ["worked","operated","utilized","employed","applied","handled","exploited","leveraged","managed","implemented","used"
  ],
  "got": ["downloaded","obtained","fetched","acquired","received","retrieved","collected","gathered","procured","earned","picked up","got"
  ],
  "went": ["moved","traveled","proceeded","advanced","headed","left","departed","ventured","navigated","journeyed","walked","moved on","went"
  ],
  "stopped": ["halted","ceased","terminated","discontinued","ended","paused","finished","suspended","broke","blocked","concluded","stopped"
  ],
  "ran": ["operated","functioned","performed","executed","carried out","managed","controlled","administered","directed","launched","ran"
  ],
  "made": ["created","formed","produced","built","generated","constructed","developed","assembled","designed","fabricated","manufactured","devised","made"
  ],
  "helped": ["assisted","aided","supported","guided","advised","served","backed","encouraged","facilitated","enabled","boosted","helped"
  ],
  "saw": ["viewed","looked","observed","watched","perceived","glanced","inspected","spot","examined","considered","surveyed","detected","noticed","saw"
  ],
  "found": ["discovered","located","uncovered","identified","spotted","detected","revealed","traced","searched","came across","encountered","stumbled upon","unveiled","recognized","found"
  ],
  "liked": ["enjoyed","loved","appreciated","preferred","admired","desired","fancied","delighted in","took pleasure in","cherished","valued","liked"
  ],
  "took": ["grabbed","seized","collected","picked","received","obtained","acquired","captured","fetched","gathered","snatched","accepted","procured","took"
  ],
  "gave": ["donated","offered","presented","provided","supplied","contributed","handed over","delivered","granted","yielded","offered up","bestowed","passed","gave"
  ],
  "spoke": ["talked","conversed","discussed","chatted","communicated","expressed","uttered","articulated","voiced","declared","announced","spoke"
  ],
  "talked": ["spoke","chatted","conversed","discussed","communicated","gabbled","bantered","chattered","discussed","dialogued","talked"
  ],
  "studied": ["read","perused","scanned","looked at","examined","inspected","analyzed","reviewed","browsed","checked","skimmed","studied"
  ],
  "wrote": ["composed","penned","drafted","scribbled","recorded","noted","jotted down","typed","created","formulated","produced","wrote"
  ],
  "called": ["dialed","rung","contacted","reached","phoned","buzzed","hit up","got in touch","paged","messaged","called"
  ],
  "raced": ["jogged","sprinted","dashed","ran","hurried","moved","scurried","hightailed","sped","rushed","raced"
  ],
  "ate": ["consumed","devoured","ingested","chewed","gobbled","munched","snacked","chomped","swallowed","bit","ate"
  ],
  "slept": ["rested","dozed","napped","slumbered","snoozed","reposed","hibernated","lay down","bed down","turned in","slept"
  ],
  "drank": ["sipped","gulped","swallowed","quenched","imbibed","chugged","slurped","swigged","poured","downed","drank"
  ],
  "thought": ["pondered","contemplated","considered","reflected","meditated","ruminated","deliberated","mused","devised","imagined","thought"
  ],
  "learned": ["studied","understood","grasped","absorbed","comprehended","mastered","knew","fathomed","realized","picked up","educated oneself","learned"
  ],
  "taught": ["educated","instructed","trained","coached","guided","mentored","tutored","lectured","demonstrated","explained","taught"
  ],
  "built": ["constructed","assembled","formed","created","erected","raised","established","manufactured","forged","designed","built"
  ],
  "bought": ["purchased","acquired","got","obtained","shopped for","paid for","procured","picked up","invested in","ordered","bought"
  ],
  "sold": ["traded","marketed","offered","auctioned","exchanged","disposed of","retailed","peddled","vended","dealt","sold"
  ],
  "began": ["started","commenced","initiated","launched","embarked","opened","triggered","set in motion","kicked off","began"
  ],
  "finished": ["completed","ended","concluded","closed","terminated","wrapped up","finalized","sealed","brought to a close","finished"
  ],
  "lost": ["misplaced","discarded","failed to find","dropped","forfeited","wasted","gave up","surrendered","sacrificed","lost"
  ],
  "won": ["triumphed","succeeded","prevailed","overcame","conquered","beat","defeated","achieved","captured","won"
  ],
  "waited": ["paused","delayed","held on","bided","lingered","stayed","remained","waited around","was patient","waited"
  ],
  "searched": ["looked","sought","hunted","explored","scanned","probed","examined","scrutinized","investigated","inquired","searched"
  ],
  "pushed": ["pressed","shoved","thrust","drove","propelled","forced","advanced","moved","jostled","rammed","pushed"
  ],
  "pulled": ["drew","towed","dragged","hauled","tugged","yanked","jerked","reeled","wrenched","hauled","pulled"
  ],

  // Past participle verbs and their synonyms

  "gotten": ["gotten","downloaded","obtained","fetched","acquired","received","retrieved","collected","gathered","procured","earned","picked up"
  ],
  "gone": ["gone","moved","traveled","proceeded","advanced","headed","left","departed","ventured","navigated","journeyed","walked","moved on"
  ],
  "seen": ["seen","viewed","looked","observed","watched","perceived","glanced","inspected","spotted","examined","considered","surveyed","detected","noticed"
  ],
  "taken": ["taken","grabbed","seized","collected","picked","received","obtained","acquired","captured","fetched","gathered","snatched","accepted","procured"
  ],
  "given": ["given","donated","offered","presented","provided","supplied","contributed","handed over","delivered","granted","yielded","offered up","bestowed","passed"
  ],
  "spoken": ["spoken","talked","conversed","discussed","chatted","communicated","expressed","uttered","articulated","voiced","declared","announced"
  ],
  "written": ["written","composed","penned","drafted","scribbled","recorded","noted","jotted down","typed","created","formulated","produced"
  ],
  "eaten": ["eaten","consumed","devoured","ingested","chewed","gobbled","munched","snacked","chomped","swallowed","bit"
  ],
  "drunk": ["drunk","sipped","gulped","swallowed","quenched","imbibed","chugged","slurped","swigged","poured","downed"
  ],
  "begun": ["begun","started","commenced","initiated","launched","embarked","opened","triggered","set in motion","kicked off"
  ],
  "use": ["use","work","operate","utilize","employ","apply","handle","exploit","leverage","manage","implement"
  ],
  "creating": ["creating","making","building","forming","producing","generating","developing","constructing","designing","assembling","crafting"
  ],
  "using": ["using","working","operating","utilizing","employing","applying","handling","exploiting","leveraging","managing","implementing"
  ],
  "getting": ["getting","downloading","obtaining","fetching","acquiring","receiving","retrieving","collecting","gathering","procuring","picking up"
  ],
  "going": ["going","moving","traveling","proceeding","advancing","heading","leaving","departing","venturing","navigating","journeying","walking","moving on"
  ],
  "stopping": ["stopping","halting","ceasing","terminating","discontinuing","ending","pausing","finishing","suspending","breaking","blocking","concluding"
  ],
  "running": ["running","operating","functioning","performing","executing","carrying out","managing","controlling","administering","directing","launching"
  ],
  "making": ["making","creating","forming","producing","building","generating","constructing","developing","assembling","designing","fabricating","manufacturing","devising"
  ],
  "helping": ["helping","assisting","aiding","supporting","guiding","advising","serving","backing","encouraging","facilitating","enabling","boosting"
  ],
  "seeing": ["seeing","viewing","looking","observing","watching","perceiving","glancing","inspecting","spotting","examining","considering","surveying","detecting","noticing"
  ],
  "finding": ["finding","discovering","locating","uncovering","identifying","spotting","detecting","revealing","coming across","encountering","stumbling upon","unveiling"
  ],
  "liking": ["liking","enjoying","loving","appreciating","preferring","admiring","desiring","fancying","delighting in","taking pleasure in","cherishing","valuing"
  ],
  "taking": ["taking","grabbing","seizing","collecting","picking","receiving","obtaining","acquiring","capturing","fetching","gathering","snatching","accepting","procuring"
  ],
  "giving": ["giving","donating","offering","presenting","providing","supplying","contributing","handing over","delivering","granting","yielding","offering up","bestowing","passing"
  ],
  "speaking": ["speaking","talking","conversing","discussing","chatting","communicating","expressing","uttering","articulating","voicing","declaring","announcing"
  ],
  "talking": ["talking","speaking","chatting","conversing","discussing","communicating","gabbing","bantering","chattering","dialoguing"
  ],
  "reading": ["reading","studying","perusing","scanning","looking at","examining","inspecting","analyzing","reviewing","browsing","checking","skimming"
  ],
  "writing": ["writing","composing","penning","drafting","scribbling","recording","noting","jotting down","typing","creating","formulating","producing"
  ],
  "calling": ["calling","dialing","ringing","contacting","reaching","phoning","buzzing","hitting up","getting in touch","paging","messaging"
  ],
  "racing": ["racing","jogging","sprinting","dashing","running","hurrying","moving","scurrying","hightailing","speeding","rushing"
  ],
  "winning": ["winning","succeeding","triumphing","victorious","prevailing","conquering","achieving","overcoming","dominating","leading"
  ],

  "eating": ["consuming","devouring","ingesting","chewing","gobbling","munching","snacking","chomping","swallowing","biting","eating"
  ],
  "sleeping": ["resting","dozing","napping","slumbering","snoozing","reposing","hibernating","lying down","bed down","turning in","sleeping"
  ],
  "drinking": ["sipping","gulping","swallowing","quenching","imbibing","chugging","slurping","swigging","pouring","downing","drinking"
  ],
  "thinking": ["pondering","contemplating","considering","reflecting","meditating","ruminating","deliberating","musing","devising","imagining","thinking"
  ],
  "learning": ["studying","understanding","grasping","absorbing","comprehending","mastering","knowing","fathoming","realizing","picking up","educating oneself","learning"
  ],
  "teaching": ["educating","instructing","training","coaching","guiding","mentoring","tutoring","lecturing","demonstrating","explaining","teaching"
  ],
  "building": ["constructing","assembling","forming","creating","erecting","raising","establishing","manufacturing","forging","designing","building"
  ],
  "buying": ["purchasing","acquiring","getting","obtaining","shopping for","paying for","procuring","picking up","investing in","ordering","buying"
  ],
  "selling": ["trading","marketing","offering","auctioning","exchanging","disposing of","retailing","peddling","vending","dealing","selling"
  ],
  "beginning": ["starting","commencing","initiating","launching","embarking","opening","triggering","setting in motion","kicking off","beginning"
  ],
  "finishing": ["completing","ending","concluding","closing","terminating","wrapping up","finalizing","sealing","bringing to a close","finishing"
  ],
  "losing": ["misplacing","discarding","failing to find","dropping","forfeiting","wasting","giving up","surrendering","sacrificing","losing"
  ],
  "waiting": ["pausing","delaying","holding on","biding","lingering","staying","remaining","waiting around","being patient","waiting"
  ],
  "searching": ["looking","seeking","hunting","exploring","scanning","probing","examining","scrutinizing","investigating","inquiring","searching"
  ],
  "pushing": ["pressing","shoving","thrusting","driving","propelling","forcing","advancing","moving","jostling","ramming","pushing"
  ],
  "pulling": ["drawing","towing","dragging","hauling","tugging","yanking","jerking","reeling","wrenching","hauling","pulling"
  ],

  // Common nouns and their synonyms
  "job": ["work","position","role","task","occupation","career","employment","post","duty","job"
  ],
  "car": ["vehicle","automobile","ride","transport","motorcar","machine","wagon","auto","sedan","car"
  ],
  "house": ["home","residence","dwelling","abode","place","living quarters","domicile","housing","house"
  ],
  "friend": ["buddy","companion","ally","pal","partner","confidant","acquaintance","associate","mate","friend"
  ],
  "money": ["cash","currency","funds","wealth","capital","resources","bucks","dollars","income","riches","money"
  ],
  "book": ["novel","publication","text","tome","manual","volume","work","study","script","book"
  ],
  "phone": ["telephone","mobile","cell","smartphone","device","communication tool","cell phone","landline","phone"
  ],
  "food": ["meal","grub","nourishment","sustenance","dish","fare","cuisine","refreshments","snack","food"
  ],
  "game": ["match","competition","contest","sport","play","tournament","activity","challenge","event","game"
  ],
  "city": ["town","metropolis","municipality","urban area","capital","settlement","township","locality","community","city"
  ],
  "school": ["educational institution","academy","college","university","institute","learning center","campus","classroom","school"
  ],
  "shop": ["store","market","boutique","retail store","emporium","outlet","supermarket","business","vendor","shop"
  ],
  "bank": ["financial institution","lender","savings institution","credit union","banking institution","moneylender","bureau","bank"
  ],
  "hospital": ["medical center","healthcare facility","clinic","infirmary","care facility","emergency room","health center","hospital"
  ],
  "computer": ["PC","laptop","desktop","machine","tablet","device","electronic","workstation","processor","computer"
  ],
  "store": ["shop","market","supermarket","boutique","outlet","warehouse","retailer","vendor","emporium","store"
  ],
  "window": ["pane","glass","casement","opening","aperture","view","vent","frame","window"
  ],
  "door": ["entryway","entrance","portal","gateway","exit","threshold","hatch","passage","door"
  ],
  "street": ["road","avenue","boulevard","lane","drive","path","way","track","street"
  ],
  "light": ["lamp","bulb","fixture","illumination","shine","radiance","beacon","brightness","flash","light"
  ],
  "air": ["oxygen","atmosphere","breeze","wind","gust","draft","sky","breath","environment","air"
  ],
  "water": ["liquid","aqua","fluid","H2O","beverage","drink","rain","stream","pool","water"
  ],
  "animal": ["creature","beast","living being","pet","wildlife","organism","fauna","species","critters","animal"
  ],
  "plant": ["flower","tree","bush","shrub","herb","weed","vegetation","foliage","bloom","sapling","plant"
  ],
  "child": ["kid","youngster","toddler","infant","youth","little one","offspring","teen","baby","child"
  ],
  "parent": ["mother","father","guardian","mom","dad","caregiver","progenitor","elder","parent"
  ],
  "family": ["household","relatives","kin","clan","tribe","extended family","lineage","descendants","ancestors","family"
  ],
  "teacher": ["instructor","educator","tutor","professor","mentor","trainer","guide","lecturer","teacher"
  ],
  "student": ["pupil","learner","scholar","trainee","undergraduate","graduate","academic","apprentice","student"
  ],
  "boss": ["manager","supervisor","employer","chief","director","leader","executive","head","administrator","boss"
  ],
  "employee": ["worker","staff","team member","staff member","associate","laborer","worker bee","colleague","employee"
  ],
  "vehicle": ["car","automobile","truck","motorbike","van","bus","motor vehicle","bike","scooter","vehicle"
  ],
  "weather": ["climate","conditions","forecast","temperature","atmosphere","weather pattern","elements","sky","weather"
  ],

  // Proper Nouns
  // People
  "John": ["Jonathan", "Johnny", "Jono", "John"],
  "Michael": ["Mike", "Mikey", "Mich", "Michael"],
  "Sarah": ["Sara", "Sally", "Sadie", "Sarah"],
  "Emily": ["Em", "Emmy", "Milly", "Emily"],
  "David": ["Dave", "Davy", "D", "David"],

// Countries
  "United States": ["USA","America","US","United States of America","The States","United States"
  ],
  "Canada": ["Great White North", "The North", "Canuck Country", "Canada"],
  "United Kingdom": ["UK","England","Britain","Great Britain","The UK","The British Isles","United Kingdom"
  ],
  "Australia": ["Aussie", "Down Under", "The Land Down Under", "Australia"],
  "Germany": ["Deutschland", "The Federal Republic of Germany", "Germany"],
  "France": ["The French Republic", "La Belle France", "France"],
  "India": ["Bharat", "The Republic of India", "Indo", "India"],
  "China": ["People's Republic of China", "The Middle Kingdom", "PRC", "China"],

// Cities
  "New York": ["NYC","The Big Apple","Gotham","The City That Never Sleeps","New York"
  ],
  "Los Angeles": ["LA", "The City of Angels", "Los Angeles"],
  "London": ["The Big Smoke", "The Old Smoke", "London"],
  "Paris": ["The City of Light", "La Ville Lumière", "Paris"],
  "Tokyo": ["The Metropolis", "Edo", "The Capital City", "Tokyo"],
  "Sydney": ["The Harbour City", "The Emerald City", "Sydney"],
  "Berlin": ["The German Capital", "Berliner", "Berlin"],
  "Rome": ["The Eternal City", "Roma", "Rome"],

// Companies & Organizations
  "Google": ["Alphabet Inc.", "Big G", "Google"],
  "Apple": ["Apple Inc.", "The Cupertino Giant", "MacMaker", "Apple"],
  "Microsoft": ["MS","The Software Giant","Redmond-based Company","Microsoft"
  ],
  "Amazon": ["Amazon.com", "The Everything Store", "AWS", "Amazon"],
  "Tesla": ["Tesla Inc.","The Electric Car Company","Elon Musk's Company","Tesla"
  ],
  "Facebook": ["Meta", "The Social Media Giant", "Facebook"],
  "Twitter": ["X", "The Bird App", "Twitter"],
  "Nike": ["Nike Inc.", "The Swoosh", "The Sportswear Giant", "Nike"],

// Famous People
  "Albert Einstein": ["Einstein","Theoretical Physicist","Genious","Albert Einstein"
  ],
  "Barack Obama": ["Obama","President Obama","The 44th President","Barack Obama"
  ],
  "Leonardo da Vinci": ["Da Vinci", "The Renaissance Man", "Leonardo da Vinci"],
  "William Shakespeare": ["Shakespeare", "The Bard", "William Shakespeare"],
  "Oprah Winfrey": ["Oprah","The Queen of Talk Shows","Oprah Winfrey Network","Oprah Winfrey"
  ],
  "Elon Musk": ["Musk", "The Tesla CEO", "The SpaceX Founder", "Elon Musk"],
  "Martin Luther King Jr.": ["MLK","King","Dr. King","Martin Luther King Jr."
  ],

// Months
  "January": ["Jan", "January"],
  "February": ["Feb", "February"],
  "March": ["Mar", "March"],
  "April": ["Apr", "April"],
  "May": ["May"],
  "June": ["Jun", "June"],
  "July": ["Jul", "July"],
  "August": ["Aug", "August"],
  "September": ["Sept", "Sep", "September"],
  "October": ["Oct", "October"],
  "November": ["Nov", "November"],
  "December": ["Dec", "December"],

// Days of the Week
  "Monday": ["Mon", "Monday"],
  "Tuesday": ["Tue", "Tuesday"],
  "Wednesday": ["Wed", "Wednesday"],
  "Thursday": ["Thu", "Thursday"],
  "Friday": ["Fri", "Friday"],
  "Saturday": ["Sat", "Saturday"],
  "Sunday": ["Sun", "Sunday"],

// Events & Holidays
  "Christmas": ["Xmas", "The Holiday Season", "The Yuletide", "Christmas"],
  "New Year's Day": ["New Year's","NYD","First Day of the Year","New Year's Day"
  ],
  "Halloween": ["All Hallows' Eve","The Night of the Living Dead","Trick-or-Treat Night","Halloween"
  ],
  "Thanksgiving": ["Turkey Day", "The Feast", "Thanksmas", "Thanksgiving"],
  "Independence Day": ["4th of July","National Day","Fireworks Day","Independence Day"
  ],

// Historical Events
  "World War I": ["The Great War","WWI","The War to End All Wars","World War I"
  ],
  "World War II": ["WWII","The Second World War","The War Against Fascism","World War II"
  ],
  "The Renaissance": ["Renaissance Era","The Age of Enlightenment","The Rebirth","The Renaissance"
  ],
  "The French Revolution": ["The Revolution","The Reign of Terror","The French Revolution"
  ],
  "The American Revolution": ["The War of Independence","The Revolution","1776","The American Revolution"
  ],

// Landmarks & Locations
  "Eiffel Tower": ["The Iron Lady", "La Tour Eiffel", "Eiffel Tower"],
  "Statue of Liberty": ["Lady Liberty","The Statue","The Liberty Enlightening the World","Statue of Liberty"
  ],
  "Great Wall of China": ["The Wall", "The Great Wall", "Great Wall of China"],
  "Mount Everest": ["Everest", "The Roof of the World", "Mount Everest"],
  "Pyramids of Giza": ["The Great Pyramids","The Egyptian Pyramids","The Giza Pyramids","Pyramids of Giza"
  ],

// Abstract Nouns
// Emotions
// Positive Emotions
  "happy": ["joyful","content","cheerful","elated","pleased","delighted","ecstatic","excited","satisfied","grateful","euphoric","blissful","happy"
  ],
  "love": ["affection","adoration","fondness","devotion","attachment","infatuation","passion","care","romance","desire","compassion","love"
  ],
  "excited": ["enthusiastic","thrilled","overjoyed","eager","delighted","ecstatic","elated","animated","exhilarated","charged","excited"
  ],
  "grateful": ["thankful","appreciative","obliged","indebted","thankful","blessed","grateful","recognizing"
  ],
  "hopeful": ["optimistic","expectant","confident","positive","assured","encouraged","upbeat","bright","hopeful"
  ],
  "proud": ["pleased","satisfied","honored","fulfilled","admiring","respectful","dignified","fulfilled","accomplished","proud"
  ],
  "content": ["satisfied","pleased","happy","fulfilled","complacent","at peace","at ease","relaxed","untroubled","content"
  ],
  "relaxed": ["calm","peaceful","untroubled","serene","unwind","chilled","laid-back","easygoing","at ease","relaxed"
  ],
  "peaceful": ["calm","serene","tranquil","untroubled","quiet","restful","still","placid","relaxed","peaceful"
  ],

  // Negative Emotions

  "sad": ["sad","unhappy","downcast","sorrowful","depressed","mournful","melancholy","glum","blue","despondent","heartbroken","downhearted"
  ],
  "angry": ["angry","mad","irritated","furious","annoyed","frustrated","enraged","incensed","irate","rage-filled","vexed","infuriated"
  ],
  "fear": ["fear","anxiety","nervousness","dread","trepidation","worry","unease","panic","terror","scared","frightened","worried","spooked"
  ],
  "guilt": ["guilt","remorse","regret","shame","contrition","self-blame","repentance","penitence","remorseful","compunction"
  ],
  "lonely": ["lonely","isolated","alone","abandoned","forsaken","deserted","solitary","neglected","forlorn","disconnected","distant"
  ],
  "ashamed": ["ashamed","embarrassed","guilty","disgraced","humiliated","self-conscious","mortified","chagrined","abashed"
  ],
  "hopeless": ["hopeless","despondent","desperate","defeated","helpless","downhearted","disheartened","broken","disillusioned","lost"
  ],
  "disgust": ["disgust","revulsion","repulsion","nausea","loathing","contempt","detestation","aversion","displeasure","repugnance"
  ],
  "jealous": ["jealous","envious","resentful","covetous","green-eyed","suspicious","possessive","begrudging","competitive","spiteful"
  ],
  "bored": ["bored","disinterested","unengaged","apathetic","dull","tedious","monotonous","listless","unmotivated","unenthusiastic","weary"
  ],
  "surprised": ["surprised","shocked","astonished","amazed","stunned","dumbfounded","startled","flabbergasted","bewildered","taken aback","thrown off"
  ],
  "confused": ["confused","bewildered","puzzled","perplexed","disoriented","uncertain","lost","mixed-up","flummoxed","baffled","discombobulated"
  ],
  "curious": ["curious","inquisitive","interested","eager to know","questioning","wondering","searching","intrigued","fascinated","explorative"
  ],
  "affection": ["affection","fondness","tenderness","devotion","attachment","care","love","warmth","caring","empathy"
  ],
  "romantic": ["romantic","passionate","infatuated","loving","smitten","adoring","devoted","sentimental","heartfelt","intimate","affectionate"
  ],
  "adoration": ["adoration","worship","reverence","veneration","esteem","devotion","honor","respect","love","appreciation"
  ],
  "devotion": ["devotion","dedication","allegiance","loyalty","faithfulness","affection","attachment","commitment","adoration","fondness"
  ],
  "pride": ["pride","self-respect","self-esteem","honor","dignity","satisfaction","confidence","accomplishment","self-assurance","self-worth","fulfillment"
  ],
  "self-pity": ["self-pity","self-loathing","self-doubt","despair","misery","discomfort","sorrow","regret","shame"
  ],
  "insecurity": ["insecurity","uncertainty","self-doubt","fear of failure","nervousness","vulnerability","anxiety","doubt","timidity"
  ],
  "confidence": ["confidence","self-assurance","belief in oneself","self-reliance","assertiveness","positivity","self-trust","self-confidence","pride"
  ],
  "embarrassment": ["embarrassment","self-consciousness","shyness","awkwardness","humiliation","discomfort","self-conscious","flustered","red-faced"
  ],
  "surprise": ["surprise","astonishment","amazement","wonder","shock","awe","disbelief","marvel","dumbfounded"
  ],
  "hope": ["hope","optimism","expectation","faith","belief","anticipation","wish","yearning","dream"
  ],
  "envy": ["envy","jealousy","covetousness","resentment","desire","spite","begrudging","discontent","grudge"
  ],
  "trust": ["trust","faith","confidence","belief","dependability","reliance","assurance","loyalty","certainty"
  ],
  "honesty": ["honesty","truthfulness","integrity","sincerity","candor","openness","straightforwardness","transparency","frankness"
  ],
  "intelligence": ["intelligence","smartness","cleverness","wisdom","knowledge","insight","brilliance","genius","perceptiveness","awareness"
  ],
  "kindness": ["kindness","compassion","gentleness","generosity","thoughtfulness","consideration","benevolence","sympathy","care","affection"
  ],
  "patience": ["patience","tolerance","endurance","composure","forbearance","restraint","self-control","calmness","serenity"
  ],
  "creativity": ["creativity","imagination","innovation","originality","resourcefulness","invention","vision","artistry","intuition"
  ],
  "courage": ["courage","bravery","boldness","fearlessness","valor","audacity","daring","heroism","strength","guts","determination"
  ],
  "humility": ["humility","modesty","humbleness","unpretentiousness","self-effacement","meekness","subduedness","lack of arrogance"
  ],
  "loyalty": ["loyalty","fidelity","faithfulness","devotion","allegiance","commitment","steadfastness","dependability","reliability"
  ],
  "empathy": ["empathy","understanding","compassion","sensitivity","sympathy","tenderness","kindness","insight","fellow-feeling"
  ],
  "arrogance": ["arrogance","conceit","pride","hubris","self-importance","egotism","haughtiness","superciliousness","snobbery","narcissism"
  ],
  "laziness": ["laziness","sloth","indolence","idle","procrastination","unmotivated","inactive","apathetic","lethargy"
  ],
  "dishonesty": ["dishonesty","deception","fraud","lying","misrepresentation","falsehood","untruth","cheating","hypocrisy","insincerity"
  ],
  "selfishness": ["selfishness","egocentrism","greed","self-interest","narrow-mindedness","inconsiderateness","unconcerned","self-serving"
  ],
  "rudeness": ["rudeness","impoliteness","offensiveness","disrespect","insolence","bluntness","curtness","abrasiveness","unkindness"
  ],
  "jealousy": ["jealousy","envy","resentment","covetousness","spite","grudge","animosity","rivalry"
  ],
  "impatience": ["impatience","restlessness","short-temper","agitation","irritability","intolerance","nervousness","unforgiving"
  ],
  "discipline": ["discipline","self-control","focus","determination","willpower","commitment","drive","dedication","rigor"
  ],
  "perseverance": ["perseverance","persistence","tenacity","endurance","resolve","grit","stamina","determination","continuance"
  ],
  "accountability": ["accountability","responsibility","answerability","ownership","liability","transparency","integrity","honesty"
  ],
  "adaptability": ["adaptability","flexibility","versatility","resilience","open-mindedness","adjustability","accommodation","resourcefulness"
  ],
  "optimism": ["optimism","hopefulness","positivity","confidence","bright outlook","idealism","enthusiasm","joyfulness"
  ],
  "grit": ["grit","determination","resolve","perseverance","fortitude","tenacity","endurance","stubbornness"
  ],
  "clarity": ["clarity","lucidity","understanding","focus","precision","discernment","comprehension","transparency"
  ],
  "leadership": ["leadership","guidance","direction","inspiration","motivation","vision","authority","influence","decisiveness","management"
  ],
  "teamwork": ["teamwork","collaboration","cooperation","partnership","unity","synergy","joint effort","community","shared goal"
  ],
  "productivity": ["productivity","efficiency","output","effectiveness","accomplishment","achievement","performance","work rate"
  ],
  "organization": ["organization","orderliness","structure","planning","coordination","systematization","method","arrangement"
  ],
  "problem-solving": ["problem-solving","solution finding","creativity","innovation","critical thinking","resourcefulness","brainstorming"
  ],
  "decision-making": ["decision-making","judgment","resolution","choice","discernment","determination","evaluation","planning"
  ],
  "initiative": ["initiative","proactiveness","drive","ambition","self-starter","resourcefulness","enterprise","enthusiasm","action"
  ],
  "integrity": ["integrity","honesty","principle","ethics","moral character","truthfulness","fairness","uprightness"
  ],
  "generosity": ["generosity","charity","giving","selflessness","benevolence","kindness","altruism","philanthropy","compassion"
  ],
  "humor": ["humor","wit","funny","comedy","joviality","laughter","amusement","playfulness","lightheartedness"
  ],
  "tact": ["tact","diplomacy","consideration","discretion","sensitivity","finesse","manners","courtesy","delicacy"
  ],
  "respect": ["respect","regard","esteem","honor","courtesy","acknowledgment","recognition","deference","consideration"
  ],
  "strength": ["strength","power","force","vigor","muscle","endurance","sturdiness","resilience","robustness","vitality"
  ],
  "beauty": ["beauty","attractiveness","loveliness","charm","elegance","grace","allure","radiance","appeal","splendor"
  ],
  "health": ["health","wellness","fitness","strength","vitality","energy","robustness","well-being"
  ],
  "elegance": ["elegance","grace","style","refinement","sophistication","beauty","charm","class","tastefulness"
  ],
  "endurance": ["endurance","stamina","perseverance","resilience","strength","tenacity","vitality","toughness","fortitude"
  ],
  "happiness": ["happiness","joy","contentment","pleasure","delight","ecstasy","elation","bliss","satisfaction","cheerfulness","euphoria"
  ],
  "sadness": ["sadness","sorrow","grief","despair","melancholy","heartache","disappointment","depression","gloom","misery","mournfulness"
  ],
  "anger": ["anger","rage","fury","wrath","irritation","frustration","annoyance","resentment","agitation","exasperation","hostility"
  ],
  "calmness": ["calmness","serenity","peace","tranquility","composure","stillness","relaxation","equanimity","quietness","contentment"
  ],
  "confusion": ["confusion","bewilderment","perplexity","disorientation","uncertainty","complication","lack of clarity","unclear"
  ],
  "clarity of mind": ["clarity of mind","lucid thinking","clear thinking","mental sharpness","focus","discernment","understanding","awareness"
  ],
  "concentration": ["concentration","focus","attention","alertness","mindfulness","intensity","awareness","engagement","absorption","immersion"
  ],
  "fatigue": ["fatigue","tiredness","exhaustion","weariness","drain","fatigued","low energy","burnout","lassitude","drowsiness","sleepiness"
  ],
  "energy": ["energy","vitality","vigor","strength","power","exuberance","alertness","dynamism","liveliness","enthusiasm","zeal"
  ],
  "weakness": ["weakness","fragility","feebleness","vulnerability","delicacy","unstability","infirmity","frailty","softness","sensitivity"
  ],
  "growth": ["growth","development","expansion","progression","maturation","evolution","advancement","improvement","refinement","enhancement"
  ],
  "decline": ["decline","decay","deterioration","downturn","recession","loss","fall","degeneration","regression","worsening"
  ],
  "stagnation": ["stagnation","standstill","inactivity","lack of progress","standstill","dormancy","immobility","inertia"
  ],
  "transformation": ["transformation","change","metamorphosis","evolution","revolution","shift","alteration","modification","conversion"
  ],
  "stability": ["stability","balance","steadiness","equilibrium","security","constancy","continuity","regularity","unchanging","durability"
  ],
  "existence": ["existence","being","life","presence","reality","survival","continuance","subsistence","being alive","actuality"
  ],
  "non-existence": ["non-existence","absence","non-being","nothingness","void","nullity","nothing","lack of being","nonentity","oblivion"
  ],
  "presence": ["presence","attendance","being there","existence","arrival","appearance","manifestation","presence of mind"
  ],
  "absence": ["absence","non-attendance","nonexistence","lack","vacancy","departure","void","missing","unavailability"
  ],
  "past": ["past","history","earlier","before","previous","bygone","former","predecessor","retrospective"
  ],
  "present": ["present","now","current","ongoing","contemporary","today","existing","in progress","simultaneous"
  ],
  "future": ["future","coming","forthcoming","upcoming","prospective","subsequent","to come","next","imminent","eventual"
  ],

  // States of Understanding & Knowledge
  "awareness": ["awareness","consciousness","alertness","attentiveness","perception","mindfulness","cognizance","knowledge","understanding"
  ],
  "ignorance": ["ignorance","unawareness","lack of knowledge","unknowing","obliviousness","naivety","blindness","lack of insight"
  ],
  "understanding": ["understanding","comprehension","insight","grasp","awareness","perception","recognition","discernment","realization"
  ],

  // Other States
  "freedom": ["freedom","liberty","independence","autonomy","self-determination","sovereignty","emancipation"
  ],
  "control": ["control","dominance","power","authority","command","influence","mastery","supervision","regulation"
  ],
  "restriction": ["restriction","limitation","constraint","boundaries","control","regulation","restraint"
  ],
  "peace": ["peace","calm","serenity","tranquility","quietness","stillness","relaxation","contentment","equanimity"
  ],
  "conflict": ["conflict","disagreement","dispute","battle","clash","struggle","discord","opposition","combat","contention"
  ],

  // Concepts & Ideas
  // Philosophical Concepts
  "justice": ["justice","fairness","equity","righteousness","impartiality","morality","lawfulness","rectitude"
  ],
  "truth": ["truth","honesty","reality","accuracy","veracity","fact","genuineness","authenticity"
  ],
  "knowledge": ["knowledge","awareness","wisdom","education","insight","understanding","learning","information"
  ],
  "power": ["power","control","authority","dominance","influence","strength","force","command","mastery"
  ],
  "ethics": ["ethics","morality","principles","virtue","integrity","values","rectitude","honesty","decency"
  ],
  "identity": ["identity","self","individuality","personality","character","uniqueness","distinctiveness","existence"
  ],
  "destiny": ["destiny","fate","future","predestination","karma","providence","fortune","inevitability"
  ],

  // Social & Cultural Concepts
  "democracy": ["democracy","republic","self-government","people power","popular rule","representative government","egalitarianism"
  ],
  "community": ["community","society","group","collective","fellowship","network","cooperative","circle","union"
  ],
  "culture": ["culture","tradition","heritage","customs","lifestyle","beliefs","practices","civilization","identity"
  ],
  "education": ["education","learning","schooling","instruction","teaching","enlightenment","training","knowledge transfer"
  ],
  "government": ["government","state","administration","authority","rule","governance","leadership","executive power"
  ],

  // Scientific & Logical Concepts
  "evolution": ["evolution","development","adaptation","growth","progression","change","natural selection","modification"
  ],
  "theory": ["theory","hypothesis","idea","principle","concept","framework","postulate","assumption"
  ],
  "logic": ["logic","reasoning","rationality","deduction","argument","coherence","inference","methodology"
  ],
  "mathematics": ["mathematics","calculation","geometry","arithmetic","algebra","numbers","equations","quantitative analysis"
  ],
  "technology": ["technology","innovation","tools","machinery","digitalization","advancement","engineering","devices","systems"
  ],
  "universe": ["universe","cosmos","space","galaxy","existence","creation","world","reality","nature"
  ],
  "gravity": ["gravity","force","attraction","pull","gravitational force","weight","mass","acceleration"
  ],

  // Abstract Concepts
  "time": ["time","past","present","future","duration","moment","chronology","epoch","age","era"
  ],
  "change": ["change","transformation","modification","alteration","evolution","adjustment","shift","adaptation"
  ],
  "infinity": ["infinity","endlessness","limitlessness","eternity","boundlessness","immensity","vastness","unlimited"
  ],
  "balance": ["balance","equilibrium","stability","harmony","fairness","proportion","evenness","symmetry","equality"
  ],
  "chaos": ["chaos","disorder","confusion","turmoil","entropy","anarchy","mayhem","instability","disorganization"
  ],
  "order": ["order","structure","arrangement","system","sequence","organization","harmony","coherence"
  ],

  // Economic Concepts
  "capitalism": ["capitalism","free market","private enterprise","market economy","profit system","laissez-faire","competition"
  ],
  "socialism": ["socialism","collectivism","public ownership","central planning","economic equality","redistribution","cooperation"
  ],
  "wealth": ["wealth","prosperity","riches","affluence","abundance","resources","fortune","capital"
  ],
  "trade": ["trade","commerce","exchange","business","dealing","transaction","barter","market"
  ],
  "work": ["work","labor","employment","job","task","profession","occupation","duty","career"
  ],

  // Psychological Concepts
  "motivation": ["motivation","drive","ambition","incentive","inspiration","desire","willpower","determination","impulse"
  ],
  "consciousness": ["consciousness","awareness","mindfulness","self-awareness","perception","cognition","alertness","sensibility"
  ],
  "perception": ["perception","awareness","understanding","recognition","viewpoint","interpretation","discernment","insight"
  ],

  // Legal & Political Concepts
  "law": ["law","legislation","regulation","statute","jurisprudence","rule","code","ordinance","legal framework"
  ],
  "rights": ["rights","freedoms","entitlements","liberties","privileges","protections","just claims","benefits"
  ],
  "authority": ["authority","power","control","jurisdiction","leadership","command","governance","dominion","influence"
  ],
  "diplomacy": ["diplomacy","negotiation","mediation","international relations","dialogue","peacemaking","conciliation","bargaining"
  ],
  "sovereignty": ["sovereignty","independence","autonomy","self-rule","self-governance","dominion","authority","control"
  ],

  // Economic & Business Concepts
  "market": ["market","economy","trade","commerce","buying and selling","business","industry","sector","enterprise"
  ],
  "investment": ["investment","capital allocation","funding","asset allocation","venture","backing","stake","speculation"
  ],
  "inflation": ["inflation","price increase","cost rise","currency devaluation","price hike","economic inflation"
  ],

  // Other Concepts
  "faith": ["faith","belief","trust","conviction","confidence","devotion","spirituality","reliance"
  ],
  "imagination": ["imagination","creativity","fantasy","invention","innovation","vision","dream","ideation","thought"
  ],
  "responsibility": ["responsibility","accountability","duty","obligation","charge","trustworthiness","commitment","answerability"
  ],
  "risk": ["risk","danger","threat","hazard","peril","uncertainty","chance","speculation","vulnerability"
  ],
  "success": ["success","achievement","victory","accomplishment","triumph","prosperity","realization","fulfillment","attainment"
  ],

  // Ideas of Existence and Life
  "being": ["being","existence","living","presence","consciousness","self-awareness","life","state of existence"
  ],
  "reality": ["reality","truth","actuality","fact","existence","state of affairs","objective world","physical world"
  ],
  "nothingness": ["nothingness","void","emptiness","nonexistence","absence","nihility","vacuum","annihilation"
  ],
  "mortality": ["mortality","death","finiteness","impermanence","end of life","fragility","ephemerality","temporary nature"
  ],
  "immortality": ["immortality","eternal life","undying","perpetuity","endless existence","infinite life","everlasting"
  ],

  // Life Philosophies and Ideas
  "purpose": ["purpose","meaning","goal","objective","reason for being","calling","destiny","life mission"
  ],
  "free will": ["free will","choice","volition","self-determination","autonomy","liberty","personal agency","decision-making"
  ],
  "fate": ["fate","destiny","predestination","inevitability","karma","providence","fortune","preordained path"
  ],
  "survival": ["survival","existence","perseverance","continuation","endurance","life preservation","self-sustainment"
  ],
  "creation": ["creation","genesis","origin","birth","beginning","formation","production","coming into existence"
  ],
  "cycle of life": ["cycle of life","birth","growth","death","rebirth","evolution","life stages","circle of existence"
  ],

  // Spiritual & Existential Ideas
  "soul": ["soul","spirit","essence","inner self","immaterial being","consciousness","life force","psyche"
  ],
  "rebirth": ["rebirth","reincarnation","renewal","resurrection","new beginning","life after death","transmigration"
  ],
  "nirvana": ["nirvana","enlightenment","liberation","transcendence","bliss","spiritual freedom","eternal peace"
  ],
  "karma": ["karma","cause and effect","moral causality","cosmic justice","action and consequence","ethical fate"
  ],
  "oneness": ["oneness","unity","interconnectedness","wholeness","collective consciousness","holism","universal connection"
  ],
  "transcendence": ["transcendence","beyond physical existence","spiritual ascension","rising above","self-surpassing","higher plane of being"
  ],

  // Existential Themes
  "existentialism": ["existentialism","individual meaning","personal responsibility","freedom","subjective experience","authenticity","existence precedes essence"
  ],
  "absurdism": ["absurdism","meaninglessness","irrationality of life","futility","human struggle","paradox of existence","existential conflict"
  ],
  "nihilism": ["nihilism","rejection of meaning","negation","belief in nothing","void","absence of purpose","meaninglessness of life"
  ],
  "determinism": ["determinism","predetermined events","causal necessity","lack of free will","inevitability","causal chains","fated outcomes"
  ],
  "humanism": ["humanism","value of human life","human potential","rationality","compassion","ethical life","human-centered existence"
  ],
  "spirituality": ["spirituality","inner peace","connection to higher power","transcendence","personal faith","mysticism","soul-searching"
  ],
  "atheism": ["atheism","denial of deities","reliance on science","secular existence","non-belief","human-centered philosophy"
  ],

  // Perspectives on Time and Life
  // Spiritual & Temporal Concepts
  "temporality": ["temporality","impermanence","time-bound existence","fleetingness of life","transience","ephemerality","momentary nature"
  ],
  "eternity": ["eternity","timelessness","forever","infinity","unchanging existence","endless duration","boundless time"
  ],
  "life after death": ["life after death","afterlife","spiritual continuation","heaven","reincarnation","resurrection","eternal soul"
  ],
  "present moment": ["present moment","now","immediacy","living in the moment","present awareness","here and now","mindfulness"
  ],
  "the unknown": ["the unknown","mystery","uncertainty","beyond understanding","unseen realms","what lies ahead","unexplored possibilities"
  ],
  "the meaning of life": ["the meaning of life","purpose","existential quest","personal significance","life’s aim","search for meaning","ultimate question"
  ],

  // Forces
  // Physical Forces
  "friction": ["friction","resistance","drag","opposition","slowing force","surface resistance","rubbing force"
  ],
  "magnetism": ["magnetism","magnetic attraction","magnetic force","pull of magnets","magnetic field","magnetic poles"
  ],
  "electricity": ["electricity","electrical charge","electromagnetic force","electric power","electrostatic force","current"
  ],
  "inertia": ["inertia","resistance to motion","immobility","sluggishness","lack of movement","tendency to remain still"
  ],
  "momentum": ["momentum","motion","impulse","driving force","forward motion","velocity","energy of motion"
  ],
  "pressure": ["pressure","compression","force per area","pressing force","squeezing","stress","force exerted"
  ],
  "tension": ["tension","stretching force","pull","strain","tug","tightening","force exerted through stretch"
  ],
  "lift": ["lift","upward force","air resistance","aerodynamic force","ascent","rise","buoyancy"
  ],
  "thrust": ["thrust","push","propulsive force","driving force","forceful movement","propulsion","shove"
  ],

  // Natural Forces
  "wind": ["wind","air movement","breeze","gust","draft","air pressure","atmospheric force"
  ],
  "waves": ["waves","undulation","ripples","oscillations","tides","flow","movement of water"
  ],
  "earthquake": ["earthquake","seismic force","tectonic shift","earth tremor","vibration","geological force","quaking"
  ],
  "volcanic force": ["volcanic force","eruption","magma force","lava flow","pressure release","geothermal activity"
  ],
  "tsunami": ["tsunami","oceanic force","seismic sea wave","tidal wave","ocean surge","massive wave force"
  ],

  // Emotional Forces
  "desire": ["desire","longing","craving","yearning","ambition","aspiration","want","urge"
  ],
  "grief": ["grief","sorrow","mourning","loss","sadness","despair","bereavement","heartache"
  ],

  // Social & Cultural Forces
  "tradition": ["tradition","custom","heritage","ritual","cultural practice","legacy","established norm"
  ],
  "peer pressure": ["peer pressure","social influence","group pressure","conformity","influence of others","coercion","social force"
  ],
  "public opinion": ["public opinion","social sentiment","community view","majority opinion","popular belief","collective will","societal force"
  ],

  // Abstract & Conceptual Forces
  "willpower": ["willpower","determination","resolve","self-control","discipline","mental strength","fortitude"
  ],
  "innovation": ["innovation","creativity","invention","breakthrough","novelty","progress","forward thinking"
  ],

  // Economic Forces
  "market forces": ["market forces","supply and demand","economic pressure","financial influence","trade dynamics","business fluctuations"
  ],
  "competition": ["competition","rivalry","market contest","competitive force","business struggle","commercial pressure"
  ],

  // Political & Ideological Forces
  "revolution": ["revolution","rebellion","uprising","radical change","overthrow","social movement","political shift"
  ],
  "imperialism": ["imperialism","colonial force","domination","expansionism","control over territories","empire-building"
  ],
  "oppression": ["oppression","domination","subjugation","control","suppression","tyranny","unfair governance"
  ],

  // Spiritual & Metaphysical Forces
  "divine will": ["divine will","God's will","spiritual force","holy power","heavenly influence","fate from above","cosmic will"
  ],
  "luck": ["luck","chance","fortune","serendipity","random force","good fortune","fate"
  ],

  // States of Condition
  // Physical Conditions
  "healthy": ["healthy","fit","well","in good shape","robust","strong","sound","vigorous","hearty"
  ],
  "sick": ["sick","ill","unwell","ailing","under the weather","feeling bad","poorly","diseased","infected"
  ],
  "tired": ["tired","exhausted","fatigued","worn out","drained","weary","sleepy","drowsy","spent"
  ],
  "injured": ["injured","hurt","wounded","damaged","bruised","broken","cut","battered","impaired"
  ],
  "active": ["active","energetic","lively","dynamic","busy","moving","working","operational","engaged"
  ],
  "inactive": ["inactive","dormant","idle","motionless","non-functional","stationary","resting","paused","out of use"
  ],
  "stable": ["stable","steady","secure","firm","strong","consistent","balanced","resilient","solid"
  ],
  "unstable": ["unstable","shaky","unsteady","insecure","volatile","wobbly","unreliable","fragile","inconsistent"
  ],

  // Emotional Conditions
  "calm": ["calm","peaceful","tranquil","serene","composed","relaxed","collected","at ease","soothed"
  ],
  "anxious": ["anxious","nervous","worried","apprehensive","on edge","tense","fearful","uneasy","distressed"
  ],
  "confident": ["confident","assured","self-assured","bold","certain","sure","positive","fearless","assertive"
  ],
  "focused": ["focused","concentrated","attentive","absorbed","alert","sharp","clear-headed","on task"
  ],
  "distracted": ["distracted","unfocused","inattentive","preoccupied","absent-minded","unalert","scattered","daydreaming"
  ],
  "clear": ["clear","understanding","comprehending","aware","lucid","transparent","unclouded","sure"
  ],
  "creative": ["creative","innovative","imaginative","inventive","resourceful","original","inspired","artistic"
  ],
  "clean": ["clean","tidy","spotless","neat","pristine","sanitized","polished","unblemished","immaculate"
  ],
  "dirty": ["dirty","filthy","messy","grimy","soiled","stained","contaminated","unclean","cluttered"
  ],
  "hot": ["hot","warm","scorching","boiling","burning","sizzling","heated","blazing","sweltering"
  ],
  "cold": ["cold","chilly","freezing","frigid","cool","frosty","icy","bitter","nippy"
  ],
  "wet": ["wet","damp","soaked","moist","soggy","waterlogged","dripping","saturated","humid"
  ],
  "dry": ["dry","arid","parched","dehydrated","barren","moistureless","desiccated","withered","cracked"
  ],
  "bright": ["bright","luminous","brilliant","radiant","glowing","shiny","dazzling","vivid","gleaming"
  ],
  "dark": ["dark","dim","gloomy","shadowy","obscured","murky","overcast","pitch-black","tenebrous"
  ],
  "rich": ["rich","wealthy","affluent","well-off","prosperous","financially secure","loaded","opulent"
  ],
  "poor": ["poor","impoverished","broke","needy","destitute","penniless","underprivileged","disadvantaged"
  ],
  "popular": ["popular","well-liked","famous","celebrated","admired","in demand","sought-after","well-known"
  ],
  "accepted": ["accepted","included","welcomed","embraced","admitted","respected","approved","part of the group"
  ],
  "online": ["online","connected","active","available","live","operational","in service","networked"
  ],
  "offline": ["offline","disconnected","inactive","unavailable","down","out of service","not working","unplugged"
  ],
  "functional": ["functional","operational","working","in order","in use","active","usable","efficient","running"
  ],
  "broken": ["broken","damaged","non-functional","faulty","inoperative","out of order","malfunctioning","defective"
  ],
  "legal": ["legal","lawful","permitted","authorized","allowed","valid","legitimate","sanctioned","licensed"
  ],
  "illegal": ["illegal","unlawful","prohibited","forbidden","banned","criminal","illicit","outlawed","unauthorized"
  ],
  "valid": ["valid","legitimate","binding","effective","sound","lawful","operative","in effect"
  ],
  "invalid": ["invalid","null","void","unlawful","not binding","canceled","expired","nullified","illegal"
  ],
  "alive": ["alive","living","breathing","animated","existent","conscious","alert","functioning","vital"
  ],
  "dead": ["dead","deceased","lifeless","expired","gone","perished","departed","no longer living","extinct"
  ],
  "awake": ["awake","alert","conscious","aware","up","roused","vigilant","stirred","not sleeping"
  ],
  "asleep": ["asleep","sleeping","unconscious","resting","dozing","slumbering","inactive","out","napping"
  ],
  "good": ["good","ethical","virtuous","righteous","moral","just","kind","honest","benevolent"
  ],
  "bad": ["bad","immoral","unethical","wrong","corrupt","sinful","evil","unjust","depraved"
  ],
  "guilty": ["guilty","culpable","responsible","liable","at fault","blameworthy","incriminated","ashamed"
  ],
  "innocent": ["innocent","blameless","faultless","not guilty","pure","sinless","unimpeachable","unblemished"
  ],
  "true": ["true","factual","correct","valid","accurate","authentic","genuine","verifiable","truthful"
  ],
  "false": ["false","incorrect","wrong","invalid","untrue","inaccurate","fake","misleading","fallacious"
  ],
  "possible": ["possible","feasible","achievable","attainable","doable","conceivable","workable","likely"
  ],
  "impossible": ["impossible","unachievable","unfeasible","out of the question","unattainable","not doable","implausible"
  ],
  "aware": ["aware","conscious","alert","mindful","attentive","vigilant","informed","observant","present"
  ],
  // Unaware
  "unaware": ["ignorant","unconscious","oblivious","uninformed","unmindful","inattentive","distracted","clueless","unaware"
  ],

  // States of Knowledge
  "knowing": ["informed","knowledgeable","aware","educated","well-read","enlightened","erudite","wise","knowing"
  ],
  "ignorant": ["uninformed","unaware","uneducated","clueless","ill-informed","naive","uninstructed","oblivious","ignorant"
  ],
  "indifferent": ["apathetic","uninterested","detached","unconcerned","unmoved","disinterested","neutral","aloof","indifferent"
  ],

  // States of Emotional Balance
  "stressed": ["overwhelmed","strained","pressured","tense","worried","burnt out","frazzled","burdened","stressed"
  ],
  "frustrated": ["irritated","annoyed","exasperated","discouraged","vexed","agitated","bothered","discontented","frustrated"
  ],

  // States of Memory and Cognition
  "remembering": ["recalling","recollecting","retaining","recognizing","reflecting","thinking back","reminiscing","remembering"
  ],
  "forgetful": ["absent-minded","scattered","unmindful","distracted","careless","neglectful","preoccupied","inattentive","forgetful"
  ],
  "lucid": ["clear-headed","sharp","mentally clear","rational","coherent","intelligent","sound-minded","aware","lucid"
  ],
  "foggy": ["confused","hazy","unclear","clouded","obscured","befuddled","muddled","groggy","foggy"
  ],

  // States of Belief and Perception
  "doubtful": ["uncertain","unsure","skeptical","questioning","hesitant","wary","suspicious","disbelieving","doubtful"
  ],
  "optimistic": ["hopeful","positive","cheerful","encouraged","expectant","upbeat","bright","sanguine","optimistic"
  ],
  "pessimistic": ["negative","gloomy","cynical","discouraged","hopeless","doubtful","fatalistic","downhearted","pessimistic"
  ],
  "realistic": ["pragmatic","practical","down-to-earth","rational","logical","reasonable","sensible","grounded","realistic"
  ],
  "idealistic": ["romantic","dreamy","visionary","unrealistic","impractical","utopian","aspirational","optimistic","idealistic"
  ],

  // Mental Activity or Energy Levels
  "alert": ["vigilant","attentive","focused","sharp","ready","on guard","awake","aware","alert"
  ],
  "lethargic": ["sluggish","tired","drowsy","exhausted","slow","inactive","unmotivated","fatigued","lethargic"
  ],
  "energized": ["vitalized","stimulated","invigorated","motivated","enthusiastic","pumped","revitalized","lively","energized"
  ],
  "fatigued": ["exhausted","worn out","drained","weary","tired","depleted","burnt out","beat","fatigued"
  ],

  // States of Mental Clarity
  "clear-minded": ["focused","unclouded","lucid","logical","rational","sharp","mentally alert","aware","clear-minded"
  ],

  // States of Decision-Making
  "decisive": ["determined","resolved","certain","firm","unwavering","clear-cut","unhesitating","strong-willed","decisive"
  ],
  "indecisive": ["hesitant","unsure","uncertain","wavering","doubtful","torn","conflicted","ambivalent","indecisive"
  ],

  // Imaginative or Creative States
  "uninspired": ["uncreative","blocked","stuck","bored","apathetic","lacking ideas","unmotivated","uninventive","uninspired"
  ],

  // Cognitive Flexibility
  "open-minded": ["tolerant","receptive","flexible","broad-minded","accepting","unbiased","willing to consider","open-minded"
  ],
  "closed-minded": ["narrow-minded","rigid","inflexible","stubborn","prejudiced","unreceptive","biased","set in ways","closed-minded"
  ],

  // States of Self-Perception
  "self-aware": ["conscious","mindful","introspective","reflective","thoughtful","cognizant","in tune with self","self-aware"
  ],
  "self-conscious": ["insecure","anxious","embarrassed","aware of others' judgment","uncomfortable","shy","nervous","self-conscious"
  ],

  // States of Learning or Growth
  "engaged": ["involved","interested","active","participating","attentive","immersed","absorbed","curious","engaged"
  ],

  // Rational States
  "logical": ["rational","analytical","clear-headed","reasoned","methodical","systematic","coherent","sensible","logical"
  ],
  "irrational": ["illogical","unreasonable","emotional","impulsive","inconsistent","unthinking","hasty","unwise","irrational"
  ],

  // States of Motivation
  "motivated": ["driven","determined","enthusiastic","inspired","focused","goal-oriented","energetic","ambitious","motivated"
  ],
  "unmotivated": ["disinterested","uninspired","lacking drive","apathetic","lazy","unenergetic","sluggish","listless","unmotivated"
  ],

  // Concrete Nouns
  // Expanded Human and Living Beings
  "people": ["man","woman","child","baby","teenager","doctor","nurse","firefighter","chef","student","professor","athlete","artist","musician","people"
  ],
  "animals": ["dog","cat","elephant","lion","tiger","bear","monkey","kangaroo","eagle","shark","whale","dolphin","butterfly","rabbit","horse","animals"
  ],
  "insects": ["insects","ant","bee","butterfly","spider","mosquito","beetle","ladybug","dragonfly","caterpillar","grasshopper"
  ],

  "body parts": ["body parts","head","arm","leg","hand","eye","ear","nose","mouth","finger","foot","knee","elbow","shoulder","waist","ankle"
  ],

  "furniture": ["furniture","sofa","bed","chair","table","desk","dresser","wardrobe","bookshelf","stool","bench","nightstand"
  ],

  "kitchen items": ["kitchen items","knife","spoon","fork","plate","bowl","pan","cup","mug","glass","frying pan","pot","cutting board","blender"
  ],

  "appliances": ["appliances","refrigerator","microwave","oven","toaster","blender","vacuum cleaner","washing machine","dryer","dishwasher","iron","fan"
  ],

  "tools": ["tools","hammer","screwdriver","wrench","saw","drill","pliers","chisel","axe","shovel","rake","trowel","measuring tape","level","ladder"
  ],

  "electronic devices": ["electronic devices","computer","smartphone","tablet","camera","television","radio","speaker","laptop","printer","router","modem"
  ],

  "clothing": ["clothing","shirt","pants","dress","jacket","hat","scarf","shoes","socks","gloves","belt","coat","shorts","skirt","sweater"
  ],

  "drinks": ["drinks","water","juice","milk","coffee","tea","soda","beer","wine","smoothie","lemonade","cocktail","energy drink"
  ],

  "natural objects": ["natural objects","tree","rock","mountain","river","ocean","lake","flower","grass","sand","leaf","bush","cactus","cloud","soil","stone"
  ],

  "buildings": ["buildings","house","apartment","school","hospital","office","restaurant","hotel","store","library","church","gym","museum","theater"
  ],

  "places": ["places","park","beach","forest","city","village","road","market","farm","bridge","airport","playground","zoo","garden","square","station"
  ],

  "vehicles": ["vehicles","car","bus","bike","truck","airplane","train","boat","motorcycle","helicopter","scooter","subway","taxi","ferry","ship","jet"
  ],

  "materials": ["materials","wood","metal","glass","plastic","paper","stone","clay","brick","cement","leather","fabric","cotton","wool","rubber","iron"
  ],

  "liquids": ["liquids","water","oil","juice","milk","gasoline","paint","wine","syrup","soap","vinegar","alcohol","honey","bleach","ink","detergent"
  ],

  "stationery": ["stationery","pen","pencil","eraser","notebook","ruler","stapler","scissors","marker","paperclip","envelope","highlighter","glue","tape"
  ],

  "sports equipment": ["sports equipment","ball","bat","glove","net","racket","helmet","skates","goggles","swimsuit","whistle","golf club","tennis racket"
  ],

  "gadgets": ["gadgets","smartphone","laptop","tablet","headphones","camera","smartwatch","charger","USB drive","keyboard","mouse","GPS","drone"
  ],

  "infrastructure": ["infrastructure","road","highway","bridge","tunnel","railway","runway","port","station","terminal","dock","crosswalk","intersection"
  ],

  "structures": ["structures","skyscraper","stadium","monument","tower","dam","lighthouse","castle","bridge","fort","pyramid","arena","factory","barn"
  ],

  // Expanded Geographical Features
  "landforms": ["hill","mountain","valley","plateau","island","canyon","desert","volcano","plain","cliff","coastline","waterfall","reef","landforms"
  ],

  "miscellaneous": ["book","bag","key","wallet","lamp","phone","clock","mirror","calendar","remote","wallet","umbrella","box","bottle","pen","miscellaneous"
  ],

  "personal items": ["phone","wallet","key","bag","watch","bracelet","necklace","ring","hat","glasses","umbrella","backpack","purse","personal items"
  ],

  "sports items": ["ball","bat","glove","net","racket","helmet","golf club","skates","swimsuit","goggles","jersey","tennis racket","football","sports items"
  ],

  "school items": ["book","chalk","whiteboard","marker","pen","pencil","desk","notebook","calculator","textbook","ruler","folder","school items"
  ],

  "currency": ["coin","dollar","pound","euro","yen","cent","penny","note","bill","currency"
  ],

  "jobs": ["pilot","writer","lawyer","judge","plumber","electrician","farmer","driver","waiter","barista","salesperson","cleaner","dancer","musician","jobs"
  ],

  "family members": ["mother","father","brother","sister","uncle","aunt","cousin","grandfather","grandmother","niece","nephew","family members"
  ],

  "ingredients": ["tomato","onion","pepper","garlic","lemon","apple","banana","strawberry","cherry","potato","carrot","mushroom","bean","pea","nut","grain","ingredients"
  ],

  "baked goods": ["bread","bagel","croissant","cookie","brownie","cake","muffin","pie","biscuit","donut","roll","tart","scone","baked goods"
  ],

  "dairy products": ["cheese","butter","milk","cream","yogurt","cottage cheese","ice cream","dairy products"
  ],

  "home appliances": ["washing machine","dryer","dishwasher","microwave","oven","refrigerator","freezer","vacuum cleaner","fan","air conditioner","home appliances"
  ],

  "tech devices": ["smartphone","tablet","computer","TV","camera","printer","scanner","speaker","headset","projector","tech devices"
  ],

  "natural elements": ["tree","plant","flower","river","hill","forest","mountain","island","valley","ocean","lake","desert","volcano","natural elements"
  ],

  "celestial bodies": ["star","planet","moon","comet","asteroid","galaxy","sun","satellite","celestial bodies"
  ],

  "games": ["chess","checkers","puzzle","board game","card","domino","dice","toy","video game","puzzle piece","games"
  ],

  "art supplies": ["paint","brush","canvas","crayon","pencil","marker","eraser","sketchbook","easel","palette","scissors","glue","ruler","sculpting tool","art supplies"
  ],

  "musical instruments": ["guitar","piano","drum","violin","flute","saxophone","trumpet","cello","keyboard","harp","tambourine","musical instruments"
  ],

  "travel items": ["passport","ticket","suitcase","backpack","luggage","map","guidebook","compass","train","bus","plane","cruise ship","car","motorcycle","travel items"
  ],

  "footwear": ["shoe","sandal","boot","sneaker","heel","slipper","flip-flop","sock","stocking","footwear"
  ],

  "jewelry": ["ring","bracelet","necklace","earring","watch","brooch","chain","anklet","pin","jewelry"
  ],

  "classroom objects": ["desk","chair","blackboard","whiteboard","book","pen","pencil","notebook","textbook","globe","map","calculator","eraser","classroom objects"
  ],

  "school subjects": ["math","science","history","geography","literature","art","music","physical education","computer science","chemistry","physics","biology","school subjects"
  ],

  // Time and Measurements
  "units of time": ["second","minute","hour","day","week","month","year","decade","century","units of time"
  ],

  "measurements": ["inch","foot","yard","meter","kilometer","mile","gram","pound","kilogram","liter","gallon","cup","ounce","measurements"
  ],

  "office supplies": ["pen","pencil","notebook","stapler","paperclip","folder","envelope","sticker","calendar","clipboard","marker","highlighter","office supplies"
  ],

  "documents": ["report","file","contract","invoice","letter","memo","agenda","receipt","form","brochure","documents"
  ],

  "money types": ["coin","bill","note","dollar","euro","pound","yen","cent","penny","dime","quarter","money types"
  ],

  "media": ["movie","song","book","album","show","concert","magazine","newspaper","video","podcast","media"
  ],

  "celebrations": ["birthday","wedding","anniversary","holiday","graduation","ceremony","festival","party","gala","celebrations"
  ],

  "holidays": ["Christmas","Easter","Thanksgiving","Halloween","New Year's Day","Independence Day","Valentine's Day","holidays"
  ],

  "containers": ["box","bottle","can","jar","bag","basket","bin","carton","tray","cup","glass","containers"
  ],

  "fast": ["quick","rapid","swift","speedy","hasty","brisk","prompt","expeditious","accelerated","fleet-footed","nimble","hurried","breakneck","blazing","high-speed","supersonic","instant","immediate","frenzied","zippy","zooming","lightning-fast","turbocharged","warp-speed","fast-paced","hypersonic","racing","whirlwind","meteoric","jet-powered","high-velocity","fast"
  ],

  "slow": ["leisurely","gradual","delayed","unhurried","lagging","plodding","lazy","sluggish","crawl","snail-paced","poky","slothful","creeping","tedious","dawdling","dragging","prolonged","stagnant","halting","torpid","plodding","glacial","lumbering","dreary","molasses","inert","slogging","deliberate","tardy","slowed-down","unrushed","slow"
  ],

  "big": ["large","huge","massive","enormous","gigantic","immense","vast","colossal","mammoth","tremendous","towering","monstrous","stupendous","gargantuan","hulking","sprawling","bulky","hefty","gigantesque","herculean","giant","behemoth","oversized","outsize","macro","monumental","prodigious","voluminous","swollen","elephantine","oversized","big"
  ],

  "small": ["tiny","minuscule","petite","compact","little","slight","minor","microscopic","puny","diminutive","modest","wee","teensy","slender","shrimpy","narrow","itsy-bitsy","bite-sized","thin","subtle","fine","narrow","undersized","itsy","itsy-bitsy","miniature","sparse","infinitesimal","pocket-sized","slim","delicate","minimal","small"
  ],

  "beautiful": ["pretty","attractive","gorgeous","lovely","stunning","elegant","radiant","charming","exquisite","dazzling","graceful","sublime","bewitching","alluring","glamorous","resplendent","magnificent","divine","ravishing","striking","enchanting","mesmerizing","flawless","delicate","breathtaking","splendid","captivating","ethereal","angelic","perfect","aesthetic","beautiful"
  ],

  "ugly": ["unattractive","plain","hideous","repulsive","unsightly","displeasing","grotesque","homely","frightening","deformed","ghastly","gruesome","monstrous","appalling","unlovely","repugnant","unsightly","disfigured","foul","detestable","hideous","loathsome","vulgar","offensive","nasty","disgusting","ill-favored","misshapen","repellant","crude","frightful","ugly"
  ],

  "strong": ["powerful","robust","sturdy","muscular","tough","resilient","mighty","vigorous","potent","brawny","indomitable","stalwart","unshakable","iron-willed","hardy","durable","forceful","tenacious","vigorous","unbreakable","energetic","dominant","herculean","invincible","formidable","athletic","solid","unflinching","hefty","intense","steadfast","strong"
  ],

  "weak": ["fragile","feeble","frail","delicate","soft","unstable","unsturdy","vulnerable","debilitated","infirm","brittle","powerless","limp","flimsy","puny","rickety","ineffective","weak-willed","helpless","thin","attenuated","insubstantial","withering","susceptible","doddering","timid","breakable","wan","drooping","shaky","weak"
  ],
  "loud": ["noisy","boisterous","raucous","deafening","thunderous","blaring","earsplitting","uproarious","vociferous","cacophonous","loud"
  ],
  "quiet": ["silent","hushed","muted","noiseless","calm","serene","tranquil","peaceful","low-key","subdued","quiet"
  ],
  "expensive": ["costly","high-priced","lavish","pricey","luxurious","premium","exorbitant","valuable","extravagant","pricy","expensive"
  ],
  "cheap": ["inexpensive","affordable","bargain","low-cost","economical","budget","cut-price","discount","reasonable","bargain-basement","cheap"
  ],
  "about": ["regarding","concerning","in relation to","pertaining to","with reference to","about"
  ],
  "above": ["over", "atop", "higher than", "beyond", "on top of", "above"],
  "across": ["over","through","from one side to the other","transversely","crosswise","across"
  ],
  "after": ["following","subsequent to","in the wake of","behind","later than","after"
  ],
  "against": ["opposed to","in opposition to","contrary to","in defiance of","resisting","against"
  ],
  "along": ["beside","by the side of","parallel to","next to","alongside","along"
  ],
  "among": ["amid","in the midst of","surrounded by","between","in the company of","among"
  ],
  "around": ["about","surrounding","encircling","encompassing","near","around"
  ],
  "as": ["like","in the role of","in the capacity of","in the form of","just as","as"
  ],
  "at": ["in", "on", "by", "near", "close to", "at"],
  "before": ["prior to","preceding","ahead of","earlier than","in advance of","before"
  ],
  "behind": ["after","following","in the rear of","at the back of","to the rear of","behind"
  ],
  "below": ["under","beneath","lower than","underneath","downward","below"
  ],
  "beneath": ["under","below","underneath","lower than","at the bottom of","beneath"
  ],
  "beside": ["next to", "adjacent to", "near", "by", "alongside", "beside"],
  "between": ["amid","among","in the middle of","intersecting","connecting","between"
  ],
  "beyond": ["past","outside","further than","on the far side of","above","beyond"
  ],
  "by": ["next to", "near", "beside", "close to", "via", "by"],
  "despite": ["in spite of","notwithstanding","regardless of","even though","though","despite"
  ],
  "down": ["toward the lower part","along","below","descending","lower","down"
  ],
  "during": ["throughout","in the course of","amid","while","through","during"
  ],
  "except": ["excluding","apart from","other than","aside from","save for","except"
  ],
  "for": ["on behalf of","in favor of","in support of","in exchange for","because of","for"
  ],
  "from": ["starting at","out of","away from","originating at","coming from","from"
  ],
  "in": ["inside", "within", "into", "enclosed by", "contained by", "in"],
  "inside": ["within","in","within the confines of","enclosed by","internal to","inside"
  ],
  "into": ["toward", "inside", "within", "in", "entering", "into"],
  "near": ["close to","by","next to","adjacent to","in proximity to","near"
  ],
  "of": ["belonging to", "from", "regarding", "concerning", "related to", "of"],
  "off": ["away from","down from","removed from","detached from","not on","off"
  ],
  "on": ["upon", "above", "over", "resting on", "supported by", "on"],
  "onto": ["upon", "on top of", "toward", "over", "on", "onto"],
  "out": ["outside", "away from", "outward", "beyond", "not inside", "out"],
  "outside": ["beyond","outdoors","external to","outward","exterior","outside"
  ],
  "over": ["above", "on top of", "across", "higher than", "beyond", "over"],
  "since": ["from the time of","after","ever since","subsequent to","following","since"
  ],
  "through": ["via","by means of","across","throughout","in the course of","through"
  ],
  "throughout": ["across","all over","in every part of","from start to finish","through","throughout"
  ],
  "till": ["until", "up to", "before", "pending", "up to the point of", "till"],
  "to": ["toward", "in the direction of", "until", "up to", "as far as", "to"],
  "toward": ["in the direction of","heading for","moving toward","approaching","to","toward"
  ],
  "under": ["beneath","below","underneath","lower than","downward","under"
  ],
  "underneath": ["beneath","below","under","beneath the surface","covered by","underneath"
  ],
  "until": ["up to","till","before","pending","up to the point of","until"
  ],
  "up": ["toward the top", "upward", "elevated", "rising", "ascending", "up"],
  "upon": ["on", "atop", "over", "resting on", "immediately after", "upon"],
  "with": ["alongside","together with","accompanied by","in the company of","in addition to","with"
  ],
  "within": ["inside","in","enclosed by","inside of","contained by","within"
  ],
  "without": ["lacking","minus","devoid of","absent","free from","without"
  ],
  "amid": ["among","in the middle of","surrounded by","within","in the midst of","amid"
  ],
  "amidst": ["in the middle of","among","surrounded by","amid","enclosed by","amidst"
  ],
  "amongst": ["amid","among","in the midst of","surrounded by","between","amongst"
  ],
  "besides": ["apart from","in addition to","aside from","as well as","beyond","besides"
  ],
  "concerning": ["regarding","about","related to","in relation to","with respect to","concerning"
  ],
  "following": ["after","subsequent to","in the wake of","next to","pursuing","following"
  ],
  "in front of": ["before","ahead of","preceding","opposite","facing","in front of"
  ],
  "opposite": ["facing","across from","in front of","against","contrary to","opposite"
  ],
  "regarding": ["about","concerning","in relation to","with respect to","pertaining to","regarding"
  ],
  "towards": ["in the direction of","heading for","moving toward","approaching","to","towards"
  ],
  "unlike": ["different from","in contrast to","dissimilar to","contrary to","distinct from","unlike"
  ],
  "versus": ["against","in opposition to","compared to","opposing","contrasted with","versus"
  ],
  "via": ["by means of", "through", "by way of", "using", "along", "via"],
  "alongside": ["next to", "beside", "adjacent to", "along", "by", "alongside"],
  "next to": ["beside","adjacent to","near","close to","alongside","next to"
  ],
  "per": ["for each","according to","in accordance with","by","as per","per"
  ],
  "round": ["around","surrounding","encircling","circular","about","round"
  ],
  "up to": ["until", "till", "as far as", "reaching", "approaching", "up to"],
  "for the sake of": ["for the benefit of","on behalf of","in the interest of","for the purpose of","for","for the sake of"
  ],
  "on behalf of": ["in place of","in the name of","representing","for","for the benefit of","on behalf of"
  ],
  "at the time of": ["when","during","at","at the moment of","while","at the time of"
  ],
  "as of": ["from","starting at","beginning with","effective from","since","as of"
  ],
  "in the course of": ["during","over the course of","throughout","amid","while","in the course of"
  ],
  "away from": ["from","out of","apart from","separate from","beyond","away from"
  ],
  "out of": ["from", "away from", "beyond", "outside of", "without", "out of"],
  "by way of": ["via","through","using","by means of","through the medium of","by way of"
  ],
  "off of": ["from", "away from", "separate from", "out of", "over", "off of"],
  "across from": ["opposite","facing","on the other side of","across","beyond","across from"
  ],
  "adjacent to": ["next to","beside","close to","near","alongside","adjacent to"
  ],
  "close to": ["near", "adjacent to", "next to", "by", "nearby", "close to"],
  "on top of": ["above", "over", "upon", "atop", "higher than", "on top of"],
  "to the left of": ["on the left","on the left side of","leftward from","on the side of","to the left of"
  ],
  "to the right of": ["on the right","on the right side of","rightward from","on the side of","to the right of"
  ],
  "in the middle of": ["among","between","centered in","in the midst of","at the heart of","in the middle of"
  ],
  "considering": ["in view of","in light of","given","taking into account","in consideration of","considering"
  ],
  "as to": ["regarding","concerning","with respect to","in regard to","about","as to"
  ],
  "in reference to": ["concerning","about","with respect to","regarding","in relation to","in reference to"
  ],
  "in regard to": ["concerning","regarding","with respect to","about","as to","in regard to"
  ],
  "in light of": ["considering","due to","because of","given","in view of","in light of"
  ],
  "with regard to": ["concerning","regarding","about","as for","with respect to","with regard to"
  ],
  "with respect to": ["regarding","concerning","about","in relation to","as to","with respect to"
  ],
  "on account of": ["because of","due to","thanks to","as a result of","due to the fact that","on account of"
  ],
  "because of": ["on account of","due to","thanks to","due to the fact that","as a result of","because of"
  ],
  "due to": ["because of","on account of","as a result of","owing to","thanks to","due to"
  ],
  "according to": ["in accordance with","as per","as stated by","based on","in line with","according to"
  ],
  "in accordance with": ["according to","as per","in line with","consistent with","in agreement with","in accordance with"
  ],
  "despite of": ["despite","in spite of","notwithstanding","regardless of","even though","despite of"
  ],
  "except for": ["except","but for","excluding","apart from","aside from","except for"
  ],
  "in spite of": ["despite","notwithstanding","regardless of","even though","although","in spite of"
  ],
  "notwithstanding": ["notwithstanding","despite","in spite of","regardless of","even though","although"
  ],
  "regardless of": ["regardless of","despite","in spite of","notwithstanding","even though","without considering"
  ],
  "owing to": ["owing to","due to","because of","on account of","thanks to","as a result of"
  ],
  "instead of": ["instead of","in place of","rather than","as opposed to","in lieu of","in substitution for"
  ],
  "thanks to": ["thanks to","due to","because of","on account of","owing to","as a result of"
  ],
  "in place of": ["in place of","instead of","in lieu of","as a substitute for","in replacement of","rather than"
  ],
  "as for": ["as for","regarding","concerning","about","with respect to","in relation to"
  ],
  "as per": ["as per","according to","in accordance with","as stated by","in line with","following"
  ],
  "contrary to": ["contrary to","against","opposite to","in contrast to","in opposition to","as opposed to"
  ],
  "apud": ["apud","near","beside","next to","alongside","in the vicinity of"
  ],
  "barring": ["barring","except","excluding","apart from","but for","other than"
  ],
  "circa": ["circa", "approximately", "around", "about", "roughly", "close to"],
  "cum": ["cum","with","along with","in combination with","together with","as well as"
  ],
  "minus": ["minus", "without", "excluding", "except", "less", "barring"],
  "plus": ["plus", "and", "together with", "along with", "with", "as well as"],
  "qua": ["qua","in the capacity of","as","in the role of","as regards","with respect to"
  ],
  "vis-à-vis": ["vis-à-vis","in relation to","with regard to","concerning","about","in respect of"
  ],
  "pro": ["pro","on behalf of","for","in favor of","supporting","representing"
  ],
  "re": ["re","concerning","about","regarding","in reference to","with regard to"
  ],
  "sans": ["sans","without","lacking","excluding","but for","in the absence of"
  ],
  "post": ["post", "after", "following", "subsequent to", "later", "beyond"],
  "pre": ["pre","before","prior to","in advance of","ahead of","preceding"
  ],
  "amidships": ["amidships","in the middle of","at the center of","in the midst of"
  ],
  "in lieu of": ["in lieu of","instead of","in place of","as a substitute for","in replacement of","rather than"
  ],
  "a la": ["a la","in the style of","in the manner of","after the manner of","in the fashion of","like"
  ],
  "apropos": ["apropos","concerning","about","with respect to","in regard to","related to"
  ],
  "betwixt": ["betwixt","between","among","in the middle of","in between","interposed between"
  ],
  "but for": ["but for","except for","barring","excluding","aside from","other than"
  ],
  "ere": ["ere", "before", "prior to", "ahead of", "preceding", "earlier than"],
  "lest": ["lest","for fear that","so that not","to prevent","in case","in order to avoid"
  ],
  "whereto": ["whereto","to which","to that","toward which","to what","to where"
  ],
  "wheresoever": ["wheresoever","wherever","anywhere","at any place","in any location"
  ],
  "unto": ["unto", "to", "towards", "into", "for", "toward"],
  "athwart": ["athwart","across","over","through","against","in opposition to"
  ],
  "aboard": ["aboard", "on board", "on", "in", "within", "inside"],
  "anent": ["anent","concerning","regarding","about","with respect to","in relation to"
  ],
  "anti": ["anti","against","opposed to","in opposition to","counter to","resistant to"
  ],
  "apropos of": ["apropos of","concerning","about","regarding","in reference to","with respect to"
  ],
  "cross": ["cross","against","opposite to","in contrast with","in opposition to","counter to"
  ],
  "mid": ["mid","in the middle of","amidst","between","among","at the center of"
  ],
  "on board": ["on board", "aboard", "on", "within", "inside", "in"],
  "pace": ["pace","despite","in contrast to","against","opposite to","with respect to"
  ],
  "round about": ["round about","around","near","close to","in the vicinity of","about"
  ],
  "than": ["than","compared to","in comparison with","as opposed to","in contrast to","more than"
  ],
  "thru": ["thru", "through", "by", "across", "along", "over"],
  "withal": ["withal","in addition","besides","furthermore","moreover","as well"
  ],
  "yon": ["yon", "that", "those", "over there", "yonder", "there"],
  "yonder": ["yonder","over there","yon","that place","there","at a distance"
  ],
  // Other common words
  "I": ["me", "myself", "I"],
  "you": ["yourself", "yourselves", "you"],
  "he": ["him", "himself", "he"],
  "she": ["her", "herself", "she"],
  "it": ["itself", "it"],
  "we": ["us", "ourselves", "we"],
  "they": ["them", "themselves", "they"],
  "mine": ["my own", "belonging to me", "mine"],
  "yours": ["your own", "belonging to you", "yours"],
  "his": ["belonging to him", "his"],
  "hers": ["belonging to her", "hers"],
  "its": ["belonging to it", "its"],
  "ours": ["belonging to us", "ours"],
  "theirs": ["belonging to them", "theirs"],
  "myself": ["I", "I myself", "myself"],
  "yourself": ["you", "you yourself", "yourself"],
  "himself": ["he", "he himself", "himself"],
  "herself": ["she", "she herself", "herself"],
  "itself": ["it", "it itself", "itself"],
  "ourselves": ["we", "we ourselves", "ourselves"],
  "themselves": ["they", "they themselves", "themselves"],
  "who": ["which", "that", "who"],
  "what": ["which", "whatever", "what"],
  "which": ["what", "who", "which"],
  "whose": ["belonging to whom", "of whom", "whose"],
  "that": ["which", "who", "that"],
  "this": ["these", "the following", "this"],
  "these": ["this", "those", "these"],
  "those": ["this", "these", "those"],
  "anyone": ["anybody", "anyone at all", "anyone"],
  "someone": ["somebody", "a person", "someone"],
  "everyone": ["everybody", "all people", "everyone"],
  "no one": ["nobody", "no person", "no one"],
  "anything": ["any item", "something", "anything"],
  "everything": ["all things", "every item", "everything"],
  "nothing": ["no thing", "not a thing", "nothing"],
  "and": ["as well as", "along with", "and"],
  "but": ["yet", "except", "but"],
  "or": ["alternatively", "either", "or"],
  "nor": ["neither", "not either", "nor"],
  "so": ["therefore", "hence", "so"],
  "yet": ["however", "still", "yet"],
  "although": ["though", "even though", "although"],
  "because": ["due to", "as", "because"],
  "unless": ["if not", "except if", "unless"],
  "while": ["during", "as long as", "while"],
  "even though": ["although", "though", "even though"],
  "if": ["in case", "provided that", "if"],
  "though": ["although", "even though", "though"],
  "when": ["whenever", "at the time that", "when"],
  "once": ["as soon as", "when", "once"],
  "whereas": ["while", "although", "whereas"],
  "quickly": ["fast", "rapidly", "quickly"],
  "slowly": ["gradually", "deliberately", "slowly"],
  "very": ["extremely", "highly", "very"],
  "quite": ["fairly", "somewhat", "quite"],
  "really": ["truly", "actually", "really"],
  "always": ["consistently", "forever", "always"],
  "never": ["at no time", "not ever", "never"],
  "often": ["frequently", "regularly", "often"],
  "just": ["only", "merely", "just"],
  "soon": ["shortly", "in a little while", "soon"],
  "already": ["earlier", "beforehand", "already"],
  "now": ["at this moment", "currently", "now"],
  "here": ["in this place", "at this location", "here"],
  "there": ["in that place", "at that location", "there"],
  "everywhere": ["all over", "in all places", "everywhere"],
  "too": ["also", "as well", "too"],
  "enough": ["sufficiently", "adequately", "enough"],
  "extremely": ["exceptionally", "highly", "extremely"],
  "suddenly": ["abruptly", "unexpectedly", "suddenly"],
  "only": ["exclusively", "just", "only"],
  "perhaps": ["maybe", "possibly", "perhaps"],
  "absolutely": ["completely", "entirely", "absolutely"],
  "almost": ["nearly", "close to", "almost"],
  "forever": ["eternally", "for all time", "forever"],
  "new": ["recent", "modern", "new"],
  "old": ["aged", "ancient", "old"],
  "tall": ["high", "lofty", "tall"],
  "short": ["small", "brief", "short"],
  "large": ["big", "huge", "large"],
  "tiny": ["small", "minuscule", "tiny"],
  "kind": ["generous", "compassionate", "kind"],
  "funny": ["humorous", "amusing", "funny"],
  "intelligent": ["smart", "bright", "intelligent"],
  "hard": ["tough", "rigid", "hard"],
  "soft": ["gentle", "delicate", "soft"],
  "easy": ["simple", "straightforward", "easy"],
  "difficult": ["challenging", "hard", "difficult"],
  "warm": ["hot", "mild", "warm"],
  "walk": ["stroll", "wander", "walk"],
  "know": ["understand", "be aware of", "know"],
  "want": ["desire", "wish for", "want"],
  "need": ["require", "demand","need", "must", "have to"],
  "hear": ["listen to", "perceive", "hear"],
  "do": ["perform", "carry out", "do"],
  "have": ["possess", "own", "have"],
  "dislike": ["hate", "detest", "dislike"],
  "hate": ["despise", "loathe", "hate"],
  "fix": ["repair", "mend", "fix"],
  "play": ["entertain", "enjoy", "play"],
  "watch": ["observe", "view", "watch"],
  "ask": ["inquire", "question", "ask"],
  "tell": ["inform", "narrate", "tell"],
  "feel": ["experience", "sense", "feel"],
  "believe": ["think", "accept", "believe"],
  "understand": ["comprehend", "grasp", "understand"],
  "oh": ["wow", "ah", "oh"],
  "wow": ["amazing", "incredible", "wow"],
  "ouch": ["ow", "ah", "ouch"],
  "uh": ["um", "er", "uh"],
  "hmm": ["huh", "interesting", "hmm"],
  "hey": ["hi", "hello", "hey"],
  "ah": ["oh", "wow", "ah"],
  "ahh": ["oh", "wow", "ahh"],
  "oops": ["sorry", "my bad", "oops"],
  "oh no": ["uh-oh", "whoops", "oh no"],
  "yay": ["hooray", "hurrah", "yay"],
  "the": ["this", "that", "the"],
  "a": ["one", "an", "a"],
  "an": ["a", "one", "an"],
  "all": ["every", "entire", "all"],
  "some": ["a few", "several", "some"],
  "many": ["numerous", "countless", "many"],
  "few": ["a small number", "several", "few"],
  "several": ["a few", "many", "several"],
  "each": ["every", "individually", "each"],
  "every": ["each", "all", "every"],
  "no": ["none", "not any", "no"],
  "none": ["nothing", "no one", "none"],
  "any": ["some", "a few", "any"],
  "much": ["a lot", "plenty", "much"],
  "most": ["majority", "greater part", "most"],
  "little": ["small", "insignificant", "little"],
  "more": ["additional", "extra", "more"],
  "less": ["fewer", "smaller", "less"],
  "too much": ["excessive", "overabundant", "too much"],
  "plenty": ["ample", "sufficient", "plenty"],
  "my": ["mine", "my own", "my"],
  "your": ["yours", "your own", "your"],
  "her": ["hers", "her own", "her"],
  "our": ["ours", "our own", "our"],
  "their": ["theirs", "their own", "their"],
  "another": ["one more", "an additional", "another"],
  "one": ["a", "single", "one"],
  "two": ["a pair", "couple", "two"],
  "both": ["two", "the pair of them", "both"],
  "amazing": ["incredible", "fantastic", "amazing"],
  "fantastic": ["amazing", "great", "fantastic"],
  "great": ["wonderful", "fantastic", "great"],
  "excellent": ["outstanding", "great", "excellent"],
  "wonderful": ["amazing", "fantastic", "wonderful"],
  "incredible": ["unbelievable", "amazing", "incredible"],
  "unbelievable": ["incredible", "astonishing", "unbelievable"],
  "awful": ["terrible", "dreadful", "awful"],
  "horrendous": ["awful", "dreadful", "horrendous"],
  "disappointing": ["unsatisfactory", "unpleasant", "disappointing"],
  "shocking": ["surprising", "startling", "shocking"],
  "surprising": ["shocking", "unexpected", "surprising"],
  "protect": ["defend","safeguard","shield","guard","preserve","safe","secure","protect"
  ],
  "defend": ["protect", "guard", "safeguard", "shield", "secure", "defend"],
  "shield": ["protect", "guard", "defend", "cover", "safeguard", "shield"],
  "guard": ["protect", "defend", "shield", "watch over", "secure", "guard"],
  "secure": ["protect", "safeguard", "defend", "make safe", "ensure", "secure"],
  "preserve": ["protect","maintain","conserve","safeguard","defend","preserve"
  ],
  "safeguard": ["protect","defend","shield","preserve","secure","safeguard"
  ],

  // Modal verbs
  "can": ["can", "could", "able to"], // "can" and "could" for ability, "able to" for formal contexts
  "may": ["may", "might", "could"], // "may" and "might" for permission/possibility
  "will": ["will", "would", "shall"], // "will" for future, "would" for conditional, "shall" for formal contexts
  "shall": ["shall", "will"], // "shall" is more formal, "will" for general use
  "must": ["must", "have to", "need to"], // "must" for necessity, "have to" and "need to" for obligation
  "ought to": ["ought to", "should", "must"], // "ought to" for advice, "should" and "must" for obligation
  "dare": ["dare", "challenge"], // "dare" for challenging or risk-taking
  "used to": ["used to", "would", "habitually"], // "used to" for past habits, "would" for repetitive past actions

};
