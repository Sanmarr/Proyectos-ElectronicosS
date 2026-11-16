// Imagen que vos colocás manualmente
#let imagen(desc) = figure(
  rect(width: 100%, height: 6cm, fill: rgb("#f0f0f0"), stroke: 1pt + gray)[
    #align(center + horizon)[#text(fill: gray)[🖼️ #desc]]
  ]
)

// Caja de concepto clave
#import "cajas.typ": cuadro-concepto, cuadro-ejemplo, cuadro-atencion, cuadro-registro
#let clave(titulo, cuerpo) = cuadro-concepto(titulo, cuerpo)

=  Factibilidad Económica

== Introducción

El *análisis de factibilidad* estudia si es posible (y si conviene) desarrollar una iniciativa: negocios, productos o proyectos. Busca relevar y cuantificar si se cuenta con los recursos necesarios para alcanzar los objetivos de manera *eficiente* (en este caso, costo eficiente).

*Arenas de la factibilidad:*
- Factibilidad tecnológica.
- Factibilidad de tiempos.
- Factibilidad legal y administrativa.
- *Factibilidad económica* (tema de esta unidad).

*Para qué sirve:*
- Establecer estrategias para optimizar el uso de recursos y alcanzar los objetivos.
- Saber si se puede o no hacer, bajo qué condiciones mínimas, y proponer un marco para resolver imprevistos.
- Predeterminar si la iniciativa tendrá un impacto favorable o no.

*Relación con el plan de negocios.* Todo plan de negocios incluye: análisis de mercado target, análisis competitivo, expectativas de clientes, posibilidades de crecimiento, planes de evolución del producto, objetivos de costo, estrategias de producción y distribución, estrategias comerciales, estrategia de precios, necesidades de RRHH e I+D. Se proyecta a *medio plazo (3 años)* y *largo plazo (+5 años)*, dimensionando cuantitativa y cualitativamente cómo la iniciativa cambiará la organización.

*Análisis económico según el caso:*
- *Empresas nuevas (plan fundacional):* el análisis suele basarse en la *tasa de retorno*, con decisiones centradas en inversores y accionistas.
- *Proyectos dentro de empresas existentes:* se combinan comparaciones de tasa de retorno con la idea de *valor agregado*, que considera también el interés de la propia empresa.

#clave("Valor agregado")[Valor agregado = valor de los productos − valor de los productos y servicios comprados. 

La aceptación de un proyecto se basa en su valor agregado y en la posición competitiva de la empresa a largo plazo.]

#figure(
  image("images/arenas.png", width: 80%)
)

//#imagen("Diagrama: Factibilidad económica dentro del análisis de factibilidad (tecnológica, tiempos, legal, económica)")

== Costo objetivo

El beneficio es la diferencia entre el precio de venta y los costos. El precio de venta está acotado:
- *Piso:* fijado por el costo.
- *Techo:* por el valor o utilidad que el producto representa para el usuario.

#clave("Objetivo del desarrollo")[Maximizar el beneficio: maximizar la utilidad/valor para el usuario y minimizar costos.]

*Estrategias:*
- Maximizar la utilidad para aumentar la demanda → *diferenciación*.
- Volver la demanda más *inelástica* → beneficios tipo monopolio temporales.
- Tratar los componentes del costo como "articulables" → *drivers de innovación de costos*.
- Trabajar también sobre los procesos (eficientizar costos), no solo sobre el producto.

*Componentes del costo a considerar:*
- *Desarrollo:* marketing, planificación, desarrollo del producto, validación de producción.
- *Producción:* compras, licencias, inventarios, control, embalaje, despacho.
- *Comercial:* promoción, ventas, comisiones, facturación y cobranzas.
- *Postventa:* instalación, puesta en marcha, soporte, garantía.
- *Administración:* gestión de RRHH, amortización, tasas, control de gestión.
- *Finanzas:* carga financiera del capital propio invertido y del pago a plazo.

=== Enfoque user centric

Se trabaja de adelante hacia atrás: el usuario es la base para definir el producto, y el precio es una característica más.

#clave("Fórmula")[Costo objetivo = Precio de venta − Beneficio objetivo.]

