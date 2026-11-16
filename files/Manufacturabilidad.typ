// Imagen que vos colocás manualmente
#let imagen(desc) = figure(
  rect(width: 100%, height: 6cm, fill: rgb("#f0f0f0"), stroke: 1pt + gray)[
    #align(center + horizon)[#text(fill: gray)[🖼️ #desc]]
  ]
)

// Caja de concepto clave
#import "cajas.typ": cuadro-concepto, cuadro-ejemplo, cuadro-atencion, cuadro-registro
#let clave(titulo, cuerpo) = cuadro-concepto(titulo, cuerpo)

= Manufacturabilidad: PCB y Proceso SMT

== Circuitos impresos (PCB)

Un *circuito impreso* (PCB, Printed Circuit Board) es una superficie formada por pistas conductoras, normalmente de cobre, laminadas sobre una base no conductora. Conecta eléctricamente los componentes a través de las pistas y, al mismo tiempo, los sostiene mecánicamente gracias a la base.

Las bases se fabrican con resinas de fibra de vidrio reforzada (FR2, FR4, CEM), cerámica, plástico, teflón o baquelita.

== Decisiones de manufactura

Antes de producir se definen tres cosas:
- *Tipo de impreso:* simple faz, doble faz o multicapa.
- *Tipo de componentes:* THT, SMD o mixto.
- *Tipo de proceso de montaje:* pasta de soldar, adhesivado, inserción o mixto.

Luego siguen la inspección visual, la programación, la prueba eléctrica y el encapsulado o coating.

== Stackup

El *stackup* (disposición de capas) es un factor clave del rendimiento EMC. Un buen stackup reduce la radiación en modo diferencial (lazos en la placa) y en modo común (cables conectados). Uno pobre la aumenta.

*Cuatro factores a considerar:*
+ Número de capas.
+ Número y tipo de planos (potencia y/o tierra).
+ Orden o secuencia de las capas.
+ Separación entre capas.

Los últimos tres suelen subestimarse, aunque son de igual importancia.

*Para elegir el número de capas, considerar:*
+ Cantidad de señales a rutear y costo.
+ Frecuencia de trabajo.
+ Si el producto debe cumplir emisiones clase A o clase B.
+ Si el PCB va en un recinto blindado o no.
+ Experiencia en ingeniería EMC del equipo.

#clave("Regla práctica")[Una placa de 4 capas emite unos 15 dB menos que una de 2 capas, con los demás factores iguales. Por encima de unos 10 a 15 MHz conviene considerar multicapa.]

*Por qué los planos ayudan:*
+ Permiten rutear señales en configuración microstrip (o stripline), con menos radiación que las pistas al azar de una placa de dos capas.
+ El plano de tierra reduce de forma significativa la impedancia (y por lo tanto el ruido).

== Cinco objetivos de un buen stackup

+ Toda capa de señal debe ser adyacente a un plano.
+ Toda capa de señal debe quedar estrechamente acoplada a su plano adyacente.
+ Los planos de alimentación y tierra deben estar estrechamente acoplados.
+ Las señales de alta velocidad deben ir en capas encerradas entre planos, que actúan como blindaje.
+ Múltiples planos de tierra reducen la impedancia de referencia y la radiación de modo común.

#cuadro-atencion("Atención")[Con técnicas normales de construcción no hay suficiente capacitancia entre alimentación y tierra para desacoplar por encima de unos 500 MHz. Por eso, a veces hay que elegir entre el objetivo 2 y el 3, y el desacoplamiento debe resolverse por otro medio (en general se prioriza el objetivo 2).]

*Nota:* una placa de 8 capas es la mínima que permite cumplir los cinco objetivos. En placas de 4 y 6 capas hay que resignar algunos.

== Stackup en placas de 4 capas

#figure(
  image("images/4capas.png", width:30%)
)


- Cumple solo el objetivo 1.
- Los planos están separados entre sí y las señales están lejos de su plano de retorno.
- Para mejorar el rendimiento, reducir la separación entre señales y planos tanto como sea posible (menos de 0,010").

== Stackup en placas de 6 capas

Un stackup que *no* conviene: dos capas de señal no adyacentes a ningún plano, y planos que no protegen las señales.

#figure(
  image("images/6capas.png", width:30%),
  caption: [No conviene: dos capas de señal no adyacentes a ningún plano, y planos que no protegen las señales.]
)

#figure(
  image("images/6capas.png", width:30%),
  caption: [Conviene: dos capas de señal adyacentes a planos, y planos que protegen las señales.]
)

