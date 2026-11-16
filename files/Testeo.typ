// Imagen que vos colocás manualmente
#let imagen(desc) = figure(
  rect(width: 100%, height: 6cm, fill: rgb("#f0f0f0"), stroke: 1pt + gray)[
    #align(center + horizon)[#text(fill: gray)[🖼️ #desc]]
  ]
)

// Caja de concepto clave
#import "cajas.typ": cuadro-concepto, cuadro-ejemplo, cuadro-atencion, cuadro-registro
#let clave(titulo, cuerpo) = cuadro-concepto(titulo, cuerpo)

= Ingeniería de Integración y Test

== Prueba y experimento

- *Experimento:* procedimiento que busca soportar, confirmar o refutar una hipótesis manipulando variables y estudiando sus correlaciones con el fenómeno.
- *Prueba:* operación técnica que determina una o más características de un producto, proceso o servicio según un procedimiento especificado.

== Definición de una prueba

Un *DUT* (Device / Unit / Equipment Under Test) es lo que se prueba. Se conecta a un *banco de pruebas* (testbench) formado por:
- *Interfaz*, *excitación*, *medición*, *interfaz* de salida y *alimentación*.
- El *ambiente* que rodea al DUT.

#clave("Reglas del banco de pruebas")[
  - Las *características del banco deben ser conocidas* (todo debe estar testeado y caracterizado).
  - El resultado debe ser *repetible*: el ambiente debe controlarse.
]

//#imagen("Diagrama de banco de pruebas genérico: Interfaz, Excitación, DUT, Medición, Interfaz, Alimentación y Ambiente")

#figure(
  image("images/DUT.png", width: 90%),
  caption: [Diagrama de banco de pruebas genérico]
)

#cuadro-ejemplo("Test para un sensor")[
  Se puede usar una fuente de calor calibrada, o bien una fuente constante con un sensor calibrado. El osciloscopio y las puntas, la pantalla o USB, y la interfaz forman parte del banco. Un banco de pruebas genérico para tests automatizados combina excitación, medición, potencia, interfaz y ambiente controlado. El sensor requiere un amplio testeo previo.
]

#figure(
  image("images/DUT2.png", width: 60%)
)

== Pruebas de caja negra y caja blanca

*Caja negra:*
- Se hace sin mirar el funcionamiento interno del DUT.
- No se miden variables internas ni se analizan causas.
- No requiere conocer la ingeniería de detalle.
- Se basa en el set completo de requerimientos funcionales.

*Caja blanca* (in-circuit testing en HW):
- Se observa el funcionamiento interno en detalle.
- Requiere ver salidas intermedias y seguir las señales paso a paso.
- Requiere amplio conocimiento de HW y SW.
- No garantiza por sí sola que se cumplan todos los requerimientos funcionales.

== Integración

Proceso de juntar distintos módulos e ir verificándolos a medida que se unen.

- *Enfoques:* Top-Down (no recomendado) y *Bottom-Up* (recomendado).
- *También llamada:* pre-integración, integración de módulo o integración de sistema.

== Modelo V

Relaciona cada etapa de diseño con su validación:

- Análisis de requerimientos → Validación de sistema (aceptación del cliente).
- Diseño de alto nivel → Validación de (sub)módulos y de sistema.
- Diseño detallado → Validación de (sub)módulos.
- Implementación en la base del modelo.

#figure(
  image("images/ModeloV.png", width: 60%)
)

== Tipos de pruebas

*Prueba de concepto (PoC):* implementación resumida o incompleta de un método o idea, para verificar que puede ser útil. Suele ser un paso previo al prototipo operativo.

*Prueba de validación:* verifica que un módulo, subsistema o sistema cumple todos los requerimientos o especificaciones de un contrato. Se realiza *una sola vez* por configuración específica. Si se aplica a un sistema completo, se llama *prueba de aceptación*.

*FAT (Factory Acceptance Test):*
- Validación completa realizada por el fabricante.
- Cubre aspectos funcionales y no funcionales (estéticos, mecanismos de falla, etc.).
- Debe aprobarse antes de iniciar la fabricación y enviar el producto.

*Pruebas de instalación:*
- Verifican cada paso de instalación que lo requiera.
- Las realiza el fabricante en el lugar de instalación.
- No cubren necesariamente toda la funcionalidad, sino los puntos donde la instalación puede afectar el desempeño (sujeción, alineación, EMC, seguridad, sensores especiales).

*SAT (Site Acceptance Test):*
- Validación realizada por el cliente.
- Mira solo aspectos funcionales y verifica requerimientos.
- Incluye re-pruebas parciales, porque el traslado e instalación pueden afectar la funcionalidad.

*Pruebas de manufactura:*
- Se realizan después de FAT y SAT, cuando el diseño ya está validado.
- Detectan errores o defectos introducidos por la producción.
- Son aseguramiento de calidad, no demuestran la validez del diseño.
- Solo los elementos específicos de seguridad se prueban en todas las unidades.

