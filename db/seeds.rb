# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

["Avant-Garde", "Blues", "Blues rock", "Brazilian Music", "Country",
 "Easy listening", "Electronic", "Folk rock", "Modern folk", "Hip Hop",
 "Jazz", "Pop", "Psychedelic rock", "R&B", "Rock", "Punk rock", "Rock and roll", "Soul", "Ska"].each do |genre_name|
  Genre.where(name: genre_name).first_or_create!
end

user = User.where(email: "user@example.com").first_or_create!(password: "qwerty", password_confirmation: "qwerty")

Album.where(
    name: "The White Album",
    artist: "The Beatles",
    label: "Apple",
    released_on: Date.parse("22 November 1968"),
    description: "They wrote the songs while on retreat with the Maharishi Mahesh Yogi in India, taking a break from the celebrity whirl. As John Lennon later said, \"We sat in the mountains eating lousy vegetarian food and writing all these songs.\" They came back with more great tunes than they could fit on a single LP, and competed fiercely during the sessions. \"I remember having three studios operating at the same time,\" George Harrison recalled. \"Paul was doing some overdubs in one, John was in another, and I was recording some horns or something in a third.\" The sessions became so tense that Ringo Starr quit the band in frustration for two weeks. Yet the creative tension resulted in one of the most intense and adventurous rock albums ever made. Lennon pursued his hard-edged vision into the cynical wit of \"Sexy Sadie\" and \"Happiness Is a Warm Gun,\" but also infused \"Julia\" and \"Dear Prudence\" with childlike yearning. Paul McCartney\'s playful pop energy came through on his inversion of Chuck Berry\'s American values, \"Back in the U.S.S.R.,\" and he showed off his raucous side in \"Helter Skelter.\" Harrison\'s spiritual yearning led him to \"Long, Long, Long\" and \"While My Guitar Gently Weeps,\" featuring a guest guitar solo from Eric Clapton. Even Starr contributed his first original, the country-tinged \"Don\'t Pass Me By.\" \"I think it was a very good album,\" said McCartney. \"It stood up, but it wasn\'t a pleasant one to make.\"",
    genre_id: Genre.find_by_name("Rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://www.stanford.edu/group/artsreview/cgi-bin/wordpress/wp-content/uploads/2011/05/The-Beatles-%E2%80%93-White-Album.jpg")

Album.where(
    name: "Blonde on Blonde",
    artist: "Bob Dylan",
    label: "Columbia",
    released_on: Date.parse("May 16, 1966"),
    description: "Released on May 16th, 1966, rock\'s first studio double LP by a major artist was, as Dylan declared in 1978, \"the closest I ever got to the sound I hear in my mind... that thin, that wild-mercury sound.\" There is no better description of the album\'s manic brilliance. After several false-start sessions in New York in the fall of 1965 and January 1966 with his killer road band the Hawks – \"One of Us Must Know (Sooner or Later)\" was the only keeper – Dylan blazed through the rest of Blonde on Blonde\'s 14 tracks in one four-day run and one three-day run at Columbia\'s Nashville studios in February and March 1966. The pace of recording echoed the amphetamine velocity of Dylan\'s songwriting and touring schedule at the time. But the combined presence of trusted hands like organist Al Kooper and Hawks guitarist Robbie Robertson with expert local sessionmen including drummer Kenneth ­Buttrey and pianist Hargus \"Pig\" Robbins created an almost contradictory magnificence: a tightly wound tension around Dylan\'s quicksilver language and incisive singing in barrelhouse surrealism such as \"Rainy Day Women #12 & 35\" and \"Stuck Inside of Mobile With the Memphis Blues Again,\" the hilarious Chicago-style blues \"Leopard-Skin Pill-Box Hat\" and the scornful, fragile \"Just Like a Woman,\" still his greatest ballad.",
    genre_id: Genre.find_by_name("Rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://24.media.tumblr.com/tumblr_m5ezalQaRG1qeqaw1o1_1280.jpg")

Album.where(
    name: "London Calling",
    artist: "The Clash",
    label: "CBS",
    released_on: Date.parse("14 December 1979"),
    description: "Released on May 16th, 1966, rock\'s first studio double LP by a major artist was, as Dylan declared in 1978, \"the closest I ever got to the sound I hear in my mind... that thin, that wild-mercury sound.\" There is no better description of the album\'s manic brilliance. After several false-start sessions in New York in the fall of 1965 and January 1966 with his killer road band the Hawks – \"One of Us Must Know (Sooner or Later)\" was the only keeper – Dylan blazed through the rest of Blonde on Blonde\'s 14 tracks in one four-day run and one three-day run at Columbia\'s Nashville studios in February and March 1966. The pace of recording echoed the amphetamine velocity of Dylan\'s songwriting and touring schedule at the time. But the combined presence of trusted hands like organist Al Kooper and Hawks guitarist Robbie Robertson with expert local sessionmen including drummer Kenneth ­Buttrey and pianist Hargus \"Pig\" Robbins created an almost contradictory magnificence: a tightly wound tension around Dylan\'s quicksilver language and incisive singing in barrelhouse surrealism such as \"Rainy Day Women #12 & 35\" and \"Stuck Inside of Mobile With the Memphis Blues Again,\" the hilarious Chicago-style blues \"Leopard-Skin Pill-Box Hat\" and the scornful, fragile \"Just Like a Woman,\" still his greatest ballad.",
    genre_id: Genre.find_by_name("Punk rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://midnightpunk.files.wordpress.com/2012/06/the-clash-london-calling1.jpg")

Album.where(
    name: "Exile on Main Street",
    artist: "The Rolling Stones",
    label: "Rolling Stones",
    released_on: Date.parse("12 May 1972"),
    description: "A dirty whirl of blues and boogie, the Rolling Stones\' 1972 double LP \"was the first grunge record,\" guitarist Keith Richards crowed proudly in a 2002 interview. But inside the deliberately dense squall – Richards\' and Mick Taylor\'s dogfight riffing, the lusty jump of the Bill Wyman-Charlie Watts rhythm engine, Mick Jagger\'s caged-­animal bark and burned-soul croon – is the Stones\' greatest album and Jagger and Richards\' definitive songwriting statement of outlaw pride and dedication to grit. In the existential shuffle \"Tumbling Dice,\" the exhausted country beauty \"Torn and Frayed\" and the whiskey-soaked uplift of \"Shine a Light,\" you literally hear the Stones in exile: working at Richards\' villa in the South of France, and on the run from media censure, British drug police (Jagger and Richards already knew the view from behind bars) and the country\'s onerous tax code. Exile is rife with allusions to their outsider status: The album\'s cover is a collage of freakish American characters, and on \"Sweet Black Angel\" they toast imprisoned activist Angela Davis – one set of renegades to another. The music rattles like battle but also swings with clear purpose on songs like \"Rocks Off\" and \"All Down the Line.\" As Richards explained, \"The Stones don\'t have a home anymore – hence the Exile – but they can still keep it together. Whatever people throw at us, we can still duck, improvise, overcome.\" Great example: Richards recorded his jubilant romp \"Happy\" with just producer Jimmy Miller on drums and saxman Bobby Keys – while waiting for the other Stones to turn up for work. Exile on Main Street is the Stones at their fighting best, armed with the blues, playing to win.",
    genre_id: Genre.find_by_name("Rock and roll"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://antoniocdelaserna.files.wordpress.com/2010/05/exile-on-main-streets.jpg")

Album.where(
    name: "What's Going On",
    artist: "Marvin Gaye",
    label: "Tamla",
    released_on: Date.parse("May 21, 1971"),
    description: "\"In 1969 or 1970, I began to re-evaluate my whole concept of what I wanted my music to say,\" Marvin Gaye said. \"I was very much affected by letters my brother was sending me from Vietnam, as well as the social situation here at home. I realized that I had to put my own fantasies behind me if I wanted to write songs that would reach the souls of people. I wanted them to take a look at what was happening in the world.\" The masterpiece that followed Gaye\'s awakening revolutionized black music. From its rich, string-suffused grooves to its boundless sense of possibility, What\'s Going On is the Sgt. Pepper of soul. Gaye was determined to shatter Motown\'s pop formula and address pressing social issues. Motown founder Berry Gordy was not pleased. He claimed that \"What\'s Going On\" was the worst song he had ever heard. As for \"Mercy Mercy Me (The Ecology),\" Gordy asserted that he didn\'t even know what the word \"ecology\" meant. Gaye responded that he would never record for Motown again unless \"What\'s Going On\" was released as a single. After initially being rejected by Motown\'s quality-control committee, it was; when the song became a Top Five hit, the album – and a burst of socially conscious music from Motown – followed soon after. Working amid a haze of marijuana smoke, Gaye made one intuitively brilliant decision after another – from letting the tapes roll as his friends mingled to recording the rehearsal exercises of saxophonist Eli Fontaine. When Fontaine told Gaye that he had just been goofing around, Gaye replied, \"Well, you goof exquisitely. Thank you.\" And that\'s how the plaintive saxophone line that announces What\'s Going On came to be.",
    genre_id: Genre.find_by_name("Soul"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://images1.buymusichere.net/images/universal/222/04400640222.jpg")

Album.where(
    name: "Rubber Soul",
    artist: "The Beatles",
    label: "Parlophone",
    released_on: Date.parse("3 December 1965"),
    description: "In 1965, radios were abuzz with such groundbreaking singles as \"(I Can\'t Get No) Satisfaction\" and \"Like a Rolling Stone.\" That December, the Beatles met their peers\' challenge head-on with Rubber Soul, a stunning collection that preserved the taut pop focus of the band\'s earlier LPs while introducing newfound sophistication and depth. Producer George Martin described Rubber Soul as \"the first album to present a new, growing Beatles to the world,\" and so it was. The moptops were evolving in remarkable ways. \"Drive My Car\" is a comic character study of a sort not previously in the Beatles\' repertoire. More profoundly, however, Bob Dylan\'s influence suffuses the album, accounting for the tart emotional tone of \"Norwegian Wood,\" \"I\'m Looking Through You,\" \"You Won\'t See Me\" and \"If I Needed Someone.\" (Dylan would return the compliment the following year, when he offered his own version of \"Norwegian Wood\" – titled \"4th Time Around\" – on Blonde on Blonde, and reportedly made John Lennon paranoid.) Lennon\'s \"Nowhere Man,\" which he later acknowledged as a depressed self-portrait, and the beautifully reminiscent \"In My Life\" both reflect the more serious and personal style of songwriting that Dylan had suddenly made possible.",
    genre_id: Genre.find_by_name("Folk rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://images.coveralia.com/audio/t/The_Beatles-Rubber_Soul-Frontal.jpg")

Album.where(
    name: "Highway 61 Revisited",
    artist: "Bob Dylan",
    label: "Columbia",
    released_on: Date.parse("August 30, 1965"),
    description: "Bruce Springsteen described the beginning of \"Like a Rolling Stone,\" the opening song on Highway 61 Revisited, as the \"snare shot that sounded like somebody\'d kicked open the door to your mind.\" Folk singer Phil Ochs was even more rhapsodic about the LP: \"It\'s impossibly good... How can a human mind do this?\" Recorded in a staggering six days, Highway 61 Revisited – named after the road that runs from Bob Dylan\'s home state of Minnesota down through the Mississippi Delta – is one of those albums that changed everything. In and of itself, \"Like a Rolling Stone,\" rumored to be about Andy Warhol acolyte Edie Sedgwick, forever altered the landscape of popular music – its \"vomitiﬁc\" flow (Dylan\'s term), literary ambition and sheer length (6:13) shattered limitations of every kind. \"Ballad of a Thin Man\" delivered the definitive Sixties comment on the splintering hip-straight fault line: \"Something is happening here, but you don\'t know what it is/Do you, Mister Jones?\" If anyone questioned whether or not Dylan had truly  \"gone electric,\" the roaring rock & roll of  \"From a Buick 6\" and \"Tombstone Blues\" – powered by guitarist Mike Bloomﬁeld – left no doubt.",
    genre_id: Genre.find_by_name("Blues rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://24.media.tumblr.com/tumblr_mapnqjyKvl1r3rtqwo1_1280.jpg")

Album.where(
    name: "Revolver",
    artist: "The Beatles",
    label: "Parlophone",
    released_on: Date.parse("5 August 1966"),
    description: "\"I don\'t see too much difference between Revolver and Rubber Soul,\" George Harrison once said. \"To me, they could be Volume One and Volume Two.\" Revolver extends the more adventurous aspects of its predecessor – its introspection, its nascent psychedelia, its fascination with studio artistry – into a dramatic statement of generational possibility. The album, which was released in August 1966, made it thrillingly clear that what we now think of as \"the Sixties\" was fully – and irreversibly – under way. The most innovative track on the album is John Lennon\'s \"Tomorrow Never Knows.\" Attempting to distill an LSD trip into a three-minute song, Lennon borrowed lyrics from Timothy Leary\'s version of The Tibetan Book of the Dead, and recorded his vocal to sound like \"the Dalai Lama singing from the highest mountaintop.\" Tape loops, a backward guitar part (Paul McCartney\'s blistering solo on \"Taxman,\" in fact) and a droning tamboura completed the experimental effect, and the song proved hugely influential. For his part, on \"Eleanor Rigby\" and \"For No One,\" McCartney mastered a strikingly mature form of art song, and Harrison, with \"Taxman,\" \"I Want to Tell You\" and \"Love You To,\" challenged Lennon-McCartney\'s songwriting dominance.",
    genre_id: Genre.find_by_name("Psychedelic rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://wordsformusic.files.wordpress.com/2012/07/revolver.jpg")

Album.where(
    name: "Pet Sounds",
    artist: "The Beach Boys",
    label: "Capitol",
    released_on: Date.parse("May 16, 1966"),
    description: "\"Who\'s gonna hear this shit?\" Beach Boys singer Mike Love asked the band\'s resident genius, Brian Wilson, in 1966, as Wilson played him the new songs he was working on. \"The ears of a dog?\" But Love\'s contempt proved oddly useful: \"Ironically,\" Wilson observed, \"Mike\'s barb inspired the album\'s title.\" Barking dogs – Wilson\'s dog Banana among them, in fact – are prominent among the found sounds on the album. The Beatles made a point of echoing them on Sgt. Pepper\'s Lonely Hearts Club Band – an acknowledgment that Pet Sounds was the inspiration for the Beatles\' masterpiece. That gesture actually completed a circle of influence: Wilson initially conceived of Pet Sounds as an effort to top the Beatles\' Rubber Soul. With its vivid orchestration, lyrical ambition, elegant pacing and thematic coherence, Pet Sounds invented – and in some sense perfected – the idea that an album could be more than the sum of its parts. When Wilson sang, \"Wouldn\'t it be nice if we were older?\" on the magnificent opener, he wasn\'t just imagining a love that could evolve past high school; he was suggesting a new grown-up identity for rock & roll music itself.",
    genre_id: Genre.find_by_name("Psychedelic rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://3.bp.blogspot.com/-MbBKgdehPbo/T5B8HZKrNQI/AAAAAAAAEZ4/LloDVV4UleY/s1600/the-beach-boys-pet-sounds-front.jpg")

Album.where(
    name: "Sgt. Pepper's Lonely Hearts Club Band",
    artist: "The Beatles",
    label: "Abbey Road",
    released_on: Date.parse("1 June 1967"),
    description: "Sgt. Pepper\'s Lonely Hearts Club Band is the most important rock & roll album ever made, an unsurpassed adventure in concept, sound, songwriting, cover art and studio technology by the greatest rock & roll group of all time. From the title song\'s regal blasts of brass and fuzz guitar to the orchestral seizure and long, dying piano chord at the end of \"A Day in the Life,\" the 13 tracks on Sgt. Pepper\'s Lonely Hearts Club Band are the pinnacle of the Beatles\' eight years as recording artists. John Lennon, Paul McCartney, George Harrison and Ringo Starr were never more fearless and unified in their pursuit of magic and transcendence.",
    genre_id: Genre.find_by_name("Psychedelic rock"),
    user_id: user
).first_or_create!(remote_cover_image_url: "http://math.mercyhurst.edu/~griff/sgtpepper/images/sgtpepper_cover.jpg")