Fijando dos variables, la tercera queda determinada. En general el precio viene impuesto por el mercado, así que o se trabaja con costos "360°" o se aceptan beneficios menores.

=== Métodos de cálculo

- *Método aditivo:* se parte de los costos (materia prima, mano de obra, carga fabril, gastos de comercialización, administrativos, financieros, postventa), se suman hasta el costo de venta y se agrega el margen de utilidad. El beneficio funciona como buffer y queda determinado.
- *Método sustractivo:* se parte del beneficio target y se trabajan los costos para que queden por debajo de ese beneficio. Desafío: lograr innovación de producto, componentes y procesos.

=== Escala

La escala afecta a todos los costos:
- *Costos no recurrentes:* con volumen alto, los costos de desarrollo y de manufactura inicial tienen poco impacto.
- *Negociación:* con volumen, mejoran los descuentos de componentes.
- *Estructura y fabricación:* son las palancas principales (indirectos, montaje, soldadura, empaquetado, despacho).

#clave("Sin escala")[En mercados chicos o productos de nicho no siempre es posible. Aplican otras reglas de diseño, los costos indirectos (stock, distribución) pesan más, y un primer lanzamiento puede exigir costo o precio elevado, solo viable con demandas inelásticas.]

== Mercado objetivo

*Mercado potencial:* conjunto de clientes que manifiestan interés en el producto y tienen capacidad de compra, independientemente del precio.

*Niveles de mercado:*
- *TAM (Total Available Market):* tamaño del universo.
- *SAM (Served Addressable Market):* hasta dónde podemos "atender"; depende de los recursos de la empresa (por ejemplo, canales).
- *SOM (Served Objective Market):* quiénes son los compradores hoy.

#figure(
  image("images/SOM.png", width: 80%),
  caption: [Niveles de mercado]
)

*Estimaciones básicas:* PBI per cápita, nivel de ingresos medios, etc.

*Del potencial al objetivo:*
- Conociendo el TAM, analizar las capacidades internas permite acotar el SAM.
- Sobre el SAM se identifican acciones de corto y mediano/largo plazo.
- *SOM:* según la curva de demanda y el análisis marginal, se define la cantidad Q.
- *SAM:* repensar para incrementar el share del SOM de manera económica y financieramente rentable.

=== Demanda

Mide, para un momento dado, la cantidad de producto que puede comprarse según su precio.
- Existe una relación *inversa* entre cantidad comprada y precio.
- Es *temporal*: vale por un lapso determinado y luego hay que revisarla.
- Hay un precio Pm para el cual la demanda es 0, y una cantidad Qm que el mercado no puede absorber sin importar el precio.

#clave("Primer paso")[Definir el SAM y, más aún, el SOM: cómo reacciona el SOM ante cambios de Q y P, y cómo se deprime la demanda al subir el precio.]

=== Elasticidad

Mide la variación porcentual de la demanda en función de la variación porcentual del precio.

$ E = ((d Q) / (Q)) / ((d P) / (P)) $

- $|E| > 1$: demanda *elástica*.
- $|E| < 1$: demanda *inelástica*.
- $|E| = 1$: elasticidad unitaria.

#figure(
  image("images/demanda.png", width: 70%),
  caption: [Elasticidad]
)

*Competencia perfecta:* el precio lo fija el mercado (la empresa es tomadora de precios). En consumo masivo, por encima de cierto precio la cantidad cae abruptamente; esto es barrera de entrada para players sin escala.

*Productos de nicho* (como suele ser la electrónica): pueden abrir un mercado temporalmente cautivo, símil monopolio. Se logra con innovación de producto, estratificación de mercados y estrategias de comercialización diferenciadas.

== Ciclo de vida

Todo producto tiene un ciclo: introducción, crecimiento, madurez y declive, hasta que debe ser reemplazado por su evolución (roadmap).

*Adopción de nuevos productos (Moore):* innovadores ~2,5%, early adopters ~13,5%, early majority ~34%, late majority ~34%, laggards ~16%.

//#imagen("Curva de ciclo de vida del producto: introducción, crecimiento, madurez, declive; y curva de adopción de Moore")

#figure(
  image("images/CicloDeVida.png", width: 60%),
  caption: [Curva de ciclo de vida del producto]
)

==  Precio de venta

