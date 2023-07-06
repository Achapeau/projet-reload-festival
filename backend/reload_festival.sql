DROP TABLE IF EXISTS artists_descriptions;

CREATE TABLE
    artists_descriptions (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        real_name VARCHAR(100),
        description TEXT NOT NULL,
        origin VARCHAR(100) NOT NULL,
        day VARCHAR(10) NOT NULL,
        hour VARCHAR(10),
        stage VARCHAR(25) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
    artists_descriptions (
        name,
        real_name,
        description,
        origin,
        day,
        hour,
        stage
    )
VALUES (
        'Armin van Buuren',
        '',
        'C''est un homme animé d''une passion débridée et implacable pour la musique. Armin van Buuren est un perfectionniste né, qui s''efforce de rester au sommet de la scène qu''il a contribué à construire. Porte-drapeau du mouvement trance, il est l''une des figures les plus influentes de l''EDM dans le monde. Même s''il mène une vie extraordinaire en tant que l''un des DJ les plus populaires au monde, il est toujours resté un homme terre-à-terre. Armin van Buuren est constamment en mouvement, qu''il crée de la musique dans son studio ou qu''il se rende à son prochain concert dans un club haut de gamme ou à un festival dans le monde entier.',
        'Né à Leyde, Pays-Bas',
        'Samedi',
        '21h30',
        'Flying High'
    ), (
        'Calvin Harris',
        'Adam Richard Wiles',
        'Le producteur, DJ et auteur-compositeur Calvin Harris est la figure de proue de la musique de danse moderne, ayant battu des records du monde et dominé les palmarès. Il a enregistré plus de 35 milliards de streams audio et vidéo au cours de sa carrière, ce qui fait de lui l''un des artistes les plus regardés sur YouTube et l''un des plus grands artistes de Sony Music en matière de streaming. Calvin a collaboré avec des artistes internationaux tels que Frank Ocean, Pharrell Williams, Rihanna, The Weeknd et Travis Scott, pour n''en citer que quelques-uns. Son travail a été récompensé par de nombreux prix et nominations, dont 14 nominations aux MTV VMA et 2 victoires, 5 nominations aux Grammy Awards et une victoire aux Grammy Awards 2013 dans la catégorie Meilleur clip vidéo pour ''We Found Love''.',
        'Né à Dumfries, Ecosse',
        'Dimanche',
        '21h30',
        'Flying High'
    ), (
        'Hardwell',
        'Robbert van de Corput',
        'Hardwell est un disc jockey et producteur house et électronique néerlandais. Il s''illustre dans les genres electro house, EDM et big room. En 2008, il se fait connaître grâce à son bootleg Show Me Love vs. Be de Robin S., devenu un hit dans les clubs à travers le monde, puis repris par Michael Mind. Il produira par la suite de nombreux singles diffusés dans les clubs : Spaceman, Encoded, Cobra, Apollo mais aussi Zero 76 en collaboration avec Tiësto. En 2010, il crée son propre label Revealed Recordings. Avec Alesso, Deniz Koyu et R3hab, Hardwell a été nommé révélation 2011 par MTV. Après avoir fait une entrée remarquable à la 24e position dans le Top 100 DJ du DJ Mag en 2011, il se classe 6e l''année suivante puis devient premier en 2013, place qu''il conserve en 2014, devenant le plus jeune DJ de l''histoire du classement à monter sur la première marche du podium (jusqu''en 2016 où Martin Garrix devient numéro 1 à l''âge de 20 ans). En 2015, il perd une place au classement, il se retrouve 2e et s''est fait devancer par les frères belges Dimitri Vegas & Like Mike. Il sort chaque année des compilations nommées Revealed, du nom de son label. Son premier album studio United We Are sort le 23 janvier 2015. En octobre 2016, après sa 3e place au Top 100 DJ Mag, Hardwell critique ce classement qui, selon lui ne représente pas réellement le talent des artistes mais seulement leur popularité. En octobre 2018, il marque une pause à sa carrière de DJ pour une durée indéterminée après son dernier show ''All Ages'' lors de l''Amsterdam Dance Event',
        'Né à Breda, Pays-Bas',
        'Samedi',
        '23h00',
        'Flying High'
    ), (
        'ILLENIUM',
        'Nicholas D. Miller',
        'Le producteur ILLENIUM, basé à Denver, est l''un des artistes électroniques crossover les plus populaires aujourd''hui, en tête des palmarès dance américains, avec plus de 5 milliards de streams et des têtes d''affiche dans les plus grands festivals du monde.  Après son premier album en 2016, '' Ashes '', ILLENIUM est entré dans le grand public avec son album de 2017, '' Awake '', qui comprend ses classiques '' Crawl Outta Love '', '' Fractures '' et '' Feel Good '', avec Gryffin ft. Daya. Succès critique et commercial, ''Awake'' s''est classé en tête du Top Electronic Albums Chart d''iTunes dans 12 pays avec +100M de streams.  En 2019, ILLENIUM a sorti '' Ascend '', son troisième album complet et son premier grand label. L''une des plus grandes sorties électroniques de l''année (+1B streams collectifs), l''album s''est classé en tête du Top Dance/Electronic Albums chart du Billboard et s''est assuré une place dans le Top 20 du Billboard 200. L''album comprend les titres phares ''Takeaway'' avec The Chainsmokers ft. Lennon Stella, ''Good Things Fall Apart'' avec Jon Bellion, ''Crashing'' avec Bahari, ''In Your Arms'' avec X Ambassadors et ''Take You Down'', qui relate ses combats passés contre la toxicomanie.  Reconnu comme l''un des meilleurs artistes dance/électronique des années 2010 par Billboard, ILLENIUM donne vie à sa musique dynamique grâce à son spectacle, qui a dominé des festivals tels que Coachella, Lollapalooza, Bonnaroo et EDC. Son Ascend Tour 2019, avec un groupe de cinq musiciens, a fait salle comble dans des lieux emblématiques comme le Madison Square Garden (NYC), le STAPLES Center (L.A.) et trois nuits consécutives au Red Rocks Amphitheatre (Denver).',
        'Né à Downers Grove, Illinois, USA',
        'Samedi',
        '14h00',
        'Flying High'
    ), (
        'Kygo',
        'Kyrre Gørvell-Dahll',
        'Que ce soit derrière le piano de son studio ou en tête d''affiche d''un festival à guichets fermés, Kygo réaffirme tranquillement son statut de talent prodigieux, de producteur avant-gardiste, de DJ dynamique et de superstar mondiale influente. Le musicien norvégien né Kyrre Gørvell-Dahll s''est présenté pour la première fois en 2013 et est tranquillement devenu l''un des faiseurs de tubes les plus omniprésents au monde, tout en émergeant comme l''''Artiste de l''année 2015'' de Spotify. ''Firestone'' ft. Conrad Sewell et ''Stole the Show'' ft. Parson James ont contribué à faire de Kygo ''l''artiste le plus rapide à atteindre 1 milliard de streams sur Spotify''. Dans le sillage de son premier album complet Cloud Nine, qui a cartonné en 2016, il a livré des performances mémorables dans The Late Late Show with James Corden, Good Morning America, The Tonight Show Starring Jimmy Fallon, et The Ellen DeGeneres Show. En outre, il a notamment interprété ''Carry Me'' lors de la cérémonie de clôture des Jeux olympiques de Rio.',
        'Né à Singapour',
        'Samedi',
        '15h30',
        'Flying High'
    ), (
        'Martin Garrix',
        'Martijn Garritsen',
        'Martin Garrix - c''est le nom de l''un des plus jeunes et des plus brillants DJ et producteur de la scène pop et électronique. Garrix a fait profiter le monde entier de son expertise en jouant en tête d''affiche de festivals, en pénétrant de nouveaux territoires et en collaborant avec de grandes stars telles que Dua Lipa, Khalid, Bono et The Edge. Gravissant encore un échelon sur l''échelle de la célébrité, il est le fondateur de son propre label (STMPD RCRDS), propriétaire d''un complexe de studios à Amsterdam et mentor d''artistes en devenir. Aujourd''hui âgé d''une vingtaine d''années, sa carrière a débuté par la sortie du single ''Animals'' en 2013. Ce titre revigorant et dansant s''est hissé au sommet des charts dans le monde entier, modifiant au final le statut de ce que l''on pourrait considérer comme de la musique populaire. Poursuivant son voyage à la conquête du grand public au fil des ans, Garrix nous a offert des disques dance et pop infectieux et hymniques, ainsi qu''une série de collaborations mémorables : ''In The Name Of Love'' avec Bebe Rexha, ''Scared To Be Lonely'' avec Dua Lipa, ''Ocean'' avec Khalid, ''Summer Days'' avec Macklemore et Patrick Stump, et ''We Are The People'' avec Bono et The Edge.',
        'Né à Amstelveen, Pays-Bas',
        'Dimanche',
        '23h00',
        'Flying High'
    ), (
        'Nicky Romero',
        'Nick Rotteveel',
        'Nicky Romero est passé du statut de jeune prodige de la musique à celui d''artiste le plus influent de son époque. En tant que DJ, producteur et magnat dont le label est à l''avant-garde de la musique électronique moderne, il va sans dire que Nicky est une force avec laquelle il faut compter. Depuis les tubes emblématiques ''Toulouse'' et ''I Could Be the One'' jusqu''à son récent titre ''Sometimes'', numéro 1 des radios de danse américaines, avec DallasK et Xylo en 2019. Le CV de Nicky se targue d''une impressionnante et longue discographie d''originaux, de remixes, d''éditions et de coproductions, prouvant encore et encore sa capacité à évoluer avec le paysage toujours changeant de la musique électronique. Le succès et l''impact de son label Protocol Recordings, à l''origine de récentes collaborations avec David Guetta, Dimitri Vegas et Like Mike, sont peut-être encore plus révélateurs de ses prouesses et de son esprit visionnaire.',
        'FNé à Amerongen, Pays-Bas',
        'Dimanche',
        '14h00',
        'Flying High'
    ), (
        'Quintino',
        'Quinten van den Berg',
        'Quintino, DJ et producteur néerlandais de grand talent, est l''une des principales forces de la scène mondiale de la musique de danse aujourd''hui. Réputé pour ses performances live et sa maîtrise des fondamentaux en tant que DJ sur la scène des clubs néerlandais, le jeune DJ a commencé à faire de grands pas en 2011 lorsqu''il a sorti ''Epic'' avec Sandro Silva, qui est devenu disque de platine et l''un des morceaux de club les plus joués de l''année. Ces dernières années, Quintino a connu de grands succès comme ''Freak'' et ''I Just Can''t'' avec son compatriote R3hab. Quintino a également collaboré avec Steve Aoki sur leur tube ''Mayhem'', qui a dépassé les 65 millions de streams. Quintino et Dimitri Vegas & Like Mike ont présenté quatre titres au monde entier, dont leur énorme remix du tube de Regard ''Ride It''. L''avenir s''annonce radieux pour Dimitri Vegas & Like Mike et Quintino, qui ont annoncé de nouveaux titres tout au long de l''été 2022.',
        'Né à Den Helder, Pays-Bas',
        'Dimanche',
        '15h30',
        'Flying High'
    ), (
        'Skrillex',
        'sonny Moore',
        'Sonny Moore, alias Skrillex, est un producteur de disques, DJ, musicien, chanteur et auteur-compositeur de Los Angeles qui a remporté 8 Grammy Awards, a été nommé Artiste de l''année en musique électronique de danse par MTV et détient le record du plus grand nombre de Grammy Awards remportés par un artiste électronique. Ce géant de la création a commencé sa carrière en tant qu''adolescent adepte du skateboard. En 2004, il a rejoint le groupe emblématique de post-hardcore From First To Last en tant que chanteur et a enregistré deux albums avec le groupe avant de le quitter à l''âge de 19 ans pour se lancer dans une carrière solo. En 2009, il a commencé à distribuer gratuitement son propre EP sous le nom de Skrillex sur Myspace. En 2010, l''EP Scary Monsters and Nice Sprites marque le début de l''explosion de Skrillex sur la scène internationale, avec des Grammys et des salles à guichets fermés peu de temps après. Il a collaboré avec Justin Bieber, FKA Twigs, Kanye West, MIA, Ty Dolla $ign, Kid Cudi, Boys Noize, Camila Cabello, A$AP Rocky et d''innombrables autres. Jack Ü, son projet avec Diplo, a vu son album éponyme atteindre la première place des classements de danse aux États-Unis, le titre ''Where Are Ü Now'' avec Justin Bieber devenant quadruple disque de platine. Skrillex s''est à nouveau associé à Bieber pour le titre ''Sorry'', 8 fois disque de platine, qui s''est hissé à la première place du Billboard Hot 100. Son label, OWSLA, a lancé la carrière de quelques-uns des plus grands noms de la musique électronique, dont Marshmello, Zedd, Porter Robinson et Mija. Skrillex a changé la musique et travaille d''arrache-pied sur un corpus de musique réalisé à Los Angeles et au Japon au cours des trois dernières années, qui continuera à modifier le paysage musical.',
        'Né à Los Angeles, Californie, USA',
        'Samedi',
        '20h00',
        'Flying High'
    ), (
        'Tiësto',
        'Tijs Michiel Verwest',
        'Tiësto, icône internationale récompensée par un GRAMMY®, certifiée platine, compte plus de 8 MILLIONS de streams sur toutes les plateformes, plus de 36 millions d''albums vendus, plus de 30 millions d''utilisateurs sur les réseaux sociaux et plus de 160 millions de vidéos TikTok vues par les utilisateurs. Le DJ et producteur est le seul artiste à avoir jamais détenu les titres de ''plus grand DJ de tous les temps'' selon Mixmag, de ''DJ numéro 1'' selon Rolling Stone et de ''parrain de l''EDM'' selon Billboard. Qu''il s''agisse de ses bangers pour les pistes de danse souterraines, de sa résidence très en vue à Las Vegas ou de son succès international, Tiësto a créé le modèle qui définit ce que signifie réussir dans le monde de la musique de danse d''aujourd''hui.',
        'Né à Breda, Pays-Bas',
        'Dimanche',
        '20h00',
        'Flying High'
    ), (
        'AFROJACK',
        'Nick van de Wall',
        'As one of the most innovative and sought-after artists, Grammy Award-winning producer and DJ Afrojack, continues to shatter boundaries and push music in bold new directions. Since making his breakthrough with the multi-platinum-selling single ‘Take Over Control’. In the last few years, Afrojack was named one of the 50 Most Important People in EDM by Rolling Stone, placed on the Forbes ‘30 Under 30’ music list, became the second DJ ever to cement his hands into the Hollywood Walk of Fame, and performed during the interval act of the Grand Final of the Eurovision Song Contest 2021. He was able to create a show that isn’t easy to match. Together with Dutch top talents Glennis Grace and Wulf, and accompanied by a classical youth orchestra, Afrojack is the first DJ in the history of the Eurovision Song Contest who performs during the interval act in the Grand Final. Over 200 million households in 41 countries saw Afrojack performing on the iconic Erasmusbrug in Rotterdam, and taking this into the venue for an epic ending of his performance. In 2021 Afrojack added the world wide hit ‘HERO’ to his already impressive repertoire, a collaboration with David Guetta. The song, co-written by Ellie Goulding, Stargate, Ryan Tedder and Jamie Scott, became another number 1 hit on the US dance radio chart which has reached 50 million streams to date. Recently, ‘HERO’ got nominated for a Grammy Award 2022 in the category Best Dance/Electronic Recording.',
        'Né à Spijkenisse, Pays-Bas',
        'Samedi',
        '11h00',
        'Sonic Sphere'
    ), (
        'Benny Benassi',
        'Marco Benassi',
        'Il n''y a pas de meilleur endroit pour commencer à plonger dans la riche histoire de la carrière de Benassi que son blockbuster international, ''Satisfaction'', et son vidéoclip qui a changé la donne et qui est devenu sa rampe de lancement vers la célébrité. Créé avec son cousin et producteur, Alle Benassi, et inspiré par les klaxons des voitures devant une fenêtre ouverte sur la rue, ce single a été propulsé dans les charts avec une première place en France, une deuxième au Royaume-Uni et en Allemagne. Les années suivantes ont été pour Benny une succession de succès, qu''il s''agisse des grands festivals auxquels il a participé (Coachella, EDC, Ultra Music Festival, Tomorrowland, pour n''en citer que quelques-uns). La même année, il a remporté un Grammy Award pour son remix révolutionnaire de Public Enemy ''Bring The Noise'', ce qui a propulsé le nom de Benny Benassi au rang de célébrité.En 2011, Benny s''est associé à un casting de stars pour son album Electroman, avec T-Pain, Kelis, Jean-Baptsiste et Apl.de.ap, entre autres, et surtout Gary Go avec son single ''Cinema'', qui s''est hissé au sommet des hit-parades. Le remix de ''Cinema'' par Skrillex est non seulement devenu disque d''or aux États-Unis et disque de platine en Australie et au Canada, mais il a également valu aux Benassi un autre Grammy, tout en restant dans le top 10 du classement iTunes pendant plus de six mois. Benny Benassi associe ses talents à ceux de Chris Brown pour créer avec ''Beautiful People'' l''un des plus grands albums de dance cross-over de l''époque. En 2016, Benny a sorti son premier album en cinq ans, Danceaholic, emmené par l''hymne estival ''Paradise'', encore une fois avec Chris Brown.',
        'Né à Milan, Italie',
        'Samedi',
        '14h00',
        'Sonic Sphere'
    ), (
        'Jax Jones',
        'Timucin Lam',
        'Jax Jones, est un musicien et producteur britannique (anglais) de musique électronique né le 25 juillet 1987 à Londres. Il se fait connaitre grâce à sa participation sur le titre I Got U (2014) du musicien Duke Dumont. Il obtient par la suite le succès avec son single You Don''t Know Me (2016) avec la chanteuse Raye, suivi de Instruction (en) (2017) avec la chanteuse Demi Lovato et la rappeuse Stefflon Don. Depuis 2019, il forme également le duo Europa avec le DJ Martin Solveig. Ses morceaux sont reconnaissables grâce à la phrase ''What you what you gon'' do'' au début de chacun de ses titres. Welcome to DEEP JOY. 😈',
        'Né à Londres, Angleterre',
        'Samedi',
        '16h00',
        'Sonic Sphere'
    ), (
        'Paul Kalkbrenner',
        '',
        'Le Berlinois Paul Kalkbrenner a tracé un chemin de carrière sans pareil. Un talent techno qui, en l''espace de deux décennies, est sorti de l''underground pour se hisser au sommet des hit-parades, jouer dans un film et en faire la bande originale, être la tête d''affiche de festivals et amasser des millions de fans, tout en refusant de compromettre son son techno grandiose. Kalkbrenner est né à l''âge d''or de la techno : il a eu douze ans lorsque le mur de Berlin est tombé et a passé son adolescence à faire des raves, avant de commencer à jouer les DJ et à collectionner les disques lorsque le premier raz-de-marée de la musique de danse électronique s''est répandu dans toute la ville. Il s''est rendu compte très tôt que le métier de DJ n''était pas fait pour lui, et s''est depuis concentré sur la production et la diffusion de sa propre musique en direct.',
        'Né à Leipzig, Allemagne',
        'Samedi',
        '18h00',
        'Sonic Sphere'
    ), (
        'Disclosure',
        'Guy et Howard Lawrence',
        'Une synthèse pop de nombreux styles, dont la house, le garage, le dubstep et la basse, ainsi que des collaborations vocales bien senties, ont fait de Disclosure l''une des équipes de production les plus performantes des années 2010. Bien qu''ils aient percé alors que la voie du succès commercial se raccourcissait pour les groupes classés EDM (electronic dance music), le duo, composé des frères et sœurs anglais Guy et Howard Lawrence, s''est distingué par une connaissance approfondie de la musique de danse underground remontant à l''ère du disco. Après avoir fait ses débuts en 2010, le duo s''est rapidement mis à produire des chansons pop lustrées et impeccablement assemblées, avec en tête le tube planétaire de 2012 ''Latch'', avec l''obscur Sam Smith de l''époque. L''approche s''est poursuivie avec les albums Settle et Caracal, publiés respectivement en 2013 et 2015, qui se sont hissés au sommet des classements et ont été nommés aux Grammy Awards, et qui ont ajouté à leur cercle des artistes comme Aluna George, Eliza Doolittle, Mary J.Blige et The Weeknd. Ils sont revenus en 2018 avec une série de singles et ont proposé en 2020 leur troisième album, Energy. Leur premier mix commercialisé, une entrée dans la série DJ-Kicks, est apparu en 2021.',
        'Originaire de Reigate, Angleterre',
        'Samedi',
        '21h00',
        'Sonic Sphere'
    ), (
        'Excision',
        'Jeff Abel',
        'Imaginez un monde consumé par des vibrations de basse qui font trembler la terre. Une apocalypse de sons qui se tordent et se transforment et qui font fondre les esprits et vibrer les corps. L''expérience audiovisuelle spectaculaire d''un concert d''Excision a la capacité de transporter les fans dans une autre dimension où les Headbangers règnent en maîtres. Sa tournée actuelle, The Evolution, est son spectacle le plus captivant et le plus impressionnant à ce jour. Équipé d''une quantité absurde de lumières, de lasers, de caissons de basse et de visuels immersifs massifs, il est garanti que tous les spectateurs en prendront plein les yeux. Originaire de Kelowna, en Colombie-Britannique, Excision a passé sa carrière à se consacrer à la scène Bass Music, menant et innovant dans la création d''une communauté Dubstep massive et passionnée. Il est le créateur des festivals préhistoriques Lost Lands et Bass Canyon, qui accueillent plus de 100 000 headbangers. Il tourne sans relâche et a été la tête d''affiche de plus de 1000 concerts et festivals à travers le monde. Il a sorti 5 albums complets et d''innombrables EP, singles et mixes, totalisant plus de 2 milliards de streams à vie. Il a publié la musique de centaines d''autres artistes sur son nouveau label Subsidia, dans la lignée de l''ancien Rottun Records.',
        'Né à Kelowna, Colombie-Britannique, Canada',
        'Dimanche',
        '18h00',
        'Sonic Sphere'
    ), (
        'deadmau5',
        '',
        'Joel Zimmerman, plus connu sous le nom de deadmau5 (prononcé ''dead mouse''), est l''un des producteurs de musique électronique les plus respectés des temps modernes. Il a connu un succès international avec son single ''Ghosts ''n'' Stuff'', certifié deux fois platine, ainsi qu''avec ''Professional Griefers'', ''Sofi Needs A Ladder'' et ''I Remember''. L''artiste, qui a reçu plusieurs prix JUNO et a été nommé aux GRAMMY®, a également sorti sept albums acclamés par la critique. Parmi ses dernières productions, citons ''Pomegranate'' avec The Neptunes, ''Bridged By A Lightwave'' avec Kiesza, ''Channel 43'' avec Wolfgang Gartner, ''Hypnocurrency'' avec REZZ, ''When The Summer Dies'' avec Lights, ''Hyperlandia'' avec Foster The People, ''this is fine.'' avec Portugal. The Man, ''XYZ'' et ''My Heart Has Teeth'' avec Skylar Grey. En 2022, deadmau5 s''est associé à son ami et collaborateur de longue date Kaskade pour un nouveau projet musical, Kx5, dont le titre ''Escape'', avec Hayla, a été classé au Top 40 et à la première place des radios de musique de danse, avant la sortie en 2023 de leur premier album éponyme, Kx5.',
        'Né à Niagara Falls, Ontario, Canada',
        'Dimanche',
        '21h00',
        'Sonic Sphere'
    ), (
        'Dr. Peacock',
        'Steve Dekker',
        'Dr. Peacock, de son vrai nom Steve Dekker, né en 1988, est un producteur et disc jockey de frenchcore néerlandais. Il est aussi producteur au travers du label Peacock Records. Il a participé aux scènes frenchcore de festivals comme Vive la Frenchcore, Syndicate, Decibel Outdoor, Defqon.1, Masters of Hardcore, Pandemonium, plus de 300 soirées et événements depuis 20101. Il est reconnu par la presse spécialisée comme l''un des grands du genre''Frenchcore is my passion. I can translate my emotions into my music, and then let you enjoy the trip! That''s the best feeling in the world for me. ❤️ '' ',
        'Né à Limmen, Pays-Bas',
        'Dimanche',
        '16h00',
        'Sonic Sphere'
    ), (
        'Charlotte de Witte',
        '',
        'Charlotte de Witte est un phénomène techno. Elle est l''égérie d''un mouvement mondial qui s''attache à explorer les confins de la musique électronique et à se tenir à l''avant-garde de la scène techno en pleine expansion. Son style caractéristique se reflète non seulement dans ses productions méticuleusement élaborées ou dans ses DJ sets soigneusement composés, mais aussi dans le son de nombreux artistes techno contemporains, ce qui confirme son statut de précurseur dans le mouvement rave mondial. La carrière de la propriétaire du label KNTXT se poursuit à une vitesse fulgurante, et nous n''en sommes peut-être qu''au début.',
        'Née à Gand, Belgique',
        'Dimanche',
        '14h00',
        'Sonic Sphere'
    ), (
        'DJ Snake',
        'William Grigahcine',
        'Au cours de la dernière décennie, DJ Snake a connu le genre de succès raréfié et sauvagement transformateur que peu d''artistes parviennent à atteindre. Originaire d''une cité HLM de la banlieue parisienne, le DJ/producteur multi-platine a pulvérisé les records de l''industrie avec des hits comme ''Taki Taki'', obtenu la certification diamant de la RIAA pour ''Lean On'' (avec Major Lazer), livré des bangers qui ont marqué l''époque comme ''Turn Down for What'' (avec Lil Jon), et est entré dans l''histoire en étant le premier artiste à se produire sur le toit de l''Arc de Triomphe. En plus de produire régulièrement des titres qui figurent en tête des hit-parades du monde entier, dont trois chansons qui ont dépassé le nombre stupéfiant de milliards de streams sur Spotify, ce phénomène maintes fois récompensé met son ingéniosité à repousser les limites dans une musique qui jette des ponts inattendus et indéniablement puissants entre des cultures et des genres très différents.',
        'Né à Paris, France',
        'Dimanche',
        '11h00',
        'Sonic Sphere'
    ), (
        'Dash Berlin',
        'Jeffrey Sutorius, Eelke Kalberg et Sebastiaan Molijn',
        'Dash Berlin, le célèbre projet musical fondé par Sebastiaan Molijn, producteur de musique récompensé par le BMI, ravit les fans de Trance du monde entier depuis plus de dix ans. Avec son ami de jeunesse et illustre coproducteur Eelke Kalberg, Sebastiaan Molijn a propulsé le collectif Dash Berlin au sommet du monde de la musique de danse avec certains des plus grands classiques de la Trance de tous les temps, tels que ''Till The Sky Falls Down'', ''Man On The Run'' et ''Waiting''. Après le départ récent de l''ancien leader du groupe, Dash Berlin revient plus fort que jamais avec un tout nouvel album, qui ramène le son classique de Dash Berlin tant attendu. Les nouveaux singles émotionnels ''Oceans'' et ''Home At Last'' sont déjà considérés comme de futurs classiques par des milliers de fans impatients qui suivent les moindres faits et gestes du groupe sur les différents comptes de médias sociaux, propulsant le projet musical de Dash Berlin vers un statut légendaire.',
        'Originaire de La Haye, Pays-Bas',
        'Samedi',
        '12h00',
        'Electronic Dawn'
    ), (
        'Nora En Pure',
        'Daniela Niederer',
        'Mondialement connue et adorée pour ses paysages sonores cinématiques et ses performances éthérées, la reine de la Deep House, Nora En Pure, née en Afrique du Sud et basée en Suisse, a passé ces dernières années à travailler sans relâche pour atteindre le sommet de la scène de la musique de danse. Elle prouve son éminence à chaque performance, en se produisant à Coachella, Burning Man, Tomorrowland, EDC, Daniela Di Lillo est une véritable force avec une éthique de travail indomptable et un œil pour les détails immaculés.Ses inspirations pour ses compositions viennent de ses racines sud-africaines, qu''elle incorpore dans un cadre tropical accompagné de sons de percussions tribales et d''une mélodie d''instruments classiques, comme les instruments à vent et à cordes. Nora souhaite connecter ce monde classique et le genre house, qui sont selon elle « deux mondes différents et magnifiques ». Avant d''entrer sur la scène de la musique électronique, elle écoutait occasionnellement d''autres genres musicaux comme la musique classique ou le rock',
        'Né à Johannesbourg, Afrique du Sud',
        'Samedi',
        '14h00',
        'Electronic Dawn'
    ), (
        'Marshmello',
        'Christopher Comstock',
        'L''étoile de Marshmello, nommé aux GRAMMYs, continue de grandir, l''artiste masqué brisant les frontières de l''industrie. Avec des singles qui cartonnent et des collaborations avec des artistes comme Juice WRLD, Halsey, Demi Lovato, Bastille, Kane Brown, Selena Gomez, Khalid, Jonas Brothers et bien d''autres encore, Marshmello a enregistré 13 milliards de streams rien que sur Spotify. Avec plus de 40 millions d''auditeurs mensuels sur la plateforme, il est l''un des 40 artistes les plus écoutés au monde sur Spotify et le troisième artiste le plus abonné sur YouTube. Présenté en couverture de l''édition ''30 Under 30'' du magazine Forbes, Marshmello a prouvé qu''il n''était pas seulement un producteur innovant, mais aussi un homme d''affaires avant-gardiste. Avec sa propre marque de guimauves fourrées au chocolat (''Stuffed Puffs''), il a également lancé une chaîne de divertissement pour enfants, Mellodees. Marshmello a collaboré avec les Jonas Brothers sur leur chanson ''Leave Before You Love Me'', qui a atteint la 13e place du Billboard Hot 100 et a été nominée pour le meilleur album dance/électronique aux Grammy''s de 2022. Plus récemment, Marshmello a fait équipe avec Khalid pour sortir ''Numb'', qui n''a cessé de grimper dans le Billboard Hot 100.',
        'Né à Philadelphie, Pennsylvanie, USA',
        'Samedi',
        '17h00',
        'Electronic Dawn'
    ), (
        'Zedd',
        'Anton Zaslavski',
        'Zedd, artiste/DJ/producteur multi-platine et récompensé par un GRAMMY, a fait ses débuts avec Clarity après avoir signé avec Interscope en 2012 et n''a cessé depuis de faire tomber les barrières entourant les genres musicaux. Plus récemment, Zedd a sorti ''365'' avec Katy Perry en février, son premier single de 2019. L''automne dernier, Zedd a fait équipe avec Shawn Mendes pour un remix de ''Lost In Japan'', extrait du dernier album de Shawn. Le remix faisait suite aux singles de Zedd de 2018, ''Happy Now'' avec Elley Duhé et son succès monstre, ''The Middle'' avec Maren Morris et Grey. Zedd a sorti ''The Middle'' en janvier 2018, ce qui lui a valu son deuxième numéro 1 au Top 40 Radio. ''The Middle'' a occupé la première place au Top 40 Radio pendant sept semaines, a été #1 au Hot AC Radio pendant cinq semaines, et a passé 40 semaines sur le Billboard Hot 100. Sur le plan numérique, la chanson a été écoutée plus d''un milliard de fois. En décembre, Zedd a reçu trois nominations aux GRAMMY pour ''The Middle'', notamment pour le disque de l''année, la chanson de l''année et la performance d''un duo ou d''un groupe de musique pop. Avec ces trois nominations, Zedd est nommé cinq fois aux GRAMMY.',
        'Né en Russie',
        'Samedi',
        '20h00',
        'Electronic Dawn'
    ), (
        'Alesso',
        'Alessandro Lindblad',
        'Alesso, DJ et producteur de musique de danse originaire de Stockholm, en Suède, a connu un succès multigenre, mêlant la house progressive à la pop et remportant des succès mondiaux en collaboration avec un large éventail d''artistes. Parmi ses premiers succès pop figurent ''Calling (Lose My Mind)'' en 2012 (avec Sebastian Ingrosso et Ryan Tedder) et ''Under Control'' en 2013 (avec Calvin Harris et Hurts), ce dernier ayant atteint la première place au Royaume-Uni. Il a assuré la première partie de Madonna lors de plusieurs dates britanniques et russes de son MDNA Tour 2012, et s''est produit lors de grands festivals tels que Coachella, Creamfields et l''Electric Daisy Carnival. ''Heroes (We Could Be), un single de 2014 avec Tove Lo, est devenu son premier succès dans le Top 40 américain, précédant son premier album complet de 2015, Forever. Son prochain grand succès international, ''Let Me Go'', sorti en 2017, était une collaboration avec l''actrice Hailee Steinfeld et le duo country Florida Georgia Line . Il a également sorti deux mixtapes, Progresso, Vol. 1 en 2019 et Vol. 2 en 2021, ainsi que des collaborations avec Marshmello, Zara Larsson et d''autres.',
        'Né à Stockholm, Suède',
        'Samedi',
        '22h00',
        'Electronic Dawn'
    ), (
        'Major Lazer',
        'Diplo, Walshy Fire et Ape Drums',
        'Rendre le monde plus petit en rendant la fête plus grande : telle est la mission de Major Lazer. Depuis ses débuts en 2009, le trio dirigé par Diplo n''a cessé d''affirmer sa volonté de célébrer les cultures, d''encourager les artistes et les genres du monde entier et de créer un nouveau type de musique électronique. La diversité des artistes internationaux que l''on retrouve dans les albums de Major Lazer - de Guns Don''t Kill People...Lazers Do, à leur dernier Music Is The Weapon - illustre cette éthique. Ce désir de s''affranchir des codes, de faire tomber les barrières, est au cœur de Music is the Weapon. Sorti en octobre 2020, ce nouveau LP est porté par une liste de noms prestigieux, aux univers on ne peut plus variés. Parmi eux : la superstar du reggaeton J. Balvin, la reine du rap américain Nicki Minaj, sans oublier French Montana, Skip Marley, Khalid, Mr Eazi, Nucleya, Paloma Mami, Anitta, et Shenseea , la nouvelle star du dancehall jamaïcain et bien d''autres encore.... En réunissant les influences internationales du reggaeton et de l''afrobeats, Music is the Weapon est un disque en phase avec son temps, dont les rythmes frénétiques marient les genres avec toujours plus de puissance ; de la dance music au dancehall, de la pop au dembow, de la soca au hip-hop. Un album qui nous projette aux quatre coins du monde, et dont le titre prend un sens presque politique : au terme d''une année marquée par l''isolement et la restriction de nos libertés, la musique apparaît comme une arme considérable, plus que jamais capable de nous rassembler au-delà des frontières.',
        'Formé à Miami, Floride, USA',
        'Dimanche',
        '12h00',
        'Electronic Dawn'
    ), (
        'The Chainsmokers',
        'Andrew Taggart, Alex Pall et Matt McGuire',
        'The Chainsmokers, lauréat d''un Grammy Award et en tête du Billboard Chart, est devenu une force musicale dominante avec un répertoire varié de chansons qui l''a conduit à devenir l''un des artistes les plus en vogue de la musique. Composé d''Alex Pall et de Drew Taggart, leur son caractéristique touche habilement les domaines de l''indie, du progressif et de la pop.',
        'Formé à New-York, New-York, USA',
        'Dimanche',
        '14h00',
        'Electronic Dawn'
    ), (
        'Sickick',
        '',
        'Dans un monde dominé par le désir de célébrité, Sickick est l''artiste énigmatique qui se fait un nom dans la musique sans jamais montrer son visage. Ce producteur, chanteur et compositeur masqué a créé son style unique d''electronica en superposant des paroles séduisantes à des percussions percutantes. Sickick réunit des éléments de trap, de bass, de reggaeton, d''électro et de Rhythm and Blues pour créer une expérience auditive atmosphérique et d''un autre monde. Malgré son talent musical, l''idée de la célébrité et des foules a déjà été une source d''anxiété pour Sickick. Le masque iconique qui est maintenant omniprésent avec son image et sa musique lui a permis de surmonter ses peurs. Sickick utilise sa nouvelle confiance pour inspirer ses fans, connus sous le nom de ''Sickick Army'', à poursuivre leurs rêves et à trouver des moyens créatifs de surmonter leurs difficultés. Sickick a reçu la reconnaissance de poids lourds de la musique tels que Missy Elliot, Jason DeRulo, Shaq, TImbaland et Sean Paul pour ses créations originales et ses remixes. Avec plus de 100 millions de streams et des auditeurs de plus de 80 pays, l''armée grandit chaque jour.',
        'Né à Toronto, Ontario, Canada',
        'Dimanche',
        '17h00',
        'Electronic Dawn'
    ), (
        'Deorro',
        'Erick Orrosquieta',
        'Originaire de Los Angeles, Erick Orrosquieta, connu sous le nom de Deorro (et aussi de TON!C), est un producteur et DJ house/EDM, ainsi qu''un fier Américain d''origine mexicaine. Après s''être fait connaître grâce à sa page SoundCloud, il a atteint un public plus large au début de la vingtaine, de 2012 à 2014, avec de nombreuses tournées, ainsi que des sorties solo audacieuses et des collaborations sur les labels Dim Mak et Mad Decent. Parmi ses titres phares, citons ''Dechorro'' (2013), ''Freak'' (2014) et ''Five Hours'' (2014), ce dernier ayant atteint le Top 10 en France et en Belgique. En outre, il a remixé des titres de Laidback Luck (''Pogo''), Steve Aoki (''Ooh'') et Gareth Emery (''Lights & Thunder''). Deorro continue sur sa lancée avec Five More hours (featuring Chris Brown, 2015) et Bailar (featuring Elvis Crespo, 2016), tous deux classés au Top 10 dans de nombreux pays. Une série de singles supplémentaires ont suivi jusqu''en 2017, année où il a publié son premier recueil, Good Evening. Il a continué sur sa lancée en 2018 avec près d''une douzaine de sorties de singles, notamment Shakalaka avec Steve Aoki, Dracarys avec Dirty Audio et Bring It Back (feat. Max Styler) avec MAKJ. En 2019, il a fait équipe avec Quintino et MAKJ pour le single très énergique Knockout. Depuis, Deorro a sorti des albums avec certains des meilleurs collaborateurs des genres EDM et latin, comme son single sorti en 2022, Savage avec Tiësto, et son premier album latin ORRO, qui comprend un nombre incroyable de 18 collaborateurs sur 19 titres. ~ Andy Kellman',
        'Né à Los Angeles, Californie, USA',
        'Dimanche',
        '20h00',
        'Electronic Dawn'
    ), (
        'Timmy Trumpet',
        'Timothy Jude Smith',
        'Le DJ, producteur et instrumentiste Timmy Trumpet est sans aucun doute l''un des artistes les plus prolifiques du Top 100 de DJ Mag. Artiste primé, ayant vendu plusieurs disques de platine, Timmy s''est frayé un chemin vers le sommet de l''industrie aux côtés d''artistes influents qui prennent le monde d''assaut. L''album Freaks, qui lui a permis de percer, a enregistré plus d''un demi-milliard de streams, a été six fois disque de platine en Australie et a dominé les charts dans dix pays, devenant le titre le plus vendu de tous les temps sur Ministry of Sound Australia.',
        'Né à Sydney, Australie',
        'Dimanche',
        '22h00',
        'Electronic Dawn'
    ), (
        'Sound Of Legend',
        '',
        'Sound of Legend, c''est l''histoire d''un groupe de 3 producteurs créé en 2016 et représenté par un Super Héros nommé Zach. Son goût pour la discrétion se remarque jusque dans sa façon de s''habiller puisqu''il porte toujours un MASQUE... Ils figurent dans les meilleurs classements européens et sur les TOP CLUB CHARTS augmentant de jour en jour de 250 000 000 streams. Ils ont dépassé les 200 000 abonnés sur Youtube et plus de 105 000 000 de vues. Après la sortie de leur plus importante collaboration avec Dimitri Vegas & Like Mike Official Belgian World Cup Anthem : Believe et une année 2022 très réussie avec leurs 2 derniers singles '' Maniac '' (Disque d''Or en France) et '' I''m So Excited '' qui cumulent plus de 45 Millions de Streams, Sound Of Legend démarre très fort 2023 avec '' Some Kind Of Kiss '' une reprise du célèbre groupe de Pop/Rock Cutting Crew - (I Just) Died In Your Arms. Un puissant mélange entre Future rave et Dance progressive dont seul Sound Of Legend a le secret, tout en gardant l''esprit Pop/Rock du titre original.Le groupe Sound Of Legend continue d''impressionner par ses talents musicaux et sa capacité à combiner différents genres pour donner un nouvel élan à son catalogue de hits intergénérationnels.',
        'Inconnue',
        'Samedi',
        '11h00',
        'Sunset Stage'
    ), (
        'Da Tweekaz',
        'Kenth Kvien et Marcus Nordli',
        'Da Tweekaz, également connu sous le nom de Kenth Kvien et Marcus Nordli, est un duo norvégien de Hardstyle signé chez Dirty Workz. Des gars très terre à terre, avec une passion pour le Hardstyle et la Hard Dance en général, ils donnent à chaque public un moment inoubliable. Lorsqu''ils ne sont pas derrière les platines ou en studio, vous pouvez les surprendre en train de faire la fête avec leurs fans. Derrière les platines, leur énergie ne ressemble à aucune autre. Lunettes de soleil sur les yeux, sourires jusqu''aux oreilles et poings battant à chaque rythme, ils sont une véritable étincelle pour dynamiser n''importe quelle fête. Que ce soit dans le cadre personnel d''un club ou dans celui, vaste et immense, d''un festival, ils apportent leur style unique avec une passion indéfectible. En faisant évoluer à la fois leur propre son et le paysage de la Hard Dance, Da Tweekaz a pris le monde d''assaut en collaborant avec des artistes de premier plan à l''intérieur et à l''extérieur du genre Hard EDM, ainsi qu''avec leurs remixes très attendus et très recherchés de moments populaires, ce qui les a également mis à la portée de leur compatriote norvégien Alan Walker, permettant au duo de remixer l''un de ses singles les plus populaires, ''On My Way''. Rien ne peut arrêter ce duo de choc dont la passion se propage sur scène pour électriser n''importe quel événement et les oreilles de millions de fans dans le monde entier avec leur Hard EDM très accessible.',
        'Formé en Norvège',
        'Samedi',
        '15h00',
        'Sunset Stage'
    ), (
        'Sub Zero Project',
        'Nigel Coppen et Thomas Velderman',
        'Le duo Hardstyle Sub Zero Project aka Nigel Coppen et Thomas Velderman a pris d''assaut la scène hard dance. Adolescents, ils ont commencé leur carrière en 2014. La combinaison de productions de haute qualité et d''un son unique a propulsé ce duo hollandais au sommet en un rien de temps. Sub Zero Project est surtout connu pour ses hits Hardstyle, tels que ''Darkest Hour'', ''Our Church'', ''Halo'' et ''Trip To Mars''. Tous ces titres ont atteint des dizaines de millions de streams. Grâce à son succès, Sub Zero Project a pu diffuser son son à l''échelle mondiale en se produisant sur les plus grandes scènes de danse : Tomorrowland, Electric Daisy Carnaval, Defqon.1 Weekend Festival, Ultra Music Festival, Medusa Festival, et Qlimax pour n''en citer que quelques-unes. Tout au long de sa carrière, Sub Zero Project a travaillé avec plusieurs grands artistes tels que Timmy Trumpet, W&W, Hardwell, Vini Vici, Da Tweekaz, Headhunterz et bien d''autres encore. Ce n''est que le début de beaucoup d''autres choses à venir. Après avoir sorti leur deuxième album, une œuvre d''art intitulée '' Renaissance Of Rave '' en 2022, ils ont placé la barre très haut pour 2023. Avec de nouveaux bangers et l''expérience live la plus folle, ''Psychodelic'', Sub Zero Project est le groupe à voir absolument. Sub Zero Project est un groupe à voir absolument lors de l''un de leurs plus de 100 concerts cette année !',
        'Formé aux Pays-Bas',
        'Samedi',
        '18h00',
        'Sunset Stage'
    ), (
        'R3HAB',
        'Fadil El Ghoul',
        'Le DJ et producteur multiplatine Fadil El Ghoul, plus connu sous le nom de R3HAB, a tracé sa voie dans la musique de danse au cours des quinze dernières années. Depuis ses remixes pour Rihanna, Drake, Taylor Swift et Calvin Harris jusqu''aux hymnes ''All Around The World (La La La)'' et ''Lullaby'', certifiés par un disque de platine, en passant par ses collaborations avec des artistes comme Ava Max, ZAYN, Luis Fonsi, Sean Paul et bien d''autres, R3HAB s''est révélé être l''un des artistes les plus avant-gardistes du secteur. Son travail a recueilli plus de 8 milliards de streams à ce jour, dont 1,1 milliard pour la seule année 2022. R3HAB a fondé son label CYB3RPVNK en 2016, qui a dépassé les 4 milliards de streams sur toutes les plateformes depuis sa création.',
        'Né à Breda, Pays-Bas',
        'Samedi',
        '21h00',
        'Sunset Stage'
    ), (
        'Ummet Ozcan',
        '',
        'À une époque où très peu d''artistes sortent des sentiers battus et se distinguent par leur caractère unique et novateur, la star turco-néerlandaise Ummet Ozcan est l''une des exceptions à la règle. Une histoire à succès qui est sur le point de s''ouvrir à de nouveaux horizons. Ayant grandi dans l''épicentre connu de la musique de danse, les Pays-Bas, il n''est pas difficile pour Ozcan (1982) de se brancher sur la musique de danse dès son plus jeune âge. Depuis son premier grand succès en 2011 avec ''Reboot'', numéro 1 sur Beatport, les principaux succès du DJ vétéran ont été samplés dans les podcasts radio de ses pairs et joués sur les scènes principales des festivals du monde entier. En 2012, son hit #1 défiant les genres ''The Box'' est l''un des disques les plus joués à l''EDC Las Vegas, tandis qu''un an plus tard, sa collaboration avec W&amp;amp;amp;W ''The Code'' est l''un des morceaux les plus populaires à l''Ultra Music Festival 2013, suivi du hit #1 Beatport ''Revolution'' et du remix de ''Eat Sleep Rave Repeat'' de Fatboy Slim en collaboration avec Dimitri Vegas et Like Mike. En 2014 et 2015, Ozcan voit un autre nombre de ses titres atteindre les plus hautes positions du classement. ''Raise Your Hands'', ''Smash'' et ''Superwave'' deviennent tous des hits instantanés, accumulant des millions de vues sur YT et se hissant à la première place. Des titres plus récents comme l''énorme morceau '' The Hum '' (avec l''ancien duo Dj Mag #1 Dimitri Vegas &amp;amp;amp ; Like Mike) '' Lose Control '' et '' Stars '' et sa collaboration de 2016 avec Tiësto intitulée '' What you''re waiting for '' sont des valeurs sûres. L''année 2017 apporte un certain nombre d''excellentes sorties et un remix très récompensé de ''More than you know'' d''Axwell Ingrosso.',
        'Né à Putten, Pays-Bas',
        'Samedi',
        '23h00',
        'Sunset Stage'
    ), (
        'Les Gordon',
        'Marc Mifune',
        'Le projet Les Gordon a vu le jour en 2013. Marc Mifune, le vrai nom de cet artiste rennais, a débuté sur la scène de la Transmusicale, en première partie de Stromae. Avec '' Saisons '', son premier EP, Les Gordon franchit une première étape significative et signe avec le tourneur Allo Floride. A partir de là, il se développe rapidement : Marc Mifune joue pour Madéon au Trianon, et fait la première partie de la tournée nationale de Fauve. La même année, Les Gordon produit un EP inédit, intitulé '' Les Cheveux Longs '', qui atteint les 100 000 vues sur Soundcloud en quelques semaines. Après '' Season '', les EP '' Abyss '' et '' Atlas '' sont ensuite sortis sur le label Kitsuné en 2016. En 2018, Les Gordon sort son premier album, '' LA '', chez Sony Arista, qui atteint plusieurs millions de streams, à l''image du single '' Lantern '', unanimement salué. Une signature musicale s''est forgée sur l''échantillonnage de voix coupées, de guitares mélancoliques et de beats tranchants. Il a été influencé par la scène musicale alternative anglaise, de Radiohead à Gold Panda, Four Tet, Boards of Canada, et par d''autres artistes tels que Nils Frahms, Òlafur Arnalds, ou Kiasmos. Les Gordon est également un producteur talentueux en tant que beat-maker, comme en témoigne le single '' Écrire '', composé avec Diabi pour le rappeur Nekfeu, ainsi que '' Lundi Méchant '', produit avec Guillaume Poncelet, single éponyme du dernier album de Gaël Faye.',
        'Né à Fougères(Rennes), France',
        'Dimanche',
        '11h00',
        'Sunset Stage'
    ), (
        'NTO',
        'Anthony Favier',
        'L''histoire de NTO a commencé par une rencontre au paradis, un enfant du sud de la France toujours accroché à sa guitare et à la musique électronique. Après avoir participé au festival Sziget à l''âge de 18 ans, NTO a commencé à fréquenter régulièrement La Villa Rouge et le Bar Live, deux clubs légendaires du sud de la France. A l''époque, la techno minimale allemande était en plein essor et Anthony Favier passait ses nuits à écouter Stephan Bodzin, James Holden, ou les débuts de Paul Kalkbrenner.  L''histoire de NTO, c''est aussi celle de son amitié avec Worakls et Joachim Pastor, avec qui il crée Hungry Music en 2013. Se produisant ensemble sur la scène de l''Olympia au festival des Vieilles Charrues, ils ont appris à maîtriser la scène. Grâce à ses tubes ''Trauma'' et ''La clé des champs'', qui représentent plusieurs millions de streams sur les DSP, la carrière de NTO décolle à l''international.  Aujourd''hui, NTO s''apprête à entamer un nouveau chapitre de sa carrière. Son premier album ''Apnea'' avec Tricky et Monolink est sorti, et a déjà été remixé par le pape de la techno Paul Kalkbrenner et certains des meilleurs artistes à venir comme Innellea ou Kas:st.',
        'Né à Marseille, France',
        'Dimanche',
        '15h00',
        'Sunset Stage'
    ), (
        'Nhyx',
        'Paul Blaise',
        'Nhyx est un compositeur de musique électronique indépendant originaire de Paris. Amateur de musique classique avant de rencontrer la scène électronique et House / Techno des années 90, il aborde ses compositions comme de véritables voyages sonores. Jouant avec ses synthés et claviers comme instruments principaux à travers son voyage mélodique, il nous propulse quelque part hors du temps, dans un monde qui lui est propre, à la fois mélodieux et percussif, peuplé de mélodies lancinantes et de citations vintage savoureuses. Toujours à la recherche d''une musique alternative aux influences à la fois poétiques et décalées, il a créé son propre univers à la croisée de nombreux genres, flirtant tantôt avec la Lo-fi / Indie House et l''Electronica, tantôt oscillant entre Retro Waves et Deep-Tech. Son prochain live articulé autour de son premier album ''Atlas'' et de son nouveau projet ''Zephyr'', mettra l''accent sur ses solos de claviers, pads et autres séquenceurs.',
        'Né à Paris, France',
        'Dimanche',
        '18h00',
        'Sunset Stage'
    ), (
        'Alle Farben',
        'Frans Zimmer',
        'Alle Farben, DJ et producteur basé à Berlin, est sans aucun doute l''un des artistes allemands les plus établis et les plus couronnés de succès dans les domaines de la musique pop et de la musique de danse. Avec plus de 150 concerts par an, Alle Farben s''est produit sur certaines des plus grandes scènes de dance music telles que Tomorrowland, Lollapalooza, Parookaville et le Sziget Festival. L''année dernière, Alle Farben a également généré et vendu plus de 5 millions de téléchargements et de CD, uniquement en Allemagne. Il a été nommé pour le 1Live Krone du ''Meilleur single'' en 2017 ainsi que pour le MTV EMA du ''Meilleur acte allemand'', et a remporté le ECHO music award en tant que meilleur acte ''Dance National''. Alle Farben compte actuellement plus de 900 millions de streams sur Spotify avec 6,5 millions d''auditeurs mensuels et plus de 250 millions de vues sur YouTube. Après avoir obtenu 12 fois la médaille d''or, 8 fois la médaille de platine et 1 fois la médaille de diamant, le groupe n''a pas fini de faire parler de lui !',
        'Né à Berlin, Allemagne',
        'Dimanche',
        '21h00',
        'Sunset Stage'
    ), (
        'Marcapasos',
        'Alexander Franke',
        'Depuis ''Nature One'' 2008, Marcapasos devrait être connu de tous. Ses sets entraînants font loi, ses sons font transpirer la foule et enflamment chaque club. Marcapasos est l''artiste house le plus demandé d''Allemagne centrale. Son cœur bat au rythme de ses morceaux. Pas étonnant, car le nom Marcapasos est espagnol et signifie ''pacemaker''. Visuellement, il pourrait facilement passer pour un Espagnol, mais ce DJ électro-house charismatique est originaire de Leipzig. Selon la devise ''Music is my life'', il mixait déjà à 16 ans tout ce qui pouvait passer par un crossfader. Il a percé en 2006 lorsqu''il a remporté la ''Sputnik Lounge Battle'' de la MDR. Dès lors, sa carrière s''est envolée. Il s''est rapidement fait un nom avec des remixes génialement arrangés comme ''Sofa Tunes - Feel'' et ses propres morceaux ultra-dansants au caractère culte. Sa chanson ''I Know'' (2009) s''est hissée comme une comète en tête des charts DJ-Tunes. Outre de nombreux concerts dans toute l''Allemagne, il a joué en tant que résident au ''Leipziger Soundgarten'' et au ''Präzisionswerk'' à Espenhain, l''un des clubs les plus branchés d''Allemagne centrale.',
        'Allemand',
        'Dimanche',
        '23h00',
        'Sunset Stage'
    )