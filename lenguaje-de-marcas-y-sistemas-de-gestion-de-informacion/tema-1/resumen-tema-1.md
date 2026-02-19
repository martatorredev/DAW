# 📚 UT1 – Lenguajes de Marcas: Resumen Completo para el Examen

---

## 1. ¿Qué es un Lenguaje de Marcas?

Un **lenguaje de marcas** es un modo de codificar un documento donde, junto con el texto, se incorporan **etiquetas, marcas o anotaciones** con información adicional relativa a la estructura del texto o su formato de presentación.

- Permiten hacer explícita la estructura de un documento, su contenido semántico o cualquier otra información lingüística.
- Todo lenguaje de marcas está definido en un documento llamado **DTD (Document Type Definition)**, donde se establecen las marcas, elementos, etiquetas, atributos, sintaxis y normas de uso.
- En un mismo documento pueden combinarse varios tipos de lenguajes de marcas.

### Clasificación de los lenguajes de marcas

| Tipo | Descripción |
|------|-------------|
| **De presentación** | Define el formato del texto |
| **De procedimientos** | Orientado a la presentación; el programa interpreta el código en el orden en que aparece |
| **Descriptivo o semántico** | Describe las partes en que se estructura el documento sin especificar cómo representarlas |

### Ejemplos por ámbito

**Documentación electrónica:**
- **RTF** (Rich Text Format): desarrollado por Microsoft en 1987. Permite intercambio entre procesadores de texto.
- **TeX**: para crear ecuaciones matemáticas complejas.
- **Wikitexto**: para crear páginas wiki.
- **DocBook**: genera documentos separando estructura lógica del formato.

**Tecnologías de Internet:**
- **HTML / XHTML**: creación de páginas web.
- **RSS**: difusión de contenidos web.

**Otros lenguajes especializados:**
- **MathML**: formalismo matemático entre sistemas.
- **VoiceXML**: intercambio de información con reconocimiento de habla.
- **MusicXML**: intercambio de partituras.

> ⚠️ **Autoevaluación:** Los lenguajes de marcas se utilizan para **todas las anteriores**: dar formato, definir estructura y permitir intercambio entre plataformas.

---

## 2. Evolución de los Lenguajes de Marcas

### 2.1 GML (Generalized Markup Language)

- Creado en los **años 60-70** por **Charles F. Goldfarb** por encargo de **IBM**.
- Objetivo: construir un sistema de edición, almacenamiento y búsqueda de **documentos legales**.
- Establecía un **formato estándar** para todos los documentos, independiente de la plataforma y la aplicación.
- Permitía gestionar cualquier documento en cualquier departamento con cualquier aplicación.

### 2.2 SGML (Standard Generalized Markup Language)

- GML evolucionó hasta convertirse en **SGML en 1986**, estándar **ISO 8879**.
- Era un lenguaje **muy complejo** y requería herramientas de software **caras**.
- Su uso quedó relegado a **grandes aplicaciones industriales**.

### 2.3 HTML (HyperText Markup Language)

- Creado en **1989/90** por **Tim Berners-Lee** al crear la **World Wide Web**.
- Combinación de dos estándares:
  - **ASCII**: formato reconocible por cualquier procesador de textos, permite transferencia de datos entre ordenadores.
  - **SGML**: da estructura al texto.
- HTML es una **versión simplificada de SGML** (solo las instrucciones imprescindibles).
- Se convirtió en **estándar general para páginas web**.

**Desventajas de HTML:**
- No soporta tareas de impresión y diseño.
- No es flexible (etiquetas limitadas).
- No permite contenido dinámico.
- La estructura y el diseño están **mezclados** en el documento.

### 2.4 XML (eXtensible Markup Language)

- El **W3C** establece el estándar XML en **1998** para resolver los problemas de HTML.
- Es un lenguaje de marcas **puramente estructural** que **no incluye información de diseño**.
- Se está convirtiendo en estándar para el **intercambio de datos en la Web**.
- A diferencia de HTML, las etiquetas indican el **significado** de los datos, no el formato.

