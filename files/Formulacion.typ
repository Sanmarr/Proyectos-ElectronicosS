#set document(title: "Formulación y Evaluación de Proyectos Tecnológicos - Resumen")
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


= Unidad 1: Introducción

== 1.1 ¿Qué es un proyecto?

Un proyecto es un *esfuerzo temporal* que se lleva a cabo para crear un *producto, servicio o resultado único*. Es un proceso único, con actividades planificadas, ejecutadas y evaluadas, que usa recursos humanos, técnicos y financieros finitos para obtener objetivos en un plazo determinado.

*Elementos comunes:*
- Logro de objetivos o resultados.
- Actividades y/o plan de trabajo.
- Recursos o elementos necesarios.
- Tiempo.
- Costo y recursos financieros.
- Intención de modificar algo (resolver un problema, cubrir una necesidad).

#clave("Fin del proyecto")[Un proyecto termina cuando: (1) se logran sus objetivos, (2) sus objetivos no pueden cumplirse, o (3) ya no existe la necesidad que le dio origen.]

== 1.2 Objetivos del proyecto

+ *Resultado final:* la obra, el objeto o el servicio que se quiere producir o prestar.
+ *Coste económico equilibrado:* buscar eficacia y eficiencia en el uso de recursos.
+ *Plazo establecido:* hacer un cronograma y seguir el tiempo.
+ *Satisfacer necesidades* del usuario o cliente, identificadas en un diagnóstico previo.

== 1.3 Características de los proyectos

- *Entidad, tamaño y alcance:* suelen requerir inversiones importantes o producir resultados de gran impacto.
- *Medios variados y cambiantes:* personas y recursos materiales con distinto grado de implicación. Gestionarlos es complejo.
- *Discontinuidad:* tienen comienzo y fin determinados; se ejecutan una vez, no de forma repetitiva.
- *Dinamismo y evolución:* aparecen imprevistos, cambian recursos y fases.
- *Irreversibilidad:* las decisiones suelen ser irreversibles o más difíciles de revertir que en una producción rutinaria.
- *Influencias externas:* el entorno social, político o económico puede afectar el resultado aunque la gestión sea correcta.
- *Riesgo:* hay que analizarlo y prevenirlo. No son solo dificultades técnicas: también pérdidas económicas, daño a la imagen, pérdida de clientes, etc.

== 1.4 Puntos clave de un proyecto

- Tiene un conjunto *único* de objetivos; al lograrlos, el proyecto se consuma.
- Tiene *duración limitada* y bien definida.
- Necesita un *jefe, responsable o líder* de proyecto.
- Cuenta con *medios limitados* (un presupuesto asignado).
- *Integra esfuerzos* de todos los sectores de la empresa afectados.
- Implica un *cambio* en la forma de funcionar de la organización.

== 1.5 Ciclo de vida de un proyecto

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *1. Diseño:* se definen objetivos, especificaciones técnicas, alcance y tareas.

    *2. Planificación:* analizar riesgos, definir actividades, determinar recursos, plan de seguimiento y cronograma.
  ],
  [
    *3. Ejecución:* se pone en marcha lo planificado. Combina gestión y trabajo técnico.

    *4. Seguimiento y control:* aplicar el plan de seguimiento. Casi nunca se ejecuta tal cual se planificó.

    *5. Evaluación y cierre:* balance de resultados, verificar objetivos, informe final y disolución del equipo.
  ],
)

#clave("Idea central")[Si hay *desviaciones* durante el seguimiento, se debe *replanificar*. El monitoreo es permanente durante todo el proyecto.]

#imagen("Diagrama del ciclo de vida del proyecto (Diseño → Planificación → Ejecución → Seguimiento → Evaluación)")

#pagebreak()

// =====================================================
= Unidad 2: Gestión del proyecto

== 2.1 Áreas de conocimiento de la gestión

