// 38min25
// 50min50 chute de seracs


// Calmly-Touying Presentation Template
// A calm, modern presentation theme with Moloch-inspired design
//
// Documentation: https://github.com/YHan228/calmly-touying

#import "@preview/calmly-touying:0.2.0": *

// Configure your presentation
#show: calmly.with(
  config-info(
    title: [Your Presentation Title],
    subtitle: [Conference or Event Name],
    author: [Your Name],
    date: datetime.today(),
    institution: [Your Institution],
  ),
  // Theme options (all optional):
  // variant: "light",        // "light" | "dark"
  // colortheme: "tomorrow",  // "tomorrow" | "warm-amber" | "paper" | "dracula"
  // progressbar: "foot",     // "foot" | "head" | "frametitle" | "none"
  // header-style: "moloch",  // "moloch" | "minimal"
  // title-layout: "moloch",  // "moloch" | "centered" | "split"
)

#let image-slide-height(body, background: none) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(
    self,
    config-page(
      background: background,
      margin: 2em,
    ),
  )
  set text(fill: self.colors.neutral-lightest, size: 2em)
  set image(width: auto,height: 100%)
  touying-slide(self: self, align(horizon + center, body))
})


#let image-slide(body, background: none) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(
    self,
    config-page(
      background: background,
      margin: 2em,
    ),
  )
  set text(fill: self.colors.neutral-lightest, size: 2em)
  set image(width: 100%, height: auto)
  //touying-slide(self: self, align(horizon + center, body))
  touying-slide(self: self, body)
})

#let my_box_nojump(body) = context {
  let content = text(fill: white, weight: "bold")[#body]
  let size = measure(content)

  box(
    width: size.width + 1.2em,
    fill: rgb(0, 0, 0, 150),
    inset: 0.6em,
    radius: 0.3em,
  )[
    #content
  ]
}


#let my_box(body) = {
      box(
        fill: rgb(0, 0, 0, 150),
        inset: 0.6em,
        radius: 0.3em,
      )[
        #text(fill: white, weight: "bold")[#body]
      ]
}

//#title-slide()

// =============================================================================
// Introduction
// =============================================================================

#section-slide[Soirée Montagne]

//== Quel est donc le thème de ce soir ?

#image-slide(background:image("img/vautour_glacier.jpg"))[
  #place[
      #box(
        fill: rgb(0, 0, 0, 150),
        inset: 0.6em,
        radius: 0.3em,
      )[
        #text(fill: white, weight: "bold")[Quel est donc le thème de ce soir ?]
      ]
    ]
]


#image-slide(background:image("img/vautour_proche.jpg"))[
  #place[
      #box(
        fill: rgb(0, 0, 0, 150),
        inset: 0.6em,
        radius: 0.3em,
      )[
        #text(fill: white, weight: "bold")[Les oiseaux ?]
      ]
    ]
]

#image-slide(background:image("img/vautour_proche2.jpg"))[
  #place(top, dy: -1.5em)[
      #box(
        fill: rgb(0, 0, 0, 150),
        inset: 0.6em,
        radius: 0.3em,
      )[
        #text(fill: white, weight: "bold")[ Les grands oiseaux ? charognards ? Vautour fauves ?]
      ]
    ]
]

== Un indice: Qu'est-ce qu'on entend ?

#v(3em)

// 38min25
// 50min50 chute de seracs
#two-col(
  [
    #themed-block(title: "Réponse A: Le vent")[
        fiouuuuuu...
    ]
    #themed-block(title: "Réponse B: Une cascade")[
        pllsssshhshchch...
    ]
  ],
  [
    #themed-block(title: "Réponse C: La pluie")[
      pchsssehshhhsh...
    ]
    #themed-block(title: "Réponse D: Un glacier")[
      pgreeeergrcrac...
    ]
  ],
)

== Et oui ! On entend Le vent et les craquements de vie d'un glacier.

#v(3em)

// 38min25
#two-col(
  [
    #example-box(title: "Réponse A: Le vent")[
        fiouuuuuu...
    ]
    #alert-box(title: "Réponse B: Une cascade")[
        pllsssshhshchch...
    ]
  ],
  [
    #alert-box(title: "Réponse C: La pluie")[
      pchsssehshhhsh...
    ]
    #example-box(title: "Réponse D: Un glacier")[
      pgreeeergrcrac...
    ]
  ],
)

#image-slide(background:image("img/glace-italienne.jpg"))[
  #place[
      #box(
        fill: rgb(0, 0, 0, 150),
        inset: 0.6em,
        radius: 0.3em,
      )[
        #text(fill: white, weight: "bold")[Le thème de ce soir c'est le glacier !]
      ]
    ]
]