**XML es un metalenguaje caracterizado por:**
- Permitir definir **etiquetas propias**.
- Permitir asignar **atributos** a las etiquetas.
- Utilizar un **esquema** para definir exactamente las etiquetas y atributos.
- La **estructura y el diseño son independientes**.

**La familia XML incluye:**
- **XSL** (eXtensible Style Language): hojas de estilo para documentos XML con capacidad de transformación.
- **XML Linking Language** (XPath, XLink, XPointer): enlaces entre documentos XML.
- **XML Namespaces**: contexto para las marcas, diferencia etiquetas con el mismo nombre en distintos contextos.
- **XML Schemas / DTD**: definen restricciones que se aplicarán a un documento XML.

---

## 3. Comparativas

### XML vs HTML

| XML | HTML |
|-----|------|
| Es un **perfil de SGML** | Es una **aplicación de SGML** |
| Especifica cómo definir conjuntos de etiquetas para un tipo de documento | Aplica un conjunto **limitado** de etiquetas sobre un único tipo de documento |
| Modelo de hiperenlaces **complejo** | Modelo de hiperenlaces **simple** |
| El navegador es una **plataforma para el desarrollo de aplicaciones** | El navegador es un **visor de páginas** |
| Fin de la guerra de los navegadores y etiquetas propietarias | El problema de incompatibilidad entre navegadores es difícil de resolver |

### XML vs SGML

| XML | SGML |
|-----|------|
| Uso **sencillo** | Uso **complejo** |
| Trabaja con **documentos bien formados** (no exige que estén validados) | Solo trabaja con **documentos válidos** |
| Facilita el desarrollo de aplicaciones de **bajo coste** | Las aplicaciones para procesar SGML son **muy costosas** |
| Muy utilizado en informática y más áreas | Solo se utiliza en **sectores muy específicos** |
| **Compatible e integrado** con HTML | No hay compatibilidad con HTML definida |
| Formato y estilos **fáciles de aplicar** | Formateo y estilos relativamente complejos |
| **No usa etiquetas opcionales** | — |

> ⚠️ **Autoevaluación:** ¿Qué tienen en común XML y SGML? → **Guardan la estructura lógica de los documentos.**

---

## 4. Las Etiquetas

- Los lenguajes de marcas utilizan **etiquetas** especiales intercaladas en un documento de texto sin formato.
- Las etiquetas se escriben **encerradas entre ángulos**: `<` y `>`.
- Se utilizan **dos etiquetas**: una de inicio y otra de fin.
- La de cierre lleva una **barra inclinada `/`** antes del código.

```xml
<etiqueta>texto que sufrirá las consecuencias de la etiqueta</etiqueta>
```

- Las especificaciones del W3C indican que deben ir escritas **siempre en minúsculas**.

> ⚠️ **Autoevaluación:** ¿Cuál es correcta? → `<i>Texto en cursiva</i>` ✅

---

## 5. Herramientas de Edición

Para trabajar en XML se necesitan dos tipos de herramientas:

### Editores XML
- Los lenguajes de marcas se basan en **ficheros de texto plano**, por lo que basta un procesador de texto normal.
- Para documentos complejos es conveniente usar un **editor XML** (ayudan con estructuras, etiquetas, DTD, CSS, XSL...).
- El W3C desarrolló **Amaya**: editor gratuito de HTML, XHTML, CSS y XML.

### Procesadores XML
- Permiten **leer documentos XML** y acceder a su contenido y estructura.
- Contienen un **parser o analizador** que comprueba que el documento cumple las normas.
- **Validadores**: solo trabajan con documentos **válidos**.
- **No validadores**: solo exigen que el documento esté **bien formado**.
- Para publicar XML en Internet se usan procesadores **XSLT** (generan HTML desde XML).
- Para interpretar XML se puede usar **cualquier navegador**.
- Para intercambio de datos entre aplicaciones: **JAXP de Oracle**.