Son cuatro dimensiones que se complementan:

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  fill: (x, y) => if y == 0 { rgb("#dfe8d4") },
  [*Técnica*], [Conocimientos técnicos para entender y resolver el problema y llevar a cabo el trabajo. No debe ser la dimensión predominante del gestor.],
  [*Humana*], [Relaciones dentro y fuera del proyecto: equipo, clientes, proveedores, personas que comparten recursos con otros proyectos. Administración de personal.],
  [*Económica*], [Cumplir el presupuesto, controlar gastos por actividad y duración.],
  [*Gestora*], [Procedimientos para lograr el objetivo: organización, optimización de recursos y control. Engloba las demás dimensiones.],
)

== 2.2 Gestor del proyecto

*Funciones:*
- Colaborar en la definición de objetivos.
- Planificar y hacer el seguimiento del proyecto.
- Dirigir y coordinar recursos humanos y materiales.
- Controlar agentes externos (cliente, proveedores).
- Tomar decisiones para cumplir los objetivos.
- Informar sobre progresos, logros, problemas y soluciones.

*Competencias:*
- *Gestión organizativa:* planificar, organizar reuniones, coordinar equipo, gestionar el calendario.
- *Comunicación* interna y externa, para evitar conflictos y malentendidos.
- *Negociación:* acuerdos sobre objetivos, contratos y asignación de tareas.
- *Resolución de problemas:* identificar el problema, sus causas y alternativas.
- *Trabajo en equipo:* dinamizar el equipo y lograr que el proyecto cumpla plazo, costo y calidad.
- *Visión sistémica:* ver lo general antes que lo específico.
- *Toma de decisiones* con prontitud y seguridad.
- *Orientación a la calidad y a la satisfacción del cliente.*
- *Orientación a la acción:* evitar la "parálisis por análisis".
- *Delegar* responsabilidad y autoridad en los miembros más adecuados.

== 2.3 Lista de control (diagrama de flujo del proyecto)

Es una herramienta *flexible y orientativa*: cada proyecto decide qué pasos aplicar.

- *Diseño:* identificar necesidad, priorizar, delimitar, revisar requisitos legales y ayudas, valorar viabilidad, describir y justificar, definir objetivos, analizar riesgos.
- *Planificación:* establecer actividades y duración, recursos humanos y materiales, presupuesto, instrumentos de seguimiento (reuniones e indicadores), modelo de gestión (código de conducta y toma de decisiones).
- *Ejecución y seguimiento:* ejecutar el plan, reunirse, usar indicadores, detectar desviaciones, aplicar correcciones y reasignar recursos.
- *Evaluación y cierre:* evaluar objetivos y gestión, justificar económicamente, organizar la documentación y hacer el informe final.

#pagebreak()

// =====================================================
= Unidad 3: Diseño del proyecto

== 3.1 Análisis inicial

*Necesidad:* diferencia entre lo que _es_ y lo que _debería ser_, entre la situación actual y la deseada. Es carencia de un servicio o producto.

*Problema:* situación inesperada que ocurre en un momento dado y cambia los objetivos previstos o distorsiona la realidad. Puede venir de errores humanos, técnicos, de planificación o gerenciales, de la globalización o de nuevas tecnologías.

*Fuentes para detectar necesidades o problemas:*
- Ausencia de algo considerado necesario.
- Comparar con niveles normales o deseables de bienestar y servicios.
- Prever situaciones futuras (cambios legales, económicos o tecnológicos).
- Análisis crítico de la realidad.
- Detectar disfunciones respecto de lo previsto.

*Técnicas de detección:*
- *Cuantitativas:* cuestionarios e indicadores (sociodemográficos, de mercado, de producto, etc.).
- *Cualitativas o de consenso:*
  - *Informadores clave:* entrevistas a expertos.
  - *Delphi:* expertos opinan por separado hasta llegar a consenso, sin contacto entre ellos.
  - *Grupo nominal:* como Delphi, pero con contacto entre las personas.
  - *Tormenta de ideas:* toda idea es válida; luego se evalúa.
  - *Foro comunitario:* reunión abierta buscando consenso social.

