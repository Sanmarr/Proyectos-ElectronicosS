#set document(title: "DFMEA - Resumen")
#set page(paper: "a4", margin: 2cm, numbering: "1")
#set text(lang: "es", size: 11pt)
#set par(justify: true, leading: 0.7em)
#set heading(numbering: none)

// Imagen que vos colocás manualmente
#let imagen(desc) = figure(
  rect(width: 100%, height: 6cm, fill: rgb("#f0f0f0"), stroke: 1pt + gray)[
    #align(center + horizon)[#text(fill: gray)[🖼️ #desc]]
  ]
)

// Caja de concepto clave
#let clave(titulo, cuerpo) = block(
  fill: rgb("#eef6e8"),
  stroke: (left: 3pt + rgb("#7fb241")),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[*#titulo:* #cuerpo]



// =====================================================
=  ¿Qué es la DFMEA?

La DFMEA es un *análisis sistemático del diseño* para identificar, cuantificar y reducir riesgos *antes* de que se conviertan en fallas del producto.

*Para qué sirve:*
- Definir y guiar un proceso de diseño lógico.
- Identificar, cuantificar y reducir el riesgo de diseño.
- Dejar un documento trazable del diseño y el desarrollo.
- Justificar las decisiones de diseño.
- Favorecer la mejora continua del producto.

*Cómo se trabaja:* es una *tarea de equipo multidisciplinario*, no una reunión única. Se revisa y actualiza durante todo el desarrollo, y abarca sistema, subsistemas y componentes.

#clave("Idea central")[La DFMEA es un *documento vivo*: se revisa con frecuencia.]

== Entradas, salidas y lógica de una fila

*Entradas:*
- Requerimientos de diseño y regulaciones.
- BOM (lista de componentes) y hardware específico.
- Dibujos, simulaciones y descripciones de sistemas y componentes.
- Experiencia previa, lecciones aprendidas, normas (por ejemplo ASME) y aportes de clientes y proveedores.

*Salidas:*
- *RPN* (Risk Priority Number) y ranking de riesgos.
- Características críticas y especiales.
- Acciones y documentación trazable para clientes internos o externos.

#clave("Ojo")[El RPN y la criticidad *no son entradas*: son resultados del análisis.]

*Secuencia conceptual de una fila:*
#table(
  columns: (1fr, 3fr),
  inset: 7pt,
  fill: (x, y) => if y == 0 { rgb("#dfe8d4") },
  [*Concepto*], [*Pregunta que responde*],
  [Función], [¿Qué debe hacer la parte o sistema?],
  [Modo de falla], [¿Qué puede salir mal respecto de esa función?],
  [Efecto], [¿Qué consecuencia produce la falla?],
  [Causa / mecanismo], [¿Por qué ocurre? ¿Qué debilidad de diseño la origina?],
)

Un modo de falla puede tener varias causas. Además, según el nivel jerárquico, un modo de falla de un componente puede ser *causa* a nivel subsistema o *efecto* de un nivel inferior.

== Severidad, Ocurrencia y Detección

$ "RPN" = "S" dot "O" dot "D" quad (1 <= "RPN" <= 1000) $

#clave("Sentido de las escalas")[
  - *S* sube cuando el efecto es peor.
  - *O* sube cuando la falla es más probable.
  - *D* sube cuando la falla es más *difícil de detectar*: D = 1 detección casi segura; D = 10 sin control o sin certeza.
]

*Escalas resumidas:*