> ⚠️ **Autoevaluación:** Para crear documentos XML es necesario → **Un bloc de notas y un navegador.** ✅

---

## 6. XML: Estructura y Sintaxis

### Características básicas de XML
- Compatible con protocolos existentes como **HTTP y URL**.
- Todo documento XML conforme está conforme con **SGML**.
- No se requieren conocimientos de programación para tareas sencillas.
- Los documentos XML son **fáciles de crear**.
- El marcado de XML es **legible para los humanos**.
- El diseño es **formal y conciso**.
- Es **extensible, adaptable** y aplicable a gran variedad de situaciones.
- Es **orientado a objetos**.

### Etapas de creación de un documento XML
1. Especificación de requisitos.
2. Diseño de etiquetas.
3. Marcado de los documentos.

### Composición de un documento XML
Un documento XML se compone de:
- **Prólogo** (opcional): debe preceder al ejemplar si se incluye.
- **Ejemplar** (obligatorio): contiene los datos reales.

### Comentarios en XML
- Se incluyen entre `<!--` y `-->`.
- No son interpretados por el intérprete XML.
- **No pueden estar:**
  - Antes del prólogo.
  - Dentro de una etiqueta.

---

## 7. El Prólogo

El prólogo puede tener tres funciones:

### 7.1 Declaración de versión XML
```xml
<?xml version="1.0" ?>
```

### 7.2 Declaración de codificación
```xml
<?xml version="1.0" encoding="iso-8859-1" ?>
```

**Códigos de codificación más importantes:**

| Estándar ISO | Uso |
|---|---|
| **UTF-8** (Unicode) | Conjunto de caracteres universal |
| **ISO-8859-1** (Latin-1) | Europa occidental, Latinoamérica (acentos, ñ) |
| ISO-8859-2 (Latin-2) | Europa central y oriental |
| ISO-8859-3 (Latin-3) | Sudoeste de Europa |
| ISO-8859-4 (Latin-4) | Países Escandinavos, Bálticos |
| ISO-8859-5 | Cirílico |
| ISO-8859-6 | Árabe |
| ISO-8859-7 | Griego |
| ISO-8859-8 | Hebreo |
| ISO-8859-9 | Turco |
| ISO-8859-10 | Lapón, Nórdico, esquimal |
| EUC-JP / Shift_JIS | Japonés |

### 7.3 Declaración de autonomía del documento
```xml
<?xml version="1.0" encoding="iso-8859-1" standalone="yes" ?>
```
- `standalone="yes"`: el documento es **independiente**.
- `standalone="no"`: necesita de otro documento externo (como un DTD).

### 7.4 Declaración del tipo de documento
```xml
<!DOCTYPE Nombre_tipo ...>
```
- Define qué tipo de documento se está creando para ser procesado correctamente.

---

## 8. El Ejemplar: Los Elementos

- Es la parte **más importante** de un documento XML (contiene los datos reales).
- Está formado por **elementos anidados**.
- Los elementos son bloques de información delimitados por **etiqueta de apertura y cierre**.
- A su vez, los elementos pueden contener otros elementos y/o atributos.
- El ejemplar es el **elemento raíz (root)** del documento.

### Reglas para la formación de elementos

1. En todo documento XML debe existir **un único elemento raíz**.
2. Todos los elementos tienen etiqueta de **inicio y cierre**. Los elementos vacíos pueden escribirse como `<elemento/>`.
3. Al **anidar elementos**, no se puede cerrar un elemento que contenga otro aún no cerrado.
4. Los nombres de etiquetas de inicio y cierre deben ser **idénticos** (respetando mayúsculas y minúsculas).
5. Los nombres pueden ser cualquier cadena alfanumérica **sin espacios** y que **no comience** por `:` ni por `xml` (en ninguna combinación de mayúsculas/minúsculas).