*Establecer prioridades:* criterios como importancia, brecha entre situación actual y objetivo, cantidad de afectados, duración del problema, tiempo de resolución, inmediatez de efectos y eficacia. Si hay muchas necesidades, primero se hace una preselección.

*Delimitar el problema:* describirlo, justificar por qué necesita un proyecto y precisar el objetivo general.

*Otros puntos del análisis inicial:*
- *Legislación relacionada:* requisitos técnicos y legales, seguridad laboral, protocolos sanitarios, autorizaciones.
- *Ayudas económicas:* identificar posibles fuentes de financiamiento o subvenciones.
- *Viabilidad técnica y económica:* comparar alternativas de solución. Técnica: materias primas, trabajos, RRHH, maquinaria. Económica: rentabilidad (beneficio mayor que costo) y recursos necesarios.
- *Revisión de fuentes de información* relacionadas con el proyecto.

== 3.2 Definición del proyecto

*Naturaleza del proyecto* (responde tres preguntas: qué, para qué y hasta dónde):
+ *Descripción:* ¿qué es?
+ *Justificación:* ¿por qué se hace?
+ *Beneficiarios:* ¿para quién?
+ *Localización:* ¿dónde se hace?

*Alcance:* describir en detalle el proyecto y el producto. Incluye solo el trabajo necesario para completar el proyecto con éxito.

*Objetivos:*
- *Generales:* fines últimos. Nunca deben centrarse en las actividades.
- *Específicos:* más concretos; permiten alcanzar el general.

#clave("Un buen objetivo es")[Claro, concreto, realista, pertinente y evaluable. Debe tener verbos de acción medibles (incrementar, reducir, diseñar, instalar) y evitar verbos vagos (comprender, creer, intentar). Debe ser único (no agregar varios en uno) e incluir el criterio de éxito.]

*Ejemplo bien formulado:* "Disminuir en un 10% el número de abandonos de la enseñanza obligatoria de los jóvenes del municipio en edad escolar, en un período de un año."

*Meta:* concreción cuantitativa de un objetivo, referida a un espacio y tiempo determinados.

#pagebreak()

// =====================================================
= Unidad 4: Planificación del proyecto

== 4.1 Análisis y gestión de riesgos

*Tipos de riesgos:*
- *Del proyecto:* relacionados con planificación, recursos y costos.
- *Técnicos:* calidad y especificaciones insuficientes.
- *Del negocio:* que no haya mercado, pérdida de personal o financiación, pérdida de interés del cliente, personal no calificado, condiciones del entorno.
- *Externos:* legislación, tasas de cambio, instalaciones, clima, competencia.

*Definición:* un riesgo es una incertidumbre sobre si algo ocurrirá o no.

*Pasos de la gestión de riesgos:*
+ Identificar los riesgos.
+ Determinar sus causas.
+ Establecer la probabilidad de que ocurran.
+ Analizarlos y cuantificarlos.
+ Definir una estrategia de prevención o corrección.
+ Controlarlos.

*Técnicas de identificación:* juicio de expertos, tormenta de ideas, listas de verificación, entrevistas, análisis de causa raíz, FODA, análisis de supuestos, reuniones.

*Estructura de desglose de riesgos (RBS):* se agrupan en técnicos, de gestión, comerciales y externos.

*Plantilla de riesgos:* para cada riesgo se registra la causa probable, la probabilidad (alta, media, baja), la acción preventiva, la acción correctiva y el medio de aviso.

== 4.2 Herramientas para la planificación

*Planificar* es elaborar el plan conforme al cual se desarrollará una actividad. Define el qué, el dónde, el cómo, el porqué y a qué costo.

*Pasos de la planificación:*
+ Definir metas generales.
+ Trazar un plan de tareas.
+ Desarrollar los alcances en detalle.
+ Asignar objetivos a cada actividad.
+ Relacionar actividades con una red lógica.
+ Establecer duración y demoras.
+ Verificar la consistencia de la red.
+ Determinar recursos necesarios para cada actividad.