- Dos capas encerradas para señales rápidas, y dos superficiales para señales lentas.
- Cumple los objetivos 1, 2 y 4, pero no el 3 ni el 5.
- Inconveniente: la separación entre alimentación y tierra es grande, así que el desacoplamiento debe diseñarse con cuidado.

== Stackup en placas de 8 capas

Permite cumplir los cinco objetivos. Suele usarse para mejorar EMC más que para agregar capas de ruteo. El costo adicional frente a 6 capas es proporcionalmente menor que el de pasar de 4 a 6.

#figure(
  image("images/8capas.png", width:45%)
)

- Todas las capas de señal son adyacentes a un plano.
- Las señales rápidas quedan encerradas entre planos.
- Hay múltiples planos de tierra.
- Cuando una señal de alta frecuencia cambia de capa, conviene agregar una vía entre los dos planos de tierra cerca del cambio.

*Alternativa:* Todas las capas de ruteo quedan encerradas y blindadas, y las señales ortogonales quedan adyacentes al mismo plano.

#figure(
  image("images/8capas2.png", width:35%)
)



#pagebreak()

= Proceso de manufactura electrónica (SMT)

== Tecnologías de montaje

- *THT (Through Hole Technology):* tecnología de agujeros pasantes.
- *SMT (Surface Mount Technology):* tecnología de montaje superficial.
- *Mixto:* combina componentes THT y SMT en la misma placa.

== Clasificación de componentes THT

- *Axiales:* resistencias y similares, con terminales en los extremos.
- *Radiales:* capacitores electrolíticos y similares, con terminales del mismo lado.
- *DIP (Dual In-line Package):* circuitos integrados con dos filas de pines.

== Inserción de componentes THT

*Manual:* previamente se cortan y preforman los componentes con máquinas o herramientas de corte y doblado. Luego operarios los insertan en la placa.

*Automática:* máquinas específicas para componentes axiales, radiales y DIP.

== Sistemas de soldadura

- *Soldador de mano:* método artesanal.
- *Batea de soldadura:* artesanal, la placa se apoya sobre soldadura fundida.
- *Soldadura por ola:* proceso industrial, para THT.

== Soldadura por ola

Secuencia de cuatro etapas:
+ *Fluxeado:* el flux se aplica sobre la placa (por espuma, spray o pulverización).
+ *Precalentamiento:* eleva la temperatura de la placa.
+ *Ola de soldadura:* la placa pasa sobre la soldadura fundida.
+ *Enfriamiento:* solidificación controlada de las uniones.

Hay dos tipos de ola:
- *Ola turbulenta:* pasa primero y penetra bien en los agujeros.
- *Ola de flujo laminar:* pasa después y limpia puentes y excesos.

=== Parámetros del proceso

*Fluxeado:*
- Densidad del flux.
- Contenido de sólidos.

*Precalentamiento:*
- Llevar la cara superior de la placa a 90–120 °C.
- La velocidad de calentamiento no debe superar 2 °C/s.

*Ola de soldadura:*
- Temperatura de 235–260 °C.
- Altura de ola.
- Velocidad de transporte.
- Tiempo de contacto de 1,5 a 3,5 s.
- Ángulo del transporte.
- Impurezas y escoria.

*Enfriamiento:*
- Velocidad de enfriamiento.

== La aleación eutéctica

La soldadura estándar es *Sn63 / Pb37*. Es una aleación eutéctica: funde a una sola temperatura (183 °C), sin pasar por un estado pastoso. Por eso es la de uso más común.

== Ventana de proceso

El resultado depende de la intersección de tres factores:
- *Química:* flux, estaño-plomo, etc.
- *Materiales:* componentes, placa de circuito, diseño, etc.
- *Parámetros de la máquina:* ángulo, velocidad, temperatura, etc.

#clave("Ventana de proceso")[Solo en la intersección de los tres se obtiene una soldadura correcta.]

== Proceso SMT con pasta y reflow

Secuencia:
+ *Aplicación de pasta de soldar* sobre los pads.
+ *Colocación de componentes SMD* (Pick & Place).
+ *Soldadura en horno de refusión* (reflow).

== Proceso SMT con adhesivo y curado

Secuencia:
+ *Aplicación de adhesivo* para SMD.
+ *Colocación de componentes SMD.*
+ *Curado en horno.*

== Procesos mixtos

- *SMT reflow + SMT adhesivado + THT:* se insertan los THT en la placa con SMD reflow y adhesivado, y luego se suelda por ola todo en forma simultánea.
- *SMT reflow en ambas caras + THT:* se insertan los THT en la placa con SMD reflow y se sueldan a mano.