### Caracteres especiales (entidades predefinidas)

| Carácter | Cadena |
|---|---|
| `>` | `&gt;` |
| `<` | `&lt;` |
| `&` | `&amp;` |
| `"` | `&quot;` |
| `'` | `&apos;` |

- Para caracteres especiales como €, £, ©... se usan expresiones **`&#D;`** (decimal) o **`&#xH;`** (hexadecimal) en código Unicode.
  - Ejemplo: Euro `€` → `&#8364;` o `&#x20AC;`

---

## 9. Los Atributos

- Permiten **añadir propiedades** a los elementos.
- **No pueden** organizarse en jerarquía.
- **No pueden** contener ningún otro elemento o atributo.
- **No reflejan** ninguna estructura lógica.
- **No se debe** usar un atributo para contener información susceptible de ser dividida.
- Se definen dentro de la **etiqueta de inicio**, separados por espacios.
- Los valores van **entre comillas simples o dobles**.
- Los nombres de atributos siguen las **mismas reglas que los elementos**.
- Los nombres de atributos **no pueden contener el carácter `<`**.

```xml
<ejemplar tipo_ejem="libro" titulo="XML practico" editorial="Ediciones Eni">
```

---

## 10. Documentos XML Bien Formados

Un documento XML está **bien formado** si cumple estas normas básicas del W3C:

1. El documento tiene definido un **prólogo con la declaración XML completa**.
2. Existe **un único elemento raíz** que contiene todos los demás.
3. Se cumplen todas las **reglas sintácticas** para definir elementos y atributos.

> ⚠️ **Autoevaluación:** ¿Está bien formado este documento?
> ```xml
> <?xml version="1.0"?>
> <mensaje>
>   <destinatario>Tomas</ destinatario>
>   <remitente>Juan</ remitente>
>   <asunto>
>   <contenido>No olvides ir a recogerme al aeropuerto!</contenido>
> </mensaje>
> ```
> → **Falso.** La etiqueta `<asunto>` sigue abierta y el prólogo no tiene una declaración XML completa.

---

## 11. Espacios de Nombres (Namespaces)

- Permiten definir la **pertenencia de los elementos y atributos** de un documento XML a un vocabulario XML concreto.
- Resuelven las **ambigüedades** cuando se juntan dos documentos distintos que usan el mismo nombre de etiqueta para cosas distintas.
- También conocidos como **"name spaces"**.
- Permiten dar un nombre único a cada elemento, indexándolos según el nombre del vocabulario adecuado.
- Están asociados a un **URI** que los identifica de forma única.

### Sintaxis

Las etiquetas ambiguas se sustituyen por **"nombres cualificados"**:

```xml
<prefijo:nombre_etiqueta></prefijo:nombre_etiqueta>
```

- El prefijo determina el contexto al que pertenece la etiqueta.
- Los prefijos **no pueden** tener espacios ni caracteres especiales y **no pueden comenzar por un dígito**.

### Declaración del espacio de nombres

Se usa el atributo especial `xmlns`:

```xml
<elemento xmlns:prefijo="URI_del_espacio_de_nombres">
```

### Ejemplo práctico

Sin espacios de nombres, al unir un XML de alumnos y uno de profesores, la etiqueta `<nombre>` sería ambigua. Con namespaces:

```xml
<?xml version="1.0" encoding="iso-8859-1" standalone="yes" ?>
<!DOCTYPE miembros>
<alumnos xmlns:alumnos="http://DAM/alumnos">
<profesores xmlns:profesores="http://DAM/profesores">
<asistentes>
  <alumnos:nombre>Fernando Fernández González</alumnos:nombre>
  <alumnos:nombre>Isabel González Fernández</alumnos:nombre>
  <profesores:nombre>Pilar Ruiz Pérez</profesores:nombre>
  <profesores:nombre>Tomás Rodríguez Hernández</profesores:nombre>
</asistentes>
```