=== Mapa conceptual
- Reúne de forma interrelacionada los conceptos asociados a un concepto principal.
- Ayuda a ordenar ideas y a generar asociaciones nuevas.
- Reglas: organización jerárquica, palabras clave, uso de colores y formas.

=== EDT (Estructura de Descomposición del Trabajo / WBS)
Lista las actividades del proyecto de forma ordenada y jerárquica: fase → tarea → subtarea, con duración y recursos.

*Sugerencias:*
- Cada elemento aparece en un solo nivel.
- Cada "caja" se debe referenciar.
- La relación entre tareas debe estar clara.
- Todos los niveles deben tener resultados medibles.

*Qué se debe saber:*
- Una tarea simple es un paquete de trabajo que se puede controlar.
- Un *hito* es un punto que indica que un grupo de tareas terminó. Si se cumplen todos los hitos, el proyecto terminó.
- Cuando la lista de tareas está terminada, comienza la planificación.

=== Diagrama de Gantt
Necesita tres datos: las actividades (con su jerarquía), la duración de cada una y la relación entre ellas (cuál va primero, cuáles son simultáneas, cuáles necesitan resultados de otras).

*Tipos de tareas:* operativas, paraguas (resumen de una fase), hitos (duración 0, marcan controles o entregas) y repetitivas (ej.: reunión semanal).

=== Diagrama de PERT
Muestra la red de tareas con sus fechas:
- *Fecha temprana de inicio:* suma de duraciones previas más largas.
- *Fecha tardía de inicio:* fecha límite sin retrasar el fin del proyecto.
- El *camino crítico* es el de mayor duración: si se retrasa, se retrasa todo el proyecto.

=== Estimación de tiempos
Para cada actividad se estiman tres tiempos:
- *Tm (moda):* el más frecuente.
- *To (optimista):* el mejor caso.
- *Tp (pesimista):* el peor caso.

Con ellos se calcula el *tiempo esperado Te* como media ponderada. La fórmula PERT estándar es $T_e = (T_o + 4 T_m + T_p) / 6$. La unidad de tiempo puede ir desde el mes hasta el minuto, según el proyecto.

== 4.3 Recursos

*Para cada actividad hay que definir:*
- *Medios de producción:* materias primas, maquinaria, herramientas, instalaciones, equipos informáticos, suministros.
- *Perfiles competenciales:* tipo de personas necesarias, con sus competencias técnicas y personales, funciones y dependencias jerárquicas (organigrama).

*Definición de perfiles:* conocimientos generales y técnicos, habilidades de comunicación, actitudes, relaciones con otros perfiles, recursos materiales asociados, dedicación temporal (porcentaje de jornada) y cantidad de profesionales.

=== Nivelación de recursos
Los recursos no se usan de forma constante: cada actividad necesita distintos recursos en naturaleza y cantidad.

*Nivelar* consiste en asignar los recursos según las necesidades reales, pero minimizando costos para cada tipo de recurso.

#clave("Estado imposible")[Asignar a una misma persona dos actividades simultáneas que necesitan su presencia.]

=== Presupuesto
Se calcula el costo de cada actividad. La suma de todas da el costo total del proyecto. Incluye:
- Materiales.
- Costo horario de las personas que participan.
- Costo del gestor del proyecto.
- Alquiler o compra de herramientas, maquinaria y equipos.
- Alquiler o compra de locales.
- Suministros (agua, luz, gas).
- Subcontrataciones, publicidad y seguros.

== 4.4 Planificación del seguimiento y evaluación

*Mecanismos de seguimiento:*
- Reuniones de seguimiento.
- Hitos o puntos de control.
- Reuniones técnicas internas del equipo, con el cliente o con el proveedor.

