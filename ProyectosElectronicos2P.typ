#set document(
  title: [25.27 - Sistemas Embebidos],
  author: "Ignacio Sammartino",
  description: "Apunte Proyectos Electronicos(ITBA)",
  keywords: ("typst", "itba")
)

// Configuración global de texto e idioma
#set text(
  lang: "es",
  region: "AR",
  size: 10pt,
  font: "Inter" //Inter, Liberation Sans, Gentium, 
)
 
// Configuración de página con encabezado y pie estilizado
#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2cm, x: 1.8cm),
  footer: context [
    #line(length: 100%, stroke: 0.4pt + luma(200))
    #v(2pt)
    #grid(
      columns: (1fr, 1fr),
      align(left)[#text(size: 8pt, fill: luma(120))[Instituto Tecnológico de Buenos Aires]],
      align(right)[#text(size: 8.5pt, weight: "bold", fill: luma(100))[Página #counter(page).display("1 / 1", both: true)]]
    )
  ],
  numbering: "1 / 1"
)


#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

// Personalización estilizada de los títulos
#show heading.where(level: 1): it => block(
  width: 100%,
  fill: rgb("#eef3f8"),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
  stroke: (left: 4pt + rgb("#1a3a6b")),
  above: 1.6em,
  below: 1em,
)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1a3a6b"))[#it.body]
]

#show heading.where(level: 2): it => block(
  above: 1.3em,
  below: 0.7em,
)[
  #text(size: 11pt, weight: "bold", fill: rgb("#2b5b84"))[#it.body]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
]

#show heading.where(level: 3): it => text(size: 10pt, weight: "bold", fill: rgb("#334155"))[#it.body]

// Estilos de bloques de código
#show raw.where(block: true): set block(
  fill: rgb("#f8fafc"),
  stroke: 0.5pt + rgb("#cbd5e1"),
  inset: 8pt,
  radius: 4pt,
  width: 100%
)
#show raw.where(block: false): it => highlight(
  fill: rgb("#f1f5f9"),
  extent: 1.5pt,
  radius: 2pt,
  it
)



// =====================================================================
// PORTADA Y ENCABEZADO PRINCIPAL
// =====================================================================



#align(center)[
  #text(size: 18pt, weight: "bold", fill: rgb("#1a3a6b"))[Instituto Tecnológico de Buenos Aires (ITBA)] \
  #v(0.3em)
  #figure(
  image("files/images/indice/itbaSVG_black.svg", width: 80%)
  ) <fig:indice>
  #text(size: 14pt, weight: "bold", fill: rgb("#2b5b84"))[Proyectos Electronicos] \
  #v(0.2em)
  #text(size: 12pt, style: "italic", fill: luma(80))[Resumen 2do Parcial] \
  #v(0.5em)
  #box(
    fill: rgb("#eef3f8"),
    inset: (x: 12pt, y: 6pt),
    radius: 4pt,
    stroke: 0.5pt + rgb("#1a3a6b")
  )[
    #text(size: 9pt, weight: "bold")[Ignacio Sammartino ]
  ]
]

#set page(
  header: context [
    #grid(
      columns: (1fr, auto),
      align: center,
      [#align(left)[Proyectos Electronicos - Resumen 2do Parcial]],
      [#align(right)[#image("files/images/indice/itbaSVG.svg", width: 30%)]]
    )
  ],
  numbering: "1 of 1",
  columns: 1,
)


#set page(columns: 2)
#outline(depth: 3)
#set page(columns: 1)


#pagebreak()
#include "files/DFMEA.typ"

#pagebreak()
#include "files/FactibilidadEconomica.typ"

#pagebreak()
#include "files/Testeo.typ"

#pagebreak()
#include "files/Manufacturabilidad.typ"

//#pagebreak()
//#include "files/Formulacion.typ"