#image-slide(background:image("img/glacier-viedma.jpg"))[
  #place(top, dy: -1.5em)[
  #box(
    fill: rgb(0, 0, 0, 150),
    inset: 0.6em,
    radius: 0.3em,
  )[
    #text(fill: white, weight: "bold")[Enfin ... CE type de glacier !]
  ]
]
]

#image-slide(background:image("img/lagrave.jpg"))[
#block(width: 100%, height: 100%)[
#place(top, dy: -1.5em)[
  #box(
    fill: rgb(0, 0, 0, 150),
    inset: 0.6em,
    radius: 0.3em,
  )[
    #text(fill: white, weight: "bold")[ Glacier de la Girose (La Meije et le Râteau) et du Mantel (2 alpes).]
  ]
  ]
]
]


== Comment se forment les glaciers ?
#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: Accumulation de grêle")[
        Plein de glaçons forment un gros glaçons
    ]
    #themed-block(title: "Réponse B: Rivière qui gèle")[
        comme une grosse cascade de glace
    ]
  ],
  [
    #themed-block(title: "Réponse C: Accumulation de neige qui se tasse pas son propre poids")[
        Comme un bonhomme de neige
    ]
    #themed-block(title: "Réponse D: Chute de sérac et accumulation de neige")[
        Une corrida avec bonhomme de neige et des stalactites
    ]
  ],
)


== Réponses

#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: Accumulation de grêle")[
        Plein de glaçons forment un gros glaçons
    ]
    #alert-box(title: "Réponse B: Rivière qui gèle")[
        comme une grosse cascade de glace
    ]
  ],
  [
    #example-box(title: "Réponse C: Accumulation de neige qui se tasse pas son propre poids")[
        Comme un bonhomme de neige
    ]
    #example-box(title: "Réponse D: Chute de sérac et accumulation de neige")[
        Une corrida avec bonhomme de neige et des stalactites
    ]
  ],
)

== Comment se forme un glacier: Le Bilan de Masse

#figure(
  image("img/BDM.png", width: 70%),
) 

#figure(
  image("img/bilan-masse.jpg", width: 70%),
) 

#figure(
  image("img/bilan_masse_glacier-suisse-e-reynard-unifrch.jpg", width: 70%),

) 


== Vitesse moyenne de mouvement d'un glacier
#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: quelques centimètres à quelques dizaines de centimètres par jour")[
        Allez tranquillement
    ]
    #themed-block(title: "Réponse B:  quelques mètres par jour")[
        un peu plus vite quand même
    ]
  ],
  [
    #themed-block(title: "Réponse C: quelques millimètres à quelques centimètres par jour")[
        Oula ! pas si vite malheureux
    ]
    #themed-block(title: "Réponse D:  quelques dizaines de mètres par jour")[
        Eh oh! on n'a pas le temps nous
    ]
  ],
)

== Vitesse moyenne de mouvement d'un glacier
#v(3em)
#two-col(
  [
    #example-box(title: "Réponse A: quelques centimètres à quelques dizaines de centimètres par jour")[
    ]
    #alert-box(title: "Réponse B:  quelques mètres par jour")[
    ]
  ],
  [
    #alert-box(title: "Réponse C: quelques millimètres à quelques centimètres par jour")[
    ]
    #alert-box(title: "Réponse D:  quelques dizaines de mètres par jour")[
    ]
  ],
)


== Quelques types de glaciers

- Glacier de Vallée
- Glacier suspendu
- Glacier régénéré
- Glacier de cirque
- Calotte locale
- Inlandsis

== La mer de glace c'est

#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: un glacier suspendu")[
    ]
    #themed-block(title: "Réponse B: un glacier de cirque")[
    ]
  ],
  [
    #themed-block(title: "Réponse C: un glacier régénéré")[
    ]
    #themed-block(title: "Réponse D: un glacier de vallée")[
    ]
  ],
)

== La mer de glace c'est évident non?

#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: un glacier suspendu")[
    ]
    #alert-box(title: "Réponse B: un glacier de cirque")[
    ]
  ],
  [
    #alert-box(title: "Réponse C: un glacier régénéré")[
    ]
    #example-box(title: "Réponse D: un glacier de vallée")[
    ]
  ],
)

== Combien y a-t-il de glaciers (Monde, Alpes, France)?

#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: 3000 / 1000 / 30")[
        Environ hein
    ]
    #themed-block(title: "Réponse B: 30000 / 5000 / 1200")[
        Un peu plus quand même
    ]
  ],
  [
    #themed-block(title: "Réponse C: 275000 / 11562 / 600")[
        Plutôt plus dans le monde et moins en France
    ]
    #themed-block(title: "Réponse D: Trop difficile à compter")[
      Bah oui déjà pour la Vanoise on en compte un ou 12 ?
    ]
  ],
)

== De moins en moins