*Pruebas de regresión:*
- Se hacen al cambiar un módulo o submódulo de un sistema ya validado.
- Idealmente podrían evitarse si la nueva versión es igual o mejor en todo, pero en desarrollos profesionales se realizan siempre.
- No son necesariamente un conjunto completo de validación, sino que apuntan a revalidar los parámetros que pudieron cambiar.
- En SW suelen implementarse como pruebas automáticas.

== Pruebas de seguridad

Se realizan en *todas las unidades* cuando hay riesgo eléctrico potencial:

- *Hi-Pot:* verifica la tensión a la que se rompe el dieléctrico (por ejemplo entre HV y GND). Es destructiva.
- *Ground bonding:* verifica que el circuito de tierra soporte suficiente corriente. Ejemplo: con 12 V, deben circular 120 A o más durante 1 minuto.
- *Insulation / Leakage:* mide la corriente de pérdida entre conductores que deben estar aislados. Es parecida a Hi-Pot, pero no destructiva: observa un comportamiento durante el funcionamiento normal.

== Plan de integración y test

*Planificación:* se suele usar un *PERT* para mostrar las dependencias entre pruebas. Por ejemplo, la prueba de la fuente de alimentación debe ir antes que las pruebas de performance de lo que alimenta. Si no se respeta un orden lógico, las pruebas posteriores deben ser más exigentes.

*El plan siempre incluye:*

+ *Banco de pruebas:* instrumentación con su error, resolución y precisión, interfaces necesarias para el DUT, desarrollos especiales y modos de prueba del DUT.
+ *Setup:* accesorios, facilidades y entorno necesarios (temperatura, humedad, conexiones de red, cables con largos y conectores definidos).

#cuadro-ejemplo("Ejemplo de referencia")[En un banco de pruebas real (como el de un sistema óptico), la descripción incluye PC de control, fuentes, paneles, placas de conexión y cableado, con muchos más detalles que el esquema.]

== Precondiciones y postcondiciones

- *Precondiciones:* condiciones necesarias antes de la prueba (partes ya validadas, estado del equipo: enchufado, encendido, cargado, en temperatura; estado del banco).
- *Postcondiciones:* cómo debe quedar el equipo y el banco al terminar (conclusión: módulo validado o descripción del problema; estado final del DUT; estado del banco).

== Cómo se describe una prueba

Cada prueba debe tener:

- *ID:* permite informes concisos y trazabilidad hacia los requerimientos.
- *Requerimientos u objetivos* que se prueban.
- *Entorno de pruebas / banco* (puede ser una referencia a un banco ya definido).
- *Procedimiento:* instrucciones claras y no ambiguas, para que cualquiera pueda realizarlo. Incluye configuraciones de instrumentos y verificaciones intermedias (por ejemplo, "verificar que se enciende el LED").
- *Criterios de aceptación:* definidos *antes* de la prueba, indicando qué resultados se esperan y qué se considera aprobado o rechazado.
- *Precondiciones y postcondiciones.*

#cuadro-registro("Estructura típica")[ID | Objetivo / Requisito | Banco / entorno | Precondiciones | Procedimiento | Criterio PASS/FAIL | Postcondiciones]

#figure(
  image("images/TestID.png", width: 100%),
  caption: [Ejemplo de tabla de descripción de prueba]
)

//#imagen("Ejemplo de tabla de descripción de prueba con Test ID, descripción, procedimiento, criterio y OK/NOK")



== DFT y BIST

*DFT (Design for Testability):* agregar herramientas embebidas en el diseño para facilitar las pruebas.
- En HW: LEDs o pines que reaccionan a señales de prueba.
- En SW: un modo de prueba que usa el dispositivo de forma distinta a la del usuario y permite acceder a parámetros internos o diagnosticar.

*BIST (Built-In Self Test):* autochequeo interno que se ejecuta antes de habilitar la funcionalidad al usuario.
- Registra problemas antes de que el usuario use el equipo (los reportes de usuarios no siempre son confiables para diagnosticar).
- Si detecta una falla peligrosa (por ejemplo, alta temperatura), previene que el peligro se introduzca en el sistema.

== Matriz de trazabilidad

Permite verificar que todos los requerimientos se cumplan y mantiene unida la documentación del diseño. En manufactura, sirve para seguir cada unidad.

*Columnas, de izquierda a derecha:*
+ *Requerimiento* (cada fila empieza con uno).
+ *Especificación de diseño* que lo cumple (con su ID).
+ *Objetivo de diseño.*
+ *Test ID* de validación.
+ *Resultado del test.*
+ *Especificación de producto.*

#clave("Utilidad")[Si cada requerimiento tiene una verificación (inspección, documentación de diseño, simulación o prueba), la matriz demuestra que nada quedó sin validar.]

//#imagen("Ejemplo de matriz de trazabilidad con filas de requerimientos POW01 y SEN01 y sus columnas de especificación, objetivo, test y resultado")

#figure(
  image("images/Matriz.png", width: 100%),
  caption: [Ejemplo de matriz de trazabilidad]
)