> ⚠️ **Autoevaluación:** Los espacios de nombres permiten → **Utilizar etiquetas idénticas para estructurar distintos tipos de información de texto.** ✅

---

## 11b. Espacios de Nombres: Detalle Técnico (ampliación)

### Sintaxis exacta
```xml
xmlns:prefijo="URI"
```

- El **URI** (Uniform Resource Identifier) no tiene por qué contener nada real; su función es **ser único**.
- Los prefijos se añaden a las etiquetas: `<prefijo:elemento>`.

### Namespace por defecto
```xml
xmlns="URI"
```
- Afecta al elemento donde se define **y a todos sus sucesores** (hijos, hijos de hijos...).

### Namespace vacío (sin namespace)
```xml
xmlns=""
```
- Indica que ese elemento y sus hijos **no pertenecen a ningún espacio de nombres**.

### Dónde se pueden definir
- En el **elemento raíz** (afecta a todo el documento).
- En **elementos distintos al raíz** (afecta solo a ese elemento y sus hijos).

---

## 11c. Instrucciones de Procesamiento

- Sirven para indicar cierta información al programa que procese el documento.
- Se escriben entre `<?` y `?>`.
- **No son obligatorias** en un documento XML.
- La declaración XML `<?xml ...?>` tiene la misma forma pero **NO es una instrucción de procesamiento**.

### Ejemplo: asociar CSS a un XML
```xml
<?xml-stylesheet type="text/css" href="estilo.css"?>
```

---

## 11d. Secciones CDATA

- Sirven para escribir texto que **no se desea que sea analizado** por el parser XML.
- Útil cuando el contenido contiene caracteres problemáticos (`<`, `&`) sin necesidad de usar entidades.
- Se escribe entre `<![CDATA[` y `]]>`.

```xml
<ejemplo_CDATA>
<![CDATA[
  #include <stdio.h>
  if ( 5 <= nota )
  printf("APROBADO");
]]>
</ejemplo_CDATA>
```

**Reglas de CDATA:**
- Dentro de una sección CDATA **no se puede escribir** `]]>`.
- Por tanto, **no se pueden anidar** secciones CDATA.
- **No se permiten** espacios en blanco o saltos de línea dentro de `<![CDATA[` o `]]>`.

---

## 11e. Espacios en Blanco en XML

### En el contenido de un elemento
- Las **tabulaciones, retornos de carro y varios espacios en blanco** se representan como **un único espacio en blanco**.

```xml
<pelicula>Una
mente
maravillosa</pelicula>
```
→ Se muestra como: `Una mente maravillosa`

### En atributos
- Ocurre lo mismo: múltiples espacios/saltos de línea en el valor de un atributo se normalizan a un espacio.

### Entre elementos
- Los espacios en blanco entre elementos son ignorados; estos tres documentos son equivalentes:
```xml
<datos><dato>1</dato><dato>2</dato></datos>
<datos>
  <dato>1</dato>
  <dato>2</dato>
</datos>
```

### Atributo xml:space
- Para **preservar** los espacios tal cual aparecen: `xml:space="preserve"`
- Valor por defecto (cuando no se escribe): `xml:space="default"` → la aplicación decide cómo tratar los espacios.
- ⚠️ No todos los programas reconocen este atributo.

```xml
<clasificacion xml:space="preserve">
1 Fernando Alonso 1:55.341
2 Lewis Hamilton 1:55.729
</clasificacion>
```

---

## 11f. Normas de Sintaxis de Elementos (detalle)

Los nombres de elementos son **case sensitive**. Pueden contener:
- Letras minúsculas, mayúsculas, números, puntos `.`, guiones medios `-` y guiones bajos `_`.
- El carácter `:` (reservado para namespaces).
- El **primer carácter** debe ser una **letra o guion bajo `_`**.

**Permitido:**
- Espacio en blanco o salto de línea **detrás** del nombre de la etiqueta: `<ciudad >Pamplona</ciudad >`

