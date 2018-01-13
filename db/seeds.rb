Section.destroy_all
Testimonial.destroy_all
Feature.destroy_all

section_params = [
  {
    title: "Bienvenue au Bacha",
    text: "Idéal pour les amoureux de la nature pour lesquels vacances riment avec confort, sport, détente et grands espaces.

          La vallée de la Clarée est réputée pour sa beauté, sa pureté, son ensoleillement, son enneigement et ses activités de pleine nature.

          Attention, on tombe facilement sous la charme de cette vallée secrète !",
  },
  {
    title: "Le duplex",
    text: "Si vous aimez le charme de l’ancien, la nature, l’espace et le calme et que vous tenez à votre confort, ce grand duplex de 160 m² est fait pour vous. Il est aménagé sur deux niveaux dans un grand chalet ancien, l’autre partie étant restée « dans son jus ».
          Situé dans le hameau de ville basse, en retrait de rue, il est en bordure de prairies, à 10 mn à pied de la boulangerie et à proximité des pistes de ski de fonds.  L’été vous avez la possibilité de faire une randonnée différente chaque jour de  la semaine sans prendre votre voiture.
          Son grand jardin privatif, orienté vers l’est et son balcon au sud vous permettront de profiter du généreux soleil de Névache.

          Son mobilier et sa déco, mélange d’ancien et de moderne, lui donnent un charme certain.

          La literie est neuve ou très récente. Tous les lits sont équipés de couettes douillettes.

          Vous avez la possibilité de louer des draps.

          La maison doit être rendue propre mais une prestation ménage de fin de séjour est possible.

          Nos amis les animaux sont les bienvenus à condition qu’ils soient bien élevés !

          Pour un séjour en famille nombreuse ou entre amis, tout est mis en oeuvre pour que vous vous y sentiez chez vous.

          Pour les BEBES : une chaise haute, un pot et un lit parapluie sont mis à votre disposition.

          NOUVEAU ! un poêle à bois largement vitré a été installé pour vos soirées d’hiver.",
  },
  {
    title: "Les alentours",
    text: "En été :

          Vous pourrez pratiquer à Névache où dans les proches environs toutes les activités de montagne que vous aimez (marche, escalade, sports d’eaux-vives, alpinisme, VTT…).

          La vallée est véritablement le paradis de la rando : de la simple balade le long du torrent à l’ascension du mythique Mont Thabor, à plus de 3000 mètres d’altitude, vous aurez l’embarras du choix, ceci le plus souvent en laissant la voiture au parking et loin de foule. En pleine saison un service de navettes assure la liaison avec la haute vallée. Si vous êtes discrets et un peu matinaux vous avez toutes les chances de rencontrer des marmottes (abondantes par endroits), des bouquetins (lac des Béraudes) et des chamois. Si vous vous élevez un peu, la plupart des randos offrent une vue féerique sur le massif des Ecrins.

          Plusieurs refuges vous accueillent pour un parfum d’aventure.

          Vous voulez faire aimer la randonnée à vos enfants ? Louez sur place  un âne ou un lama  de bât, ils en oublieront la fatigue et pourront se reposer en grimpant dessus. Succès garanti !

          A Briançon, Serre-Chevalier et Montgenèvre, vous pourrez vous délasser et vous amuser dans de belles piscines et des centres aquatiques ou pratiquer l’escalade dans les arbres.

          Les pêcheurs trouveront leur bonheur dans la Clarée et les nombreux lacs de montagne.

          Sur le plan culturel, vous pourrez visiter les villages de Névache et Plampinet avec leurs chalets, leurs chapelles et surtout leurs églises (visites guidées certains jours), mais également la vieille ville de Briançon, voire vous évader pour la journée à Turin, à 1h30 d’autoroute, qui vaut le déplacement.

          Enfin si vous aimez simplement le farniente, sachez que le climat de Névache  est très agréable : chaud au soleil, mais  frais à l’ombre et froid la nuit pour un sommeil réparateur.

          En hiver :

          45 km de pistes de ski nordique, promenade en raquettes, ski de randonnée, traîneaux à chien : vous aurez l’embarras du choix pour des sports d’hiver en pleine nature.

          5 refuges restent ouverts en hiver.

          Les amateurs de ski alpin, pourront facilement se rendre à Montgenèvre et Serre-Chevalier à 30mn de route environ. De grands parkings pourvus de caisses de remontées mécaniques en rendent l’accès facile.",
  },
  {
    title: "Access",
    text: "Le chalet Raphaëlla/le Bacha est situé au fond de la vallée de Névache dans le hameau de Ville Basse, rue du Général Rostolland.

          En arrivant à Ville  Basse, il faut aller au fond de la première venelle en herbe à droite, rue du Général Rostolland, l’entrée en pignon sud se trouve à environ 40 mètres de la route. L’accès en voiture n’est possible qu’avec de petits véhicules car étroit et uniquement pour décharger les bagages. Il est conseillé après avoir déchargé la voiture de se garer sur la petit parking gratuit situé à l’entrée du hameau à une vingtaine de mètres ou sur le grand parking de Ville Haute, également gratuit.",
  },
]

