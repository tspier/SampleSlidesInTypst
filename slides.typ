#import "@preview/polylux:0.3.1": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  footer: [],
)

#show footnote.entry: set text(size: 10pt)

#set text(font: "Fira Sans", weight: "light", size: 25pt)
#show math.equation: set text(font: "Fira Sans")
#set strong(delta: 100)
#set par(justify: true)

#title-slide(
  author: [*Author*],
  title: "Title of Presentation",
  subtitle: "",
  date: "Affiliation",
)

#slide(title: "Today's Agenda")[
  + Item
  + Item
  + Item
    - Item
    - Item
  + Item
  // #metropolis-outline
]

#slide(title: "Sample Slide with Text")[
  #lorem(50)
]

#slide(title: "Sample Slide with Stylized Text")[
  Text can be printed normally, _in italics_, *in bold*, #underline[underlined], or even as clickable links like #link("https://www.google.com") with footnotes. #footnote[This is a sample footnote.]
]

#slide(title: "Sample Slide with an Alert")[
  This is a slide with a title and #alert[*important*] info.
]

#slide(title: "Sample Slide with Block Quote")[
  #set quote(block: true)
  #quote(attribution: [Primo Michele Levi])[
    "I mostri esistono, ma sono troppo pochi per essere davvero pericolosi. Sono più pericolosi gli uomini comuni, i funzionari pronti a credere e obbedire senza discutere [...] Occorre dunque essere diffidenti con chi cerca di convincerci con strumenti diversi dalla ragione, ossia i capi carismatici: dobbiamo essere cauti nel delegare ad altri il nostro giudizio e la nostra volontà."
  ]
]

#slide(title: "Sample Slide with Long Quote and Background Color")[
  #block(
    fill: luma(230),
    inset: 10pt,
    radius: 4pt,
    text(18pt)["Then a terrible commotion was set up within me. I analyzed myself to the last thread, compared myself with others, recalled the slightest glances, smiles, words of the people to whom I had tried to open myself out, put the worst construction on everything, laughed vindictively at my own pretensions to 'be' like everyone else--and suddenly, in the midst of my laughter, collapsed utterly into gloom, sank into absurd dejection, and then began again as before--went round and round, in fact like a squirrel on its wheel. Whole days were spent in this harassing, fruitless exercise."]
  )
]

#slide(title: "Sample Slide with Text and One Image")[
  #grid(
    columns: (3fr, 1.5fr),
    rows: (auto),
    gutter: 30pt,
    [#lorem(20)],
    grid.cell(  
      colspan: 1,
      image("okapi.jpg", height: 100%)
    ),
  )
]

#slide(title: "Sample Slide with Two Images (Side-by-Side)")[
  #grid(
    columns: (1fr, 1fr),
    rows: (auto),
    gutter: 0pt,
    grid.cell(  
      colspan: 1,
      image("okapi.jpg")
    ),
    grid.cell(  
      colspan: 1,
      image("okapi.jpg")
    ),
  )
]


#slide(title: "Sample Slide with Normal Table")[
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  fill: (_, y) => if y < 1 { rgb("EAF2F5") },
  stroke: frame(rgb("21222C")),
)

#table(
  columns: (0.5fr, 1fr, 1fr, 0.5fr),

  table.header[*Month*][*Title*][*Author*][*Genre*],
  [January], [_The Great Gatsby_], [F. Scott Fitzgerald], [Classic],
  [February], [_To Kill a Mockingbird_], [Harper Lee], [Drama],
  [March], [_1984_], [George Orwell], [Dystopian],
)
]

#slide(title: "Sample Slide with Booktabs-Style Table")[
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(stroke: (_, y) => if y == 0 { (bottom: 1pt, top: 2pt) })

#table(
  columns: (0.5fr, 1fr, 1fr, 0.5fr),

  table.header[*Month*][*Title*][*Author*][*Genre*],
  [January], [_The Great Gatsby_], [F. Scott Fitzgerald], [Classic],
  [February], [_To Kill a Mockingbird_], [Harper Lee], [Drama],
  [March], [_1984_], [George Orwell], [Dystopian],
  table.hline(stroke: 2pt),
)
]

#slide(title: "Sample Slide with Booktabs-Style Table and Color")[
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  fill: (_, y) => if y < 1 { rgb("EAF2F5") },
  stroke: frame(rgb("21222C")),
)

#set table(stroke: (_, y) => if y == 0 { (bottom: 1pt, top: 2pt) })

#table(
  columns: (0.5fr, 1fr, 1fr, 0.5fr),

  table.header[*Month*][*Title*][*Author*][*Genre*],
  [January], [_The Great Gatsby_], [F. Scott Fitzgerald], [Classic],
  [February], [_To Kill a Mockingbird_], [Harper Lee], [Drama],
  [March], [_1984_], [George Orwell], [Dystopian],
  table.hline(stroke: 2pt),
)
]

#slide(title: "'Magical' Slide")[
  - This is the first item.
  #pause
  - This is the second item.
  #pause
  - This is the third item.
]

#slide(title: "Sample Slide with Math Equation")[
  Here is a sample equation:
  
  $ sum_(k=1)^n k = (n(n+1)) / 2 $
]

#focus-slide[
  This is a slide in focus.
]