*Instrumentos:*
+ *Indicadores* (Realizado / Previsto), por ejemplo: piezas producidas sobre piezas previstas.
+ *Fuentes de verificación:* de dónde sale el dato (fichas, bases de datos, registros de productividad).
+ *Cuestionarios:* con preguntas abiertas o cerradas.

#clave("Importante")[La evaluación no se limita al final del proyecto. Debe planificarse desde el diseño.]

#pagebreak()

// =====================================================
= Unidad 5: Ejecución y seguimiento del proyecto

== 5.1 Ejecución del seguimiento

=== ¿Por qué hacer seguimiento o control?
Si el control es desordenado, puede no detectarse un problema a tiempo, y actividades o parámetros quedan fuera de control. Por eso conviene tener un *procedimiento de control* que responda:

- *¿Quién controla?* Una persona responsable del proyecto completo, y cada responsable de sus actividades, que informa periódicamente.
- *¿Qué controla?* Recursos, costo, tiempo, etc.
- *¿Cómo?* Reuniones, observación de la ejecución o resultados obtenidos hasta el momento.
- *¿A quién se comunica?* Al superior que debe estar informado, por la cadena de comunicación.
- *¿Qué se comunica?* Cambios y grandes desviaciones.
- *¿Cuándo y con qué periodicidad?* Depende del tamaño, la complejidad técnica y las relaciones establecidas.
- *¿Cómo actuar ante desviaciones?* Tener un procedimiento claro y definir quién decide.

#imagen("Redes de comunicación formales: cadena, estrella, Y, círculo y vías múltiples")

=== Comunicación: las 5 Cs
+ *Correcto:* gramática y ortografía correctas; los errores restan credibilidad.
+ *Conciso:* sin palabras de más; reduce malinterpretaciones.
+ *Claro:* propósito y expresión dirigidos a las necesidades del lector.
+ *Coherente:* flujo lógico, con introducción y resúmenes.
+ *Controlado:* flujo controlado de palabras e ideas; puede usar gráficos o resúmenes.

=== Tipos de comunicación
- *Interactiva:* intercambio multidireccional en tiempo real (reuniones, llamadas, videoconferencias).
- *Push (empujar):* se envía a receptores específicos (cartas, informes, correos, comunicados). Asegura la distribución, pero no que sea comprendida.
- *Pull (tirar):* el receptor accede al contenido según su criterio, sujeto a seguridad.

=== Factores que dificultan el seguimiento/control
- Objetivos mal definidos: no se sabe a dónde hay que llegar.
- Falta de puntos de control en la planificación.
- Planificación insuficiente o inadecuada: aparecen tareas nuevas durante la ejecución que retrasan el plazo.

#clave("Frase clave")[_"El papel lo aguanta todo; la prueba de fuego del proyecto está en la ejecución de lo planificado."_]

== 5.2 Equipo de proyecto

Un equipo de trabajo es *mucho más que la suma de las personas* que lo componen. Está formado por personas con habilidades complementarias, comprometidas con un propósito común y metas compartidas, y se hacen mutuamente responsables.

*Etapas del desarrollo de un equipo:*
+ *Formación:* no hay espíritu de equipo; las tareas no están claras. Se busca posición y pueden surgir luchas de poder. Esta etapa define la confianza futura.
+ *Estructuración:* se establecen reglas de juego, responsabilidades y funciones.
+ *Producción:* cada uno tiene claro su papel, las relaciones son fluidas y empieza la fase de rendimiento.

*Equipo vs. grupo:*

#table(
  columns: (1fr, 1.5fr, 1.5fr),
  inset: 7pt,
  fill: (x, y) => if y == 0 { rgb("#dfe8d4") },
  [*Atributo*], [*Equipo*], [*Grupo*],
  [Liderazgo], [Compartido], [Propiedad de una persona],
  [Comunicación], [Abierta], [Con el líder, no entre miembros],
  [Responsabilidad], [Individual y colectiva], [Individual],
  [Resultados], [Esfuerzo colectivo], [Suma de contribuciones],
  [Forma de trabajo], [Interdependiente], [Independiente],
  [Conflictos], [Confrontación colectiva], [Imposición],
)