Section.create!(section_params)

urls = [
'http://img.clubic.com/08254724-photo-xbox-console.jpg',
'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
]

Section.find_each do |section|
  next if section.position == 1
  section.photo_urls = urls
end

##########################################################################################

feature_params = [
  {
    section: Section.first,
    text: "Jardin"
  },
  {
    section: Section.first,
    text: "Wi-Fi inclus"
  },
  {
    section: Section.first,
    text: "TV LED"
  },
  {
    section: Section.first,
    text: "Barbecue"
  },
  {
    section: Section.first,
    text: "Poêle à bois"
  },
  {
    section: Section.first,
    text: "Grands espaces de vie"
  },
  {
    section: Section.first,
    text: "Tout le confort moderne"
  },
  {
    section: Section.first,
    text: "Charme d'un ancien chalet"
  },
  {
    section: Section.all[1],
    text: "4 chambres dont une suite"
  },
  {
    section: Section.all[1],
    text: "10 couchages"
  },
  {
    section: Section.all[1],
    text: "2 Salles de bain"
  },
]

Feature.create!(feature_params)

##########################################################################################

testimonial_params = [
  {
    name: "Brigitte, Anne, Véro, Cathy, Bruno, Pierre B., Pierre R. & Jean Marc",
    content: "Nous voici de retour à Montpellier après avoir passé une semaine formidable dans votre chalet le bacha.

            Nous avons eu une semaine ensoleillée qui nous a permis de randonner tous les jours avec la cerise  sur le gâteau le  dernier jour par l’ascension du mont Thabor.

            Nous tenons à vous signaler également que nous avons apprécié le chalet, nous l’avons trouvé bien agencé, très convivial avec sa grande pièce à vivre où nous prenions nos petits déjeuners et repas du soir : tout y était !!! ",
    date: Date.parse('31/07/2016'),
  },
  {
    name: "Nicolas",
    content: "Ce séjour s’est très bien passé… neige et soleil étaient là.

            Le choix que j’ai fait de votre maison a été parfait. Remerciez Chloé Guellerin pour son efficacité et sa gentillesse

            A Bientôt peut être pour un autre séjour.",
    date: Date.parse('16/03/2017'),
  },
  {
    name: "Christine",
    content: "Nous avons à nouveau passé un excellent séjour dans votre chalet. Nous découvrons toujours de nouvelles randonnées, activités et bonnes adresses dans la merveilleuse vallée de la Clarée. Votre chalet est vraiment parfait, nous apprécions sa situation, sa taille (nous étions très à l’aise à 9), son charme et la magnifique vue. Il est très bien équipé.  Le jardin est très agréable, au calme, privatif, et avec une vue fantastique!",
    date: Date.parse('10/08/2017'),
  },
  {
    name: "Damien",
    content: "Chalet très très agréable, bien installé et paysage superbe
              Merci bcp",
    date: Date.parse('11/08/2014'),
  },
  {
    name: "Christine",
    content: "Nous avons passé un excellent séjour dans votre chalet qui est vraiment très agréable. Nous espérons pouvoir y retourner dans le futur. ",
    date: Date.parse('15/08/2015'),
  },
  {
    name: "Sebastien",
    content: "Nous avons passé une merveilleuse semaine. Nous retenons l’adresse pour l’année prochaine !",
    date: Date.parse('30/03/2015'),
  },
  {
    name: "Rolland & Mireille",
    content: " La maison est toujours aussi agréable, la nouvelle terrasse bien pratique, et nous avons inauguré le barbecue !",
    date: Date.parse('14/06/2016'),
  }
]

Testimonial.create!(testimonial_params)

puts "#{Section.count} sections created"
puts "#{Feature.count} features created"
puts "#{Testimonial.count} testimonials created"