**No permitido:**
- Espacio o salto de línea **antes** del nombre: `< ciudad>Pamplona</ciudad>` ❌

**Ejemplos de errores típicos:**

| Incorrecto | Correcto |
|---|---|
| `<Ciudad>...</ciudad>` (distinto case) | `<Ciudad>...</Ciudad>` |
| `<mes>6<mes/>` (cierre mal) | `<mes>6</mes>` |
| `<2colores>` (empieza por número) | `<colores2>` |
| `< Aficiones >` (espacio antes) | `<Aficiones >` |
| `<color favorito>` (espacio en nombre) | `<color_favorito>` o `<color.favorito>` |
| `<persona><nombre>Elsa</persona></nombre>` (mal anidado) | `<persona><nombre>Elsa</nombre></persona>` |

> ⚠️ Las letras no inglesas (á, ñ...) están permitidas pero se recomienda **no usarlas** para evitar incompatibilidades.

---

## 11g. Normas de Sintaxis de Atributos (detalle)

- Mismas normas de nombres que los elementos.
- **Todos los atributos de un elemento deben ser únicos** (no se puede repetir el mismo nombre de atributo).
- `<datos x="3" x="4" y="5"/>` ❌ → El atributo `x` se repite.
- `<datos x="3" X="4" y="5"/>` ✅ → `x` y `X` son distintos (case sensitive).
- Los atributos se **separan con espacios en blanco** y su **orden no es significativo**.

### Comillas en atributos
- Si el valor va entre comillas dobles `"`, no puede contener `"` → usar `&quot;`
- Si el valor va entre comillas simples `'`, no puede contener `'` → usar `&apos;`
- Valor con dobles comillas puede contener comilla simple y viceversa:
  - `<dato caracter="comilla simple(')"/>` ✅

---

## 11h. Comentarios (detalle)

- Entre `<!--` y `-->`.
- **No se pueden escribir dentro de las etiquetas**: `<mujer <!-- vacío --> />` ❌
- **No se pueden usar dos guiones seguidos** dentro del comentario: `<!-- texto -- más texto -->` ❌
- **No se pueden anidar comentarios**.

---

## 11i. Documentos Bien Formados vs Válidos

### Bien formado (well-formed)
Un documento XML está **bien formado** si:
- Los nombres de elementos y atributos están correctamente escritos.
- Los valores de los atributos van entre comillas dobles o simples.
- Los atributos de un elemento se separan con espacios en blanco.
- Se usan referencias a entidades donde sea necesario.
- Existe un **único elemento raíz**.
- Todo elemento tiene un padre, excepto el raíz.
- Todos los elementos tienen etiqueta de apertura y cierre.
- Las etiquetas están correctamente **anidadas**.
- Las instrucciones de proceso están correctamente escritas.
- La declaración XML está en la **primera línea** y correctamente escrita.
- Las secciones CDATA y comentarios están correctamente escritos.

### Válido (valid)
Un documento XML es **válido** cuando, además de estar bien formado, **no incumple ninguna norma de su estructura**. Esa estructura se puede definir con:
- **DTD** (Document Type Definition).
- **XML Schema**.
- **RELAX NG**.

> 💡 **Resumen clave:** Bien formado = sin errores de sintaxis. Válido = bien formado + cumple las reglas de su DTD/Schema.

---

## 12. Ejemplo Completo de Documento XML