*Liderazgo:* capacidad de influir, motivar, organizar y llevar a cabo acciones para lograr fines, en un marco de valores.

== 5.3 Reuniones

*Periodicidad:* según la complejidad del proyecto (semanal, quincenal o mensual).

*Objetivos:*
- Aprobar lo realizado en el período anterior.
- Analizar con cada responsable las causas de retrasos, excesos de costo o pérdida de calidad.
- Tomar medidas para que no se repitan.
- Replantear el resto del proyecto para absorber efectos negativos.

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Lo que SÍ se debe hacer:*
    - Verificar que la reunión es necesaria.
    - Convocar con al menos una fecha alternativa.
    - Invitar solo a los asistentes necesarios.
    - Tener una agenda clara con tiempo estimado por punto.
    - Tratar solo los temas de interés de esa reunión.
  ],
  [
    *Lo que NO se debe hacer:*
    - Reuniones frecuentes sin necesidad real.
    - Convocar a quien no hace falta.
    - Agenda vaga que impida prepararse.
    - Esconder puntos de conflicto.
  ],
)

*Reunión eficaz:* tiene un objetivo claro, se prepara con antelación, sigue un orden del día y evita la sensación de inutilidad. Se conduce con estilo participativo, conociendo al grupo, motivando, comunicando bien, venciendo resistencias al cambio, registrando conclusiones y controlando resultados.

== 5.4 Toma de decisiones

*Características de las decisiones en proyectos:*
- *Exclusividad:* cada proyecto es único; las decisiones no siempre sirven en otro.
- *Improvisación:* los problemas varían; a veces hay que decidir sin referencia previa.
- *Rapidez:* demorar una decisión detiene o retrasa el proyecto, con más costos.

*Proceso:*
+ *Analizar el problema:* recoger información clave, diagnosticar la realidad y el alcance.
+ *Analizar alternativas:* definir varias soluciones, evaluarlas (rapidez, costo, resultado) y elegir la mejor.
+ *Decidir y aplicar de inmediato,* con reflexión.

*Condiciones de una buena decisión:*
- *Oportunidad:* en el momento adecuado, sin precipitarse ni demorarse.
- *Calidad:* suficientemente analizada para minimizar errores.
- *Pertinencia:* orientada a eliminar los obstáculos.

== 5.5 Gestión de cambios

Los cambios pueden venir de factores externos o internos. *No hay que tenerle miedo al cambio.* Ante un cambio, preguntarse:
- ¿Cómo afecta a la planificación actual?
- ¿Qué actividades cambiar, eliminar o añadir?
- ¿Qué recursos se necesitan?
- ¿Cuánto aumenta o reduce el costo frente al presupuesto inicial?
- Si no se introduce, ¿el proyecto fracasará o puede tener éxito?

== 5.6 Resolución de conflictos

Los conflictos hay que atacarlos para evitar que afecten el desarrollo del proyecto.

*Posiciones frente al conflicto:*
- *Compromiso:* buscar un punto en el que todas las partes se sientan conformes.
- *Conciliación:* identificar las áreas de acuerdo y restar importancia a las de desacuerdo.
- *Imposición:* último recurso; imponer un punto de vista, con el malestar que genera.
- *Retirada:* no abordar el conflicto de inmediato, dejar que se calme y tener tiempo para valorarlo.

*Cómo minimizar su aparición:*
- Director presente.
- Buena planificación y distribución de tareas.
- Buenas estimaciones.
- Buena comunicación.
- Generar confianza.

#clave("Base de todo")[*Moral y respeto.*]

#pagebreak()

// =====================================================
= Unidad 6: Evaluación, cierre y documentación

== 6.1 Evaluación final

*Qué evaluar:*
- Valoración del alcance de los objetivos.
- Análisis de las desviaciones ocurridas durante el proyecto.
- Análisis de la gestión realizada.