#table(
  columns: (0.6fr, 2.2fr, 1.4fr, 1.6fr),
  inset: 6pt,
  fill: (x, y) => if y == 0 { rgb("#dfe8d4") },
  [*Pts*], [*Severidad (S)*], [*Ocurrencia (O)*], [*Detección (D)*],
  [1], [Sin efecto], [Remota, < 1/10⁶], [Casi segura],
  [2], [Muy menor], [Muy baja, 1/150 000], [Muy alta],
  [3], [Menor], [Baja, 1/15 000], [Alta],
  [4], [Muy baja], [Ocasional, 1/2 000], [Moderadamente alta],
  [5], [Baja], [Frecuente, 1/500], [Moderada],
  [6], [Moderada], [Probable, 1/100], [Baja],
  [7], [Alta], [Típica, 1/25], [Muy baja],
  [8], [Muy alta: pérdida de función primaria], [Repetida, 1/10], [Remota],
  [9], [Peligrosa *con* aviso], [Casi inevitable, 1/5], [Muy remota],
  [10], [Peligrosa *sin* aviso], [Extrema, > 1/2], [Incertidumbre absoluta],
)

#clave("Trampas típicas")[
  - El RPN es un *producto*, no una suma.
  - "Mayor detectabilidad ⇒ mayor D" es *falso*: mejor detección ⇒ *menor* D.
  - No hay un umbral universal de RPN aceptable. Si una consigna pide uno, hay que declarar el criterio adoptado.
]

== Controles, criticidad y acciones

*Orden de preferencia de controles de diseño:*
+ *Prevenir la causa* (la mejor opción).
+ *Detectar la causa.*
+ *Detectar el modo de falla* (la última opción).

Ejemplos: simulación o modelado, análisis predictivo, estudios de tolerancias, ensayos de prototipo, diseños, componentes o materiales ya probados.

*Características críticas y especiales:*
- *Crítica:* S > 8 y O > 1.
- *Especial:* S > 6 y O > 2.

Estas condiciones dependen de S y O, *no de D*.

*Reglas para reducir valores después de las acciones:*
- *S* sólo baja si se *elimina o reduce el efecto*.
- *O* sólo baja con un *cambio de diseño* que reduzca la causa.
- *D* sólo baja *mejorando o agregando controles de detección*.

== Metodología de trabajo

+ Revisar el diseño y listar funciones.
+ Identificar modos de falla.
+ Determinar efectos → asignar S.
+ Identificar causas o mecanismos → asignar O.
+ Listar controles de diseño → asignar D.
+ Calcular el RPN.
+ Definir acciones, responsables y fechas.
+ Ejecutar y documentar resultados.
+ Recalcular el RPN y revisar nuevamente.

#clave("Prioridad")[Atacar primero los ítems con *RPN más alto*.]

//#imagen("Formulario DFMEA completo: columnas Función, Modo de falla, Efecto, S, Causa, O, Controles, D, RPN, Acciones")

#figure(
  image("images/FMEA.png", width: 100%),
  caption: [Formulario DFMEA completo]
)

== Tabla típica y actualización

*Columnas esenciales:*

Función → Modo → Efecto → S → Causa → O → Controles → D → RPN → Acciones → RPN nuevo

*Actualizar la DFMEA al menos cuando:*
- Comienza un nuevo producto, proceso o ciclo.
- Cambia el diseño.
- Aparecen nuevas leyes o normas.
- El feedback de usuarios revela un problema.

#clave("Atención")[Que un integrante deje la empresa *no* es, por sí solo, motivo técnico para actualizar.]

#pagebreak()

// =====================================================

/*
== Resumen para repasar

- *Actividad de grupo*, no una reunión aislada.
- *Inputs válidos:* requerimientos, BOM, diseño, experiencia previa. RPN y criticidad *no* son inputs.
- *RPN = S · O · D.*
- *D tiene sentido invertido:* mejor detección ⇒ menor D.
- *Orden del análisis:* modo → efecto → S; causa → O; control → D.
- *Prioridad de controles:* prevenir causa > detectar causa > detectar modo.
- *Reglas de reducción:* S sólo por eliminación del efecto; O sólo por cambio de diseño; D sólo por mejor detección.
- *Críticas:* S > 8 y O > 1. *Especiales:* S > 6 y O > 2.
- *Cuándo actualizar:* nuevo ciclo, cambio de diseño, nuevas normas, feedback de usuarios.

*/