#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: 3000 / 1000 / 30")[
        Environ hein
    ]
    #alert-box(title: "Réponse B: 30000 / 5000 / 1200")[
        Un peu plus quand même
    ]
  ],
  [
    #example-box(title: "Réponse C: 274000 / ~3000 / 600")[
        C'est Copernicus qui le dit (https://climate.copernicus.eu/climate-indicators/glaciers#Notes)
    ]
    #example-box(title: "Réponse D: Trop difficile à compter en plus n'arrête pas de diminuer :-(")[
      Bah oui déjà pour la Suisse on passe de 2500 à 1200 sur les 50 dernières années.
    ]
  ],
)

#image-slide(background:image("img/carte_glacier_europe.png"))[
  #place(top, dy: -1.5em)[
    #my_box[ Petite carte des glaciers en Europe]
  ]
]

#figure(
  image("img/Eurasia_countries.jpg", height: 100%),

) 

#image-slide(background:image("img/Marmolada-Dolomites.png"))[
  #place(top, dy: -1.5em)[
    #my_box[Marmolada classé à l'UNESCO (disparu d'ici 2040).]
  ]
]

#image-slide-height(background:image("img/carte_glaciers_vanoises.jpg"))[
  //#place[ text(black)[Que peut-on voir de crève tête?]]
  //#place[ Marmolada classé à l'UNESCO (disparu d'ici 2040).]
]


== Et ça représente beaucoup d'eau les glaciers ?
#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: Un quart de l'eau de mer")[
    ]
    #themed-block(title: "Réponse B: Un quart de l'eau douce")[
    ]
  ],
  [
    #themed-block(title: "Réponse C: La moitié de l'eau douce")[
    ]
    #themed-block(title: "Réponse D: 70% de l'eau douce")[
    ]
  ],
)

== Et ça représente beaucoup d'eau les glaciers ?
#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: Un quart de l'eau de mer")[
    ]
    #alert-box(title: "Réponse B: Un quart de l'eau douce")[
    ]
  ],
  [
    #alert-box(title: "Réponse C: La moitié de l'eau douce")[
    ]
    #example-box(title: "Réponse D: 70% de l'eau douce")[
    ]
  ],
)


== De quand date la dernière période glaciaire ?
#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: -10 000 ans")[
        C'était Würm
    ]
    #themed-block(title: "Réponse B: -100 000 ans")[
        Y a longtemps quand même
    ]
  ],
  [
    #themed-block(title: "Réponse C: y a 2 décennies")[
        Oui j'ai des photos
    ]
    #themed-block(title: "Réponse D: 1850")[
        Avant l'aire industrielle non?
    ]
  ],
)

#image-slide-height(background:image("img/mer_de_glace_dessin.png"))[
  #place[]
]

#image-slide-height(background:image("img/berarde.jpg"))[
  #place(top, dx: 2em,dy: -1.5em)[
    #my_box_nojump[La Bérarde après le 21 juin 2024]
  ]
]

#image-slide-height(background:image("img/Berarde-avant-BANDEAU-1024x576.jpg"))[
  #place[]
]

#image-slide-height(background:image("img/Berarde-apres-BANDEAU-1024x575.jpg"))[
  #place[]
]

#image-slide-height(background:image("img/larose-berarde-bonnepierre-05.jpg"))[
  #place[]
]

#image-slide-height(background:image("img/blatten.jpg"))[
  #place(top, dx: 2em,dy: -1.5em)[
    #my_box[Blatten (Suisse) 28 mai 2025, effondrement du glacier du Birch]
  ]
]

#image-slide-height(background:image("img/lavetorrentielle.jpg"))[
  #place(top, dx:-1.5em,dy: 2.5em)[
    #my_box[Laves \
torrentielles]
  ]
]

== Comment peut-on se protéger de l'événement de la Bérarde ?

#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: En évacuant les gens juste avant")[
        Avec des capteurs sur les lacs
    ]
    #themed-block(title: "Réponse B: En évacuant l'eau du lac")[
        Il faudrait une genre de super pelle mécanique....
    ]
  ],
  [
    #themed-block(title: "Réponse C: en ne vivant plus en montagne")[
        de toute façon c'est trop dangereux
    ]
    #themed-block(title: "Réponse D: en construisant des bunkers partout")[
        Oui voilà
    ]
  ],
)

== Comment peut-on se protéger de l'événement de la Bérarde ?

#v(3em)
#two-col(
  [
    #example-box(title: "Réponse A: En évacuant les gens juste avant")[
        Comme en Suisse pour le village de Blatten (glacier de Birch)
    ]
    #example-box(title: "Réponse B: En évacuant l'eau du lac")[
        Je veux une pelle mécanique araignée pour Noël !
    ]
  ],
  [
    #alert-box(title: "Réponse C: en ne vivant plus en montagne")[
        euuuu
    ]
    #alert-box(title: "Réponse D: en construisant des bunkers partout")[
        ...
    ]
  ],
)

