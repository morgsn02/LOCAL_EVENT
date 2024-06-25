# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

Wishlist.destroy_all
Event.destroy_all
Category.destroy_all
User.destroy_all

user1 = User.new(email: "test1@test.com", password: "testtest", first_name: "mohcine", last_name: "chnahim", nickname: "morgsn", favorite: "festival", phone_number: "0600233459")
user1.save

user2 = User.new(email: "test2@test.com", password: "testtest", first_name: "sonia", last_name: "chavepeyre", nickname: "susiglass", favorite: "braderie, marché", phone_number: "0623789023")
user2.save

user3 = User.new(email: "test3@test.com", password: "testtest", first_name: "leanne", last_name: "fraser", nickname: "Ljfraser", favorite: "sport", phone_number: "0623780024")
user3.save


category1 = Category.new(event_category: "festival")
category1.save

category2 = Category.new(event_category: "braderie, marché")
category2.save

category3 = Category.new(event_category: "sport")
category3.save

category4 = Category.new(event_category: "petite enfance et famille")
category4.save

category5 = Category.new(event_category: "exposition")
category5.save


Event.create(
  title:    "PRÉSENTATION 33E FESTIVAL D'ART SACRÉ",
  start_day: Date.new(2024, 7, 23),
  end_day: Date.new(2024, 9, 22),
  hour: 18,
  minute: 15,
  address: "Chapelle Saint-Bernardin, 14 Rue du Docteur Rostan 06600",
  city: "antibes",
  cost: 0,
  link_event: "https://www.antibes-juanlespins.com/information/agenda/presentation-33e-festival-dart-sacre",
  content: "Présentation de la 33e édition Festival d'Art sacré d'Antibes Côte d'Azur France par Philippe Depetris, directeur artistique, à la Chapelle Saint Bernardin. Cette présentation est suivie d'un concert gratuit - Inspirations Latines avec Philippe Depetris, flûte, et Pascal Polidori, guitare.",
  user_id: user1.id,
  category_id: category1.id,
  )

Event.create(
  title:    "MONDIAL FOOTVOLLEY",
  start_day: Date.new(2024, 7, 25),
  end_day: Date.new(2024, 7, 28),
  hour: 10,
  minute: 00,
  address: "Pinède Gould, Boulevard Edouard Baudoin 06600",
  city: "Antibes",
  cost: 0,
  link_event: "https://www.antibes-juanlespins.com/information/agenda/mondial-footvolley",
  content: "Durant ces 3 jours, les 16 meilleures équipes du monde (Brésil, Paraguay, Israël, Espagne, Italie, Allemagne, Portugal, Autriche, Emirats Arabes Unis, Uruguay, Royaume-Uni, USA, Suisse, Pays-Bas, Argentine et France) sont en lice pour tenter de succéder à l'équipe du Brésil, tenante du titre.",
  user_id: user1.id,
  category_id: category3.id,
  )

Event.create(
  title:    "Les Ateliers de Magali",
  start_day: Date.new(2024, 6, 29),
  end_day: Date.new(2024, 6, 30),
  hour: 15,
  minute: 00,
  address: "26 rue Bonaparte 06300",
  city: "Nice",
  cost: 15,
  link_event: "https://www.lesateliersdemagali.com/",
  content: "Manipuler la terre et l'eau et apprendre des gestes ancestraux... Les ateliers de Magali à Nice : à découvrir absolument ! Des activités manuelles et ludiques pour découvrir la poterie à partir de 3 ans, et apprendre à imaginer et créer de ses mains des objets déco.",
  user_id: user1.id,
  category_id: category4.id,
  )

Event.create(
  title:    "Exposition «Tintin, Hergé et Tchang »",
  start_day: Date.new(2024, 1, 27),
  end_day: Date.new(2024, 6, 30),
  hour: 10,
  minute: 30,
  address: "Espace culturel Lympia",
  city: "Nice",
  cost: 0,
  link_event: "https://recreanice.fr/expo-visite-ateliers-espace-lympia-nice",
  content: "Un parcours passionnant à travers la vie et l'oeuvre d'Hergé qui dévoile des planches de bandes dessinées bien connues et illustrations originales, mais aussi son travail artistique plus large et une partie de sa collection d'art. Et profitez de visites guidées en famille et de nombreux ateliers d'initiation à la bande dessinée, pour tout savoir sur la construction d'une planche de BD.",
  user_id: user1.id,
  category_id: category5.id,
  )