*Medir eficacia y eficiencia:*
- *Eficacia:* capacidad de las actividades para lograr los objetivos planteados.
- *Eficiencia:* relación entre los bienes o servicios finales y los recursos necesarios para producirlos.

*Además:*
- Valorar si conviene repetir el proyecto en el futuro.
- Determinar las razones de los éxitos y de los fracasos.
- Establecer efectos o consecuencias no previstos inicialmente.

*Quién evalúa:* profesionales de la organización que intervinieron, profesionales externos, usuarios o destinatarios, entre otros.

*Evaluaciones por fase:* diseño, planificación y ejecución. El mecanismo de evaluación se define durante el diseño.

== 6.2 Cierre del proyecto

+ Entrega del producto o servicio al cliente y aceptación.
+ Memoria técnica del producto o servicio.
+ *Justificación económica:* detalle de los gastos. Es especialmente importante en proyectos financiados con subvenciones externas.
+ *Informe final:* registra todo lo ocurrido, para usarlo en proyectos futuros.
+ Ruptura (disolución) del equipo de trabajo.
+ *Acta de cierre del proyecto.*

== 6.3 Documentación

Conviene que la documentación sea completa para poder reutilizarla en futuros proyectos.

*Qué documentar en cada fase:*
- *Diseño:* objetivo, finalidad y alcance; riesgos analizados; información recopilada; presupuesto; políticas de seguimiento.
- *Planificación:* EDT (estructura de descomposición del trabajo) y cronograma.
- *Ejecución:* gestión de cambios, informes de seguimiento, minutas y actas de reunión, y todo historial considerado necesario.
- *Evaluación y cierre:* informe de evaluación y memoria técnica.

=== 6.3.1 Sistema de archivo

Debe ser *simple y eficaz*, que permita buen acceso a la información, y servir tanto para documentación física como informatizada.

*Ejemplo de código de documentación:* `SADD-02-BAS-02.01-A`

#table(
  columns: (1fr, 2.5fr),
  inset: 7pt,
  fill: (x, y) => if y == 0 { rgb("#dfe8d4") },
  [*Parte*], [*Significado*],
  [SADD], [Nombre o acrónimo del proyecto (Sistema de Adquisición de Datos de Desnutrición)],
  [02], [Versión (2 dígitos)],
  [BAS], [Parte componente o sistema (3 dígitos). Ej.: MEC mecánica, ELE electrónica, FIR firmware, CAB cableado, SFT software, CON contrataciones, DOC manuales, PRE prensa, PWR presentaciones, PTO planeamiento, 000 general],
  [02.01], [Conjunto y subconjunto (4 dígitos). Ej.: 00.00 índice general, 01.01 módulo quemador/soporte, 02.00 módulo cocción],
  [A], [Letra de revisión (de A a Z)],
)

=== 6.3.2 Propiedad intelectual

Es un tema del programa (ver bibliografía y contenido del silabo), pero *no tiene desarrollo en las diapositivas* de la unidad.

#pagebreak()

// =====================================================
= Glosario rápido

- *Proyecto:* esfuerzo temporal, único, con inicio y fin, para lograr un resultado.
- *Eficacia:* lograr los objetivos.
- *Eficiencia:* usar bien los recursos para producir.
- *Hito:* punto de control que marca el fin de un grupo de tareas.
- *Camino crítico:* secuencia de tareas más larga; define la duración mínima del proyecto.
- *EDT / WBS:* descomposición jerárquica del trabajo.
- *Necesidad:* carencia respecto de lo que debería ser.
- *Problema:* situación inesperada que altera los objetivos.
- *Meta:* objetivo expresado con cifra, espacio y tiempo.
- *RBS:* estructura de desglose de riesgos.
- *Delphi:* técnica de consenso entre expertos sin contacto directo.
- *Desviación:* diferencia entre lo planificado y lo ejecutado; obliga a replanificar.