== Métodos de aplicación de pasta y adhesivo

*Dosificación* ("gota a gota"):
- *Presión-tiempo:* presión de aire sobre un fluido en una jeringa.
- *Bomba a tornillo:* un tornillo impulsa el fluido con precisión.

*Serigrafía:*
- *Manual, semi-automática o automática*, mediante stencil y espátula.

=== Dosificación presión-tiempo

El tamaño de la gota depende de:
- Diámetro de aguja.
- Viscosidad (temperatura y envejecimiento).
- Altura aguja-placa.
- Presión de aire.

*Fallas comunes:* gotas faltantes, gotas con picos, tamaño inconstante, burbujas de aire, envejecimiento del material, relación altura-tiempo equivocada y placa sucia o aceitada.

=== Características de una buena gota de adhesivo

- Forma cónica, con pico o semiesférica redonda.
- El volumen debe ser tal que, al colocar el componente, el diámetro no supere la distancia entre pads.
- La altura debe ser suficiente para unir PCB y componente (típicamente entre 0,05 mm y 0,3 mm).

=== Serigrafía de pasta o adhesivo

*Elementos:*
- *Pasta de soldar* o *adhesivo*.
- *Stencil:* plantilla metálica con aperturas, fabricada por láser, electroformado o grabado químico.
- *Espátulas:* metálicas o de goma.

*Equipos:* manual, semi-automático y automático.

*Parámetros del proceso:*
- Presión y ángulo de espátula.
- Velocidad de avance.
- Velocidad de separación.
- Factores ambientales.

== Insumos

=== Adhesivo SMD

Características típicas (ejemplo JU-100-5, epoxi rojo):
- Vida útil: 1 mes a temperatura ambiente, 6 meses bajo 0 °C.
- Temperatura óptima de dosificación: 30–35 °C constante.
- Curado: 120–130 °C por más de 90 s, o 130–150 °C por más de 60 s.

=== Pasta de soldar

*Composición:*
- *Aleación:* 63% estaño y 37% plomo, en polvo de 20 a 75 µm de partícula.
- *Flux:* solvente y agente decapante.
- *Aditivos:* dan estabilidad y pegajosidad.

*Ejemplo de hoja técnica:* el perfil de reflow recomendado sube de forma lineal, con una rampa de 0,6 a 2 °C/s, luego una meseta de precalentamiento, un pico de 215–245 °C por encima del punto de fusión, y un enfriamiento rápido menor a 4 °C/s para formar una estructura de grano fina.

#cuadro-registro("Parámetros de referencia de reflow")[
  Rampa de 0,6 a 2 °C/s, meseta de precalentamiento, pico de 215–245 °C y enfriamiento menor a 4 °C/s. El perfil real debe contrastarse con la hoja técnica de la pasta y los componentes.
]

=== Manipulación correcta de jeringas de adhesivo

- Mantener refrigerado en heladera común, nunca en freezer.
- Almacenar en forma vertical con el pico hacia abajo.
- Tomar la jeringa por la parte trasera.
- Retirar de la heladera con anticipación para que tome temperatura ambiente.
- No forzar el atemperado.
- Una vez en uso, no es necesario volver a refrigerar, salvo que no vaya a usarse por mucho tiempo.

=== Manipulación correcta de la pasta de soldar

- Mantener refrigerada hasta su uso (heladera común, no freezer).
- Retirar con anticipación para que tome temperatura ambiente con el envase cerrado.
- Almacenar en forma vertical con el pico hacia abajo.
- No forzar el atemperado.
- Abrir el pote y batir la pasta para evitar decantaciones.
- Identificar en el pote fecha y hora de apertura.
- Una vez en uso, si no se va a usar en los siguientes 30 minutos, retirar del stencil y guardar cerrada en otro pote, sin volver a refrigerar.
- Trabajar en un lugar fresco, libre de polvo y sin corrientes de aire.

== Colocación de componentes SMD

*Colocación manual:* método artesanal, para prototipos. Limitado por tamaño y tipo de componente.

*Colocación automática:* los componentes se toman por vacío con boquillas diseñadas para cada tipo de encapsulado.

=== Formas de suministro

Los componentes SMD vienen en tiras (cintas), bandejas (tray), varillas (stick) y bolsas a granel (bulk).

=== Alimentadores

Las cintas, varillas o planchas se colocan en alimentadores fijados a los laterales de la máquina de posicionamiento.

=== Principios de funcionamiento