```xml
<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE biblioteca>
<biblioteca>
  <ejemplar tipo_ejem="libro" titulo="XML practico" editorial="Ediciones Eni">
    <tipo>
      <libro isbn="978-2-7460-4958-1" edicion="1" paginas="347"></libro>
    </tipo>
    <autor nombre="Sebastien Lecomte"></autor>
    <autor nombre="Thierry Boulanger"></autor>
    <autor nombre="Angel Belinchon Calleja" funcion="traductor"></autor>
    <prestado lector="Pepito Grillo">
      <fecha_pres dia="13" mes="mar" año="2009"></fecha_pres>
      <fecha_devol dia="21" mes="jun" año="2009"></fecha_devol>
    </prestado>
  </ejemplar>
  <ejemplar tipo_ejem="revista" titulo="Todo Linux 101" editorial="Studio Press">
    <tipo>
      <revista>
        <fecha_publicacion mes="abr" año="2009"></fecha_publicacion>
      </revista>
    </tipo>
    <autor nombre="Varios"></autor>
    <prestado lector="Pedro Picapiedra">
      <fecha_pres dia="12" mes="ene" año="2010"></fecha_pres>
    </prestado>
  </ejemplar>
</biblioteca>
```

---

## 13. Ejercicio: Detectar Errores en XML

```xml
<?XML version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE biblioteca >
<biblioteca>
  <ejemplar tipo_ejem='libro' titulo='XML práctico' editorial='Ediciones Eni'>
    <tipo> <libro isbn='978-2-7460-4958-1' edicion= paginas='347'></libro> </tipo>
    <prestado lector='Pepito Grillo'>
      <fecha_pres dia='13' mes='mar' año='2009'></fecha_pres>
      <fecha_devol/>
    </prestado>
  </ejemplar>
</biblioteca>
```

**Errores correctos en este documento (según solución del libro):**
- ✅ **Hay algún atributo vacío** → `edicion=` no tiene valor entre comillas.
- ✅ **Los valores de los atributos no están entre comillas dobles** → se usan comillas simples (válido, pero el ejercicio lo marca como incorrecto en ese contexto).

**Errores incorrectos (trampas):**
- ❌ "Utiliza mayúsculas en la definición de la versión XML" → `<?XML` SÍ es un error (debe ser `<?xml` en minúsculas), pero la solución oficial lo marca como incorrecto en ese ejercicio concreto.
- ❌ `<fecha_devol/>` sí se cierra correctamente (es elemento vacío válido).

---

## 📋 Resumen Visual de la Estructura de un Documento XML

```
DOCUMENTO XML
│
├── PRÓLOGO (opcional)
│   ├── Declaración XML: <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
│   └── Declaración DOCTYPE: <!DOCTYPE nombre_tipo>
│
└── EJEMPLAR (obligatorio)
    └── Elemento raíz único
        ├── Elementos hijo (con etiquetas de apertura y cierre)
        │   ├── Atributos (dentro de la etiqueta de apertura)
        │   └── Contenido (texto o más elementos)
        └── Comentarios <!-- ... -->
```

---

## ✅ Checklist para el Examen

- [ ] Sé definir qué es un lenguaje de marcas y sus tipos (presentación, procedimientos, descriptivo)
- [ ] Conozco la evolución: GML → SGML → HTML → XML (fechas y autores)
- [ ] Sé las desventajas de HTML
- [ ] Sé las características de XML como metalenguaje
- [ ] Conozco la familia XML (XSL, XML Linking, Namespaces, Schemas/DTD)
- [ ] Sé comparar XML vs HTML y XML vs SGML
- [ ] Conozco la sintaxis de las etiquetas (apertura, cierre, minúsculas)
- [ ] Sé qué son los editores y procesadores XML (validadores vs no validadores)
- [ ] Domino la estructura: prólogo + ejemplar
- [ ] Sé los tres atributos de la declaración XML (version, encoding, standalone)
- [ ] Conozco las codificaciones (UTF-8, ISO-8859-1...)
- [ ] Sé las reglas para nombrar elementos y atributos
- [ ] Conozco las entidades predefinidas (&lt; &gt; &amp; &quot; &apos;)
- [ ] Sé qué es un documento bien formado (3 reglas básicas)
- [ ] Entiendo los espacios de nombres (problema, sintaxis xmlns, prefijos)
- [ ] Sé detectar errores en documentos XML