#image-slide(background:image("img/pelle_araignee.jpg"))[
  #place
  #place(top, dx: -2em,dy: -1.5em)[
    #my_box_nojump[Tignes : vidange du lac glaciaire du Rosolin]
  ]
]

== Pourcentage de glace totale dans les Calottes Polaires ?
#v(3em)
#two-col(
  [
    #themed-block(title: "Réponse A: 25% de la glace totale")[
    ]
    #themed-block(title: "Réponse B: 45% de la glace totale")[
    ]
  ],
  [
    #themed-block(title: "Réponse C: 75% de la glace totale")[
    ]
    #themed-block(title: "Réponse D: 95% de la glace totale")[
    ]
  ],
)

== AH ouais ça fait beaucoup quand même
#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: 25% de la glace totale")[
    ]
    #alert-box(title: "Réponse B: 45% de la glace totale")[
    ]
  ],
  [
    #alert-box(title: "Réponse C: 75% de la glace totale")[
    ]
    #example-box(title: "Réponse D: 95% de la glace totale")[
    ]
  ],
)

#image-slide(background:image("img/glace_eau_vent.jpg"))[
  #place(top, dx: -1em, dy: -1.5em)[
    #my_box_nojump[bord d'océan, de mer, de lac ou de rivière ?]
  ]
]

==  Où se situe-t-on ?

#v(3em)

#two-col(
  [
    #themed-block(title: "Réponse A: Bord de mer")[
        Grande motte ?
    ]
    #themed-block(title: "Réponse B: Bord d'océan")[
        Biarritz ?
    ]
  ],
  [
    #themed-block(title: "Réponse C: Bord de lac")[
        Le Bourget ?
    ]
    #themed-block(title: "Réponse D: Bord de rivière")[
        L'Amazone?
    ]
  ],
)

== Proche d'un glacier on peut avoir du vent CATABATIQUE.

#v(3em)
#two-col(
  [
    #alert-box(title: "Réponse A: Bord de mer")[
        Après y avait pas un seul parasol...
    ]
    #alert-box(title: "Réponse B: Bord d'océan")[
        Meme argument...
    ]
  ],
  [
    #example-box(title: "Réponse C: Bord de lac")[
        Phénomène du vent catabatique créé par la masse de glace.
    ]
    #alert-box(title: "Réponse D: Bord de rivière")[
        pas vu de crocodile non plus...
    ]
  ],
)

#image-slide(background:image("img/bord-de-lac.jpg"))[
  #place(top, dy: -1.5em, dx: 10em)[
    #my_box([ Bord de LAC !])
  ]
]

#image-slide(background:image("img/as1.JPG"))[
  #place[]
]
#image-slide(background:image("img/as2.JPG"))[
  #place[]
]
#image-slide(background:image("img/as3.JPG"))[
  #place[]
]
#image-slide(background:image("img/as4.JPG"))[
  #place[]
]

#image-slide(background:image("img/mer-glace-cosmique.jpg"))[
  #place(top, dy: -1.5em)[
    #my_box([Mer de Glace depuis les Cosmiques])
  ]
]

#image-slide(background:image("img/montblanc-cosmique.jpg"))[
  //#place[
  #place(top, dy: -1.5em)[
      #my_box([Mont Blanc depuis les Cosmiques])
    ]
]

#ending-slide(
  title: [Merci pour votre attention],
  subtitle: [Je vous souhaite une très bonne semaine !],
  contact: (
    "Hugo Brunie",
    "bruniehugo@gmail.com",
    "06 42 57 29 23"
  ),
)

== Sources

- Thèse de Marie Gardent : Inventaire et retrait des glaciers dans les alpes françaises
depuis la fin du Petit Age Glaciaire
- France Inter : L'histoire des glaciers alpins
- https://www.touteleurope.eu/environnement/
- https://www.vanoise-parcnational.fr
- https://www.homoalpinus.com/alpes/glaciologie/
- Montagnes Magazine
- Glaciers - Enquête sur une disparition | Documentaire | ARTE
- wikipedia
- https://geomorphologie-montagne.ch/fiche-glacier-11/
- https://pedagotech.inp-toulouse.fr/210813/co/BDMG.html
- https://www.futura-sciences.com/planete/definitions/climatologie-bilan-masse-12867/
- https://alpinemag.fr/premiers-elements-analyse-geomorphologique-crue-berarde/
- https://alpinemag.fr/berarde-premieres-conclusions-enquete-scientifique-origine-catastrophe/
- https://www.wsl.ch/fr/a-propos-du-wsl/installations-experimentales-et-laboratoires/installations-experimentales-sur-les-dangers-naturels/feldbeobachtungen-und-datenerhebung/station-dobservation-de-laves-torrentielles/