Hay dos caminos para asegurar beneficios:
- *Trabajar sobre los costos:* en competencia perfecta (productos similares, precio de mercado).
- *Imponer el precio de venta:* en monopolio temporal.

Ingresar a un mercado competitivo implica ser competitivo en costos. Un sobreprecio implica no vender, porque la demanda se satisface en otro lado. El desafío es innovar para acercar el producto a un segmento del mercado, fijando el precio como restricción. La búsqueda de eficiencia de costos puede llevar a *océanos azules* (mercados sin competencia).

=== Producir o no producir

Las empresas solo producen si es más beneficioso que no producir. En general se justifica producir cuando el precio de venta supera los *costos evitables*, que son los variables o directos (los que aparecen solo al producir). Los costos indirectos se consideran *hundidos* en este análisis, porque existen produzca o no.

#clave("Análisis marginal")[Se debe realizar toda actividad donde el *ingreso marginal* sea superior al *costo marginal*.]

#cuadro-ejemplo("Análisis marginal: producir o no producir")[
  Costo total 200, costo variable 50, precio de venta 150.
  - *Contabilidad tradicional:* ingreso 150, egreso 200, resultado −50.
  - *Análisis marginal:* costos fijos 150, ingreso 150, costo variable 50. Vender tiene sentido si el mercado paga 150 de forma transitoria, porque cubre el costo variable y contribuye a los fijos.
]

=== Costos medios y marginales

- *CT = CV + CF*
- *CMT = CT / Q = CMV + CMF*
- *CM ≈ ΔCT / ΔQ* (costo de producir una unidad más, no el promedio)
- *IT = P(Q) · Q*
- *IM ≈ ΔIT / ΔQ* (ingreso por vender una unidad más)
- *B = IT − CT*

*Punto de equilibrio:* las empresas buscan el mayor beneficio posible. El nivel óptimo de producción desde costos es cuando CM = CMT (mínimo del costo medio total).

*Interpretación de la curva de costo marginal:*
- Por el rendimiento marginal decreciente, el CM va aumentando.
- Mientras CMT baja al aumentar Q, hay economía de escala decreciente.
- Cuando CMT sube, hay economía de escala creciente.

*Ingreso marginal:* al bajar el precio para vender más, el ingreso marginal se reduce. Aumentan los ingresos totales, pero cada unidad adicional aporta menos.

=== Dos óptimos distintos

#cuadro-atencion("No confundir")[
  - *CM = CMT* → mínimo del costo medio total (óptimo desde costos).
  - *IM = CM* → máximo beneficio total.
]

- Si IM > CM, una unidad adicional suma beneficio. Si IM < CM, conviene reducir la producción.
- *Competencia perfecta:* IM = P, así que en el óptimo P = CM.
- Beneficio unitario: $b_u = P - "CMT"$. Beneficio total: $B = (P - "CMT") Q$.
- Siempre evaluar el CMT en la cantidad realmente producida.

=== Qué conviene producir según el precio

- *P > CMT:* beneficio positivo.
- *P = CMT:* punto de nivelación, beneficio cero.
- *CMV < P < CMT:* hay pérdida total, pero puede convenir producir temporalmente, porque se cubren los costos variables y parte de los fijos.
- *P ≤ CMV:* punto de cierre; no se cubren los costos evitables, conviene no producir.

Los costos fijos son hundidos en la decisión de corto plazo.

=== Beneficio temporal tipo monopolio

Cuando una innovación da una ventaja de costos, el precio de mercado puede quedar por encima del costo medio, y la empresa maximiza beneficios produciendo donde IM = CM.

//#imagen("Gráficos de equilibrio: precio de mercado, CMg, CMe, IM, punto de cierre y punto de nivelación")

#figure(
  image("images/Curvas.png", width: 100%)
)

#figure(
  image("images/Curvas2.png", width: 100%)
)

#figure(
  image("images/Curvas3.png", width: 100%)
)

#figure(
  image("images/Curvas4.png", width: 90%)
)


= Rentabilidad

El análisis de rentabilidad complementa lo anterior considerando:
- Variaciones en el tiempo (escenarios futuros de costo, mercado y tecnología).
- Probabilidad de ocurrencia de cada escenario y, con ello, el riesgo de cada alternativa.
- El monto total de la inversión y el capital de trabajo circulante, si existe.
- Que todos los costos y beneficios sean medibles en unidades monetarias.