Event.create(
  title:    "EXPOSITION ATHLÈTES EXTRAORDINAIRES L'AVENTURE DE L'HANDISPORT ET DU SPORT ADAPTÉ",
  start_day: Date.new(2024, 6, 29),
  end_day: Date.new(2024, 6, 30),
  hour: 10,
  minute: 00,
  address: "Médiathèque Albert Camus",
  city: "antibes",
  cost: 0,
  link_event: "https://www.antibes-juanlespins.com/information/agenda/exposition-athletes-extraordinaires-laventure-de-lhandisport-et-du-sport-adapte",
  content: "La Médiathèque Albert Camus accueille du 1er au 29 juin, l'exposition Athlètes extraordinaires l'aventure de l'handisport et du sport adapté.",
  user_id: user1.id,
  category_id: category5.id,
  )


Event.create(
  title:    "Festival Rue(Z) & vous",
  start_day: Date.new(2024, 7, 5),
  end_day: Date.new(2024, 7, 7),
  hour: 18,
  minute: 30,
  address: "895 chemin de saint claude",
  city: "antibes",
  cost: 0,
  link_event: "https://recreanice.fr/festival-ruez-vous-juillet-valbonne-sophia-antipolis-sorties-vacances",
  content: "Venez découvrir des spectacles de rues pour toute la famille : du cirque aérien, acrobatique, burlesque...et un final explosif ! Du Théâtre, de la musique, de la danse, des arts du feu, des clowns, des acrobates, des jongleurs, des marionnettes…",
  user_id: user1.id,
  category_id: category4.id,
  )


Event.create(
  title:    "Antiquité brocante",
  start_day: Date.new(2024, 6, 29),
  end_day: Date.new(2024, 6, 30),
  hour: 06,
  minute: 00,
  address: "Place nationale 06600",
  city: "Antibes",
  cost: 0,
  link_event: "https://brocabrac.fr/06/antibes/1194420-antiquite-brocante",
  content: "Nombreux stand de brocanteur au centre de la ville",
  user_id: user2.id,
  category_id: category2.id,
  )

Event.create(
  title:    "FÊTE DE LA SAINT JEAN",
  start_day: Date.new(2024, 6, 29),
  end_day: Date.new(2024, 6, 29),
  hour: 18,
  minute: 00,
  address: "Base nautique, Boulevard James Wyllie 06600",
  city: "Antibes",
  cost: 0,
  link_event: "https://www.antibes-juanlespins.com/information/agenda/fete-de-la-saint-jean",
  content: "L'ASOA Antibes fête la Saint Jean le samedi 29 juin avec une soirée de fête à la base nautique de la Salis à partir de 18h",
  user_id: user2.id,
  category_id: category4.id,
  )


Event.create(
  title:    "1ER BULLPADEL SHOW",
  start_day: Date.new(2024, 6, 28),
  end_day: Date.new(2024, 6, 29),
  hour: 15,
  minute: 00,
  address: "Pinède Gould, Boulevard Edouard Baudoin 06600",
  city: "Antibes",
  cost: 19,
  link_event: "https://padel-show.fr/",
  content: "Durant 2 soirées festives, les équipes emmenées par le basketteur Tony Parker et le footballeur, champion du monde 98, Robert Pires s'affrontent lors de rencontres qui s'annoncent déjà spectaculaires.",
  user_id: user3.id,
  category_id: category3.id,
  )

Event.create(
  title:    "63E JAZZ À JUAN",
  start_day: Date.new(2024, 7, 8),
  end_day: Date.new(2024, 7, 18),
  hour: 19,
  minute: 00,
  address: "Pinède Gould, Boulevard Edouard Baudoin 06600",
  city: "Antibes",
  cost: 30,
  link_event: "https://jazzajuan.com/",
  content: "La 63e édition de Jazz à Juan pose un nouveau regard à la frontière entre traditions et influences contemporaines",
  user_id: user3.id,
  category_id: category1.id,
  )
