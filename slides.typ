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

#let image-slide(body, background: none) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(
    self,
    config-page(
      background: background,
      margin: 2em,
    ),
  )
  set text(fill: self.colors.neutral-lightest, size: 2em)
  set image(width: 100%,height: auto)
  touying-slide(self: self, align(horizon + center, body))
})

//#title-slide()

// =============================================================================
// Introduction
// =============================================================================

#section-slide[Soirée Montagne]

//== Quel est donc le thème de ce soir ?

#image-slide(background:image("img/vautour_glacier.jpg"))[
  #place[ Quel est donc le thème de ce soir ?]
]




#image-slide(background:image("img/vautour_proche.jpg"))[
  #place[ Les oiseaux ?]
]

#image-slide(background:image("img/vautour_proche2.jpg"))[
  #place[ Les grands oiseaux ? charognards ? Vautour fauves ?]
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
  #place[ Le thème de ce soir c'est le glacier !]
]

#image-slide(background:image("img/glacier-viedma.jpg"))[
  #place[ Euuu CE type de glacier !]
]

#image-slide(background:image("img/lagrave.jpg"))[
  #place[ La grave (La Meige) et les 2 alpes.]
]


== Comment se forment les glaciers ?
== Combien avons-nous de glaciers en France ? En Europe ?
== De quand date la dernière période glaciaire ?
== Vitesse de déplacement d'un glacier ?
== Jusqu'à quand verra-t-on encore des glaciers ? Monde en France?
== Où est le plus grand glacier du monde ?

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

#image-slide(background:image("img/glace_eau_vent.jpg"))[
  #place[ Bord d'océan, bord de mer, bord de lac ou bord de rivière ?]
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
  #place[ Bord de LAC !]
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
