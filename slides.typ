#import "@preview/polylux:0.3.1": *
#import themes.metropolis: *
#import "@preview/plotst:0.2.0": *

#show: metropolis-theme.with(
  footer: [],
)

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
  Text can be printed normally, _in italics_, *in bold*, #underline[underlined], or even as clickable links like #link("https://www.google.com") with footnotes. #footnote[https://www.google.com]
]

#slide(title: "Sample Slide with an Alert")[
  This is a slide with a title and #alert[important] info.
]

#slide(title: "Sample Slide with Block Quote")[
  #set quote(block: true)
  #quote(attribution: [Plato])[
    "[...] ἔοικα γοῦν τούτου γε σμικρῷ τινι αὐτῷ τούτῳ σοφώτερος εἶναι, ὅτι ἃ μὴ οἶδα οὐδὲ οἴομαι εἰδέναι."
  ]
]

#slide(title: "Sample Slide with Long Quote and Background Color")[
  #block(
    fill: luma(230),
    inset: 15pt, // this adjusts the internal padding
    radius: 4pt, // this adjusts the corners' roundedness
    [#lorem(30)]
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

#slide(title: "'Magical' Slide")[
  - This is the first item.
  #pause
  - This is the second item.
  #pause
  - This is the third item.
]

#slide(title: "Sample Slide with Math Equation")[
  Here is a sample equation:
  
  $ x_(n+1) = (x_n + a/x_n) / 2 $
]

#slide(title: "Sample Slide with Graph Plot")[
  #let data = (
    (0, 0), (2, 2), (3, 0), (4, 4), (5, 7), (6, 6), (7, 9), (8, 5), (9, 9), (10, 1)
  )
  #let x_axis = axis(min: 0, max: 11, step: 2, location: "bottom")
  #let y_axis = axis(min: 0, max: 11, step: 2, location: "left", helper_lines: false)

  #let pl = plot(data: data, axes: (x_axis, y_axis))
  #graph_plot(pl, (100%, 100%))
]

#slide(title: "Sample Slide with Bar Chart")[
  #let data = ((10, "Monday"), (5, "Tuesday"), (15, "Wednesday"), (9, "Thursday"), (11, "Friday"))

  #let y_axis = axis(values: ("", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"), location: "left", show_markings: true)
  #let x_axis = axis(min: 0, max: 20, step: 2, location: "bottom", helper_lines: true)
  
  #let pl = plot(axes: (x_axis, y_axis), data: data)
  #bar_chart(pl, (100%, 100%), fill: (purple, blue, red, green, yellow), bar_width: 70%, rotated: true)
]

#focus-slide[
  This is a slide in focus.
]