*Herramientas:* VAN (beneficio total o flujo descontado), TRI (tiempo de recupero), TIR (tasa interna de retorno) y relación costo/beneficio (RCBB y RCBN).

=== VAN (Valor Actual Neto)

Un proyecto es aceptable si el flujo de caja descontado neto total es mayor que cero. El flujo de caja es la diferencia entre ingresos y egresos.

$ "FC"_i = I_i - E_i $

$ "VAN" = E_0 + sum_(i=1)^n "FCD"_i = E_0 + sum_(i=1)^n "FC"_i / (1 + t_i)^i $

- *Plazos típicos:* 3 a 5 años, según ciclo de vida del producto (no es lo mismo electrónica que farmacéuticos), amortizaciones y el contexto macroeconómico.
- Considera el costo del capital (tasa de interés) y la inflación.

#cuadro-atencion("Criterio de aceptación")[VAN > 0 es aceptable. Si el VAN está cerca de 0, el proyecto resulta poco atractivo, más aún en escenarios de incertidumbre.]

=== TRI (Tiempo de Retorno de la Inversión)

En proyectos con escenarios de largo plazo impredecibles, toma importancia el tiempo de recupero. Se suele pedir un plazo inferior al ciclo de vida del producto. Se iguala el beneficio a cero para calcular el tiempo.

$ B_k = E_0 + sum_(i=1)^k "FC"_i / (1 + t_i)^i = 0 $

Si el plazo k es cercano al fin del ciclo de vida, el proyecto resulta poco atractivo, sobre todo con incertidumbre.

=== TIR (Tasa Interna de Retorno)

Todo proyecto lleva riesgos implícitos, así que debe producir un beneficio más atractivo que colocar el capital a interés bancario (u otra regla de la empresa). La TIR es la tasa para la cual el beneficio final es nulo.

$ sum_(i=1)^n "FC"_i / (1 + "TIR")^i = 0 $

*Criterio:* el proyecto es atractivo si la TIR supera la tasa de alternativa.

=== Relación costo/beneficio

Compara el valor actualizado de ingresos (brutos o netos de egresos) con el valor actualizado de egresos, es decir, toma en cuenta el valor total comprometido.

$ "RCBB" = (sum_(i=0)^k I_i / (1+t_i)^i) / (sum_(i=0)^k E_i / (1+t_i)^i) $

$ "RCBN" = (sum_(i=0)^k (I_i - E_i) / (1+t_i)^i) / (sum_(i=0)^k E_i / (1+t_i)^i) $

#cuadro-atencion("Criterio de aceptación")[RCBB > 1 y RCBN > 0.]

=== Gráfico de flujo de caja

El flujo de caja acumulado tiene una etapa de *desarrollo* (inversión, flujo negativo) y una de *producción* (flujo positivo). El TRI es el punto donde el flujo acumulado cruza cero. Según la tasa de interés usada, la curva cambia: con tasa cero (valor contable) se recupera antes; con tasa igual a la TIR, el beneficio final es nulo.

//#imagen("Gráfico de flujo de caja acumulado vs. tiempo, con curvas para tasa cero, tasa de mercado y tasa igual a TIR, marcando desarrollo, producción, TRI y beneficio neto Bn")

#figure(
  image("images/FlujoDeCajas.png", width: 90%)
)


/*
#v(1em)

*Lo imprescindible*
- $C_"obj" = P - B_"obj"$
- TAM / SAM / SOM: universo, atendible, compradores actuales.
- $|E| > 1$: elástica. $|E| < 1$: inelástica.
- $"CMT" = ("CV" + "CF")/Q$. Mínimo de CMT → $"CM" = "CMT"$.
- $"IM" = "CM"$: máximo beneficio. En competencia perfecta, $"IM" = P$.
- $P = "CMT"$: nivelación. $"CMV" < P < "CMT"$: puede convenir producir temporalmente. $P ≤ "CMV"$: cierre.
- $"VAN" > 0$: aceptable. TRI: recupero. TIR: tasa que anula el VAN.
- RCBB > 1 y RCBN > 0.
*/