- *Cabezal torreta:* cabezal rotativo con eje Z; la placa se mueve en X-Y y la mesa de alimentadores también puede moverse.
- *Pick & Place:* cabezal móvil en X-Y-Z; la placa es fija y la mesa de alimentadores puede ser fija o móvil.
- *Collect & Place:* cabezal rotativo móvil en X-Y-Z; la placa es fija.

=== Criterios para elegir una máquina

- Rango de componentes que puede colocar (0603, fine pitch, etc.).
- Cantidad y tipo de alimentadores que soporta.
- Precisión del sistema de posicionamiento.
- Tipo de centrado: mecánico, óptico (cámara) o por láser; interno o externo al cabezal.
- Capacidad de colocación en componentes por hora (cph).
- Sistema de transporte o stand alone.
- Software y posibilidad de teaching.
- Costo de la máquina, repuestos y accesorios.
- Complejidad de mantenimiento y service.
- Consumo eléctrico y de aire comprimido.
- Peso y tamaño.

== Hornos de reflow y curado

=== Características

- Número de zonas de calentamiento y de enfriamiento.
- Sistema de calentamiento: convección forzada, infrarrojo o mixto.
- Número de programas de soldadura almacenables.
- Verificador de temperatura interno o externo.
- Ancho del transporte y soporte central.
- Capacidad en placas por hora.
- Atmósfera inerte.
- Apagado automático y protección contra cortes de energía.

Existen hornos de mesa y hornos de alta producción.

=== Soldadura por refusión (reflow)

Se hace en hornos continuos de convección forzada o infrarrojos. Se desarrolla una curva temperatura-tiempo que une el componente SMD con la placa. Las fases son: evaporación del solvente, activación del flux, fusión de la soldadura y enfriamiento.

Ejemplo de referencia: rampa de 2–4 °C/s, tiempo sobre 183 °C de 60 a 120 s, pico de temperatura de 220 °C en el cuerpo y 235 °C en los terminales.

#cuadro-atencion("El perfil depende del material")[
  Los valores de temperatura y tiempo son ejemplos: deben verificarse contra las especificaciones de la aleación, la pasta, los componentes y el horno utilizado.
]

=== Curado de adhesivo

- Luego de colocar el componente, se cura el adhesivo en horno infrarrojo o de convección forzada.
- Típicamente, los adhesivos para SMD curan entre 100 °C y 160 °C, en unos 3 a 5 minutos según marca y modelo.
- A mayor temperatura el proceso es más rápido, pero la unión se vuelve quebradiza.

=== Perfilado de temperatura

Se mide la temperatura con termocuplas conectadas a la placa, mientras pasa por el horno. Con los datos se obtiene el perfil real de temperatura, que se compara con el recomendado.

== Inspección óptica de la calidad

=== Puntos de control

- *Después de la serigrafía de pasta:* verificar depósito y alineación.
- *Después de la colocación:* verificar posición, alineación y que no haya desplazamientos.
- *Después del reflow:* verificar la unión soldada.

=== Criterios de aceptación de colocación

- *Admisible:* desplazamiento o rotación dentro de los límites (por ejemplo, desplazamiento menor a la mitad del terminal).
- *No admisible:* desplazamiento o rotación que supere esos límites o que produzca puentes o terminales fuera de los pads.

=== Medios de inspección visual

- *Lupa.*
- *Microscopio.*
- *Videomicroscopio.*

=== Medios de inspección automáticos

- *AOI (Automated Optical Inspection):* inspección óptica automática sobre la placa.
- *Rayos X:* permite ver uniones ocultas, como BGA, y medir vacíos en las soldaduras.

== Equipos de test eléctrico

- *Cama de clavos (in-circuit test):* la placa se apoya sobre una cama de pines de contacto que tocan puntos de prueba. Es rápida para producción en serie.
- *Flying probe tester:* sondas móviles que tocan los puntos de prueba. No requiere dispositivo fijo, por lo que sirve para series cortas o prototipos.

== Insumos para la manufactura electrónica

*Para el armado del módulo:*
- Flux.
- Estaño-plomo, en barras o en alambre.
- Pasta de soldar.
- Adhesivo para SMD.

*Para la terminación del módulo o equipo:*
- Recubrimientos de protección (coating).
- Encapsulantes.
- Adhesivos.

== Protección electrostática (ESD)

Los *ESD* (Electrostatic Sensitive Devices) son componentes sensibles a la electricidad estática. Para protegerlos se usan:
- Pisos y calzado conductores.
- Mesas con superficies conductoras conectadas a tierra.
- Ionizadores en los puestos de trabajo.
- Bolsas antiestáticas para transporte y almacenamiento.